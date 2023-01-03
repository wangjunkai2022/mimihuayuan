package f.d.a.o.o;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import f.d.a.o.o.n;
import java.io.File;
import java.io.FileNotFoundException;

/* compiled from: MediaStoreFileLoader.java */
/* loaded from: classes.dex */
public final class k implements n<Uri, File> {
    public final Context a;

    /* compiled from: MediaStoreFileLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Uri, File> {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, File> b(r rVar) {
            return new k(this.a);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: MediaStoreFileLoader.java */
    /* loaded from: classes.dex */
    public static class b implements f.d.a.o.m.d<File> {

        /* renamed from: c  reason: collision with root package name */
        public static final String[] f3657c = {"_data"};
        public final Context a;
        public final Uri b;

        public b(Context context, Uri uri) {
            this.a = context;
            this.b = uri;
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<File> a() {
            return File.class;
        }

        @Override // f.d.a.o.m.d
        public void b() {
        }

        @Override // f.d.a.o.m.d
        public void cancel() {
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public f.d.a.o.a e() {
            return f.d.a.o.a.LOCAL;
        }

        @Override // f.d.a.o.m.d
        public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super File> aVar) {
            Cursor query = this.a.getContentResolver().query(this.b, f3657c, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(r0)) {
                StringBuilder o = f.b.a.a.a.o("Failed to find file path for: ");
                o.append(this.b);
                aVar.c(new FileNotFoundException(o.toString()));
                return;
            }
            aVar.d(new File(r0));
        }
    }

    public k(Context context) {
        this.a = context;
    }

    @Override // f.d.a.o.o.n
    public n.a<File> a(@NonNull Uri uri, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        Uri uri2 = uri;
        return new n.a<>(new f.d.a.t.d(uri2), new b(this.a, uri2));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Uri uri) {
        return c.a.a.b.g.h.k0(uri);
    }
}
