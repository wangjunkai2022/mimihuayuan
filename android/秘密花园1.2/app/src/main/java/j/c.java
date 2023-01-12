package j;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes.dex */
public class c extends b0 {

    /* renamed from: j  reason: collision with root package name */
    public static c f7047j;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7049e;

    /* renamed from: f  reason: collision with root package name */
    public c f7050f;

    /* renamed from: g  reason: collision with root package name */
    public long f7051g;

    /* renamed from: k  reason: collision with root package name */
    public static final a f7048k = new a(null);

    /* renamed from: h  reason: collision with root package name */
    public static final long f7045h = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: i  reason: collision with root package name */
    public static final long f7046i = TimeUnit.MILLISECONDS.toNanos(f7045h);

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final c a() throws InterruptedException {
            c cVar = c.f7047j;
            if (cVar != null) {
                c cVar2 = cVar.f7050f;
                if (cVar2 == null) {
                    long nanoTime = System.nanoTime();
                    c.class.wait(c.f7045h);
                    c cVar3 = c.f7047j;
                    if (cVar3 != null) {
                        if (cVar3.f7050f != null || System.nanoTime() - nanoTime < c.f7046i) {
                            return null;
                        }
                        return c.f7047j;
                    }
                    h.o.c.g.e();
                    throw null;
                }
                long nanoTime2 = cVar2.f7051g - System.nanoTime();
                if (nanoTime2 > 0) {
                    long j2 = nanoTime2 / 1000000;
                    c.class.wait(j2, (int) (nanoTime2 - (1000000 * j2)));
                    return null;
                }
                c cVar4 = c.f7047j;
                if (cVar4 != null) {
                    cVar4.f7050f = cVar2.f7050f;
                    cVar2.f7050f = null;
                    return cVar2;
                }
                h.o.c.g.e();
                throw null;
            }
            h.o.c.g.e();
            throw null;
        }
    }

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes.dex */
    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            c a;
            while (true) {
                try {
                    synchronized (c.class) {
                        a = c.f7048k.a();
                        if (a == c.f7047j) {
                            c.f7047j = null;
                            return;
                        }
                    }
                    if (a != null) {
                        a.m();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public final void h() {
        if (!this.f7049e) {
            long j2 = this.f7044c;
            boolean z = this.a;
            int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i2 != 0 || z) {
                this.f7049e = true;
                synchronized (c.class) {
                    if (f7047j == null) {
                        f7047j = new c();
                        new b().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (i2 != 0 && z) {
                        this.f7051g = Math.min(j2, c() - nanoTime) + nanoTime;
                    } else if (i2 != 0) {
                        this.f7051g = j2 + nanoTime;
                    } else if (z) {
                        this.f7051g = c();
                    } else {
                        throw new AssertionError();
                    }
                    long j3 = this.f7051g - nanoTime;
                    c cVar = f7047j;
                    if (cVar != null) {
                        while (cVar.f7050f != null) {
                            c cVar2 = cVar.f7050f;
                            if (cVar2 != null) {
                                if (j3 < cVar2.f7051g - nanoTime) {
                                    break;
                                }
                                cVar = cVar.f7050f;
                                if (cVar == null) {
                                    h.o.c.g.e();
                                    throw null;
                                }
                            } else {
                                h.o.c.g.e();
                                throw null;
                            }
                        }
                        this.f7050f = cVar.f7050f;
                        cVar.f7050f = this;
                        if (cVar == f7047j) {
                            c.class.notify();
                        }
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
        r3.f7050f = r5.f7050f;
        r5.f7050f = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean i() {
        /*
            r5 = this;
            boolean r0 = r5.f7049e
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r5.f7049e = r1
            r0 = 0
            java.lang.Class<j.c> r2 = j.c.class
            monitor-enter(r2)
            j.c r3 = j.c.f7047j     // Catch: java.lang.Throwable -> L22
        Le:
            if (r3 == 0) goto L1f
            j.c r4 = r3.f7050f     // Catch: java.lang.Throwable -> L22
            if (r4 != r5) goto L1c
            j.c r4 = r5.f7050f     // Catch: java.lang.Throwable -> L22
            r3.f7050f = r4     // Catch: java.lang.Throwable -> L22
            r5.f7050f = r0     // Catch: java.lang.Throwable -> L22
            monitor-exit(r2)
            goto L21
        L1c:
            j.c r3 = r3.f7050f     // Catch: java.lang.Throwable -> L22
            goto Le
        L1f:
            r1 = 1
            monitor-exit(r2)
        L21:
            return r1
        L22:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.c.i():boolean");
    }

    public final IOException j(IOException iOException) {
        return !i() ? iOException : l(iOException);
    }

    public final void k(boolean z) {
        if (i() && z) {
            throw l(null);
        }
    }

    public IOException l(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public void m() {
    }
}
