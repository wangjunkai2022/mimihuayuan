package f.e.a.j.k.h;

import com.comeback.data.App;
import f.e.a.e;
import f.e.a.i.a;
import f.e.a.j.h0.b;
import i.b0;
import i.d;
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
        d dVar = new d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), (long) 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new b());
        aVar.a(new e());
        aVar.a(new a());
        aVar.c(15, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (b) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f.e.a.k.b.y, b0Var), "factory == null"), bVar, b.class);
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
