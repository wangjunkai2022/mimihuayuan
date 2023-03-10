package l.m0.a;

import java.util.concurrent.atomic.AtomicInteger;
import l.g0;
import m.k;
import m.q.o;
/* compiled from: CallArbiter.java */
/* loaded from: classes2.dex */
public final class b<T> extends AtomicInteger implements k, m.f {
    public final l.d<T> a;
    public final m.j<? super g0<T>> b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f7282c;

    /* renamed from: d  reason: collision with root package name */
    public volatile g0<T> f7283d;

    public b(l.d<T> dVar, m.j<? super g0<T>> jVar) {
        super(0);
        this.a = dVar;
        this.b = jVar;
    }

    @Override // m.k
    public boolean a() {
        return this.f7282c;
    }

    @Override // m.f
    public void b(long j2) {
        if (j2 == 0) {
            return;
        }
        while (true) {
            int i2 = get();
            if (i2 != 0) {
                if (i2 == 1) {
                    return;
                }
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException(f.b.a.a.a.J("Unknown state: ", i2));
                    }
                    return;
                } else if (compareAndSet(2, 3)) {
                    d(this.f7283d);
                    return;
                }
            } else if (compareAndSet(0, 1)) {
                return;
            }
        }
    }

    @Override // m.k
    public void c() {
        this.f7282c = true;
        this.a.cancel();
    }

    public final void d(g0<T> g0Var) {
        try {
            if (!this.f7282c) {
                this.b.f(g0Var);
            }
            try {
                if (this.f7282c) {
                    return;
                }
                this.b.d();
            } catch (m.m.c | m.m.d | m.m.e unused) {
                if (o.f7417f.b() == null) {
                    throw null;
                }
            } catch (Throwable th) {
                j.b.B(th);
                if (o.f7417f.b() == null) {
                    throw null;
                }
            }
        } catch (m.m.c | m.m.d | m.m.e unused2) {
            if (o.f7417f.b() == null) {
                throw null;
            }
        } catch (Throwable th2) {
            j.b.B(th2);
            try {
                this.b.e(th2);
            } catch (m.m.c | m.m.d | m.m.e unused3) {
                if (o.f7417f.b() == null) {
                    throw null;
                }
            } catch (Throwable th3) {
                j.b.B(th3);
                new m.m.a(th2, th3);
                if (o.f7417f.b() == null) {
                    throw null;
                }
            }
        }
    }

    public void e(Throwable th) {
        set(3);
        if (this.f7282c) {
            return;
        }
        try {
            this.b.e(th);
        } catch (m.m.c | m.m.d | m.m.e unused) {
            if (o.f7417f.b() == null) {
                throw null;
            }
        } catch (Throwable th2) {
            j.b.B(th2);
            new m.m.a(th, th2);
            if (o.f7417f.b() == null) {
                throw null;
            }
        }
    }

    public void f(g0<T> g0Var) {
        while (true) {
            int i2 = get();
            if (i2 == 0) {
                this.f7283d = g0Var;
                if (compareAndSet(0, 2)) {
                    return;
                }
            } else if (i2 != 1) {
                if (i2 != 2 && i2 != 3) {
                    throw new IllegalStateException(f.b.a.a.a.J("Unknown state: ", i2));
                }
                throw new AssertionError();
            } else if (compareAndSet(1, 3)) {
                d(g0Var);
                return;
            }
        }
    }
}
