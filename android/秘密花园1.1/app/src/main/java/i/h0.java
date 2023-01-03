package i;

import i.w;
import java.io.Closeable;

/* compiled from: Response.kt */
/* loaded from: classes.dex */
public final class h0 implements Closeable {
    public e a;
    public final e0 b;

    /* renamed from: c  reason: collision with root package name */
    public final c0 f6447c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6448d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6449e;

    /* renamed from: f  reason: collision with root package name */
    public final v f6450f;

    /* renamed from: g  reason: collision with root package name */
    public final w f6451g;

    /* renamed from: h  reason: collision with root package name */
    public final i0 f6452h;

    /* renamed from: i  reason: collision with root package name */
    public final h0 f6453i;

    /* renamed from: j  reason: collision with root package name */
    public final h0 f6454j;

    /* renamed from: k  reason: collision with root package name */
    public final h0 f6455k;

    /* renamed from: l  reason: collision with root package name */
    public final long f6456l;

    /* renamed from: m  reason: collision with root package name */
    public final long f6457m;
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
            this.f6447c = c0Var;
            this.f6448d = str;
            this.f6449e = i2;
            this.f6450f = vVar;
            this.f6451g = wVar;
            this.f6452h = i0Var;
            this.f6453i = h0Var;
            this.f6454j = h0Var2;
            this.f6455k = h0Var3;
            this.f6456l = j2;
            this.f6457m = j3;
            this.n = cVar;
        }
    }

    public static String f(h0 h0Var, String str, String str2, int i2) {
        int i3 = i2 & 2;
        if (str != null) {
            String b = h0Var.f6451g.b(str);
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
        i0 i0Var = this.f6452h;
        if (i0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
        }
        i0Var.close();
    }

    public final e d() {
        e eVar = this.a;
        if (eVar == null) {
            e b = e.n.b(this.f6451g);
            this.a = b;
            return b;
        }
        return eVar;
    }

    public final String e(String str) {
        return f(this, str, null, 2);
    }

    public final boolean g() {
        int i2 = this.f6449e;
        return 200 <= i2 && 299 >= i2;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Response{protocol=");
        o.append(this.f6447c);
        o.append(", code=");
        o.append(this.f6449e);
        o.append(", message=");
        o.append(this.f6448d);
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
        public int f6458c;

        /* renamed from: d  reason: collision with root package name */
        public String f6459d;

        /* renamed from: e  reason: collision with root package name */
        public v f6460e;

        /* renamed from: f  reason: collision with root package name */
        public w.a f6461f;

        /* renamed from: g  reason: collision with root package name */
        public i0 f6462g;

        /* renamed from: h  reason: collision with root package name */
        public h0 f6463h;

        /* renamed from: i  reason: collision with root package name */
        public h0 f6464i;

        /* renamed from: j  reason: collision with root package name */
        public h0 f6465j;

        /* renamed from: k  reason: collision with root package name */
        public long f6466k;

        /* renamed from: l  reason: collision with root package name */
        public long f6467l;

        /* renamed from: m  reason: collision with root package name */
        public i.m0.d.c f6468m;

        public a() {
            this.f6458c = -1;
            this.f6461f = new w.a();
        }

        public a a(String str, String str2) {
            this.f6461f.a(str, str2);
            return this;
        }

        public h0 b() {
            if (this.f6458c >= 0) {
                e0 e0Var = this.a;
                if (e0Var != null) {
                    c0 c0Var = this.b;
                    if (c0Var != null) {
                        String str = this.f6459d;
                        if (str != null) {
                            return new h0(e0Var, c0Var, str, this.f6458c, this.f6460e, this.f6461f.d(), this.f6462g, this.f6463h, this.f6464i, this.f6465j, this.f6466k, this.f6467l, this.f6468m);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            StringBuilder o = f.b.a.a.a.o("code < 0: ");
            o.append(this.f6458c);
            throw new IllegalStateException(o.toString().toString());
        }

        public a c(h0 h0Var) {
            d("cacheResponse", h0Var);
            this.f6464i = h0Var;
            return this;
        }

        public final void d(String str, h0 h0Var) {
            if (h0Var != null) {
                if (h0Var.f6452h == null) {
                    if (h0Var.f6453i == null) {
                        if (h0Var.f6454j == null) {
                            if (!(h0Var.f6455k == null)) {
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
                this.f6461f.g(str, str2);
                return this;
            }
            h.o.c.g.f("value");
            throw null;
        }

        public a f(w wVar) {
            if (wVar != null) {
                this.f6461f = wVar.d();
                return this;
            }
            h.o.c.g.f("headers");
            throw null;
        }

        public a g(String str) {
            if (str != null) {
                this.f6459d = str;
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
            this.f6461f.f(str);
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
                this.f6458c = -1;
                this.a = h0Var.b;
                this.b = h0Var.f6447c;
                this.f6458c = h0Var.f6449e;
                this.f6459d = h0Var.f6448d;
                this.f6460e = h0Var.f6450f;
                this.f6461f = h0Var.f6451g.d();
                this.f6462g = h0Var.f6452h;
                this.f6463h = h0Var.f6453i;
                this.f6464i = h0Var.f6454j;
                this.f6465j = h0Var.f6455k;
                this.f6466k = h0Var.f6456l;
                this.f6467l = h0Var.f6457m;
                this.f6468m = h0Var.n;
                return;
            }
            h.o.c.g.f("response");
            throw null;
        }
    }
}
