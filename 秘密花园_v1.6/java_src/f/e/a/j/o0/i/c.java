package f.e.a.j.o0.i;

import f.e.a.e;
import i.c0;
import i.e0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.y;
import java.io.IOException;
/* compiled from: Tv91Interceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        e0 S = aVar.S();
        if (S.b.f6863j.contains(e.a("XxYXFFFcFgdGSANQVltRRQZWUQ=="))) {
            h0 d2 = aVar.d(S);
            i0 F = i0.F(new String(f.e.a.k.c.b(d2.f6536h.H(), e.a("VgMBBggQXVdCVwZVS1lXXw==").getBytes(), e.a("dicwSygxehwjLXc0TToCD1MLDQM="), e.a("BlNRVlhADQcSB1YFGwkHDw==").getBytes())), d2.f6536h.E());
            e0 e0Var = d2.b;
            c0 c0Var = d2.f6531c;
            int i2 = d2.f6533e;
            String str = d2.f6532d;
            v vVar = d2.f6534f;
            w.a d3 = d2.f6535g.d();
            h0 h0Var = d2.f6537i;
            h0 h0Var2 = d2.f6538j;
            h0 h0Var3 = d2.f6539k;
            long j2 = d2.f6540l;
            long j3 = d2.f6541m;
            i.m0.d.c cVar = d2.n;
            if (i2 >= 0) {
                if (e0Var != null) {
                    if (c0Var != null) {
                        if (str != null) {
                            return new h0(e0Var, c0Var, str, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
        }
        return aVar.d(S);
    }
}
