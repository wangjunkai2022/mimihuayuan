package j;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: AsyncTimeout.kt */
/* loaded from: classes.dex */
public class c extends b0 {

    /* renamed from: j  reason: collision with root package name */
    public static c f7056j;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7058e;

    /* renamed from: f  reason: collision with root package name */
    public c f7059f;

    /* renamed from: g  reason: collision with root package name */
    public long f7060g;

    /* renamed from: k  reason: collision with root package name */
    public static final a f7057k = new a(null);

    /* renamed from: h  reason: collision with root package name */
    public static final long f7054h = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: i  reason: collision with root package name */
    public static final long f7055i = TimeUnit.MILLISECONDS.toNanos(f7054h);

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final c a() throws InterruptedException {
            c cVar = c.f7056j;
            if (cVar != null) {
                c cVar2 = cVar.f7059f;
                if (cVar2 == null) {
                    long nanoTime = System.nanoTime();
                    c.class.wait(c.f7054h);
                    c cVar3 = c.f7056j;
                    if (cVar3 != null) {
                        if (cVar3.f7059f != null || System.nanoTime() - nanoTime < c.f7055i) {
                            return null;
                        }
                        return c.f7056j;
                    }
                    h.o.c.g.e();
                    throw null;
                }
                long nanoTime2 = cVar2.f7060g - System.nanoTime();
                if (nanoTime2 > 0) {
                    long j2 = nanoTime2 / 1000000;
                    c.class.wait(j2, (int) (nanoTime2 - (1000000 * j2)));
                    return null;
                }
                c cVar4 = c.f7056j;
                if (cVar4 != null) {
                    cVar4.f7059f = cVar2.f7059f;
                    cVar2.f7059f = null;
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
                        a = c.f7057k.a();
                        if (a == c.f7056j) {
                            c.f7056j = null;
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
        if (!this.f7058e) {
            long j2 = this.f7053c;
            boolean z = this.a;
            int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i2 != 0 || z) {
                this.f7058e = true;
                synchronized (c.class) {
                    if (f7056j == null) {
                        f7056j = new c();
                        new b().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (i2 != 0 && z) {
                        this.f7060g = Math.min(j2, c() - nanoTime) + nanoTime;
                    } else if (i2 != 0) {
                        this.f7060g = j2 + nanoTime;
                    } else if (z) {
                        this.f7060g = c();
                    } else {
                        throw new AssertionError();
                    }
                    long j3 = this.f7060g - nanoTime;
                    c cVar = f7056j;
                    if (cVar != null) {
                        while (cVar.f7059f != null) {
                            c cVar2 = cVar.f7059f;
                            if (cVar2 != null) {
                                if (j3 < cVar2.f7060g - nanoTime) {
                                    break;
                                }
                                cVar = cVar.f7059f;
                                if (cVar == null) {
                                    h.o.c.g.e();
                                    throw null;
                                }
                            } else {
                                h.o.c.g.e();
                                throw null;
                            }
                        }
                        this.f7059f = cVar.f7059f;
                        cVar.f7059f = this;
                        if (cVar == f7056j) {
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
        r3.f7059f = r5.f7059f;
        r5.f7059f = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i() {
        /*
            r5 = this;
            boolean r0 = r5.f7058e
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r5.f7058e = r1
            r0 = 0
            java.lang.Class<j.c> r2 = j.c.class
            monitor-enter(r2)
            j.c r3 = j.c.f7056j     // Catch: java.lang.Throwable -> L22
        Le:
            if (r3 == 0) goto L1f
            j.c r4 = r3.f7059f     // Catch: java.lang.Throwable -> L22
            if (r4 != r5) goto L1c
            j.c r4 = r5.f7059f     // Catch: java.lang.Throwable -> L22
            r3.f7059f = r4     // Catch: java.lang.Throwable -> L22
            r5.f7059f = r0     // Catch: java.lang.Throwable -> L22
            monitor-exit(r2)
            goto L21
        L1c:
            j.c r3 = r3.f7059f     // Catch: java.lang.Throwable -> L22
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
