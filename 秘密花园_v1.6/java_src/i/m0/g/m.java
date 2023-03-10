package i.m0.g;

import i.w;
import j.a0;
import j.b0;
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
    public long f6781c;

    /* renamed from: d  reason: collision with root package name */
    public long f6782d;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayDeque<w> f6783e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f6784f;

    /* renamed from: g  reason: collision with root package name */
    public final b f6785g;

    /* renamed from: h  reason: collision with root package name */
    public final a f6786h;

    /* renamed from: i  reason: collision with root package name */
    public final c f6787i;

    /* renamed from: j  reason: collision with root package name */
    public final c f6788j;

    /* renamed from: k  reason: collision with root package name */
    public i.m0.g.b f6789k;

    /* renamed from: l  reason: collision with root package name */
    public IOException f6790l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6791m;
    public final f n;

    /* compiled from: Http2Stream.kt */
    /* loaded from: classes.dex */
    public final class a implements y {
        public final j.g a = new j.g();
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6792c;

        public a(boolean z) {
            this.f6792c = z;
        }

        @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            boolean z = !Thread.holdsLock(m.this);
            if (h.j.a && !z) {
                throw new AssertionError("Assertion failed");
            }
            synchronized (m.this) {
                if (this.b) {
                    return;
                }
                boolean z2 = m.this.f() == null;
                if (!m.this.f6786h.f6792c) {
                    if (this.a.b > 0) {
                        while (this.a.b > 0) {
                            d(true);
                        }
                    } else if (z2) {
                        m mVar = m.this;
                        mVar.n.H(mVar.f6791m, true, null, 0L);
                    }
                }
                synchronized (m.this) {
                    this.b = true;
                }
                m.this.n.s.flush();
                m.this.a();
            }
        }

        public final void d(boolean z) throws IOException {
            long min;
            boolean z2;
            synchronized (m.this) {
                m.this.f6788j.h();
                while (m.this.f6781c >= m.this.f6782d && !this.f6792c && !this.b && m.this.f() == null) {
                    m.this.l();
                }
                m.this.f6788j.n();
                m.this.b();
                min = Math.min(m.this.f6782d - m.this.f6781c, this.a.b);
                m.this.f6781c += min;
                if (z && min == this.a.b) {
                    z2 = m.this.f() == null;
                }
            }
            m.this.f6788j.h();
            try {
                m.this.n.H(m.this.f6791m, z2, this.a, min);
            } finally {
                m.this.f6788j.n();
            }
        }

        @Override // j.y, java.io.Flushable
        public void flush() throws IOException {
            boolean z = !Thread.holdsLock(m.this);
            if (h.j.a && !z) {
                throw new AssertionError("Assertion failed");
            }
            synchronized (m.this) {
                m.this.b();
            }
            while (this.a.b > 0) {
                d(false);
                m.this.n.s.flush();
            }
        }

        @Override // j.y
        public b0 i() {
            return m.this.f6788j;
        }

        @Override // j.y
        public void j(j.g gVar, long j2) throws IOException {
            if (gVar != null) {
                boolean z = !Thread.holdsLock(m.this);
                if (h.j.a && !z) {
                    throw new AssertionError("Assertion failed");
                }
                this.a.j(gVar, j2);
                while (this.a.b >= 16384) {
                    d(false);
                }
                return;
            }
            h.o.c.g.f("source");
            throw null;
        }
    }

    /* compiled from: Http2Stream.kt */
    /* loaded from: classes.dex */
    public final class b implements a0 {
        public final j.g a = new j.g();
        public final j.g b = new j.g();

        /* renamed from: c  reason: collision with root package name */
        public boolean f6794c;

        /* renamed from: d  reason: collision with root package name */
        public final long f6795d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f6796e;

        public b(long j2, boolean z) {
            this.f6795d = j2;
            this.f6796e = z;
        }

        @Override // j.a0
        public long c(j.g gVar, long j2) throws IOException {
            long j3;
            boolean z;
            long j4;
            Throwable th = null;
            if (gVar == null) {
                h.o.c.g.f("sink");
                throw null;
            }
            long j5 = 0;
            if (!(j2 >= 0)) {
                throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
            }
            while (true) {
                synchronized (m.this) {
                    m.this.f6787i.h();
                    if (m.this.f() != null) {
                        Throwable th2 = m.this.f6790l;
                        if (th2 == null) {
                            i.m0.g.b f2 = m.this.f();
                            if (f2 == null) {
                                h.o.c.g.e();
                                throw th;
                            }
                            th2 = new s(f2);
                        }
                        th = th2;
                    }
                    if (!this.f6794c) {
                        if (this.b.b > j5) {
                            j3 = this.b.c(gVar, Math.min(j2, this.b.b));
                            m.this.a += j3;
                            long j6 = m.this.a - m.this.b;
                            if (th == null && j6 >= m.this.n.f6739l.a() / 2) {
                                m.this.n.K(m.this.f6791m, j6);
                                m.this.b = m.this.a;
                            }
                        } else if (this.f6796e || th != null) {
                            j3 = -1;
                        } else {
                            m.this.l();
                            z = true;
                            j4 = -1;
                            m.this.f6787i.n();
                        }
                        j4 = j3;
                        z = false;
                        m.this.f6787i.n();
                    } else {
                        throw new IOException("stream closed");
                    }
                }
                if (!z) {
                    if (j4 != -1) {
                        d(j4);
                        return j4;
                    } else if (th == null) {
                        return -1L;
                    } else {
                        throw th;
                    }
                }
                th = null;
                j5 = 0;
            }
        }

        @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long j2;
            synchronized (m.this) {
                this.f6794c = true;
                j2 = this.b.b;
                j.g gVar = this.b;
                gVar.skip(gVar.b);
                m mVar = m.this;
                if (mVar != null) {
                    mVar.notifyAll();
                } else {
                    throw new h.f("null cannot be cast to non-null type java.lang.Object");
                }
            }
            if (j2 > 0) {
                d(j2);
            }
            m.this.a();
        }

        public final void d(long j2) {
            boolean z = !Thread.holdsLock(m.this);
            if (h.j.a && !z) {
                throw new AssertionError("Assertion failed");
            }
            m.this.n.G(j2);
        }

        @Override // j.a0
        public b0 i() {
            return m.this.f6787i;
        }
    }

    /* compiled from: Http2Stream.kt */
    /* loaded from: classes.dex */
    public final class c extends j.c {
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
            m.this.e(i.m0.g.b.CANCEL);
        }

        public final void n() throws IOException {
            if (i()) {
                throw l(null);
            }
        }
    }

    public m(int i2, f fVar, boolean z, boolean z2, w wVar) {
        if (fVar != null) {
            this.f6791m = i2;
            this.n = fVar;
            this.f6782d = fVar.f6740m.a();
            this.f6783e = new ArrayDeque<>();
            this.f6785g = new b(this.n.f6739l.a(), z2);
            this.f6786h = new a(z);
            this.f6787i = new c();
            this.f6788j = new c();
            if (wVar != null) {
                if (!h()) {
                    this.f6783e.add(wVar);
                    return;
                }
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
            } else if (!h()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            } else {
                return;
            }
        }
        h.o.c.g.f("connection");
        throw null;
    }

    public final void a() throws IOException {
        boolean i2;
        boolean z = true;
        boolean z2 = !Thread.holdsLock(this);
        if (h.j.a && !z2) {
            throw new AssertionError("Assertion failed");
        }
        synchronized (this) {
            if (this.f6785g.f6796e || !this.f6785g.f6794c || (!this.f6786h.f6792c && !this.f6786h.b)) {
                z = false;
            }
            i2 = i();
        }
        if (z) {
            c(i.m0.g.b.CANCEL, null);
        } else if (i2) {
        } else {
            this.n.E(this.f6791m);
        }
    }

    public final void b() throws IOException {
        a aVar = this.f6786h;
        if (!aVar.b) {
            if (!aVar.f6792c) {
                if (this.f6789k != null) {
                    Throwable th = this.f6790l;
                    if (th == null) {
                        i.m0.g.b bVar = this.f6789k;
                        if (bVar == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        th = new s(bVar);
                    }
                    throw th;
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public final void c(i.m0.g.b bVar, IOException iOException) throws IOException {
        if (d(bVar, iOException)) {
            f fVar = this.n;
            fVar.s.G(this.f6791m, bVar);
        }
    }

    public final boolean d(i.m0.g.b bVar, IOException iOException) {
        boolean z = !Thread.holdsLock(this);
        if (!h.j.a || z) {
            synchronized (this) {
                if (this.f6789k != null) {
                    return false;
                }
                if (this.f6785g.f6796e && this.f6786h.f6792c) {
                    return false;
                }
                this.f6789k = bVar;
                this.f6790l = iOException;
                notifyAll();
                this.n.E(this.f6791m);
                return true;
            }
        }
        throw new AssertionError("Assertion failed");
    }

    public final void e(i.m0.g.b bVar) {
        if (d(bVar, null)) {
            this.n.J(this.f6791m, bVar);
        }
    }

    public final synchronized i.m0.g.b f() {
        return this.f6789k;
    }

    public final y g() {
        synchronized (this) {
            if (!(this.f6784f || h())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
        }
        return this.f6786h;
    }

    public final boolean h() {
        return this.n.a == ((this.f6791m & 1) == 1);
    }

    public final synchronized boolean i() {
        if (this.f6789k != null) {
            return false;
        }
        if ((this.f6785g.f6796e || this.f6785g.f6794c) && (this.f6786h.f6792c || this.f6786h.b)) {
            if (this.f6784f) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0031 A[Catch: all -> 0x0047, TryCatch #0 {, blocks: (B:11:0x001b, B:15:0x0022, B:21:0x0031, B:22:0x0035, B:18:0x0027, B:19:0x0028), top: B:32:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(i.w r5, boolean r6) {
        /*
            r4 = this;
            java.lang.String r0 = "headers"
            r1 = 0
            if (r5 == 0) goto L4a
            boolean r0 = java.lang.Thread.holdsLock(r4)
            r2 = 1
            r0 = r0 ^ r2
            boolean r3 = h.j.a
            if (r3 == 0) goto L1a
            if (r0 == 0) goto L12
            goto L1a
        L12:
            java.lang.String r5 = "Assertion failed"
            java.lang.AssertionError r6 = new java.lang.AssertionError
            r6.<init>(r5)
            throw r6
        L1a:
            monitor-enter(r4)
            boolean r0 = r4.f6784f     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L28
            if (r6 != 0) goto L22
            goto L28
        L22:
            i.m0.g.m$b r5 = r4.f6785g     // Catch: java.lang.Throwable -> L47
            if (r5 == 0) goto L27
            goto L2f
        L27:
            throw r1     // Catch: java.lang.Throwable -> L47
        L28:
            r4.f6784f = r2     // Catch: java.lang.Throwable -> L47
            java.util.ArrayDeque<i.w> r0 = r4.f6783e     // Catch: java.lang.Throwable -> L47
            r0.add(r5)     // Catch: java.lang.Throwable -> L47
        L2f:
            if (r6 == 0) goto L35
            i.m0.g.m$b r5 = r4.f6785g     // Catch: java.lang.Throwable -> L47
            r5.f6796e = r2     // Catch: java.lang.Throwable -> L47
        L35:
            boolean r5 = r4.i()     // Catch: java.lang.Throwable -> L47
            r4.notifyAll()     // Catch: java.lang.Throwable -> L47
            monitor-exit(r4)
            if (r5 != 0) goto L46
            i.m0.g.f r5 = r4.n
            int r6 = r4.f6791m
            r5.E(r6)
        L46:
            return
        L47:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        L4a:
            h.o.c.g.f(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.g.m.j(i.w, boolean):void");
    }

    public final synchronized void k(i.m0.g.b bVar) {
        if (this.f6789k == null) {
            this.f6789k = bVar;
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
