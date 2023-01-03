package f.e.a.j.h0;

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
import l.m0.a.j;
import l.n0.a.a;

/* compiled from: NetHelper.java */
/* loaded from: classes.dex */
public class c {
    public static volatile c b;
    public final a a;

    public c() {
        d dVar = new d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), (long) 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new b());
        aVar.c(15, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(a.c(), "factory == null"));
        bVar.a(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
        bVar.c(b0Var);
        bVar.f7194e.add((e.a) Objects.requireNonNull(j.b(), "factory == null"));
        this.a = (a) bVar.b().b(a.class);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (c.class) {
            if (b == null) {
                b = new c();
            }
            aVar = b.a;
        }
        return aVar;
    }
}
