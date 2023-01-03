package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class MediaBrowserCompat {
    public static final boolean b = Log.isLoggable("MediaBrowserCompat", 3);
    public final c a;

    /* loaded from: classes.dex */
    public static class CustomActionResultReceiver extends c.a.a.c.b {
        @Override // c.a.a.c.b
        public void a(int i2, Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    public static class ItemReceiver extends c.a.a.c.b {
        @Override // c.a.a.c.b
        public void a(int i2, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i2 != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                MediaItem mediaItem = (MediaItem) parcelable;
                throw null;
            }
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class SearchResultReceiver extends c.a.a.c.b {
        @Override // c.a.a.c.b
        public void a(int i2, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i2 != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                throw null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
            if (parcelableArray != null) {
                ArrayList arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class a extends Handler {
        public final WeakReference<g> a;
        public WeakReference<Messenger> b;

        public a(g gVar) {
            this.a = new WeakReference<>(gVar);
        }

        public void a(Messenger messenger) {
            this.b = new WeakReference<>(messenger);
        }

        /* JADX DEBUG: Failed to insert an additional move for type inference into block B:24:0x002d */
        /* JADX DEBUG: Multi-variable search result rejected for r11v0, resolved type: android.os.Message */
        /* JADX DEBUG: Multi-variable search result rejected for r11v1, resolved type: android.os.Message */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v2, types: [int] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.b;
            if (weakReference != null && weakReference.get() != null && this.a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.a(data);
                g gVar = this.a.get();
                Messenger messenger = this.b.get();
                try {
                    int i2 = message.what;
                    if (i2 == 1) {
                        Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                        MediaSessionCompat.a(bundle);
                        gVar.c(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle);
                    } else if (i2 == 2) {
                        gVar.a(messenger);
                    } else if (i2 != 3) {
                        String str = "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1;
                    } else {
                        Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                        MediaSessionCompat.a(bundle2);
                        Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                        MediaSessionCompat.a(bundle3);
                        gVar.d(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle2, bundle3);
                    }
                } catch (BadParcelableException unused) {
                    while (true) {
                        message = message.what;
                        if (message == 1) {
                            gVar.a(messenger);
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public a mConnectionCallbackInternal;
        public final Object mConnectionCallbackObj = new c.a.a.b.b(new C0000b());

        /* loaded from: classes.dex */
        public interface a {
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0000b implements c.a.a.b.a {
            public C0000b() {
            }
        }

        public abstract void onConnected();

        public abstract void onConnectionFailed();

        public abstract void onConnectionSuspended();

        public void setInternalConnectionCallback(a aVar) {
            this.mConnectionCallbackInternal = aVar;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        @NonNull
        MediaSessionCompat.Token b();

        void e();

        void f();
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class d implements c, g, b.a {
        public final Context a;
        public final Object b;

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f0c;

        /* renamed from: d  reason: collision with root package name */
        public final a f1d = new a(this);

        /* renamed from: e  reason: collision with root package name */
        public final ArrayMap<String, i> f2e = new ArrayMap<>();

        /* renamed from: f  reason: collision with root package name */
        public h f3f;

        /* renamed from: g  reason: collision with root package name */
        public Messenger f4g;

        /* renamed from: h  reason: collision with root package name */
        public MediaSessionCompat.Token f5h;

        public d(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            this.a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f0c = bundle2;
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bVar.setInternalConnectionCallback(this);
            this.b = new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) bVar.mConnectionCallbackObj, this.f0c);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.g
        public void a(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        @NonNull
        public MediaSessionCompat.Token b() {
            if (this.f5h == null) {
                this.f5h = MediaSessionCompat.Token.a(((MediaBrowser) this.b).getSessionToken(), null);
            }
            return this.f5h;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.g
        public void c(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.g
        public void d(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f4g == messenger) {
                i iVar = this.f2e.get(str);
                if (iVar == null) {
                    boolean z = MediaBrowserCompat.b;
                } else {
                    iVar.a(bundle);
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void e() {
            Messenger messenger;
            h hVar = this.f3f;
            if (!(hVar == null || (messenger = this.f4g) == null)) {
                try {
                    hVar.a(7, null, messenger);
                } catch (RemoteException unused) {
                }
            }
            ((MediaBrowser) this.b).disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void f() {
            ((MediaBrowser) this.b).connect();
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class e extends d {
        public e(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class f extends e {
        public f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    /* loaded from: classes.dex */
    public interface g {
        void a(Messenger messenger);

        void c(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void d(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);
    }

    /* loaded from: classes.dex */
    public static class h {
        public Messenger a;
        public Bundle b;

        public h(IBinder iBinder, Bundle bundle) {
            this.a = new Messenger(iBinder);
            this.b = bundle;
        }

        public final void a(int i2, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i2;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.a.send(obtain);
        }
    }

    /* loaded from: classes.dex */
    public static class i {
        public final List<j> a = new ArrayList();
        public final List<Bundle> b = new ArrayList();

        public j a(Bundle bundle) {
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.b.get(i2), bundle)) {
                    return this.a.get(i2);
                }
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class j {
        public final IBinder a = new Binder();
        public WeakReference<i> b;

        /* loaded from: classes.dex */
        public class a implements c.a.a.b.c {
            public a() {
            }

            @Override // c.a.a.b.c
            public void c(@NonNull String str, List<?> list) {
                WeakReference<i> weakReference = j.this.b;
                i iVar = weakReference == null ? null : weakReference.get();
                if (iVar == null) {
                    j jVar = j.this;
                    MediaItem.a(list);
                    if (jVar == null) {
                        throw null;
                    }
                    return;
                }
                List<MediaItem> a = MediaItem.a(list);
                List<j> list2 = iVar.a;
                List<Bundle> list3 = iVar.b;
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    Bundle bundle = list3.get(i2);
                    if (bundle != null) {
                        j jVar2 = j.this;
                        if (a != null) {
                            int i3 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                            int i4 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                            if (!(i3 == -1 && i4 == -1)) {
                                int i5 = i4 * i3;
                                int i6 = i5 + i4;
                                if (i3 < 0 || i4 < 1 || i5 >= a.size()) {
                                    Collections.emptyList();
                                } else {
                                    if (i6 > a.size()) {
                                        i6 = a.size();
                                    }
                                    a.subList(i5, i6);
                                }
                            }
                        }
                        if (jVar2 == null) {
                            throw null;
                        }
                    } else if (j.this == null) {
                        throw null;
                    }
                }
            }

            @Override // c.a.a.b.c
            public void d(@NonNull String str) {
                if (j.this == null) {
                    throw null;
                }
            }
        }

        /* loaded from: classes.dex */
        public class b extends a implements c.a.a.b.e {
            public b() {
                super();
            }

            @Override // c.a.a.b.e
            public void a(@NonNull String str, List<?> list, @NonNull Bundle bundle) {
                j jVar = j.this;
                MediaItem.a(list);
                if (jVar == null) {
                    throw null;
                }
            }

            @Override // c.a.a.b.e
            public void b(@NonNull String str, @NonNull Bundle bundle) {
                if (j.this == null) {
                    throw null;
                }
            }
        }

        public j() {
            if (Build.VERSION.SDK_INT >= 26) {
                new c.a.a.b.f(new b());
            } else {
                new c.a.a.b.d(new a());
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.a = new f(context, componentName, bVar, null);
        } else if (i2 >= 23) {
            this.a = new e(context, componentName, bVar, null);
        } else {
            this.a = new d(context, componentName, bVar, null);
        }
    }

    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();
        public final int a;
        public final MediaDescriptionCompat b;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<MediaItem> {
            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public MediaItem[] newArray(int i2) {
                return new MediaItem[i2];
            }
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i2) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.a)) {
                this.a = i2;
                this.b = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        public static List<MediaItem> a(List<?> list) {
            MediaItem mediaItem;
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Object obj : list) {
                if (obj != null) {
                    MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                    mediaItem = new MediaItem(MediaDescriptionCompat.a(mediaItem2.getDescription()), mediaItem2.getFlags());
                } else {
                    mediaItem = null;
                }
                arrayList.add(mediaItem);
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // java.lang.Object
        public String toString() {
            StringBuilder q = f.b.a.a.a.q("MediaItem{", "mFlags=");
            q.append(this.a);
            q.append(", mDescription=");
            q.append(this.b);
            q.append('}');
            return q.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.a);
            this.b.writeToParcel(parcel, i2);
        }

        public MediaItem(Parcel parcel) {
            this.a = parcel.readInt();
            this.b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }
}
