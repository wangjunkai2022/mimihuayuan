package f.e.a.j.n0.c;

import com.comeback.data.App;
import i.b0;
import java.io.File;
import java.net.Proxy;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import l.e;
import l.h0;
import l.l;
import l.m0.a.j;
/* compiled from: LiveNetHelper.java */
/* loaded from: classes.dex */
public class c {
    public static volatile c b;
    public final a a;

    public c() {
        i.d dVar = new i.d(new File(App.b.getCacheDir(), f.e.a.e.a("ehsgBQgbXA==")), 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.i0.b());
        aVar.a(new b());
        aVar.a(new e());
        aVar.a(new f.e.a.i.a());
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6470k = dVar;
        aVar.f6472m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7277d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        bVar.a(f.e.a.e.a("XxYXFBhJFhwSFl1JFR8UDl4EBgoMXVpd"));
        bVar.c(b0Var);
        bVar.f7278e.add((e.a) Objects.requireNonNull(j.b(), "factory == null"));
        this.a = (a) bVar.b().b(a.class);
    }
}
