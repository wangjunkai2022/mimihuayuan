package androidx.media.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.media.session.MediaController;
import android.os.Build;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import androidx.media.MediaBrowserServiceCompat;
import c.a.a.b.g.d;
import c.a.a.b.g.e;
import com.tencent.smtt.sdk.TbsListener;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {
    public static final String TAG = "MediaButtonReceiver";

    /* loaded from: classes.dex */
    public static class MediaButtonConnectionCallback extends MediaBrowserCompat.b {
        public final Context mContext;
        public final Intent mIntent;
        public MediaBrowserCompat mMediaBrowser;
        public final BroadcastReceiver.PendingResult mPendingResult;

        public MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.mContext = context;
            this.mIntent = intent;
            this.mPendingResult = pendingResult;
        }

        private void finish() {
            this.mMediaBrowser.a.e();
            this.mPendingResult.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnected() {
            Context context;
            MediaSessionCompat.Token b;
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21;
            try {
                context = this.mContext;
                b = this.mMediaBrowser.a.b();
                new HashSet();
            } catch (RemoteException unused) {
            }
            if (b != null) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 24) {
                    mediaControllerCompat$MediaControllerImplApi21 = new e(context, b);
                } else if (i2 >= 23) {
                    mediaControllerCompat$MediaControllerImplApi21 = new d(context, b);
                } else {
                    mediaControllerCompat$MediaControllerImplApi21 = new MediaControllerCompat$MediaControllerImplApi21(context, b);
                }
                KeyEvent keyEvent = (KeyEvent) this.mIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (keyEvent != null) {
                    ((MediaController) mediaControllerCompat$MediaControllerImplApi21.a).dispatchMediaButtonEvent(keyEvent);
                    finish();
                    return;
                }
                throw new IllegalArgumentException("KeyEvent may not be null");
            }
            throw new IllegalArgumentException("sessionToken must not be null");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnectionFailed() {
            finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public void onConnectionSuspended() {
            finish();
        }

        public void setMediaBrowser(MediaBrowserCompat mediaBrowserCompat) {
            this.mMediaBrowser = mediaBrowserCompat;
        }
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j2) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        queryBroadcastReceivers.size();
        return null;
    }

    public static ComponentName getServiceComponentByAction(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        throw null;
    }

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            ComponentName serviceComponentByAction = getServiceComponentByAction(context, "android.intent.action.MEDIA_BUTTON");
            if (serviceComponentByAction != null) {
                intent.setComponent(serviceComponentByAction);
                startForegroundService(context, intent);
                return;
            }
            ComponentName serviceComponentByAction2 = getServiceComponentByAction(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
            if (serviceComponentByAction2 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, goAsync);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, serviceComponentByAction2, mediaButtonConnectionCallback, null);
                mediaButtonConnectionCallback.setMediaBrowser(mediaBrowserCompat);
                mediaBrowserCompat.a.f();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        String str = "Ignore unsupported intent: " + intent;
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j2) {
        if (componentName == null) {
            return null;
        }
        int i2 = j2 == 4 ? TbsListener.ErrorCode.PV_UPLOAD_ERROR : j2 == 2 ? 127 : j2 == 32 ? 87 : j2 == 16 ? 88 : j2 == 1 ? 86 : j2 == 64 ? 90 : j2 == 8 ? 89 : j2 == 512 ? 85 : 0;
        if (i2 == 0) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, i2));
        return PendingIntent.getBroadcast(context, i2, intent, 0);
    }
}
