package j;

import h.o.c.f;
import h.o.c.g;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes.dex */
public class c extends b0 {

    /* renamed from: j  reason: collision with root package name */
    public static c f6972j;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6974e;

    /* renamed from: f  reason: collision with root package name */
    public c f6975f;

    /* renamed from: g  reason: collision with root package name */
    public long f6976g;

    /* renamed from: k  reason: collision with root package name */
    public static final a f6973k = new a(null);

    /* renamed from: h  reason: collision with root package name */
    public static final long f6970h = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: i  reason: collision with root package name */
    public static final long f6971i = TimeUnit.MILLISECONDS.toNanos(f6970h);

    /* compiled from: AsyncTimeout.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(f fVar) {
        }

        public final c a() throws InterruptedException {
            c cVar = c.f6972j;
            if (cVar != null) {
                c cVar2 = cVar.f6975f;
                if (cVar2 == null) {
                    long nanoTime = System.nanoTime();
                    c.class.wait(c.f6970h);
                    c cVar3 = c.f6972j;
                    if (cVar3 == null) {
                        g.e();
                        throw null;
                    } else if (cVar3.f6975f != null || System.nanoTime() - nanoTime < c.f6971i) {
                        return null;
                    } else {
                        return c.f6972j;
                    }
                } else {
                    long nanoTime2 = cVar2.f6976g - System.nanoTime();
                    if (nanoTime2 > 0) {
                        long j2 = nanoTime2 / 1000000;
                        c.class.wait(j2, (int) (nanoTime2 - (1000000 * j2)));
                        return null;
                    }
                    c cVar4 = c.f6972j;
                    if (cVar4 != null) {
                        cVar4.f6975f = cVar2.f6975f;
                        cVar2.f6975f = null;
                        return cVar2;
                    }
                    g.e();
                    throw null;
                }
            } else {
                g.e();
                throw null;
            }
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
                        a = c.f6973k.a();
                        if (a == c.f6972j) {
                            c.f6972j = null;
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
        if (!this.f6974e) {
            long j2 = this.f6969c;
            boolean z = this.a;
            int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
            if (i2 != 0 || z) {
                this.f6974e = true;
                synchronized (c.class) {
                    if (f6972j == null) {
                        f6972j = new c();
                        new b().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (i2 != 0 && z) {
                        this.f6976g = Math.min(j2, c() - nanoTime) + nanoTime;
                    } else if (i2 != 0) {
                        this.f6976g = j2 + nanoTime;
                    } else if (z) {
                        this.f6976g = c();
                    } else {
                        throw new AssertionError();
                    }
                    long j3 = this.f6976g - nanoTime;
                    c cVar = f6972j;
                    if (cVar != null) {
                        while (cVar.f6975f != null) {
                            c cVar2 = cVar.f6975f;
                            if (cVar2 == null) {
                                g.e();
                                throw null;
                            } else if (j3 < cVar2.f6976g - nanoTime) {
                                break;
                            } else {
                                cVar = cVar.f6975f;
                                if (cVar == null) {
                                    g.e();
                                    throw null;
                                }
                            }
                        }
                        this.f6975f = cVar.f6975f;
                        cVar.f6975f = this;
                        if (cVar == f6972j) {
                            c.class.notify();
                        }
                    } else {
                        g.e();
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit".toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0014, code lost:
        r3.f6975f = r5.f6975f;
        r5.f6975f = null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean i() {
        /*
            r5 = this;
            boolean r0 = r5.f6974e
            r1 = 0
            if (r0 != 0) goto L_0x0006
            return r1
        L_0x0006:
            r5.f6974e = r1
            r0 = 0
            java.lang.Class<j.c> r2 = j.c.class
            monitor-enter(r2)
            j.c r3 = j.c.f6972j     // Catch: all -> 0x0022
        L_0x000e:
            if (r3 == 0) goto L_0x001f
            j.c r4 = r3.f6975f     // Catch: all -> 0x0022
            if (r4 != r5) goto L_0x001c
            j.c r4 = r5.f6975f     // Catch: all -> 0x0022
            r3.f6975f = r4     // Catch: all -> 0x0022
            r5.f6975f = r0     // Catch: all -> 0x0022
            monitor-exit(r2)
            goto L_0x0021
        L_0x001c:
            j.c r3 = r3.f6975f     // Catch: all -> 0x0022
            goto L_0x000e
        L_0x001f:
            r1 = 1
            monitor-exit(r2)
        L_0x0021:
            return r1
        L_0x0022:
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
