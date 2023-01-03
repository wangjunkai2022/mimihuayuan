package f.e.a.j.v.h;

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
public class c {

    /* renamed from: c  reason: collision with root package name */
    public static volatile c f3960c = null;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f3961d = false;
    public final a a;
    public String[] b = {e.a("XxYXFBhJFhwLD1MSGR8PDhkBDAk="), e.a("XxYXFFFcFgdGSANRVltXUhlaU15TSgEF")};

    public c() {
        d dVar = new d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), (long) 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new b());
        aVar.a(new a());
        aVar.a(new b());
        aVar.c(15, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (a) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f3961d ? this.b[1] : this.b[0], b0Var), "factory == null"), bVar, a.class);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (c.class) {
            if (f3960c == null) {
                f3960c = new c();
            }
            aVar = f3960c.a;
        }
        return aVar;
    }
}
