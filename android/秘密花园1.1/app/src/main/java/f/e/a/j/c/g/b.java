package f.e.a.j.c.g;

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

/* compiled from: BaInterceptor.java */
/* loaded from: classes.dex */
public class b implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        e0 S = aVar.S();
        if (S != null) {
            new LinkedHashMap();
            x xVar = S.b;
            String str = S.f6432c;
            g0 g0Var = S.f6434e;
            if (S.f6435f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6435f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d2 = S.f6433d.d();
            d2.a(e.a("QgsH"), e.a("BlJTVFpA"));
            if (xVar != null) {
                return aVar.d(new e0(xVar, str, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
            }
            throw new IllegalStateException("url == null".toString());
        }
        throw null;
    }
}
