package i;

import i.w;
import java.io.Closeable;

/* compiled from: Response.kt */
/* loaded from: classes.dex */
public final class h0 implements Closeable {
    public e a;
    public final e0 b;

    /* renamed from: c  reason: collision with root package name */
    public final c0 f6522c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6523d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6524e;

    /* renamed from: f  reason: collision with root package name */
    public final v f6525f;

    /* renamed from: g  reason: collision with root package name */
    public final w f6526g;

    /* renamed from: h  reason: collision with root package name */
    public final i0 f6527h;

    /* renamed from: i  reason: collision with root package name */
    public final h0 f6528i;

    /* renamed from: j  reason: collision with root package name */
    public final h0 f6529j;

    /* renamed from: k  reason: collision with root package name */
    public final h0 f6530k;

    /* renamed from: l  reason: collision with root package name */
    public final long f6531l;

    /* renamed from: m  reason: collision with root package name */
    public final long f6532m;
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
            this.f6522c = c0Var;
            this.f6523d = str;
            this.f6524e = i2;
            this.f6525f = vVar;
            this.f6526g = wVar;
            this.f6527h = i0Var;
            this.f6528i = h0Var;
            this.f6529j = h0Var2;
            this.f6530k = h0Var3;
            this.f6531l = j2;
            this.f6532m = j3;
            this.n = cVar;
        }
    }

    public static String f(h0 h0Var, String str, String str2, int i2) {
        int i3 = i2 & 2;
        if (str != null) {
            String b = h0Var.f6526g.b(str);
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
        i0 i0Var = this.f6527h;
        if (i0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
        }
        i0Var.close();
    }

    public final e d() {
        e eVar = this.a;
        if (eVar == null) {
            e b = e.n.b(this.f6526g);
            this.a = b;
            return b;
        }
        return eVar;
    }

    public final String e(String str) {
        return f(this, str, null, 2);
    }

    public final boolean g() {
        int i2 = this.f6524e;
        return 200 <= i2 && 299 >= i2;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Response{protocol=");
        o.append(this.f6522c);
        o.append(", code=");
        o.append(this.f6524e);
        o.append(", message=");
        o.append(this.f6523d);
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
        public int f6533c;

        /* renamed from: d  reason: collision with root package name */
        public String f6534d;

        /* renamed from: e  reason: collision with root package name */
        public v f6535e;

        /* renamed from: f  reason: collision with root package name */
        public w.a f6536f;

        /* renamed from: g  reason: collision with root package name */
        public i0 f6537g;

        /* renamed from: h  reason: collision with root package name */
        public h0 f6538h;

        /* renamed from: i  reason: collision with root package name */
        public h0 f6539i;

        /* renamed from: j  reason: collision with root package name */
        public h0 f6540j;

        /* renamed from: k  reason: collision with root package name */
        public long f6541k;

        /* renamed from: l  reason: collision with root package name */
        public long f6542l;

        /* renamed from: m  reason: collision with root package name */
        public i.m0.d.c f6543m;

        public a() {
            this.f6533c = -1;
            this.f6536f = new w.a();
        }

        public a a(String str, String str2) {
            this.f6536f.a(str, str2);
            return this;
        }

        public h0 b() {
            if (this.f6533c >= 0) {
                e0 e0Var = this.a;
                if (e0Var != null) {
                    c0 c0Var = this.b;
                    if (c0Var != null) {
                        String str = this.f6534d;
                        if (str != null) {
                            return new h0(e0Var, c0Var, str, this.f6533c, this.f6535e, this.f6536f.d(), this.f6537g, this.f6538h, this.f6539i, this.f6540j, this.f6541k, this.f6542l, this.f6543m);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            StringBuilder o = f.b.a.a.a.o("code < 0: ");
            o.append(this.f6533c);
            throw new IllegalStateException(o.toString().toString());
        }

        public a c(h0 h0Var) {
            d("cacheResponse", h0Var);
            this.f6539i = h0Var;
            return this;
        }

        public final void d(String str, h0 h0Var) {
            if (h0Var != null) {
                if (h0Var.f6527h == null) {
                    if (h0Var.f6528i == null) {
                        if (h0Var.f6529j == null) {
                            if (!(h0Var.f6530k == null)) {
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
                this.f6536f.g(str, str2);
                return this;
            }
            h.o.c.g.f("value");
            throw null;
        }

        public a f(w wVar) {
            if (wVar != null) {
                this.f6536f = wVar.d();
                return this;
            }
            h.o.c.g.f("headers");
            throw null;
        }

        public a g(String str) {
            if (str != null) {
                this.f6534d = str;
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
            this.f6536f.f(str);
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
                this.f6533c = -1;
                this.a = h0Var.b;
                this.b = h0Var.f6522c;
                this.f6533c = h0Var.f6524e;
                this.f6534d = h0Var.f6523d;
                this.f6535e = h0Var.f6525f;
                this.f6536f = h0Var.f6526g.d();
                this.f6537g = h0Var.f6527h;
                this.f6538h = h0Var.f6528i;
                this.f6539i = h0Var.f6529j;
                this.f6540j = h0Var.f6530k;
                this.f6541k = h0Var.f6531l;
                this.f6542l = h0Var.f6532m;
                this.f6543m = h0Var.n;
                return;
            }
            h.o.c.g.f("response");
            throw null;
        }
    }
}
