package f.e.a.j.j.m;

import android.text.TextUtils;
import com.comeback.data.App;
import f.e.a.e;
import f.e.a.i.a;
import f.e.a.k.b;
import i.b0;
import java.io.File;
import java.net.Proxy;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import l.e;
import l.h0;
import l.l;

/* compiled from: Net2Helper.java */
/* loaded from: classes.dex */
public class d {
    public static volatile d b;
    public final a a;

    public d() {
        i.d dVar = new i.d(new File(App.b.getCacheDir(), e.a("ehsgBQgbXA==")), (long) 10485760);
        b0.a aVar = new b0.a();
        aVar.b(new b());
        aVar.a(new a());
        aVar.c(15, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (a) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, TextUtils.isEmpty(b.m0) ? f.e.a.e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG") : b.m0, b0Var), "factory == null"), bVar, a.class);
    }

    public static synchronized void a() {
        synchronized (d.class) {
            b = null;
        }
    }
}
