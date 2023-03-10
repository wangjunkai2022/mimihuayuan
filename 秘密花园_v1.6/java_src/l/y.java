package l;

import i.a0;
import i.e0;
import i.f;
import i.u;
import i.w;
import i.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import l.e0;
/* compiled from: OkHttpCall.java */
/* loaded from: classes2.dex */
public final class y<T> implements d<T> {
    public final f0 a;
    public final Object[] b;

    /* renamed from: c  reason: collision with root package name */
    public final f.a f7300c;

    /* renamed from: d  reason: collision with root package name */
    public final l<i.i0, T> f7301d;

    /* renamed from: e  reason: collision with root package name */
    public volatile boolean f7302e;

    /* renamed from: f  reason: collision with root package name */
    public i.f f7303f;

    /* renamed from: g  reason: collision with root package name */
    public Throwable f7304g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7305h;

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes2.dex */
    public class a implements i.g {
        public final /* synthetic */ f a;

        public a(f fVar) {
            this.a = fVar;
        }

        @Override // i.g
        public void c(i.f fVar, i.h0 h0Var) {
            try {
                try {
                    this.a.a(y.this, y.this.b(h0Var));
                } catch (Throwable th) {
                    l0.o(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                l0.o(th2);
                try {
                    this.a.b(y.this, th2);
                } catch (Throwable th3) {
                    l0.o(th3);
                    th3.printStackTrace();
                }
            }
        }

        @Override // i.g
        public void d(i.f fVar, IOException iOException) {
            try {
                this.a.b(y.this, iOException);
            } catch (Throwable th) {
                l0.o(th);
                th.printStackTrace();
            }
        }
    }

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes2.dex */
    public static final class b extends i.i0 {

        /* renamed from: c  reason: collision with root package name */
        public final i.i0 f7306c;

        /* renamed from: d  reason: collision with root package name */
        public final j.j f7307d;

        /* renamed from: e  reason: collision with root package name */
        public IOException f7308e;

        /* compiled from: OkHttpCall.java */
        /* loaded from: classes2.dex */
        public class a extends j.m {
            public a(j.a0 a0Var) {
                super(a0Var);
            }

            @Override // j.m, j.a0
            public long c(j.g gVar, long j2) throws IOException {
                try {
                    return super.c(gVar, j2);
                } catch (IOException e2) {
                    b.this.f7308e = e2;
                    throw e2;
                }
            }
        }

        public b(i.i0 i0Var) {
            this.f7306c = i0Var;
            this.f7307d = j.b.h(new a(i0Var.G()));
        }

        @Override // i.i0
        public i.z E() {
            return this.f7306c.E();
        }

        @Override // i.i0
        public j.j G() {
            return this.f7307d;
        }

        @Override // i.i0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f7306c.close();
        }

        @Override // i.i0
        public long g() {
            return this.f7306c.g();
        }
    }

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes2.dex */
    public static final class c extends i.i0 {

        /* renamed from: c  reason: collision with root package name */
        public final i.z f7309c;

        /* renamed from: d  reason: collision with root package name */
        public final long f7310d;

        public c(i.z zVar, long j2) {
            this.f7309c = zVar;
            this.f7310d = j2;
        }

        @Override // i.i0
        public i.z E() {
            return this.f7309c;
        }

        @Override // i.i0
        public j.j G() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }

        @Override // i.i0
        public long g() {
            return this.f7310d;
        }
    }

    public y(f0 f0Var, Object[] objArr, f.a aVar, l<i.i0, T> lVar) {
        this.a = f0Var;
        this.b = objArr;
        this.f7300c = aVar;
        this.f7301d = lVar;
    }

    @Override // l.d
    public synchronized i.e0 S() {
        i.f fVar = this.f7303f;
        if (fVar != null) {
            return fVar.S();
        } else if (this.f7304g != null) {
            if (!(this.f7304g instanceof IOException)) {
                if (this.f7304g instanceof RuntimeException) {
                    throw ((RuntimeException) this.f7304g);
                }
                throw ((Error) this.f7304g);
            }
            throw new RuntimeException("Unable to create request.", this.f7304g);
        } else {
            try {
                i.f a2 = a();
                this.f7303f = a2;
                return a2.S();
            } catch (IOException e2) {
                this.f7304g = e2;
                throw new RuntimeException("Unable to create request.", e2);
            } catch (Error e3) {
                e = e3;
                l0.o(e);
                this.f7304g = e;
                throw e;
            } catch (RuntimeException e4) {
                e = e4;
                l0.o(e);
                this.f7304g = e;
                throw e;
            }
        }
    }

    @Override // l.d
    public g0<T> T() throws IOException {
        i.f fVar;
        synchronized (this) {
            if (!this.f7305h) {
                this.f7305h = true;
                if (this.f7304g != null) {
                    if (!(this.f7304g instanceof IOException)) {
                        if (this.f7304g instanceof RuntimeException) {
                            throw ((RuntimeException) this.f7304g);
                        }
                        throw ((Error) this.f7304g);
                    }
                    throw ((IOException) this.f7304g);
                }
                fVar = this.f7303f;
                if (fVar == null) {
                    try {
                        fVar = a();
                        this.f7303f = fVar;
                    } catch (IOException | Error | RuntimeException e2) {
                        l0.o(e2);
                        this.f7304g = e2;
                        throw e2;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f7302e) {
            fVar.cancel();
        }
        return b(fVar.T());
    }

    @Override // l.d
    public boolean U() {
        boolean z = true;
        if (this.f7302e) {
            return true;
        }
        synchronized (this) {
            if (this.f7303f == null || !this.f7303f.U()) {
                z = false;
            }
        }
        return z;
    }

    @Override // l.d
    public d V() {
        return new y(this.a, this.b, this.f7300c, this.f7301d);
    }

    @Override // l.d
    public void X(f<T> fVar) {
        i.f fVar2;
        Throwable th;
        Objects.requireNonNull(fVar, "callback == null");
        synchronized (this) {
            if (!this.f7305h) {
                this.f7305h = true;
                fVar2 = this.f7303f;
                th = this.f7304g;
                if (fVar2 == null && th == null) {
                    i.f a2 = a();
                    this.f7303f = a2;
                    fVar2 = a2;
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th != null) {
            fVar.b(this, th);
            return;
        }
        if (this.f7302e) {
            fVar2.cancel();
        }
        fVar2.W(new a(fVar));
    }

    public final i.f a() throws IOException {
        i.x l2;
        f.a aVar = this.f7300c;
        f0 f0Var = this.a;
        Object[] objArr = this.b;
        c0<?>[] c0VarArr = f0Var.f7256j;
        int length = objArr.length;
        if (length == c0VarArr.length) {
            e0 e0Var = new e0(f0Var.f7249c, f0Var.b, f0Var.f7250d, f0Var.f7251e, f0Var.f7252f, f0Var.f7253g, f0Var.f7254h, f0Var.f7255i);
            if (f0Var.f7257k) {
                length--;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(objArr[i2]);
                c0VarArr[i2].a(e0Var, objArr[i2]);
            }
            x.a aVar2 = e0Var.f7240d;
            if (aVar2 != null) {
                l2 = aVar2.b();
            } else {
                l2 = e0Var.b.l(e0Var.f7239c);
                if (l2 == null) {
                    StringBuilder o = f.b.a.a.a.o("Malformed URL. Base: ");
                    o.append(e0Var.b);
                    o.append(", Relative: ");
                    o.append(e0Var.f7239c);
                    throw new IllegalArgumentException(o.toString());
                }
            }
            e0.a aVar3 = e0Var.f7247k;
            if (aVar3 == null) {
                u.a aVar4 = e0Var.f7246j;
                if (aVar4 != null) {
                    aVar3 = aVar4.b();
                } else {
                    a0.a aVar5 = e0Var.f7245i;
                    if (aVar5 != null) {
                        aVar3 = aVar5.c();
                    } else if (e0Var.f7244h) {
                        aVar3 = i.g0.d(null, new byte[0]);
                    }
                }
            }
            i.z zVar = e0Var.f7243g;
            if (zVar != null) {
                if (aVar3 != null) {
                    aVar3 = new e0.a(aVar3, zVar);
                } else {
                    e0Var.f7242f.a("Content-Type", zVar.a);
                }
            }
            e0.a aVar6 = e0Var.f7241e;
            aVar6.a = l2;
            aVar6.d(e0Var.f7242f.d());
            aVar6.e(e0Var.a, aVar3);
            aVar6.h(p.class, new p(f0Var.a, arrayList));
            i.f a2 = aVar.a(aVar6.b());
            if (a2 != null) {
                return a2;
            }
            throw new NullPointerException("Call.Factory returned null.");
        }
        throw new IllegalArgumentException(f.b.a.a.a.k(f.b.a.a.a.p("Argument count (", length, ") doesn't match expected count ("), c0VarArr.length, ")"));
    }

    public g0<T> b(i.h0 h0Var) throws IOException {
        i.i0 i0Var = h0Var.f6536h;
        i.e0 e0Var = h0Var.b;
        i.c0 c0Var = h0Var.f6531c;
        int i2 = h0Var.f6533e;
        String str = h0Var.f6532d;
        i.v vVar = h0Var.f6534f;
        w.a d2 = h0Var.f6535g.d();
        i.i0 i0Var2 = h0Var.f6536h;
        i.h0 h0Var2 = h0Var.f6537i;
        i.h0 h0Var3 = h0Var.f6538j;
        i.h0 h0Var4 = h0Var.f6539k;
        long j2 = h0Var.f6540l;
        long j3 = h0Var.f6541m;
        i.m0.d.c cVar = h0Var.n;
        c cVar2 = new c(i0Var.E(), i0Var.g());
        if (i2 >= 0) {
            if (e0Var != null) {
                if (c0Var != null) {
                    if (str != null) {
                        i.h0 h0Var5 = new i.h0(e0Var, c0Var, str, i2, vVar, d2.d(), cVar2, h0Var2, h0Var3, h0Var4, j2, j3, cVar);
                        int i3 = h0Var5.f6533e;
                        if (i3 < 200 || i3 >= 300) {
                            try {
                                i.i0 a2 = l0.a(i0Var);
                                Objects.requireNonNull(a2, "body == null");
                                Objects.requireNonNull(h0Var5, "rawResponse == null");
                                if (!h0Var5.g()) {
                                    return new g0<>(h0Var5, null, a2);
                                }
                                throw new IllegalArgumentException("rawResponse should not be successful response");
                            } finally {
                                i0Var.close();
                            }
                        } else if (i3 != 204 && i3 != 205) {
                            b bVar = new b(i0Var);
                            try {
                                return g0.b(this.f7301d.a(bVar), h0Var5);
                            } catch (RuntimeException e2) {
                                IOException iOException = bVar.f7308e;
                                if (iOException == null) {
                                    throw e2;
                                }
                                throw iOException;
                            }
                        } else {
                            i0Var.close();
                            return g0.b(null, h0Var5);
                        }
                    }
                    throw new IllegalStateException("message == null".toString());
                }
                throw new IllegalStateException("protocol == null".toString());
            }
            throw new IllegalStateException("request == null".toString());
        }
        throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
    }

    @Override // l.d
    public void cancel() {
        i.f fVar;
        this.f7302e = true;
        synchronized (this) {
            fVar = this.f7303f;
        }
        if (fVar != null) {
            fVar.cancel();
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return new y(this.a, this.b, this.f7300c, this.f7301d);
    }
}
