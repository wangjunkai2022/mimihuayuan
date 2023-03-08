package f.d.a.o.o.y;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.m.o.b;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.r;
import java.io.InputStream;

/* compiled from: MediaStoreImageThumbLoader.java */
/* loaded from: classes.dex */
public class c implements n<Uri, InputStream> {
    public final Context a;

    /* compiled from: MediaStoreImageThumbLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new c(this.a);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public c(Context context) {
        this.a = context.getApplicationContext();
    }

    @Override // f.d.a.o.o.n
    public n.a<InputStream> a(@NonNull Uri uri, int i2, int i3, @NonNull h hVar) {
        Uri uri2 = uri;
        if (c.a.a.b.g.h.p0(i2, i3)) {
            f.d.a.t.d dVar = new f.d.a.t.d(uri2);
            Context context = this.a;
            return new n.a<>(dVar, f.d.a.o.m.o.b.c(context, uri2, new b.a(context.getContentResolver())));
        }
        return null;
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Uri uri) {
        Uri uri2 = uri;
        return c.a.a.b.g.h.k0(uri2) && !uri2.getPathSegments().contains("video");
    }
}
