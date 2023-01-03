package i.m0.e;

import c.a.a.b.g.h;
import h.o.c.g;
import h.s.d;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.m0.b;
import i.n;
import i.p;
import i.w;
import i.y;
import i.z;
import j.o;
import java.io.IOException;
import java.util.List;

/* compiled from: BridgeInterceptor.kt */
/* loaded from: classes.dex */
public final class a implements y {
    public final p a;

    public a(p pVar) {
        if (pVar != null) {
            this.a = pVar;
        } else {
            g.f("cookieJar");
            throw null;
        }
    }

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        boolean z;
        i0 i0Var;
        e0 S = aVar.S();
        if (S != null) {
            e0.a aVar2 = new e0.a(S);
            g0 g0Var = S.f6434e;
            if (g0Var != null) {
                z b = g0Var.b();
                if (b != null) {
                    aVar2.c("Content-Type", b.a);
                }
                long a = g0Var.a();
                if (a != -1) {
                    aVar2.c("Content-Length", String.valueOf(a));
                    aVar2.g("Transfer-Encoding");
                } else {
                    aVar2.c("Transfer-Encoding", "chunked");
                    aVar2.g("Content-Length");
                }
            }
            int i2 = 0;
            if (S.b("Host") == null) {
                aVar2.c("Host", b.C(S.b, false));
            }
            if (S.b("Connection") == null) {
                aVar2.c("Connection", "Keep-Alive");
            }
            if (S.b("Accept-Encoding") == null && S.b("Range") == null) {
                aVar2.c("Accept-Encoding", "gzip");
                z = true;
            } else {
                z = false;
            }
            List<n> a2 = this.a.a(S.b);
            if (!a2.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (Object obj : a2) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        n nVar = (n) obj;
                        if (i2 > 0) {
                            sb.append("; ");
                        }
                        sb.append(nVar.a);
                        sb.append('=');
                        sb.append(nVar.b);
                        i2 = i3;
                    } else {
                        h.q1();
                        throw null;
                    }
                }
                String sb2 = sb.toString();
                g.b(sb2, "StringBuilder().apply(builderAction).toString()");
                aVar2.c("Cookie", sb2);
            }
            if (S.b("User-Agent") == null) {
                aVar2.c("User-Agent", "okhttp/4.2.2");
            }
            h0 d2 = aVar.d(aVar2.b());
            e.b(this.a, S.b, d2.f6451g);
            h0.a aVar3 = new h0.a(d2);
            aVar3.a = S;
            if (z && d.d("gzip", h0.f(d2, "Content-Encoding", null, 2), true) && e.a(d2) && (i0Var = d2.f6452h) != null) {
                o oVar = new o(i0Var.G());
                w.a d3 = d2.f6451g.d();
                d3.f("Content-Encoding");
                d3.f("Content-Length");
                aVar3.f(d3.d());
                aVar3.f6462g = new h(h0.f(d2, "Content-Type", null, 2), -1, j.b.h(oVar));
            }
            return aVar3.b();
        }
        throw null;
    }
}
