package f.e.a.j.l.h;

import com.comeback.data.App;
import i.b0;
import java.io.File;
import java.net.Proxy;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import l.e;
import l.h0;
import l.l;

/* compiled from: NetHelper.java */
/* loaded from: classes.dex */
public class f {
    public static volatile f b;
    public final b a;

    public f() {
        i.d dVar = new i.d(new File(App.b.getCacheDir(), f.e.a.e.a("ehsgBQgbXA==")), 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.i0.b());
        aVar.a(new e());
        aVar.a(new f.e.a.i.a());
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6461k = dVar;
        aVar.f6463m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7268d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (b) f.b.a.a.a.F(bVar.f7269e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f.e.a.k.b.y, b0Var), "factory == null"), bVar, b.class);
    }

    public static synchronized void a() {
        synchronized (f.class) {
            b = null;
        }
    }

    public static synchronized b b() {
        b bVar;
        synchronized (f.class) {
            if (b == null) {
                b = new f();
            }
            bVar = b.a;
        }
        return bVar;
    }
}
