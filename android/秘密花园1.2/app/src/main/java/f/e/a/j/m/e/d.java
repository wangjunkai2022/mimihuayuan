package f.e.a.j.m.e;

import i.c0;
import i.e0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.y;
import java.io.IOException;

/* compiled from: GdianPlayerInterceptor.java */
/* loaded from: classes.dex */
public class d implements y {
    static {
        f.e.a.e.a("UhspVQhBb0orVFgMMQAMWHoIIhwmGVIHPTVDDhotJRFTJRsSMUFVRjoMWx82ADpYejYuUCYJbEQVNxpfHg9UDVUDUVxcRF0DQVFQVkhSAlgAUFtWW0JdC0IDVUlBCVQKAAdWB1hBAANEUQ1eGQtWXwYBUl1dQgFSRlMMARpdVl8BWlIHWUAAVkZVV1RKDwEIVQdXVw==");
    }

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        String str = aVar.S().b.f6854j;
        if (str.contains(f.e.a.e.a("GQ9QEQ=="))) {
            String replace = str.replace(f.e.a.e.a("GBIPBRJdVAAGXgs="), f.e.a.e.a("GBIPBRJM"));
            e0 S = aVar.S();
            if (S != null) {
                e0.a aVar2 = new e0.a(S);
                aVar2.i(replace);
                h0 d2 = aVar.d(aVar2.b());
                i0 F = i0.F(d2.f6527h.H(), d2.f6527h.E());
                e0 e0Var = d2.b;
                c0 c0Var = d2.f6522c;
                int i2 = d2.f6524e;
                String str2 = d2.f6523d;
                v vVar = d2.f6525f;
                w.a d3 = d2.f6526g.d();
                h0 h0Var = d2.f6528i;
                h0 h0Var2 = d2.f6529j;
                h0 h0Var3 = d2.f6530k;
                long j2 = d2.f6531l;
                long j3 = d2.f6532m;
                i.m0.d.c cVar = d2.n;
                if (i2 >= 0) {
                    if (e0Var != null) {
                        if (c0Var != null) {
                            if (str2 != null) {
                                return new h0(e0Var, c0Var, str2, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                            }
                            throw new IllegalStateException("message == null".toString());
                        }
                        throw new IllegalStateException("protocol == null".toString());
                    }
                    throw new IllegalStateException("request == null".toString());
                }
                throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
            }
            throw null;
        }
        return aVar.d(aVar.S());
    }
}
