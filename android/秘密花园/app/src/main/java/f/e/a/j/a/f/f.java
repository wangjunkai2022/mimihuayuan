package f.e.a.j.a.f;

import com.comeback.data.App;
import f.e.a.e;
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
import l.n0.a.a;

/* compiled from: NetHelper.java */
/* loaded from: classes.dex */
public class f {
    public static volatile f b;
    public final e a;

    public f() {
        d dVar = new d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), (long) 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new b());
        aVar.c(15, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(a.c(), "factory == null"));
        this.a = (e) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f.e.a.k.b.f3972e, b0Var), "factory == null"), bVar, e.class);
    }

    public static synchronized e a() {
        e eVar;
        synchronized (f.class) {
            if (b == null) {
                b = new f();
            }
            eVar = b.a;
        }
        return eVar;
    }
}
