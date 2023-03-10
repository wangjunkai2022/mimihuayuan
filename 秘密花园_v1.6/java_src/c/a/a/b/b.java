package c.a.a.b;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import c.a.a.b.a;
import c.a.a.b.g.b;
/* compiled from: MediaBrowserCompatApi21.java */
/* loaded from: classes.dex */
public class b<T extends a> extends MediaBrowser.ConnectionCallback {
    public final T a;

    public b(T t) {
        this.a = t;
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public void onConnected() {
        MediaBrowserCompat.b.C0000b c0000b = (MediaBrowserCompat.b.C0000b) this.a;
        MediaBrowserCompat.b.a aVar = MediaBrowserCompat.b.this.mConnectionCallbackInternal;
        if (aVar != null) {
            MediaBrowserCompat.d dVar = (MediaBrowserCompat.d) aVar;
            Bundle extras = ((MediaBrowser) dVar.b).getExtras();
            if (extras != null) {
                extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (binder != null) {
                    dVar.f3f = new MediaBrowserCompat.h(binder, dVar.f0c);
                    Messenger messenger = new Messenger(dVar.f1d);
                    dVar.f4g = messenger;
                    dVar.f1d.a(messenger);
                    try {
                        MediaBrowserCompat.h hVar = dVar.f3f;
                        Context context = dVar.a;
                        Messenger messenger2 = dVar.f4g;
                        if (hVar != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, hVar.b);
                            hVar.a(6, bundle, messenger2);
                        } else {
                            throw null;
                        }
                    } catch (RemoteException unused) {
                    }
                }
                c.a.a.b.g.b i2 = b.a.i(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                if (i2 != null) {
                    dVar.f5h = MediaSessionCompat.Token.a(((MediaBrowser) dVar.b).getSessionToken(), i2);
                }
            }
        }
        MediaBrowserCompat.b.this.onConnected();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public void onConnectionFailed() {
        MediaBrowserCompat.b.C0000b c0000b = (MediaBrowserCompat.b.C0000b) this.a;
        MediaBrowserCompat.b.a aVar = MediaBrowserCompat.b.this.mConnectionCallbackInternal;
        if (aVar != null) {
            MediaBrowserCompat.d dVar = (MediaBrowserCompat.d) aVar;
        }
        MediaBrowserCompat.b.this.onConnectionFailed();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public void onConnectionSuspended() {
        MediaBrowserCompat.b.C0000b c0000b = (MediaBrowserCompat.b.C0000b) this.a;
        MediaBrowserCompat.b.a aVar = MediaBrowserCompat.b.this.mConnectionCallbackInternal;
        if (aVar != null) {
            MediaBrowserCompat.d dVar = (MediaBrowserCompat.d) aVar;
            dVar.f3f = null;
            dVar.f4g = null;
            dVar.f5h = null;
            dVar.f1d.a(null);
        }
        MediaBrowserCompat.b.this.onConnectionSuspended();
    }
}
