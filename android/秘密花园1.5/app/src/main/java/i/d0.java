package i;

import androidx.core.app.NotificationCompat;
import i.m0.i.f;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: RealCall.kt */
/* loaded from: classes.dex */
public final class d0 implements f {
    public i.m0.d.m a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final b0 f6492c;

    /* renamed from: d  reason: collision with root package name */
    public final e0 f6493d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6494e;

    /* compiled from: RealCall.kt */
    /* loaded from: classes.dex */
    public final class a implements Runnable {
        public volatile AtomicInteger a = new AtomicInteger(0);
        public final g b;

        public a(g gVar) {
            this.b = gVar;
        }

        public final String a() {
            return d0.this.f6493d.b.f6849e;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            d0 d0Var;
            StringBuilder o = f.b.a.a.a.o("OkHttp ");
            o.append(d0.this.f6493d.b.k());
            String sb = o.toString();
            Thread currentThread = Thread.currentThread();
            h.o.c.g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(sb);
            try {
                i.m0.d.m mVar = d0.this.a;
                if (mVar != null) {
                    mVar.f6649c.h();
                    try {
                        z = true;
                    } catch (IOException e2) {
                        e = e2;
                        z = false;
                    }
                    try {
                        this.b.c(d0.this, d0.this.a());
                        d0Var = d0.this;
                    } catch (IOException e3) {
                        e = e3;
                        if (z) {
                            f.a aVar = i.m0.i.f.f6816c;
                            i.m0.i.f fVar = i.m0.i.f.a;
                            fVar.k(4, "Callback failure for " + d0.this.b(), e);
                        } else {
                            this.b.d(d0.this, e);
                        }
                        d0Var = d0.this;
                        d0Var.f6492c.a.b(this);
                        return;
                    }
                    d0Var.f6492c.a.b(this);
                    return;
                }
                h.o.c.g.g("transmitter");
                throw null;
            } finally {
                currentThread.setName(name);
            }
        }
    }

    public d0(b0 b0Var, e0 e0Var, boolean z, h.o.c.f fVar) {
        this.f6492c = b0Var;
        this.f6493d = e0Var;
        this.f6494e = z;
    }

    @Override // i.f
    public e0 S() {
        return this.f6493d;
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
        i.m0.d.m mVar = this.a;
        if (mVar != null) {
            mVar.f6649c.h();
            i.m0.d.m mVar2 = this.a;
            if (mVar2 != null) {
                mVar2.b();
                try {
                    q qVar = this.f6492c.a;
                    synchronized (qVar) {
                        qVar.f6837f.add(this);
                    }
                    return a();
                } finally {
                    q qVar2 = this.f6492c.a;
                    qVar2.a(qVar2.f6837f, this);
                }
            }
            h.o.c.g.g("transmitter");
            throw null;
        }
        h.o.c.g.g("transmitter");
        throw null;
    }

    @Override // i.f
    public boolean U() {
        i.m0.d.m mVar = this.a;
        if (mVar != null) {
            return mVar.f();
        }
        h.o.c.g.g("transmitter");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
        r1 = r4;
     */
    @Override // i.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void W(i.g r7) {
        /*
            r6 = this;
            java.lang.String r0 = "responseCallback"
            r1 = 0
            if (r7 == 0) goto L8d
            monitor-enter(r6)
            boolean r0 = r6.b     // Catch: java.lang.Throwable -> L8a
            r2 = 1
            r0 = r0 ^ r2
            if (r0 == 0) goto L7e
            r6.b = r2     // Catch: java.lang.Throwable -> L8a
            monitor-exit(r6)
            i.m0.d.m r0 = r6.a
            if (r0 == 0) goto L78
            r0.b()
            i.b0 r0 = r6.f6492c
            i.q r0 = r0.a
            i.d0$a r2 = new i.d0$a
            r2.<init>(r7)
            monitor-enter(r0)
            java.util.ArrayDeque<i.d0$a> r7 = r0.f6835d     // Catch: java.lang.Throwable -> L75
            r7.add(r2)     // Catch: java.lang.Throwable -> L75
            i.d0 r7 = i.d0.this     // Catch: java.lang.Throwable -> L75
            boolean r7 = r7.f6494e     // Catch: java.lang.Throwable -> L75
            if (r7 != 0) goto L70
            java.lang.String r7 = r2.a()     // Catch: java.lang.Throwable -> L75
            java.util.ArrayDeque<i.d0$a> r3 = r0.f6836e     // Catch: java.lang.Throwable -> L75
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L75
        L35:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L75
            if (r4 == 0) goto L4d
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L75
            i.d0$a r4 = (i.d0.a) r4     // Catch: java.lang.Throwable -> L75
            java.lang.String r5 = r4.a()     // Catch: java.lang.Throwable -> L75
            boolean r5 = h.o.c.g.a(r5, r7)     // Catch: java.lang.Throwable -> L75
            if (r5 == 0) goto L35
        L4b:
            r1 = r4
            goto L6a
        L4d:
            java.util.ArrayDeque<i.d0$a> r3 = r0.f6835d     // Catch: java.lang.Throwable -> L75
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L75
        L53:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L75
            if (r4 == 0) goto L6a
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L75
            i.d0$a r4 = (i.d0.a) r4     // Catch: java.lang.Throwable -> L75
            java.lang.String r5 = r4.a()     // Catch: java.lang.Throwable -> L75
            boolean r5 = h.o.c.g.a(r5, r7)     // Catch: java.lang.Throwable -> L75
            if (r5 == 0) goto L53
            goto L4b
        L6a:
            if (r1 == 0) goto L70
            java.util.concurrent.atomic.AtomicInteger r7 = r1.a     // Catch: java.lang.Throwable -> L75
            r2.a = r7     // Catch: java.lang.Throwable -> L75
        L70:
            monitor-exit(r0)
            r0.c()
            return
        L75:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        L78:
            java.lang.String r7 = "transmitter"
            h.o.c.g.g(r7)
            throw r1
        L7e:
            java.lang.String r7 = "Already Executed"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L8a
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L8a
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L8a
            throw r0     // Catch: java.lang.Throwable -> L8a
        L8a:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        L8d:
            h.o.c.g.f(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.d0.W(i.g):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final i.h0 a() throws java.io.IOException {
        /*
            r13 = this;
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            i.b0 r0 = r13.f6492c
            java.util.List<i.y> r0 = r0.f6442c
            c.a.a.b.g.h.d(r1, r0)
            i.m0.e.i r0 = new i.m0.e.i
            i.b0 r2 = r13.f6492c
            r0.<init>(r2)
            r1.add(r0)
            i.m0.e.a r0 = new i.m0.e.a
            i.b0 r2 = r13.f6492c
            i.p r2 = r2.f6449j
            r0.<init>(r2)
            r1.add(r0)
            i.m0.c.a r0 = new i.m0.c.a
            i.b0 r2 = r13.f6492c
            i.d r2 = r2.f6450k
            r0.<init>(r2)
            r1.add(r0)
            i.m0.d.a r0 = i.m0.d.a.a
            r1.add(r0)
            boolean r0 = r13.f6494e
            if (r0 != 0) goto L3e
            i.b0 r0 = r13.f6492c
            java.util.List<i.y> r0 = r0.f6443d
            c.a.a.b.g.h.d(r1, r0)
        L3e:
            i.m0.e.b r0 = new i.m0.e.b
            boolean r2 = r13.f6494e
            r0.<init>(r2)
            r1.add(r0)
            i.m0.e.g r10 = new i.m0.e.g
            i.m0.d.m r2 = r13.a
            java.lang.String r11 = "transmitter"
            r12 = 0
            if (r2 == 0) goto Lb9
            r3 = 0
            r4 = 0
            i.e0 r5 = r13.f6493d
            i.b0 r0 = r13.f6492c
            int r7 = r0.y
            int r8 = r0.z
            int r9 = r0.A
            r0 = r10
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = 0
            i.e0 r1 = r13.f6493d     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            i.h0 r1 = r10.d(r1)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            i.m0.d.m r2 = r13.a     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            if (r2 == 0) goto L8a
            boolean r2 = r2.f()     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            if (r2 != 0) goto L7f
            i.m0.d.m r0 = r13.a
            if (r0 == 0) goto L7b
            r0.h(r12)
            return r1
        L7b:
            h.o.c.g.g(r11)
            throw r12
        L7f:
            i.m0.b.f(r1)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            java.lang.String r2 = "Canceled"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            throw r1     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
        L8a:
            h.o.c.g.g(r11)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            throw r12
        L8e:
            r1 = move-exception
            goto Lab
        L90:
            r0 = move-exception
            i.m0.d.m r1 = r13.a     // Catch: java.lang.Throwable -> La8
            if (r1 == 0) goto La4
            java.io.IOException r0 = r1.h(r0)     // Catch: java.lang.Throwable -> La8
            if (r0 != 0) goto La3
            h.f r0 = new h.f     // Catch: java.lang.Throwable -> La8
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Throwable"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> La8
            throw r0     // Catch: java.lang.Throwable -> La8
        La3:
            throw r0     // Catch: java.lang.Throwable -> La8
        La4:
            h.o.c.g.g(r11)     // Catch: java.lang.Throwable -> La8
            throw r12
        La8:
            r0 = move-exception
            r1 = r0
            r0 = 1
        Lab:
            if (r0 != 0) goto Lb8
            i.m0.d.m r0 = r13.a
            if (r0 != 0) goto Lb5
            h.o.c.g.g(r11)
            throw r12
        Lb5:
            r0.h(r12)
        Lb8:
            throw r1
        Lb9:
            h.o.c.g.g(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: i.d0.a():i.h0");
    }

    public final String b() {
        StringBuilder sb = new StringBuilder();
        i.m0.d.m mVar = this.a;
        if (mVar != null) {
            sb.append(mVar.f() ? "canceled " : "");
            sb.append(this.f6494e ? "web socket" : NotificationCompat.CATEGORY_CALL);
            sb.append(" to ");
            sb.append(this.f6493d.b.k());
            return sb.toString();
        }
        h.o.c.g.g("transmitter");
        throw null;
    }

    @Override // i.f
    public void cancel() {
        i.m0.d.m mVar = this.a;
        if (mVar != null) {
            mVar.c();
        } else {
            h.o.c.g.g("transmitter");
            throw null;
        }
    }

    public Object clone() {
        b0 b0Var = this.f6492c;
        e0 e0Var = this.f6493d;
        boolean z = this.f6494e;
        if (b0Var == null) {
            h.o.c.g.f("client");
            throw null;
        } else if (e0Var != null) {
            d0 d0Var = new d0(b0Var, e0Var, z, null);
            d0Var.a = new i.m0.d.m(b0Var, d0Var);
            return d0Var;
        } else {
            h.o.c.g.f("originalRequest");
            throw null;
        }
    }
}
