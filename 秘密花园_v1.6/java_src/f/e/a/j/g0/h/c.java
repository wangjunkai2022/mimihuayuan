package f.e.a.j.g0.h;

import f.e.a.e;
import h.o.c.g;
import i.e0;
import i.g0;
import i.h0;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
/* compiled from: XXInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        e0 S = aVar.S();
        if (S != null) {
            new LinkedHashMap();
            x xVar = S.b;
            String str = S.f6516c;
            g0 g0Var = S.f6518e;
            if (S.f6519f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6519f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d2 = S.f6517d.d();
            String a = e.a("b08lCxkEWEEXA1BKPgUR");
            Random random = new Random();
            String str2 = random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255);
            if (str2 != null) {
                d2.a(a, str2);
                if (xVar != null) {
                    return aVar.d(new e0(xVar, str, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
                }
                throw new IllegalStateException("url == null".toString());
            }
            g.f("value");
            throw null;
        }
        throw null;
    }
}
