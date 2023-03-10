package f.e.a.j.l0.h;

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
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SlfInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        e0 S = aVar.S();
        x.a g2 = S.b.g();
        new LinkedHashMap();
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
        g2.a(e.a("aBQGFhgaVl0="), e.a("BkxV"));
        g2.a(e.a("aAYGEgIQXA=="), e.a("VgwHFgQaXQ=="));
        d2.a(e.a("VgEAARgAFFAcAlE="), e.a("DgRUUlJDDgVAAlUGQFJTX1IAAQVSEQBRQl8MUxxfVlo="));
        String a = e.a("VgEAARgAFEccDVEJ");
        String str2 = f.e.a.k.b.G;
        if (str2 != null) {
            d2.a(a, str2);
            String a2 = e.a("UwcVDQgWFFoX");
            String str3 = f.e.a.k.b.F;
            if (str3 != null) {
                d2.a(a2, str3);
                h0 d3 = aVar.d(new e0(g2.b(), str, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
                String H = d3.f6536h.H();
                try {
                    H = new JSONObject(H).getString(e.a("UwMXBQ=="));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                i0 F = i0.F(d.d(H), d3.f6536h.E());
                e0 e0Var = d3.b;
                c0 c0Var = d3.f6531c;
                int i2 = d3.f6533e;
                String str4 = d3.f6532d;
                v vVar = d3.f6534f;
                w.a d4 = d3.f6535g.d();
                h0 h0Var = d3.f6537i;
                h0 h0Var2 = d3.f6538j;
                h0 h0Var3 = d3.f6539k;
                long j2 = d3.f6540l;
                long j3 = d3.f6541m;
                i.m0.d.c cVar = d3.n;
                if (i2 >= 0) {
                    if (e0Var != null) {
                        if (c0Var != null) {
                            if (str4 != null) {
                                return new h0(e0Var, c0Var, str4, i2, vVar, d4.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                            }
                            throw new IllegalStateException("message == null".toString());
                        }
                        throw new IllegalStateException("protocol == null".toString());
                    }
                    throw new IllegalStateException("request == null".toString());
                }
                throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
            }
            g.f("value");
            throw null;
        }
        g.f("value");
        throw null;
    }
}
