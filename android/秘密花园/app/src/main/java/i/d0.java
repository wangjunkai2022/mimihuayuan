package i;

import androidx.core.app.NotificationCompat;
import h.o.c.g;
import i.m0.d.m;
import i.m0.i.f;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: RealCall.kt */
/* loaded from: classes.dex */
public final class d0 implements f {
    public m a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final b0 f6417c;

    /* renamed from: d  reason: collision with root package name */
    public final e0 f6418d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6419e;

    /* compiled from: RealCall.kt */
    /* loaded from: classes.dex */
    public final class a implements Runnable {
        public volatile AtomicInteger a = new AtomicInteger(0);
        public final g b;

        public a(g gVar) {
            this.b = gVar;
        }

        public final String a() {
            return d0.this.f6418d.b.f6774e;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            IOException e2;
            d0 d0Var;
            StringBuilder o = f.b.a.a.a.o("OkHttp ");
            o.append(d0.this.f6418d.b.k());
            String sb = o.toString();
            Thread currentThread = Thread.currentThread();
            g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(sb);
            try {
                m mVar = d0.this.a;
                if (mVar != null) {
                    mVar.f6574c.h();
                    try {
                        z = true;
                        try {
                            this.b.c(d0.this, d0.this.a());
                            d0Var = d0.this;
                        } catch (IOException e3) {
                            e2 = e3;
                            if (z) {
                                f.a aVar = f.f6741c;
                                f fVar = f.a;
                                fVar.k(4, "Callback failure for " + d0.this.b(), e2);
                            } else {
                                this.b.d(d0.this, e2);
                            }
                            d0Var = d0.this;
                            d0Var.f6417c.a.b(this);
                            return;
                        }
                    } catch (IOException e4) {
                        e2 = e4;
                        z = false;
                    }
                    d0Var.f6417c.a.b(this);
                    return;
                }
                g.g("transmitter");
                throw null;
            } finally {
                currentThread.setName(name);
            }
        }
    }

    public d0(b0 b0Var, e0 e0Var, boolean z, h.o.c.f fVar) {
        this.f6417c = b0Var;
        this.f6418d = e0Var;
        this.f6419e = z;
    }

    @Override // i.f
    public e0 S() {
        return this.f6418d;
    }

    @Override // i.f
    public h0 T() {
        synchronized (this) {
            if (!this.b) {
                this.b = true;
            } else {
                throw new IllegalStateException("Already Executed".toString());
            }
        }
        m mVar = this.a;
        if (mVar != null) {
            mVar.f6574c.h();
            m mVar2 = this.a;
            if (mVar2 != null) {
                mVar2.b();
                try {
                    q qVar = this.f6417c.a;
                    synchronized (qVar) {
                        qVar.f6762f.add(this);
                    }
                    return a();
                } finally {
                    q qVar2 = this.f6417c.a;
                    qVar2.a(qVar2.f6762f, this);
                }
            } else {
                g.g("transmitter");
                throw null;
            }
        } else {
            g.g("transmitter");
            throw null;
        }
    }

    @Override // i.f
    public boolean U() {
        m mVar = this.a;
        if (mVar != null) {
            return mVar.f();
        }
        g.g("transmitter");
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x004b, code lost:
        r1 = r4;
     */
    @Override // i.f
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void W(i.g r7) {
        /*
            r6 = this;
            java.lang.String r0 = "responseCallback"
            r1 = 0
            if (r7 == 0) goto L_0x008d
            monitor-enter(r6)
            boolean r0 = r6.b     // Catch: all -> 0x008a
            r2 = 1
            r0 = r0 ^ r2
            if (r0 == 0) goto L_0x007e
            r6.b = r2     // Catch: all -> 0x008a
            monitor-exit(r6)
            i.m0.d.m r0 = r6.a
            if (r0 == 0) goto L_0x0078
            r0.b()
            i.b0 r0 = r6.f6417c
            i.q r0 = r0.a
            i.d0$a r2 = new i.d0$a
            r2.<init>(r7)
            monitor-enter(r0)
            java.util.ArrayDeque<i.d0$a> r7 = r0.f6760d     // Catch: all -> 0x0075
            r7.add(r2)     // Catch: all -> 0x0075
            i.d0 r7 = i.d0.this     // Catch: all -> 0x0075
            boolean r7 = r7.f6419e     // Catch: all -> 0x0075
            if (r7 != 0) goto L_0x0070
            java.lang.String r7 = r2.a()     // Catch: all -> 0x0075
            java.util.ArrayDeque<i.d0$a> r3 = r0.f6761e     // Catch: all -> 0x0075
            java.util.Iterator r3 = r3.iterator()     // Catch: all -> 0x0075
        L_0x0035:
            boolean r4 = r3.hasNext()     // Catch: all -> 0x0075
            if (r4 == 0) goto L_0x004d
            java.lang.Object r4 = r3.next()     // Catch: all -> 0x0075
            i.d0$a r4 = (i.d0.a) r4     // Catch: all -> 0x0075
            java.lang.String r5 = r4.a()     // Catch: all -> 0x0075
            boolean r5 = h.o.c.g.a(r5, r7)     // Catch: all -> 0x0075
            if (r5 == 0) goto L_0x0035
        L_0x004b:
            r1 = r4
            goto L_0x006a
        L_0x004d:
            java.util.ArrayDeque<i.d0$a> r3 = r0.f6760d     // Catch: all -> 0x0075
            java.util.Iterator r3 = r3.iterator()     // Catch: all -> 0x0075
        L_0x0053:
            boolean r4 = r3.hasNext()     // Catch: all -> 0x0075
            if (r4 == 0) goto L_0x006a
            java.lang.Object r4 = r3.next()     // Catch: all -> 0x0075
            i.d0$a r4 = (i.d0.a) r4     // Catch: all -> 0x0075
            java.lang.String r5 = r4.a()     // Catch: all -> 0x0075
            boolean r5 = h.o.c.g.a(r5, r7)     // Catch: all -> 0x0075
            if (r5 == 0) goto L_0x0053
            goto L_0x004b
        L_0x006a:
            if (r1 == 0) goto L_0x0070
            java.util.concurrent.atomic.AtomicInteger r7 = r1.a     // Catch: all -> 0x0075
            r2.a = r7     // Catch: all -> 0x0075
        L_0x0070:
            monitor-exit(r0)
            r0.c()
            return
        L_0x0075:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        L_0x0078:
            java.lang.String r7 = "transmitter"
            h.o.c.g.g(r7)
            throw r1
        L_0x007e:
            java.lang.String r7 = "Already Executed"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x008a
            java.lang.String r7 = r7.toString()     // Catch: all -> 0x008a
            r0.<init>(r7)     // Catch: all -> 0x008a
            throw r0     // Catch: all -> 0x008a
        L_0x008a:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        L_0x008d:
            h.o.c.g.f(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.d0.W(i.g):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ad  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final i.h0 a() throws java.io.IOException {
        /*
            r13 = this;
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            i.b0 r0 = r13.f6417c
            java.util.List<i.y> r0 = r0.f6367c
            c.a.a.b.g.h.d(r1, r0)
            i.m0.e.i r0 = new i.m0.e.i
            i.b0 r2 = r13.f6417c
            r0.<init>(r2)
            r1.add(r0)
            i.m0.e.a r0 = new i.m0.e.a
            i.b0 r2 = r13.f6417c
            i.p r2 = r2.f6374j
            r0.<init>(r2)
            r1.add(r0)
            i.m0.c.a r0 = new i.m0.c.a
            i.b0 r2 = r13.f6417c
            i.d r2 = r2.f6375k
            r0.<init>(r2)
            r1.add(r0)
            i.m0.d.a r0 = i.m0.d.a.a
            r1.add(r0)
            boolean r0 = r13.f6419e
            if (r0 != 0) goto L_0x003e
            i.b0 r0 = r13.f6417c
            java.util.List<i.y> r0 = r0.f6368d
            c.a.a.b.g.h.d(r1, r0)
        L_0x003e:
            i.m0.e.b r0 = new i.m0.e.b
            boolean r2 = r13.f6419e
            r0.<init>(r2)
            r1.add(r0)
            i.m0.e.g r10 = new i.m0.e.g
            i.m0.d.m r2 = r13.a
            java.lang.String r11 = "transmitter"
            r12 = 0
            if (r2 == 0) goto L_0x00b9
            r3 = 0
            r4 = 0
            i.e0 r5 = r13.f6418d
            i.b0 r0 = r13.f6417c
            int r7 = r0.y
            int r8 = r0.z
            int r9 = r0.A
            r0 = r10
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = 0
            i.e0 r1 = r13.f6418d     // Catch: IOException -> 0x0090, all -> 0x008e
            i.h0 r1 = r10.d(r1)     // Catch: IOException -> 0x0090, all -> 0x008e
            i.m0.d.m r2 = r13.a     // Catch: IOException -> 0x0090, all -> 0x008e
            if (r2 == 0) goto L_0x008a
            boolean r2 = r2.f()     // Catch: IOException -> 0x0090, all -> 0x008e
            if (r2 != 0) goto L_0x007f
            i.m0.d.m r0 = r13.a
            if (r0 == 0) goto L_0x007b
            r0.h(r12)
            return r1
        L_0x007b:
            h.o.c.g.g(r11)
            throw r12
        L_0x007f:
            i.m0.b.f(r1)     // Catch: IOException -> 0x0090, all -> 0x008e
            java.io.IOException r1 = new java.io.IOException     // Catch: IOException -> 0x0090, all -> 0x008e
            java.lang.String r2 = "Canceled"
            r1.<init>(r2)     // Catch: IOException -> 0x0090, all -> 0x008e
            throw r1     // Catch: IOException -> 0x0090, all -> 0x008e
        L_0x008a:
            h.o.c.g.g(r11)     // Catch: IOException -> 0x0090, all -> 0x008e
            throw r12
        L_0x008e:
            r1 = move-exception
            goto L_0x00ab
        L_0x0090:
            r0 = move-exception
            i.m0.d.m r1 = r13.a     // Catch: all -> 0x00a8
            if (r1 == 0) goto L_0x00a4
            java.io.IOException r0 = r1.h(r0)     // Catch: all -> 0x00a8
            if (r0 != 0) goto L_0x00a3
            h.f r0 = new h.f     // Catch: all -> 0x00a8
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Throwable"
            r0.<init>(r1)     // Catch: all -> 0x00a8
            throw r0     // Catch: all -> 0x00a8
        L_0x00a3:
            throw r0     // Catch: all -> 0x00a8
        L_0x00a4:
            h.o.c.g.g(r11)     // Catch: all -> 0x00a8
            throw r12
        L_0x00a8:
            r0 = move-exception
            r1 = r0
            r0 = 1
        L_0x00ab:
            if (r0 != 0) goto L_0x00b8
            i.m0.d.m r0 = r13.a
            if (r0 != 0) goto L_0x00b5
            h.o.c.g.g(r11)
            throw r12
        L_0x00b5:
            r0.h(r12)
        L_0x00b8:
            throw r1
        L_0x00b9:
            h.o.c.g.g(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: i.d0.a():i.h0");
    }

    public final String b() {
        StringBuilder sb = new StringBuilder();
        m mVar = this.a;
        if (mVar != null) {
            sb.append(mVar.f() ? "canceled " : "");
            sb.append(this.f6419e ? "web socket" : NotificationCompat.CATEGORY_CALL);
            sb.append(" to ");
            sb.append(this.f6418d.b.k());
            return sb.toString();
        }
        g.g("transmitter");
        throw null;
    }

    @Override // i.f
    public void cancel() {
        m mVar = this.a;
        if (mVar != null) {
            mVar.c();
        } else {
            g.g("transmitter");
            throw null;
        }
    }

    @Override // java.lang.Object
    public Object clone() {
        b0 b0Var = this.f6417c;
        e0 e0Var = this.f6418d;
        boolean z = this.f6419e;
        if (b0Var == null) {
            g.f("client");
            throw null;
        } else if (e0Var != null) {
            d0 d0Var = new d0(b0Var, e0Var, z, null);
            d0Var.a = new m(b0Var, d0Var);
            return d0Var;
        } else {
            g.f("originalRequest");
            throw null;
        }
    }
}
