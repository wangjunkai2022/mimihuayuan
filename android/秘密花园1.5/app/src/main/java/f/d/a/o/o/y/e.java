package f.d.a.o.o.y;

import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.r;
import java.io.InputStream;
import java.net.URL;

/* compiled from: UrlLoader.java */
/* loaded from: classes.dex */
public class e implements n<URL, InputStream> {
    public final n<g, InputStream> a;

    /* compiled from: UrlLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<URL, InputStream> {
        @Override // f.d.a.o.o.o
        @NonNull
        public n<URL, InputStream> b(r rVar) {
            return new e(rVar.c(g.class, InputStream.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public e(n<g, InputStream> nVar) {
        this.a = nVar;
    }

    @Override // f.d.a.o.o.n
    public n.a<InputStream> a(@NonNull URL url, int i2, int i3, @NonNull h hVar) {
        return this.a.a(new g(url), i2, i3, hVar);
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull URL url) {
        return true;
    }
}
