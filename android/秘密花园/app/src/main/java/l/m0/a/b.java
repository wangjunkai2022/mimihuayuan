package l.m0.a;

import f.b.a.a.a;
import java.util.concurrent.atomic.AtomicInteger;
import l.d;
import l.g0;
import m.f;
import m.j;
import m.k;
import m.m.c;
import m.m.e;
import m.q.o;

/* compiled from: CallArbiter.java */
/* loaded from: classes2.dex */
public final class b<T> extends AtomicInteger implements k, f {
    public final d<T> a;
    public final j<? super g0<T>> b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f7198c;

    /* renamed from: d  reason: collision with root package name */
    public volatile g0<T> f7199d;

    public b(d<T> dVar, j<? super g0<T>> jVar) {
        super(0);
        this.a = dVar;
        this.b = jVar;
    }

    @Override // m.k
    public boolean a() {
        return this.f7198c;
    }

    @Override // m.f
    public void b(long j2) {
        if (j2 != 0) {
            while (true) {
                int i2 = get();
                if (i2 != 0) {
                    if (i2 == 1) {
                        return;
                    }
                    if (i2 != 2) {
                        if (i2 != 3) {
                            throw new IllegalStateException(a.J("Unknown state: ", i2));
                        }
                        return;
                    } else if (compareAndSet(2, 3)) {
                        d(this.f7199d);
                        return;
                    }
                } else if (compareAndSet(0, 1)) {
                    return;
                }
            }
        }
    }

    @Override // m.k
    public void c() {
        this.f7198c = true;
        this.a.cancel();
    }

    public final void d(g0<T> g0Var) {
        try {
            if (!this.f7198c) {
                this.b.f(g0Var);
            }
            try {
                if (!this.f7198c) {
                    this.b.d();
                }
            } catch (c | m.m.d | e unused) {
                if (o.f7333f.b() == null) {
                    throw null;
                }
            } catch (Throwable th) {
                j.b.B(th);
                if (o.f7333f.b() == null) {
                    throw null;
                }
            }
        } catch (c | m.m.d | e unused2) {
            if (o.f7333f.b() == null) {
                throw null;
            }
        } catch (Throwable th2) {
            j.b.B(th2);
            try {
                this.b.e(th2);
            } catch (c | m.m.d | e unused3) {
                if (o.f7333f.b() == null) {
                    throw null;
                }
            } catch (Throwable th3) {
                j.b.B(th3);
                new m.m.a(th2, th3);
                if (o.f7333f.b() == null) {
                    throw null;
                }
            }
        }
    }

    public void e(Throwable th) {
        set(3);
        if (!this.f7198c) {
            try {
                this.b.e(th);
            } catch (c | m.m.d | e unused) {
                if (o.f7333f.b() == null) {
                    throw null;
                }
            } catch (Throwable th2) {
                j.b.B(th2);
                new m.m.a(th, th2);
                if (o.f7333f.b() == null) {
                    throw null;
                }
            }
        }
    }

    public void f(g0<T> g0Var) {
        while (true) {
            int i2 = get();
            if (i2 == 0) {
                this.f7199d = g0Var;
                if (compareAndSet(0, 2)) {
                    return;
                }
            } else if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    throw new AssertionError();
                }
                throw new IllegalStateException(a.J("Unknown state: ", i2));
            } else if (compareAndSet(1, 3)) {
                d(g0Var);
                return;
            }
        }
    }
}
