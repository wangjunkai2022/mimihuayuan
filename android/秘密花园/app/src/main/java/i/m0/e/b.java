package i.m0.e;

import androidx.core.app.NotificationCompat;
import f.b.a.a.a;
import h.o.c.g;
import h.s.d;
import i.c0;
import i.e0;
import i.f;
import i.g0;
import i.h0;
import i.i0;
import i.m0.d.c;
import i.m0.d.h;
import i.t;
import i.v;
import i.w;
import i.y;
import j.i;
import java.io.IOException;
import java.net.ProtocolException;

/* compiled from: CallServerInterceptor.kt */
/* loaded from: classes.dex */
public final class b implements y {
    public final boolean a;

    public b(boolean z) {
        this.a = z;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:146:0x02cf */
    /* JADX DEBUG: Multi-variable search result rejected for r1v18, resolved type: i.m0.d.c */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        boolean z;
        h0.a aVar2;
        int i2;
        c cVar;
        h0 h0Var;
        IOException e2;
        t tVar;
        f fVar;
        g gVar = (g) aVar;
        c cVar2 = gVar.f6588d;
        if (cVar2 != null) {
            e0 e0Var = gVar.f6590f;
            g0 g0Var = e0Var.f6434e;
            long currentTimeMillis = System.currentTimeMillis();
            try {
                t tVar2 = cVar2.f6532d;
                f fVar2 = cVar2.f6531c;
                if (tVar2 == null) {
                    throw null;
                } else if (fVar2 != null) {
                    cVar2.f6534f.b(e0Var);
                    t tVar3 = cVar2.f6532d;
                    f fVar3 = cVar2.f6531c;
                    if (tVar3 == null) {
                        throw null;
                    } else if (fVar3 != null) {
                        if (!f.a(e0Var.f6432c) || g0Var == null) {
                            cVar2.b.e(cVar2, true, false, null);
                            z = false;
                            aVar2 = null;
                        } else {
                            if (d.d("100-continue", e0Var.b("Expect"), true)) {
                                try {
                                    cVar2.f6534f.c();
                                    t tVar4 = cVar2.f6532d;
                                    f fVar4 = cVar2.f6531c;
                                    if (tVar4 == null) {
                                        throw null;
                                    } else if (fVar4 != null) {
                                        aVar2 = cVar2.d(true);
                                        z = true;
                                    } else {
                                        g.f(NotificationCompat.CATEGORY_CALL);
                                        throw null;
                                    }
                                } catch (IOException e3) {
                                    cVar2.f6532d.c(cVar2.f6531c, e3);
                                    cVar2.e(e3);
                                    throw e3;
                                }
                            } else {
                                z = false;
                                aVar2 = null;
                            }
                            if (aVar2 == null) {
                                i g2 = j.b.g(cVar2.c(e0Var, false));
                                g0Var.e(g2);
                                ((j.t) g2).close();
                            } else {
                                cVar2.b.e(cVar2, true, false, null);
                                h b = cVar2.b();
                                if (b == null) {
                                    g.e();
                                    throw null;
                                } else if (!b.g()) {
                                    h h2 = cVar2.f6534f.h();
                                    if (h2 != null) {
                                        h2.i();
                                    } else {
                                        g.e();
                                        throw null;
                                    }
                                }
                            }
                        }
                        try {
                            cVar2.f6534f.a();
                            if (!z) {
                                t tVar5 = cVar2.f6532d;
                                f fVar5 = cVar2.f6531c;
                                if (tVar5 == null) {
                                    throw null;
                                } else if (fVar5 == null) {
                                    g.f(NotificationCompat.CATEGORY_CALL);
                                    throw null;
                                }
                            }
                            if (aVar2 == null && (aVar2 = cVar2.d(false)) == null) {
                                g.e();
                                throw null;
                            }
                            aVar2.a = e0Var;
                            h b2 = cVar2.b();
                            if (b2 != null) {
                                aVar2.f6460e = b2.f6553d;
                                aVar2.f6466k = currentTimeMillis;
                                aVar2.f6467l = System.currentTimeMillis();
                                h0 b3 = aVar2.b();
                                int i3 = b3.f6449e;
                                if (i3 == 100) {
                                    h0.a d2 = cVar2.d(false);
                                    if (d2 != null) {
                                        d2.a = e0Var;
                                        h b4 = cVar2.b();
                                        if (b4 != null) {
                                            d2.f6460e = b4.f6553d;
                                            d2.f6466k = currentTimeMillis;
                                            d2.f6467l = System.currentTimeMillis();
                                            b3 = d2.b();
                                            i3 = b3.f6449e;
                                        } else {
                                            g.e();
                                            throw null;
                                        }
                                    } else {
                                        g.e();
                                        throw null;
                                    }
                                }
                                t tVar6 = cVar2.f6532d;
                                f fVar6 = cVar2.f6531c;
                                if (tVar6 == null) {
                                    throw null;
                                } else if (fVar6 != null) {
                                    if (!this.a || i3 != 101) {
                                        i2 = i3;
                                        e0 e0Var2 = b3.b;
                                        c0 c0Var = b3.f6447c;
                                        c cVar3 = b3.f6449e;
                                        String str = b3.f6448d;
                                        v vVar = b3.f6450f;
                                        w.a d3 = b3.f6451g.d();
                                        h0 h0Var2 = b3.f6453i;
                                        h0 h0Var3 = b3.f6454j;
                                        h0 h0Var4 = b3.f6455k;
                                        long j2 = b3.f6456l;
                                        long j3 = b3.f6457m;
                                        c cVar4 = b3.n;
                                        try {
                                            tVar = cVar2.f6532d;
                                            fVar = cVar2.f6531c;
                                        } catch (IOException e4) {
                                            e2 = e4;
                                            cVar3 = cVar2;
                                        }
                                        try {
                                            if (tVar == null) {
                                                throw null;
                                            } else if (fVar != null) {
                                                String f2 = h0.f(b3, "Content-Type", null, 2);
                                                long d4 = cVar2.f6534f.d(b3);
                                                h hVar = new h(f2, d4, j.b.h(new c.b(cVar2, cVar2.f6534f.e(b3), d4)));
                                                if (!(cVar3 >= 0)) {
                                                    throw new IllegalStateException(a.J("code < 0: ", cVar3).toString());
                                                } else if (e0Var2 == null) {
                                                    throw new IllegalStateException("request == null".toString());
                                                } else if (c0Var == null) {
                                                    throw new IllegalStateException("protocol == null".toString());
                                                } else if (str != null) {
                                                    cVar = cVar2;
                                                    h0Var = new h0(e0Var2, c0Var, str, cVar3, vVar, d3.d(), hVar, h0Var2, h0Var3, h0Var4, j2, j3, cVar4);
                                                } else {
                                                    throw new IllegalStateException("message == null".toString());
                                                }
                                            } else {
                                                g.f(NotificationCompat.CATEGORY_CALL);
                                                throw null;
                                            }
                                        } catch (IOException e5) {
                                            e2 = e5;
                                            cVar3.f6532d.d(cVar3.f6531c, e2);
                                            cVar3.e(e2);
                                            throw e2;
                                        }
                                    } else {
                                        e0 e0Var3 = b3.b;
                                        c0 c0Var2 = b3.f6447c;
                                        int i4 = b3.f6449e;
                                        String str2 = b3.f6448d;
                                        v vVar2 = b3.f6450f;
                                        w.a d5 = b3.f6451g.d();
                                        h0 h0Var5 = b3.f6453i;
                                        h0 h0Var6 = b3.f6454j;
                                        h0 h0Var7 = b3.f6455k;
                                        i2 = i3;
                                        long j4 = b3.f6456l;
                                        long j5 = b3.f6457m;
                                        c cVar5 = b3.n;
                                        i0 i0Var = i.m0.b.f6501c;
                                        if (!(i4 >= 0)) {
                                            throw new IllegalStateException(a.J("code < 0: ", i4).toString());
                                        } else if (e0Var3 == null) {
                                            throw new IllegalStateException("request == null".toString());
                                        } else if (c0Var2 == null) {
                                            throw new IllegalStateException("protocol == null".toString());
                                        } else if (str2 != null) {
                                            h0Var = new h0(e0Var3, c0Var2, str2, i4, vVar2, d5.d(), i0Var, h0Var5, h0Var6, h0Var7, j4, j5, cVar5);
                                            cVar = cVar2;
                                        } else {
                                            throw new IllegalStateException("message == null".toString());
                                        }
                                    }
                                    if (d.d("close", h0Var.b.b("Connection"), true) || d.d("close", h0.f(h0Var, "Connection", null, 2), true)) {
                                        h h3 = cVar.f6534f.h();
                                        if (h3 != null) {
                                            h3.i();
                                        } else {
                                            g.e();
                                            throw null;
                                        }
                                    }
                                    if (i2 == 204 || i2 == 205) {
                                        i0 i0Var2 = h0Var.f6452h;
                                        if ((i0Var2 != null ? i0Var2.g() : -1) > 0) {
                                            StringBuilder p = a.p("HTTP ", i2, " had non-zero Content-Length: ");
                                            i0 i0Var3 = h0Var.f6452h;
                                            p.append(i0Var3 != null ? Long.valueOf(i0Var3.g()) : null);
                                            throw new ProtocolException(p.toString());
                                        }
                                    }
                                    return h0Var;
                                } else {
                                    g.f(NotificationCompat.CATEGORY_CALL);
                                    throw null;
                                }
                            } else {
                                g.e();
                                throw null;
                            }
                        } catch (IOException e6) {
                            cVar2.f6532d.c(cVar2.f6531c, e6);
                            cVar2.e(e6);
                            throw e6;
                        }
                    } else {
                        g.f(NotificationCompat.CATEGORY_CALL);
                        throw null;
                    }
                } else {
                    g.f(NotificationCompat.CATEGORY_CALL);
                    throw null;
                }
            } catch (IOException e7) {
                cVar2.f6532d.c(cVar2.f6531c, e7);
                cVar2.e(e7);
                throw e7;
            }
        } else {
            g.e();
            throw null;
        }
    }
}
