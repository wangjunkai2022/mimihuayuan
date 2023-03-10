package f.d.a.o.o.y;

import android.net.Uri;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.r;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: HttpUriLoader.java */
/* loaded from: classes.dex */
public class b implements n<Uri, InputStream> {
    public static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));
    public final n<g, InputStream> a;

    /* compiled from: HttpUriLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {
        @Override // f.d.a.o.o.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new b(rVar.c(g.class, InputStream.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public b(n<g, InputStream> nVar) {
        this.a = nVar;
    }

    @Override // f.d.a.o.o.n
    public n.a<InputStream> a(@NonNull Uri uri, int i2, int i3, @NonNull h hVar) {
        return this.a.a(new g(uri.toString()), i2, i3, hVar);
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Uri uri) {
        return b.contains(uri.getScheme());
    }
}
