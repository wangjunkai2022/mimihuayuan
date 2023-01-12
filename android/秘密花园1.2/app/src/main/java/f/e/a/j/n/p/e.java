package f.e.a.j.n.p;

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
public class e {
    public static volatile e b;

    /* renamed from: c  reason: collision with root package name */
    public static String f3995c = f.e.a.k.b.C;
    public final c a;

    public e() {
        i.d dVar = new i.d(new File(App.b.getCacheDir(), f.e.a.e.a("ehsgBQgbXA==")), 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.i0.b());
        aVar.a(new f.e.a.i.a());
        aVar.a(new d());
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6461k = dVar;
        aVar.f6463m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7268d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (c) f.b.a.a.a.F(bVar.f7269e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f3995c, b0Var), "factory == null"), bVar, c.class);
    }

    public static synchronized void a() {
        synchronized (e.class) {
            b = null;
        }
    }

    public static synchronized c b() {
        c cVar;
        synchronized (e.class) {
            if (b == null) {
                b = new e();
            }
            cVar = b.a;
        }
        return cVar;
    }
}
