package f.d.a.o.o;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import f.d.a.o.o.n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: UriLoader.java */
/* loaded from: classes.dex */
public class w<Data> implements n<Uri, Data> {
    public static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));
    public final c<Data> a;

    /* compiled from: UriLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {
        public final ContentResolver a;

        public a(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // f.d.a.o.o.w.c
        public f.d.a.o.m.d<AssetFileDescriptor> a(Uri uri) {
            return new f.d.a.o.m.a(this.a, uri);
        }

        @Override // f.d.a.o.o.o
        public n<Uri, AssetFileDescriptor> b(r rVar) {
            return new w(this);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: UriLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {
        public final ContentResolver a;

        public b(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // f.d.a.o.o.w.c
        public f.d.a.o.m.d<ParcelFileDescriptor> a(Uri uri) {
            return new f.d.a.o.m.i(this.a, uri);
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, ParcelFileDescriptor> b(r rVar) {
            return new w(this);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: UriLoader.java */
    /* loaded from: classes.dex */
    public interface c<Data> {
        f.d.a.o.m.d<Data> a(Uri uri);
    }

    /* compiled from: UriLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<Uri, InputStream>, c<InputStream> {
        public final ContentResolver a;

        public d(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // f.d.a.o.o.w.c
        public f.d.a.o.m.d<InputStream> a(Uri uri) {
            return new f.d.a.o.m.n(this.a, uri);
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new w(this);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public w(c<Data> cVar) {
        this.a = cVar;
    }

    @Override // f.d.a.o.o.n
    public n.a a(@NonNull Uri uri, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        Uri uri2 = uri;
        return new n.a(new f.d.a.t.d(uri2), this.a.a(uri2));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Uri uri) {
        return b.contains(uri.getScheme());
    }
}
