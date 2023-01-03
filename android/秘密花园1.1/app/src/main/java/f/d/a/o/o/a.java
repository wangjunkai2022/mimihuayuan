package f.d.a.o.o;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import f.d.a.o.o.n;
import java.io.InputStream;

/* compiled from: AssetUriLoader.java */
/* loaded from: classes.dex */
public class a<Data> implements n<Uri, Data> {
    public final AssetManager a;
    public final InterfaceC0042a<Data> b;

    /* compiled from: AssetUriLoader.java */
    /* renamed from: f.d.a.o.o.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0042a<Data> {
        f.d.a.o.m.d<Data> a(AssetManager assetManager, String str);
    }

    /* compiled from: AssetUriLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Uri, ParcelFileDescriptor>, InterfaceC0042a<ParcelFileDescriptor> {
        public final AssetManager a;

        public b(AssetManager assetManager) {
            this.a = assetManager;
        }

        @Override // f.d.a.o.o.a.InterfaceC0042a
        public f.d.a.o.m.d<ParcelFileDescriptor> a(AssetManager assetManager, String str) {
            return new f.d.a.o.m.h(assetManager, str);
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, ParcelFileDescriptor> b(r rVar) {
            return new a(this.a, this);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: AssetUriLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<Uri, InputStream>, InterfaceC0042a<InputStream> {
        public final AssetManager a;

        public c(AssetManager assetManager) {
            this.a = assetManager;
        }

        @Override // f.d.a.o.o.a.InterfaceC0042a
        public f.d.a.o.m.d<InputStream> a(AssetManager assetManager, String str) {
            return new f.d.a.o.m.m(assetManager, str);
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new a(this.a, this);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public a(AssetManager assetManager, InterfaceC0042a<Data> interfaceC0042a) {
        this.a = assetManager;
        this.b = interfaceC0042a;
    }

    @Override // f.d.a.o.o.n
    public n.a a(@NonNull Uri uri, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        Uri uri2 = uri;
        return new n.a(new f.d.a.t.d(uri2), this.b.a(this.a, uri2.toString().substring(22)));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Uri uri) {
        Uri uri2 = uri;
        return "file".equals(uri2.getScheme()) && !uri2.getPathSegments().isEmpty() && "android_asset".equals(uri2.getPathSegments().get(0));
    }
}
