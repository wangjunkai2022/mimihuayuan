package i.m0.d;

import androidx.core.app.NotificationCompat;
import i.e0;
import i.g0;
import i.h0;
import i.m0.g.s;
import i.t;
import j.a0;
import j.y;
import java.io.IOException;
import java.net.ProtocolException;

/* compiled from: Exchange.kt */
/* loaded from: classes.dex */
public final class c {
    public boolean a;
    public final m b;

    /* renamed from: c  reason: collision with root package name */
    public final i.f f6531c;

    /* renamed from: d  reason: collision with root package name */
    public final t f6532d;

    /* renamed from: e  reason: collision with root package name */
    public final d f6533e;

    /* renamed from: f  reason: collision with root package name */
    public final i.m0.e.d f6534f;

    /* compiled from: Exchange.kt */
    /* loaded from: classes.dex */
    public final class a extends j.l {
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public long f6535c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f6536d;

        /* renamed from: e  reason: collision with root package name */
        public final long f6537e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ c f6538f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, y yVar, long j2) {
            super(yVar);
            if (yVar != null) {
                this.f6538f = cVar;
                this.f6537e = j2;
                return;
            }
            h.o.c.g.f("delegate");
            throw null;
        }

        @Override // j.l, j.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f6536d) {
                return;
            }
            this.f6536d = true;
            long j2 = this.f6537e;
            if (j2 != -1 && this.f6535c != j2) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                d(null);
            } catch (IOException e2) {
                throw d(e2);
            }
        }

        public final <E extends IOException> E d(E e2) {
            if (this.b) {
                return e2;
            }
            this.b = true;
            return (E) this.f6538f.a(this.f6535c, false, true, e2);
        }

        @Override // j.l, j.y, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e2) {
                throw d(e2);
            }
        }

        @Override // j.l, j.y
        public void j(j.g gVar, long j2) throws IOException {
            if (gVar != null) {
                if (!this.f6536d) {
                    long j3 = this.f6537e;
                    if (j3 != -1 && this.f6535c + j2 > j3) {
                        StringBuilder o = f.b.a.a.a.o("expected ");
                        o.append(this.f6537e);
                        o.append(" bytes but received ");
                        o.append(this.f6535c + j2);
                        throw new ProtocolException(o.toString());
                    }
                    try {
                        super.j(gVar, j2);
                        this.f6535c += j2;
                        return;
                    } catch (IOException e2) {
                        throw d(e2);
                    }
                }
                throw new IllegalStateException("closed".toString());
            }
            h.o.c.g.f("source");
            throw null;
        }
    }

    /* compiled from: Exchange.kt */
    /* loaded from: classes.dex */
    public final class b extends j.m {
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6539c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f6540d;

        /* renamed from: e  reason: collision with root package name */
        public final long f6541e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ c f6542f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c cVar, a0 a0Var, long j2) {
            super(a0Var);
            if (a0Var != null) {
                this.f6542f = cVar;
                this.f6541e = j2;
                if (j2 == 0) {
                    d(null);
                    return;
                }
                return;
            }
            h.o.c.g.f("delegate");
            throw null;
        }

        @Override // j.m, j.a0
        public long c(j.g gVar, long j2) throws IOException {
            if (gVar != null) {
                if (!this.f6540d) {
                    try {
                        long c2 = this.a.c(gVar, j2);
                        if (c2 == -1) {
                            d(null);
                            return -1L;
                        }
                        long j3 = this.b + c2;
                        if (this.f6541e != -1 && j3 > this.f6541e) {
                            throw new ProtocolException("expected " + this.f6541e + " bytes but received " + j3);
                        }
                        this.b = j3;
                        if (j3 == this.f6541e) {
                            d(null);
                        }
                        return c2;
                    } catch (IOException e2) {
                        throw d(e2);
                    }
                }
                throw new IllegalStateException("closed".toString());
            }
            h.o.c.g.f("sink");
            throw null;
        }

        @Override // j.m, j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f6540d) {
                return;
            }
            this.f6540d = true;
            try {
                super.close();
                d(null);
            } catch (IOException e2) {
                throw d(e2);
            }
        }

        public final <E extends IOException> E d(E e2) {
            if (this.f6539c) {
                return e2;
            }
            this.f6539c = true;
            return (E) this.f6542f.a(this.b, true, false, e2);
        }
    }

    public c(m mVar, i.f fVar, t tVar, d dVar, i.m0.e.d dVar2) {
        if (fVar == null) {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (tVar == null) {
            h.o.c.g.f("eventListener");
            throw null;
        } else if (dVar == null) {
            h.o.c.g.f("finder");
            throw null;
        } else {
            this.b = mVar;
            this.f6531c = fVar;
            this.f6532d = tVar;
            this.f6533e = dVar;
            this.f6534f = dVar2;
        }
    }

    public final <E extends IOException> E a(long j2, boolean z, boolean z2, E e2) {
        if (e2 != null) {
            e(e2);
        }
        if (z2) {
            if (e2 != null) {
                this.f6532d.c(this.f6531c, e2);
            } else {
                t tVar = this.f6532d;
                i.f fVar = this.f6531c;
                if (tVar == null) {
                    throw null;
                }
                if (fVar == null) {
                    h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                    throw null;
                }
            }
        }
        if (z) {
            if (e2 != null) {
                this.f6532d.d(this.f6531c, e2);
            } else {
                t tVar2 = this.f6532d;
                i.f fVar2 = this.f6531c;
                if (tVar2 == null) {
                    throw null;
                }
                if (fVar2 == null) {
                    h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                    throw null;
                }
            }
        }
        return (E) this.b.e(this, z2, z, e2);
    }

    public final h b() {
        return this.f6534f.h();
    }

    public final y c(e0 e0Var, boolean z) throws IOException {
        this.a = z;
        g0 g0Var = e0Var.f6434e;
        if (g0Var != null) {
            long a2 = g0Var.a();
            t tVar = this.f6532d;
            i.f fVar = this.f6531c;
            if (tVar != null) {
                if (fVar != null) {
                    return new a(this, this.f6534f.f(e0Var, a2), a2);
                }
                h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                throw null;
            }
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public final h0.a d(boolean z) throws IOException {
        try {
            h0.a g2 = this.f6534f.g(z);
            if (g2 != null) {
                g2.f6468m = this;
            }
            return g2;
        } catch (IOException e2) {
            this.f6532d.d(this.f6531c, e2);
            e(e2);
            throw e2;
        }
    }

    public final void e(IOException iOException) {
        this.f6533e.e();
        h h2 = this.f6534f.h();
        if (h2 != null) {
            boolean z = !Thread.holdsLock(h2.p);
            if (h.j.a && !z) {
                throw new AssertionError("Assertion failed");
            }
            synchronized (h2.p) {
                if (iOException instanceof s) {
                    int ordinal = ((s) iOException).a.ordinal();
                    if (ordinal == 4) {
                        int i2 = h2.f6561l + 1;
                        h2.f6561l = i2;
                        if (i2 > 1) {
                            h2.f6558i = true;
                            h2.f6559j++;
                        }
                    } else if (ordinal != 5) {
                        h2.f6558i = true;
                        h2.f6559j++;
                    }
                } else if (!h2.g() || (iOException instanceof i.m0.g.a)) {
                    h2.f6558i = true;
                    if (h2.f6560k == 0) {
                        h2.p.a(h2.q, iOException);
                        h2.f6559j++;
                    }
                }
            }
            return;
        }
        h.o.c.g.e();
        throw null;
    }
}
