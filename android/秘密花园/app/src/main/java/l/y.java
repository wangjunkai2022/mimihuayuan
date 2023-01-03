package l;

import i.a0;
import i.c0;
import i.e0;
import i.f;
import i.g;
import i.g0;
import i.h0;
import i.i0;
import i.u;
import i.v;
import i.w;
import i.x;
import i.z;
import j.a0;
import j.j;
import j.m;
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
    public final f.a f7216c;

    /* renamed from: d  reason: collision with root package name */
    public final l<i0, T> f7217d;

    /* renamed from: e  reason: collision with root package name */
    public volatile boolean f7218e;

    /* renamed from: f  reason: collision with root package name */
    public f f7219f;

    /* renamed from: g  reason: collision with root package name */
    public Throwable f7220g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7221h;

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes2.dex */
    public class a implements g {
        public final /* synthetic */ f a;

        public a(f fVar) {
            this.a = fVar;
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
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
        public void d(f fVar, IOException iOException) {
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
    public static final class b extends i0 {

        /* renamed from: c  reason: collision with root package name */
        public final i0 f7222c;

        /* renamed from: d  reason: collision with root package name */
        public final j f7223d;

        /* renamed from: e  reason: collision with root package name */
        public IOException f7224e;

        /* compiled from: OkHttpCall.java */
        /* loaded from: classes2.dex */
        public class a extends m {
            public a(a0 a0Var) {
                super(a0Var);
            }

            @Override // j.m, j.a0
            public long c(j.g gVar, long j2) throws IOException {
                try {
                    return super.c(gVar, j2);
                } catch (IOException e2) {
                    b.this.f7224e = e2;
                    throw e2;
                }
            }
        }

        public b(i0 i0Var) {
            this.f7222c = i0Var;
            this.f7223d = j.b.h(new a(i0Var.G()));
        }

        @Override // i.i0
        public z E() {
            return this.f7222c.E();
        }

        @Override // i.i0
        public j G() {
            return this.f7223d;
        }

        @Override // i.i0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f7222c.close();
        }

        @Override // i.i0
        public long g() {
            return this.f7222c.g();
        }
    }

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes2.dex */
    public static final class c extends i0 {

        /* renamed from: c  reason: collision with root package name */
        public final z f7225c;

        /* renamed from: d  reason: collision with root package name */
        public final long f7226d;

        public c(z zVar, long j2) {
            this.f7225c = zVar;
            this.f7226d = j2;
        }

        @Override // i.i0
        public z E() {
            return this.f7225c;
        }

        @Override // i.i0
        public j G() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }

        @Override // i.i0
        public long g() {
            return this.f7226d;
        }
    }

    public y(f0 f0Var, Object[] objArr, f.a aVar, l<i0, T> lVar) {
        this.a = f0Var;
        this.b = objArr;
        this.f7216c = aVar;
        this.f7217d = lVar;
    }

    @Override // l.d
    public synchronized e0 S() {
        Throwable e2;
        f fVar = this.f7219f;
        if (fVar != null) {
            return fVar.S();
        } else if (this.f7220g == null) {
            try {
                f a2 = a();
                this.f7219f = a2;
                return a2.S();
            } catch (IOException e3) {
                this.f7220g = e3;
                throw new RuntimeException("Unable to create request.", e3);
            } catch (Error e4) {
                e2 = e4;
                l0.o(e2);
                this.f7220g = e2;
                throw e2;
            } catch (RuntimeException e5) {
                e2 = e5;
                l0.o(e2);
                this.f7220g = e2;
                throw e2;
            }
        } else if (this.f7220g instanceof IOException) {
            throw new RuntimeException("Unable to create request.", this.f7220g);
        } else if (this.f7220g instanceof RuntimeException) {
            throw ((RuntimeException) this.f7220g);
        } else {
            throw ((Error) this.f7220g);
        }
    }

    @Override // l.d
    public g0<T> T() throws IOException {
        f fVar;
        synchronized (this) {
            if (!this.f7221h) {
                this.f7221h = true;
                if (this.f7220g == null) {
                    fVar = this.f7219f;
                    if (fVar == null) {
                        try {
                            fVar = a();
                            this.f7219f = fVar;
                        } catch (IOException | Error | RuntimeException e2) {
                            l0.o(e2);
                            this.f7220g = e2;
                            throw e2;
                        }
                    }
                } else if (this.f7220g instanceof IOException) {
                    throw ((IOException) this.f7220g);
                } else if (this.f7220g instanceof RuntimeException) {
                    throw ((RuntimeException) this.f7220g);
                } else {
                    throw ((Error) this.f7220g);
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f7218e) {
            fVar.cancel();
        }
        return b(fVar.T());
    }

    @Override // l.d
    public boolean U() {
        boolean z = true;
        if (this.f7218e) {
            return true;
        }
        synchronized (this) {
            if (this.f7219f == null || !this.f7219f.U()) {
                z = false;
            }
        }
        return z;
    }

    @Override // l.d
    public d V() {
        return new y(this.a, this.b, this.f7216c, this.f7217d);
    }

    @Override // l.d
    public void X(f<T> fVar) {
        f fVar2;
        Throwable th;
        Objects.requireNonNull(fVar, "callback == null");
        synchronized (this) {
            if (!this.f7221h) {
                this.f7221h = true;
                fVar2 = this.f7219f;
                th = this.f7220g;
                if (fVar2 == null && th == null) {
                    f a2 = a();
                    this.f7219f = a2;
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
        if (this.f7218e) {
            fVar2.cancel();
        }
        fVar2.W(new a(fVar));
    }

    public final f a() throws IOException {
        x xVar;
        f.a aVar = this.f7216c;
        f0 f0Var = this.a;
        Object[] objArr = this.b;
        c0<?>[] c0VarArr = f0Var.f7172j;
        int length = objArr.length;
        if (length == c0VarArr.length) {
            e0 e0Var = new e0(f0Var.f7165c, f0Var.b, f0Var.f7166d, f0Var.f7167e, f0Var.f7168f, f0Var.f7169g, f0Var.f7170h, f0Var.f7171i);
            if (f0Var.f7173k) {
                length--;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(objArr[i2]);
                c0VarArr[i2].a(e0Var, objArr[i2]);
            }
            x.a aVar2 = e0Var.f7156d;
            if (aVar2 != null) {
                xVar = aVar2.b();
            } else {
                xVar = e0Var.b.l(e0Var.f7155c);
                if (xVar == null) {
                    StringBuilder o = f.b.a.a.a.o("Malformed URL. Base: ");
                    o.append(e0Var.b);
                    o.append(", Relative: ");
                    o.append(e0Var.f7155c);
                    throw new IllegalArgumentException(o.toString());
                }
            }
            g0 g0Var = e0Var.f7163k;
            if (g0Var == null) {
                u.a aVar3 = e0Var.f7162j;
                if (aVar3 != null) {
                    g0Var = aVar3.b();
                } else {
                    a0.a aVar4 = e0Var.f7161i;
                    if (aVar4 != null) {
                        g0Var = aVar4.c();
                    } else if (e0Var.f7160h) {
                        g0Var = g0.d(null, new byte[0]);
                    }
                }
            }
            z zVar = e0Var.f7159g;
            if (zVar != null) {
                if (g0Var != null) {
                    g0Var = new e0.a(g0Var, zVar);
                } else {
                    e0Var.f7158f.a("Content-Type", zVar.a);
                }
            }
            e0.a aVar5 = e0Var.f7157e;
            aVar5.a = xVar;
            aVar5.d(e0Var.f7158f.d());
            aVar5.e(e0Var.a, g0Var);
            aVar5.h(p.class, new p(f0Var.a, arrayList));
            f a2 = aVar.a(aVar5.b());
            if (a2 != null) {
                return a2;
            }
            throw new NullPointerException("Call.Factory returned null.");
        }
        throw new IllegalArgumentException(f.b.a.a.a.k(f.b.a.a.a.p("Argument count (", length, ") doesn't match expected count ("), c0VarArr.length, ")"));
    }

    /* JADX INFO: finally extract failed */
    public g0<T> b(h0 h0Var) throws IOException {
        i0 i0Var = h0Var.f6452h;
        i.e0 e0Var = h0Var.b;
        c0 c0Var = h0Var.f6447c;
        int i2 = h0Var.f6449e;
        String str = h0Var.f6448d;
        v vVar = h0Var.f6450f;
        w.a d2 = h0Var.f6451g.d();
        i0 i0Var2 = h0Var.f6452h;
        h0 h0Var2 = h0Var.f6453i;
        h0 h0Var3 = h0Var.f6454j;
        h0 h0Var4 = h0Var.f6455k;
        long j2 = h0Var.f6456l;
        long j3 = h0Var.f6457m;
        i.m0.d.c cVar = h0Var.n;
        c cVar2 = new c(i0Var.E(), i0Var.g());
        if (!(i2 >= 0)) {
            throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
        } else if (e0Var == null) {
            throw new IllegalStateException("request == null".toString());
        } else if (c0Var == null) {
            throw new IllegalStateException("protocol == null".toString());
        } else if (str != null) {
            h0 h0Var5 = new h0(e0Var, c0Var, str, i2, vVar, d2.d(), cVar2, h0Var2, h0Var3, h0Var4, j2, j3, cVar);
            int i3 = h0Var5.f6449e;
            if (i3 < 200 || i3 >= 300) {
                try {
                    i0 a2 = l0.a(i0Var);
                    Objects.requireNonNull(a2, "body == null");
                    Objects.requireNonNull(h0Var5, "rawResponse == null");
                    if (!h0Var5.g()) {
                        g0<T> g0Var = new g0<>(h0Var5, null, a2);
                        i0Var.close();
                        return g0Var;
                    }
                    throw new IllegalArgumentException("rawResponse should not be successful response");
                } catch (Throwable th) {
                    i0Var.close();
                    throw th;
                }
            } else if (i3 == 204 || i3 == 205) {
                i0Var.close();
                return g0.b(null, h0Var5);
            } else {
                b bVar = new b(i0Var);
                try {
                    return g0.b(this.f7217d.a(bVar), h0Var5);
                } catch (RuntimeException e2) {
                    IOException iOException = bVar.f7224e;
                    if (iOException == null) {
                        throw e2;
                    }
                    throw iOException;
                }
            }
        } else {
            throw new IllegalStateException("message == null".toString());
        }
    }

    @Override // l.d
    public void cancel() {
        f fVar;
        this.f7218e = true;
        synchronized (this) {
            fVar = this.f7219f;
        }
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        return new y(this.a, this.b, this.f7216c, this.f7217d);
    }
}
