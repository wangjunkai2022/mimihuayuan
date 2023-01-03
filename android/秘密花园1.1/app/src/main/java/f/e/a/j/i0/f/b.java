package f.e.a.j.i0.f;

import com.comeback.data.App;
import com.comeback.data.ui.senlin.SenLinActivity;
import f.e.a.e;
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
public class b {
    public static volatile b b;
    public final a a;

    public b() {
        d dVar = new d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.h0.b());
        aVar.a(new f.e.a.i.a());
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (a) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, SenLinActivity.f1817h, b0Var), "factory == null"), bVar, a.class);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (b.class) {
            if (b == null) {
                b = new b();
            }
            aVar = b.a;
        }
        return aVar;
    }
}
