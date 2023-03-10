package c.a.a.b.g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.ParcelableVolumeInfo;
import c.a.a.b.g.a;
import java.lang.ref.WeakReference;
import java.util.List;
/* compiled from: MediaControllerCompat.java */
/* loaded from: classes.dex */
public abstract class c implements IBinder.DeathRecipient {
    public c.a.a.b.g.a a;

    /* compiled from: MediaControllerCompat.java */
    /* loaded from: classes.dex */
    public static class a implements f {
        public final WeakReference<c> a;

        public a(c cVar) {
            this.a = new WeakReference<>(cVar);
        }
    }

    /* compiled from: MediaControllerCompat.java */
    /* loaded from: classes.dex */
    public static class b extends a.AbstractBinderC0007a {
        public final WeakReference<c> a;

        public b(c cVar) {
            this.a = new WeakReference<>(cVar);
        }

        public void a(CharSequence charSequence) throws RemoteException {
            this.a.get();
        }

        public void c() throws RemoteException {
            this.a.get();
        }

        public void d(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
            this.a.get();
        }

        public void e(Bundle bundle) throws RemoteException {
            this.a.get();
        }

        public void f(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
            this.a.get();
        }

        public void h(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
            this.a.get();
        }
    }

    public c() {
        new g(new a(this));
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
    }
}
