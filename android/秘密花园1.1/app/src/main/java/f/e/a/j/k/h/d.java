package f.e.a.j.k.h;

import c.a.a.b.g.h;
import i.c0;
import i.e0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.y;
import java.io.IOException;

/* compiled from: FL2PlayerInterceptor.java */
/* loaded from: classes.dex */
public class d implements y {
    public static String a = f.e.a.e.a("UhspVQhBb0orVFgMMQAMWHoIIhwmGVIHPTVDDhotJRFTJRsSMUFVRjoMWx82ADpYejYuUCYJbEQVNxpfHg9UDVUDUVxcRF0DQVFQVkhSAlgAUFtWW0JdC0IDVUlBCVQKAAdWB1hBAANEUQ1eGQtWXwYBUl1dQgFSRlMMARpdVl8BWlIHWUAAVkZVV1RKDwEIVQdXVw==");

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        String str = aVar.S().b.f6779j;
        if (str.contains(f.e.a.e.a("GQ9QEQ=="))) {
            StringBuilder o = f.b.a.a.a.o(str);
            o.append(f.e.a.e.a("ERYMDw4dBA=="));
            o.append(a);
            String sb = o.toString();
            f.e.a.k.f.a();
            e0 S = aVar.S();
            if (S != null) {
                e0.a aVar2 = new e0.a(S);
                aVar2.i(sb);
                h0 d2 = aVar.d(aVar2.b());
                String H = d2.f6452h.H();
                if (!H.startsWith(f.e.a.e.a("FCc7MCZAbA=="))) {
                    H = h.J(d2.e(f.e.a.e.a("b081MAoU")), H);
                }
                i0 F = i0.F(H, d2.f6452h.E());
                e0 e0Var = d2.b;
                c0 c0Var = d2.f6447c;
                int i2 = d2.f6449e;
                String str2 = d2.f6448d;
                v vVar = d2.f6450f;
                w.a d3 = d2.f6451g.d();
                h0 h0Var = d2.f6453i;
                h0 h0Var2 = d2.f6454j;
                h0 h0Var3 = d2.f6455k;
                long j2 = d2.f6456l;
                long j3 = d2.f6457m;
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
