package f.e.a.j.w.h;

import com.comeback.data.App;
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
public class c {

    /* renamed from: c  reason: collision with root package name */
    public static volatile c f4035c = null;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f4036d = false;
    public final a a;
    public String[] b = {e.a("XxYXFBhJFhwLD1MSGR8PDhkBDAk="), e.a("XxYXFFFcFgdGSANRVltXUhlaU15TSgEF")};

    public c() {
        d dVar = new d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.i0.b());
        aVar.a(new f.e.a.i.a());
        aVar.a(new b());
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6461k = dVar;
        aVar.f6463m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7268d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (a) f.b.a.a.a.F(bVar.f7269e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f4036d ? this.b[1] : this.b[0], b0Var), "factory == null"), bVar, a.class);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (c.class) {
            if (f4035c == null) {
                f4035c = new c();
            }
            aVar = f4035c.a;
        }
        return aVar;
    }
}
