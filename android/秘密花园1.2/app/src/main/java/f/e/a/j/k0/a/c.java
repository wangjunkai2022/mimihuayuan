package f.e.a.j.k0.a;

import f.e.a.e;
import h.o.c.g;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Sex8Interceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        String str;
        e0 S = aVar.S();
        if (S != null) {
            new LinkedHashMap();
            x xVar = S.b;
            String str2 = S.f6507c;
            g0 g0Var = S.f6509e;
            if (S.f6510f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6510f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d2 = S.f6508d.d();
            d2.a(e.a("djIzLSYyfnY="), e.a("BlJT"));
            d2.a(e.a("YScxNyI8d30yK3E="), e.a("BkxTSls="));
            if (xVar != null) {
                h0 d3 = aVar.d(new e0(xVar, str2, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
                try {
                    str = d.d(d3.f6527h.H());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    str = "";
                }
                i0 F = i0.F(str, d3.f6527h.E());
                e0 e0Var = d3.b;
                c0 c0Var = d3.f6522c;
                int i2 = d3.f6524e;
                String str3 = d3.f6523d;
                v vVar = d3.f6525f;
                w.a d4 = d3.f6526g.d();
                h0 h0Var = d3.f6528i;
                h0 h0Var2 = d3.f6529j;
                h0 h0Var3 = d3.f6530k;
                long j2 = d3.f6531l;
                long j3 = d3.f6532m;
                i.m0.d.c cVar = d3.n;
                if (i2 >= 0) {
                    if (e0Var != null) {
                        if (c0Var != null) {
                            if (str3 != null) {
                                return new h0(e0Var, c0Var, str3, i2, vVar, d4.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                            }
                            throw new IllegalStateException("message == null".toString());
                        }
                        throw new IllegalStateException("protocol == null".toString());
                    }
                    throw new IllegalStateException("request == null".toString());
                }
                throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
            }
            throw new IllegalStateException("url == null".toString());
        }
        throw null;
    }
}
