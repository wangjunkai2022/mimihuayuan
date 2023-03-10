package i;

import i.w;
import java.io.Closeable;
/* compiled from: Response.kt */
/* loaded from: classes.dex */
public final class h0 implements Closeable {
    public e a;
    public final e0 b;

    /* renamed from: c  reason: collision with root package name */
    public final c0 f6531c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6532d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6533e;

    /* renamed from: f  reason: collision with root package name */
    public final v f6534f;

    /* renamed from: g  reason: collision with root package name */
    public final w f6535g;

    /* renamed from: h  reason: collision with root package name */
    public final i0 f6536h;

    /* renamed from: i  reason: collision with root package name */
    public final h0 f6537i;

    /* renamed from: j  reason: collision with root package name */
    public final h0 f6538j;

    /* renamed from: k  reason: collision with root package name */
    public final h0 f6539k;

    /* renamed from: l  reason: collision with root package name */
    public final long f6540l;

    /* renamed from: m  reason: collision with root package name */
    public final long f6541m;
    public final i.m0.d.c n;

    public h0(e0 e0Var, c0 c0Var, String str, int i2, v vVar, w wVar, i0 i0Var, h0 h0Var, h0 h0Var2, h0 h0Var3, long j2, long j3, i.m0.d.c cVar) {
        if (e0Var == null) {
            h.o.c.g.f("request");
            throw null;
        } else if (c0Var == null) {
            h.o.c.g.f("protocol");
            throw null;
        } else if (str == null) {
            h.o.c.g.f("message");
            throw null;
        } else if (wVar == null) {
            h.o.c.g.f("headers");
            throw null;
        } else {
            this.b = e0Var;
            this.f6531c = c0Var;
            this.f6532d = str;
            this.f6533e = i2;
            this.f6534f = vVar;
            this.f6535g = wVar;
            this.f6536h = i0Var;
            this.f6537i = h0Var;
            this.f6538j = h0Var2;
            this.f6539k = h0Var3;
            this.f6540l = j2;
            this.f6541m = j3;
            this.n = cVar;
        }
    }

    public static String f(h0 h0Var, String str, String str2, int i2) {
        int i3 = i2 & 2;
        if (str != null) {
            String b = h0Var.f6535g.b(str);
            if (b != null) {
                return b;
            }
            return null;
        }
        h.o.c.g.f("name");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i0 i0Var = this.f6536h;
        if (i0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
        }
        i0Var.close();
    }

    public final e d() {
        e eVar = this.a;
        if (eVar == null) {
            e b = e.n.b(this.f6535g);
            this.a = b;
            return b;
        }
        return eVar;
    }

    public final String e(String str) {
        return f(this, str, null, 2);
    }

    public final boolean g() {
        int i2 = this.f6533e;
        return 200 <= i2 && 299 >= i2;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Response{protocol=");
        o.append(this.f6531c);
        o.append(", code=");
        o.append(this.f6533e);
        o.append(", message=");
        o.append(this.f6532d);
        o.append(", url=");
        o.append(this.b.b);
        o.append('}');
        return o.toString();
    }

    /* compiled from: Response.kt */
    /* loaded from: classes.dex */
    public static class a {
        public e0 a;
        public c0 b;

        /* renamed from: c  reason: collision with root package name */
        public int f6542c;

        /* renamed from: d  reason: collision with root package name */
        public String f6543d;

        /* renamed from: e  reason: collision with root package name */
        public v f6544e;

        /* renamed from: f  reason: collision with root package name */
        public w.a f6545f;

        /* renamed from: g  reason: collision with root package name */
        public i0 f6546g;

        /* renamed from: h  reason: collision with root package name */
        public h0 f6547h;

        /* renamed from: i  reason: collision with root package name */
        public h0 f6548i;

        /* renamed from: j  reason: collision with root package name */
        public h0 f6549j;

        /* renamed from: k  reason: collision with root package name */
        public long f6550k;

        /* renamed from: l  reason: collision with root package name */
        public long f6551l;

        /* renamed from: m  reason: collision with root package name */
        public i.m0.d.c f6552m;

        public a() {
            this.f6542c = -1;
            this.f6545f = new w.a();
        }

        public a a(String str, String str2) {
            this.f6545f.a(str, str2);
            return this;
        }

        public h0 b() {
            if (this.f6542c >= 0) {
                e0 e0Var = this.a;
                if (e0Var != null) {
                    c0 c0Var = this.b;
                    if (c0Var != null) {
                        String str = this.f6543d;
                        if (str != null) {
                            return new h0(e0Var, c0Var, str, this.f6542c, this.f6544e, this.f6545f.d(), this.f6546g, this.f6547h, this.f6548i, this.f6549j, this.f6550k, this.f6551l, this.f6552m);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            StringBuilder o = f.b.a.a.a.o("code < 0: ");
            o.append(this.f6542c);
            throw new IllegalStateException(o.toString().toString());
        }

        public a c(h0 h0Var) {
            d("cacheResponse", h0Var);
            this.f6548i = h0Var;
            return this;
        }

        public final void d(String str, h0 h0Var) {
            if (h0Var != null) {
                if (h0Var.f6536h == null) {
                    if (h0Var.f6537i == null) {
                        if (h0Var.f6538j == null) {
                            if (!(h0Var.f6539k == null)) {
                                throw new IllegalArgumentException(f.b.a.a.a.f(str, ".priorResponse != null").toString());
                            }
                            return;
                        }
                        throw new IllegalArgumentException(f.b.a.a.a.f(str, ".cacheResponse != null").toString());
                    }
                    throw new IllegalArgumentException(f.b.a.a.a.f(str, ".networkResponse != null").toString());
                }
                throw new IllegalArgumentException(f.b.a.a.a.f(str, ".body != null").toString());
            }
        }

        public a e(String str, String str2) {
            if (str2 != null) {
                this.f6545f.g(str, str2);
                return this;
            }
            h.o.c.g.f("value");
            throw null;
        }

        public a f(w wVar) {
            if (wVar != null) {
                this.f6545f = wVar.d();
                return this;
            }
            h.o.c.g.f("headers");
            throw null;
        }

        public a g(String str) {
            if (str != null) {
                this.f6543d = str;
                return this;
            }
            h.o.c.g.f("message");
            throw null;
        }

        public a h(c0 c0Var) {
            if (c0Var != null) {
                this.b = c0Var;
                return this;
            }
            h.o.c.g.f("protocol");
            throw null;
        }

        public a i(String str) {
            this.f6545f.f(str);
            return this;
        }

        public a j(e0 e0Var) {
            if (e0Var != null) {
                this.a = e0Var;
                return this;
            }
            h.o.c.g.f("request");
            throw null;
        }

        public a(h0 h0Var) {
            if (h0Var != null) {
                this.f6542c = -1;
                this.a = h0Var.b;
                this.b = h0Var.f6531c;
                this.f6542c = h0Var.f6533e;
                this.f6543d = h0Var.f6532d;
                this.f6544e = h0Var.f6534f;
                this.f6545f = h0Var.f6535g.d();
                this.f6546g = h0Var.f6536h;
                this.f6547h = h0Var.f6537i;
                this.f6548i = h0Var.f6538j;
                this.f6549j = h0Var.f6539k;
                this.f6550k = h0Var.f6540l;
                this.f6551l = h0Var.f6541m;
                this.f6552m = h0Var.n;
                return;
            }
            h.o.c.g.f("response");
            throw null;
        }
    }
}
