package f.e.a.j.m.p;

import com.comeback.data.App;
import f.e.a.i.a;
import f.e.a.k.b;
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
public class e {
    public static volatile e b;

    /* renamed from: c  reason: collision with root package name */
    public static String f3920c = b.C;
    public final c a;

    public e() {
        d dVar = new d(new File(App.b.getCacheDir(), f.e.a.e.a("ehsgBQgbXA==")), (long) 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.h0.b());
        aVar.a(new a());
        aVar.a(new d());
        aVar.c(15, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (c) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, f3920c, b0Var), "factory == null"), bVar, c.class);
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
