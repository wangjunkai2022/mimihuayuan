package i.m0.g;

import h.f;
import h.j;
import i.w;
import j.a0;
import j.b0;
import j.g;
import j.y;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;

/* compiled from: Http2Stream.kt */
/* loaded from: classes.dex */
public final class m {
    public long a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public long f6697c;

    /* renamed from: d  reason: collision with root package name */
    public long f6698d;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayDeque<w> f6699e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f6700f;

    /* renamed from: g  reason: collision with root package name */
    public final b f6701g;

    /* renamed from: h  reason: collision with root package name */
    public final a f6702h;

    /* renamed from: i  reason: collision with root package name */
    public final c f6703i;

    /* renamed from: j  reason: collision with root package name */
    public final c f6704j;

    /* renamed from: k  reason: collision with root package name */
    public b f6705k;

    /* renamed from: l  reason: collision with root package name */
    public IOException f6706l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6707m;
    public final f n;

    /* compiled from: Http2Stream.kt */
    /* loaded from: classes.dex */
    public final class a implements y {
        public final g a = new g();
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6708c;

        public a(boolean z) {
            this.f6708c = z;
        }

        @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            boolean z = !Thread.holdsLock(m.this);
            if (!j.a || z) {
                synchronized (m.this) {
                    if (!this.b) {
                        boolean z2 = false;
                        boolean z3 = m.this.f() == null;
                        if (!m.this.f6702h.f6708c) {
                            if (this.a.b > 0) {
                                z2 = true;
                            }
                            if (z2) {
                                while (this.a.b > 0) {
                                    d(true);
                                }
                            } else if (z3) {
                                m mVar = m.this;
                                mVar.n.H(mVar.f6707m, true, null, 0);
                            }
                        }
                        synchronized (m.this) {
                            this.b = true;
                        }
                        m.this.n.s.flush();
                        m.this.a();
                        return;
                    }
                    return;
                }
            }
            throw new AssertionError("Assertion failed");
        }

        public final void d(boolean z) throws IOException {
            long min;
            boolean z2;
            synchronized (m.this) {
                m.this.f6704j.h();
                while (m.this.f6697c >= m.this.f6698d && !this.f6708c && !this.b && m.this.f() == null) {
                    m.this.l();
                }
                m.this.f6704j.n();
                m.this.b();
                min = Math.min(m.this.f6698d - m.this.f6697c, this.a.b);
                m.this.f6697c += min;
                if (z && min == this.a.b) {
                    if (m.this.f() == null) {
                        z2 = true;
                    }
                }
                z2 = false;
            }
            m.this.f6704j.h();
            try {
                m.this.n.H(m.this.f6707m, z2, this.a, min);
            } finally {
                m.this.f6704j.n();
            }
        }

        @Override // j.y, java.io.Flushable
        public void flush() throws IOException {
            boolean z = !Thread.holdsLock(m.this);
            if (!j.a || z) {
                synchronized (m.this) {
                    m.this.b();
                }
                while (this.a.b > 0) {
                    d(false);
                    m.this.n.s.flush();
                }
                return;
            }
            throw new AssertionError("Assertion failed");
        }

        @Override // j.y
        public b0 i() {
            return m.this.f6704j;
        }

        @Override // j.y
        public void j(g gVar, long j2) throws IOException {
            if (gVar != null) {
                boolean z = !Thread.holdsLock(m.this);
                if (!j.a || z) {
                    this.a.j(gVar, j2);
                    while (this.a.b >= 16384) {
                        d(false);
                    }
                    return;
                }
                throw new AssertionError("Assertion failed");
            }
            h.o.c.g.f("source");
            throw null;
        }
    }

    /* compiled from: Http2Stream.kt */
    /* loaded from: classes.dex */
    public final class b implements a0 {
        public final g a = new g();
        public final g b = new g();

        /* renamed from: c  reason: collision with root package name */
        public boolean f6710c;

        /* renamed from: d  reason: collision with root package name */
        public final long f6711d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f6712e;

        public b(long j2, boolean z) {
            this.f6711d = j2;
            this.f6712e = z;
        }

        @Override // j.a0
        public long c(g gVar, long j2) throws IOException {
            long j3;
            boolean z;
            long j4;
            Throwable th = null;
            if (gVar != null) {
                long j5 = 0;
                if (j2 >= 0) {
                    while (true) {
                        synchronized (m.this) {
                            m.this.f6703i.h();
                            if (m.this.f() != null) {
                                Throwable th2 = m.this.f6706l;
                                if (th2 == null) {
                                    b f2 = m.this.f();
                                    if (f2 != null) {
                                        th2 = new s(f2);
                                    } else {
                                        h.o.c.g.e();
                                        throw th;
                                    }
                                }
                                th = th2;
                            }
                            if (!this.f6710c) {
                                if (this.b.b > j5) {
                                    j4 = this.b.c(gVar, Math.min(j2, this.b.b));
                                    m.this.a += j4;
                                    long j6 = m.this.a - m.this.b;
                                    if (th == null && j6 >= ((long) (m.this.n.f6655l.a() / 2))) {
                                        m.this.n.K(m.this.f6707m, j6);
                                        m.this.b = m.this.a;
                                    }
                                } else if (this.f6712e || th != null) {
                                    j4 = -1;
                                } else {
                                    m.this.l();
                                    z = true;
                                    j3 = -1;
                                    m.this.f6703i.n();
                                }
                                j3 = j4;
                                z = false;
                                m.this.f6703i.n();
                            } else {
                                throw new IOException("stream closed");
                            }
                        }
                        if (z) {
                            th = null;
                            j5 = 0;
                        } else if (j3 != -1) {
                            d(j3);
                            return j3;
                        } else if (th == null) {
                            return -1;
                        } else {
                            throw th;
                        }
                    }
                } else {
                    throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
                }
            } else {
                h.o.c.g.f("sink");
                throw null;
            }
        }

        @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long j2;
            synchronized (m.this) {
                this.f6710c = true;
                j2 = this.b.b;
                g gVar = this.b;
                gVar.skip(gVar.b);
                m mVar = m.this;
                if (mVar != null) {
                    mVar.notifyAll();
                } else {
                    throw new f("null cannot be cast to non-null type java.lang.Object");
                }
            }
            if (j2 > 0) {
                d(j2);
            }
            m.this.a();
        }

        public final void d(long j2) {
            boolean z = !Thread.holdsLock(m.this);
            if (!j.a || z) {
                m.this.n.G(j2);
                return;
            }
            throw new AssertionError("Assertion failed");
        }

        @Override // j.a0
        public b0 i() {
            return m.this.f6703i;
        }
    }

    /* compiled from: Http2Stream.kt */
    /* loaded from: classes.dex */
    public final class c extends j.c {
        /* JADX WARN: Incorrect args count in method signature: ()V */
        public c() {
        }

        @Override // j.c
        public IOException l(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // j.c
        public void m() {
            m.this.e(b.CANCEL);
        }

        public final void n() throws IOException {
            if (i()) {
                throw l(null);
            }
        }
    }

    public m(int i2, f fVar, boolean z, boolean z2, w wVar) {
        if (fVar != null) {
            this.f6707m = i2;
            this.n = fVar;
            this.f6698d = (long) fVar.f6656m.a();
            this.f6699e = new ArrayDeque<>();
            this.f6701g = new b((long) this.n.f6655l.a(), z2);
            this.f6702h = new a(z);
            this.f6703i = new c();
            this.f6704j = new c();
            if (wVar != null) {
                if (!h()) {
                    this.f6699e.add(wVar);
                    return;
                }
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
            } else if (!h()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            }
        } else {
            h.o.c.g.f("connection");
            throw null;
        }
    }

    public final void a() throws IOException {
        boolean i2;
        boolean z = true;
        boolean z2 = !Thread.holdsLock(this);
        if (!j.a || z2) {
            synchronized (this) {
                if (this.f6701g.f6712e || !this.f6701g.f6710c || (!this.f6702h.f6708c && !this.f6702h.b)) {
                    z = false;
                }
                i2 = i();
            }
            if (z) {
                c(b.CANCEL, null);
            } else if (!i2) {
                this.n.E(this.f6707m);
            }
        } else {
            throw new AssertionError("Assertion failed");
        }
    }

    public final void b() throws IOException {
        a aVar = this.f6702h;
        if (aVar.b) {
            throw new IOException("stream closed");
        } else if (aVar.f6708c) {
            throw new IOException("stream finished");
        } else if (this.f6705k != null) {
            Throwable th = this.f6706l;
            if (th == null) {
                b bVar = this.f6705k;
                if (bVar == null) {
                    h.o.c.g.e();
                    throw null;
                }
                th = new s(bVar);
            }
            throw th;
        }
    }

    public final void c(b bVar, IOException iOException) throws IOException {
        if (d(bVar, iOException)) {
            f fVar = this.n;
            fVar.s.G(this.f6707m, bVar);
        }
    }

    public final boolean d(b bVar, IOException iOException) {
        boolean z = !Thread.holdsLock(this);
        if (!j.a || z) {
            synchronized (this) {
                if (this.f6705k != null) {
                    return false;
                }
                if (this.f6701g.f6712e && this.f6702h.f6708c) {
                    return false;
                }
                this.f6705k = bVar;
                this.f6706l = iOException;
                notifyAll();
                this.n.E(this.f6707m);
                return true;
            }
        }
        throw new AssertionError("Assertion failed");
    }

    public final void e(b bVar) {
        if (d(bVar, null)) {
            this.n.J(this.f6707m, bVar);
        }
    }

    public final synchronized b f() {
        return this.f6705k;
    }

    public final y g() {
        synchronized (this) {
            if (!(this.f6700f || h())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
        }
        return this.f6702h;
    }

    public final boolean h() {
        if (this.n.a == ((this.f6707m & 1) == 1)) {
            return true;
        }
        return false;
    }

    public final synchronized boolean i() {
        if (this.f6705k != null) {
            return false;
        }
        if ((this.f6701g.f6712e || this.f6701g.f6710c) && (this.f6702h.f6708c || this.f6702h.b)) {
            if (this.f6700f) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0031 A[Catch: all -> 0x0047, TryCatch #0 {, blocks: (B:10:0x001b, B:14:0x0022, B:17:0x0027, B:18:0x0028, B:20:0x0031, B:21:0x0035), top: B:30:0x001b }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void j(i.w r5, boolean r6) {
        /*
            r4 = this;
            java.lang.String r0 = "headers"
            r1 = 0
            if (r5 == 0) goto L_0x004a
            boolean r0 = java.lang.Thread.holdsLock(r4)
            r2 = 1
            r0 = r0 ^ r2
            boolean r3 = h.j.a
            if (r3 == 0) goto L_0x001a
            if (r0 == 0) goto L_0x0012
            goto L_0x001a
        L_0x0012:
            java.lang.String r5 = "Assertion failed"
            java.lang.AssertionError r6 = new java.lang.AssertionError
            r6.<init>(r5)
            throw r6
        L_0x001a:
            monitor-enter(r4)
            boolean r0 = r4.f6700f     // Catch: all -> 0x0047
            if (r0 == 0) goto L_0x0028
            if (r6 != 0) goto L_0x0022
            goto L_0x0028
        L_0x0022:
            i.m0.g.m$b r5 = r4.f6701g     // Catch: all -> 0x0047
            if (r5 == 0) goto L_0x0027
            goto L_0x002f
        L_0x0027:
            throw r1     // Catch: all -> 0x0047
        L_0x0028:
            r4.f6700f = r2     // Catch: all -> 0x0047
            java.util.ArrayDeque<i.w> r0 = r4.f6699e     // Catch: all -> 0x0047
            r0.add(r5)     // Catch: all -> 0x0047
        L_0x002f:
            if (r6 == 0) goto L_0x0035
            i.m0.g.m$b r5 = r4.f6701g     // Catch: all -> 0x0047
            r5.f6712e = r2     // Catch: all -> 0x0047
        L_0x0035:
            boolean r5 = r4.i()     // Catch: all -> 0x0047
            r4.notifyAll()     // Catch: all -> 0x0047
            monitor-exit(r4)
            if (r5 != 0) goto L_0x0046
            i.m0.g.f r5 = r4.n
            int r6 = r4.f6707m
            r5.E(r6)
        L_0x0046:
            return
        L_0x0047:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        L_0x004a:
            h.o.c.g.f(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.g.m.j(i.w, boolean):void");
    }

    public final synchronized void k(b bVar) {
        if (this.f6705k == null) {
            this.f6705k = bVar;
            notifyAll();
        }
    }

    public final void l() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
