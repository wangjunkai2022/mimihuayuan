package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import androidx.core.app.BundleCompat;
import c.a.a.b.g.b;
import c.a.a.b.g.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
public class MediaControllerCompat$MediaControllerImplApi21 {
    public final Object a;
    public final Object b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c  reason: collision with root package name */
    public final List<c> f14c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public HashMap<c, a> f15d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    public final MediaSessionCompat.Token f16e;

    /* loaded from: classes.dex */
    public static class ExtraBinderRequestResultReceiver extends ResultReceiver {
        public WeakReference<MediaControllerCompat$MediaControllerImplApi21> a;

        public ExtraBinderRequestResultReceiver(MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21) {
            super(null);
            this.a = new WeakReference<>(mediaControllerCompat$MediaControllerImplApi21);
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i2, Bundle bundle) {
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.a.get();
            if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
                return;
            }
            synchronized (mediaControllerCompat$MediaControllerImplApi21.b) {
                mediaControllerCompat$MediaControllerImplApi21.f16e.b = b.a.i(BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
                MediaSessionCompat.Token token = mediaControllerCompat$MediaControllerImplApi21.f16e;
                bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
                if (token != null) {
                    mediaControllerCompat$MediaControllerImplApi21.a();
                } else {
                    throw null;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class a extends c.b {
        public a(c cVar) {
            super(cVar);
        }

        @Override // c.a.a.b.g.c.b, c.a.a.b.g.a
        public void a(CharSequence charSequence) throws RemoteException {
            throw new AssertionError();
        }

        @Override // c.a.a.b.g.c.b, c.a.a.b.g.a
        public void c() throws RemoteException {
            throw new AssertionError();
        }

        @Override // c.a.a.b.g.c.b, c.a.a.b.g.a
        public void d(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
            throw new AssertionError();
        }

        @Override // c.a.a.b.g.c.b, c.a.a.b.g.a
        public void e(Bundle bundle) throws RemoteException {
            throw new AssertionError();
        }

        @Override // c.a.a.b.g.c.b, c.a.a.b.g.a
        public void f(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
            throw new AssertionError();
        }

        @Override // c.a.a.b.g.c.b, c.a.a.b.g.a
        public void h(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
            throw new AssertionError();
        }
    }

    public MediaControllerCompat$MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
        this.f16e = token;
        MediaController mediaController = new MediaController(context, (MediaSession.Token) token.a);
        this.a = mediaController;
        if (mediaController != null) {
            if (this.f16e.b == null) {
                ((MediaController) this.a).sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
                return;
            }
            return;
        }
        throw new RemoteException();
    }

    @GuardedBy("mLock")
    public void a() {
        if (this.f16e.b == null) {
            return;
        }
        for (c cVar : this.f14c) {
            a aVar = new a(cVar);
            this.f15d.put(cVar, aVar);
            cVar.a = aVar;
            try {
                this.f16e.b.b(aVar);
            } catch (RemoteException unused) {
            }
        }
        this.f14c.clear();
    }
}
