package i.m0.e;

import androidx.core.app.NotificationCompat;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.m0.d.c;
import i.t;
import i.v;
import i.w;
import i.y;
import java.io.IOException;
import java.net.ProtocolException;
/* compiled from: CallServerInterceptor.kt */
/* loaded from: classes.dex */
public final class b implements y {
    public final boolean a;

    public b(boolean z) {
        this.a = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        boolean z;
        h0.a aVar2;
        int i2;
        t tVar;
        i.f fVar;
        i.m0.d.c cVar;
        h0 h0Var;
        g gVar = (g) aVar;
        i.m0.d.c cVar2 = gVar.f6672d;
        if (cVar2 != null) {
            e0 e0Var = gVar.f6674f;
            g0 g0Var = e0Var.f6518e;
            long currentTimeMillis = System.currentTimeMillis();
            try {
                t tVar2 = cVar2.f6616d;
                i.f fVar2 = cVar2.f6615c;
                if (tVar2 != null) {
                    if (fVar2 != null) {
                        cVar2.f6618f.b(e0Var);
                        t tVar3 = cVar2.f6616d;
                        i.f fVar3 = cVar2.f6615c;
                        if (tVar3 != null) {
                            if (fVar3 != null) {
                                if (f.a(e0Var.f6516c) && g0Var != null) {
                                    if (h.s.d.d("100-continue", e0Var.b("Expect"), true)) {
                                        try {
                                            cVar2.f6618f.c();
                                            t tVar4 = cVar2.f6616d;
                                            i.f fVar4 = cVar2.f6615c;
                                            if (tVar4 == null) {
                                                throw null;
                                            }
                                            if (fVar4 != null) {
                                                aVar2 = cVar2.d(true);
                                                z = true;
                                            } else {
                                                h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                                                throw null;
                                            }
                                        } catch (IOException e2) {
                                            cVar2.f6616d.c(cVar2.f6615c, e2);
                                            cVar2.e(e2);
                                            throw e2;
                                        }
                                    } else {
                                        z = false;
                                        aVar2 = null;
                                    }
                                    if (aVar2 == null) {
                                        j.i g2 = j.b.g(cVar2.c(e0Var, false));
                                        g0Var.e(g2);
                                        ((j.t) g2).close();
                                    } else {
                                        cVar2.b.e(cVar2, true, false, null);
                                        i.m0.d.h b = cVar2.b();
                                        if (b == null) {
                                            h.o.c.g.e();
                                            throw null;
                                        } else if (!b.g()) {
                                            i.m0.d.h h2 = cVar2.f6618f.h();
                                            if (h2 == null) {
                                                h.o.c.g.e();
                                                throw null;
                                            }
                                            h2.i();
                                        }
                                    }
                                } else {
                                    cVar2.b.e(cVar2, true, false, null);
                                    z = false;
                                    aVar2 = null;
                                }
                                try {
                                    cVar2.f6618f.a();
                                    if (!z) {
                                        t tVar5 = cVar2.f6616d;
                                        i.f fVar5 = cVar2.f6615c;
                                        if (tVar5 == null) {
                                            throw null;
                                        }
                                        if (fVar5 == null) {
                                            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                                            throw null;
                                        }
                                    }
                                    if (aVar2 == null && (aVar2 = cVar2.d(false)) == null) {
                                        h.o.c.g.e();
                                        throw null;
                                    }
                                    aVar2.a = e0Var;
                                    i.m0.d.h b2 = cVar2.b();
                                    if (b2 != null) {
                                        aVar2.f6544e = b2.f6637d;
                                        aVar2.f6550k = currentTimeMillis;
                                        aVar2.f6551l = System.currentTimeMillis();
                                        h0 b3 = aVar2.b();
                                        int i3 = b3.f6533e;
                                        if (i3 == 100) {
                                            h0.a d2 = cVar2.d(false);
                                            if (d2 != null) {
                                                d2.a = e0Var;
                                                i.m0.d.h b4 = cVar2.b();
                                                if (b4 != null) {
                                                    d2.f6544e = b4.f6637d;
                                                    d2.f6550k = currentTimeMillis;
                                                    d2.f6551l = System.currentTimeMillis();
                                                    b3 = d2.b();
                                                    i3 = b3.f6533e;
                                                } else {
                                                    h.o.c.g.e();
                                                    throw null;
                                                }
                                            } else {
                                                h.o.c.g.e();
                                                throw null;
                                            }
                                        }
                                        t tVar6 = cVar2.f6616d;
                                        i.f fVar6 = cVar2.f6615c;
                                        if (tVar6 != null) {
                                            if (fVar6 != null) {
                                                if (this.a && i3 == 101) {
                                                    e0 e0Var2 = b3.b;
                                                    c0 c0Var = b3.f6531c;
                                                    int i4 = b3.f6533e;
                                                    String str = b3.f6532d;
                                                    v vVar = b3.f6534f;
                                                    w.a d3 = b3.f6535g.d();
                                                    h0 h0Var2 = b3.f6537i;
                                                    h0 h0Var3 = b3.f6538j;
                                                    h0 h0Var4 = b3.f6539k;
                                                    i2 = i3;
                                                    long j2 = b3.f6540l;
                                                    long j3 = b3.f6541m;
                                                    i.m0.d.c cVar3 = b3.n;
                                                    i0 i0Var = i.m0.b.f6585c;
                                                    if (!(i4 >= 0)) {
                                                        throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i4).toString());
                                                    }
                                                    if (e0Var2 == null) {
                                                        throw new IllegalStateException("request == null".toString());
                                                    }
                                                    if (c0Var == null) {
                                                        throw new IllegalStateException("protocol == null".toString());
                                                    }
                                                    if (str != null) {
                                                        h0Var = new h0(e0Var2, c0Var, str, i4, vVar, d3.d(), i0Var, h0Var2, h0Var3, h0Var4, j2, j3, cVar3);
                                                        cVar = cVar2;
                                                    } else {
                                                        throw new IllegalStateException("message == null".toString());
                                                    }
                                                } else {
                                                    i2 = i3;
                                                    e0 e0Var3 = b3.b;
                                                    c0 c0Var2 = b3.f6531c;
                                                    i.m0.d.c cVar4 = b3.f6533e;
                                                    String str2 = b3.f6532d;
                                                    v vVar2 = b3.f6534f;
                                                    w.a d4 = b3.f6535g.d();
                                                    h0 h0Var5 = b3.f6537i;
                                                    h0 h0Var6 = b3.f6538j;
                                                    h0 h0Var7 = b3.f6539k;
                                                    long j4 = b3.f6540l;
                                                    long j5 = b3.f6541m;
                                                    i.m0.d.c cVar5 = b3.n;
                                                    try {
                                                        tVar = cVar2.f6616d;
                                                        fVar = cVar2.f6615c;
                                                    } catch (IOException e3) {
                                                        e = e3;
                                                        cVar4 = cVar2;
                                                    }
                                                    try {
                                                        if (tVar == null) {
                                                            throw null;
                                                        }
                                                        if (fVar != null) {
                                                            String f2 = h0.f(b3, "Content-Type", null, 2);
                                                            long d5 = cVar2.f6618f.d(b3);
                                                            h hVar = new h(f2, d5, j.b.h(new c.b(cVar2, cVar2.f6618f.e(b3), d5)));
                                                            if (!(cVar4 >= 0)) {
                                                                throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", cVar4).toString());
                                                            }
                                                            if (e0Var3 == null) {
                                                                throw new IllegalStateException("request == null".toString());
                                                            }
                                                            if (c0Var2 == null) {
                                                                throw new IllegalStateException("protocol == null".toString());
                                                            }
                                                            if (str2 != null) {
                                                                cVar = cVar2;
                                                                h0Var = new h0(e0Var3, c0Var2, str2, cVar4, vVar2, d4.d(), hVar, h0Var5, h0Var6, h0Var7, j4, j5, cVar5);
                                                            } else {
                                                                throw new IllegalStateException("message == null".toString());
                                                            }
                                                        } else {
                                                            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                                                            throw null;
                                                        }
                                                    } catch (IOException e4) {
                                                        e = e4;
                                                        cVar4.f6616d.d(cVar4.f6615c, e);
                                                        cVar4.e(e);
                                                        throw e;
                                                    }
                                                }
                                                if (h.s.d.d("close", h0Var.b.b("Connection"), true) || h.s.d.d("close", h0.f(h0Var, "Connection", null, 2), true)) {
                                                    i.m0.d.h h3 = cVar.f6618f.h();
                                                    if (h3 == null) {
                                                        h.o.c.g.e();
                                                        throw null;
                                                    }
                                                    h3.i();
                                                }
                                                int i5 = i2;
                                                if (i5 == 204 || i5 == 205) {
                                                    i0 i0Var2 = h0Var.f6536h;
                                                    if ((i0Var2 != null ? i0Var2.g() : -1L) > 0) {
                                                        StringBuilder p = f.b.a.a.a.p("HTTP ", i5, " had non-zero Content-Length: ");
                                                        i0 i0Var3 = h0Var.f6536h;
                                                        p.append(i0Var3 != null ? Long.valueOf(i0Var3.g()) : null);
                                                        throw new ProtocolException(p.toString());
                                                    }
                                                }
                                                return h0Var;
                                            }
                                            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                                            throw null;
                                        }
                                        throw null;
                                    }
                                    h.o.c.g.e();
                                    throw null;
                                } catch (IOException e5) {
                                    cVar2.f6616d.c(cVar2.f6615c, e5);
                                    cVar2.e(e5);
                                    throw e5;
                                }
                            }
                            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                            throw null;
                        }
                        throw null;
                    }
                    h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                    throw null;
                }
                throw null;
            } catch (IOException e6) {
                cVar2.f6616d.c(cVar2.f6615c, e6);
                cVar2.e(e6);
                throw e6;
            }
        }
        h.o.c.g.e();
        throw null;
    }
}
