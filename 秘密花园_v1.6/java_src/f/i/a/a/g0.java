package f.i.a.a;

import android.util.Pair;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.r0.a;
import f.i.a.a.u0;
/* compiled from: MediaPeriodQueue.java */
/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: c  reason: collision with root package name */
    public long f4793c;

    /* renamed from: e  reason: collision with root package name */
    public int f4795e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4796f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public e0 f4797g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public e0 f4798h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public e0 f4799i;

    /* renamed from: j  reason: collision with root package name */
    public int f4800j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public Object f4801k;

    /* renamed from: l  reason: collision with root package name */
    public long f4802l;
    public final u0.b a = new u0.b();
    public final u0.c b = new u0.c();

    /* renamed from: d  reason: collision with root package name */
    public u0 f4794d = u0.a;

    public e0 a() {
        e0 e0Var = this.f4797g;
        if (e0Var != null) {
            if (e0Var == this.f4798h) {
                this.f4798h = e0Var.f4696k;
            }
            this.f4797g.i();
            int i2 = this.f4800j - 1;
            this.f4800j = i2;
            if (i2 == 0) {
                this.f4799i = null;
                e0 e0Var2 = this.f4797g;
                this.f4801k = e0Var2.b;
                this.f4802l = e0Var2.f4691f.a.f4826d;
            }
            this.f4797g = this.f4797g.f4696k;
        } else {
            e0 e0Var3 = this.f4799i;
            this.f4797g = e0Var3;
            this.f4798h = e0Var3;
        }
        return this.f4797g;
    }

    public void b(boolean z) {
        e0 d2 = d();
        if (d2 != null) {
            this.f4801k = z ? d2.b : null;
            this.f4802l = d2.f4691f.a.f4826d;
            d2.i();
            l(d2);
        } else if (!z) {
            this.f4801k = null;
        }
        this.f4797g = null;
        this.f4799i = null;
        this.f4798h = null;
        this.f4800j = 0;
    }

    @Nullable
    public final f0 c(e0 e0Var, long j2) {
        long j3;
        Object obj;
        long j4;
        long j5;
        long j6;
        f0 f0Var = e0Var.f4691f;
        long j7 = (e0Var.n + f0Var.f4781e) - j2;
        long j8 = 0;
        if (f0Var.f4782f) {
            int d2 = this.f4794d.d(this.f4794d.b(f0Var.a.a), this.a, this.b, this.f4795e, this.f4796f);
            if (d2 == -1) {
                return null;
            }
            int i2 = this.f4794d.g(d2, this.a, true).f5879c;
            Object obj2 = this.a.b;
            long j9 = f0Var.a.f4826d;
            if (this.f4794d.n(i2, this.b).f5886f == d2) {
                Pair<Object, Long> k2 = this.f4794d.k(this.b, this.a, i2, -9223372036854775807L, Math.max(0L, j7));
                if (k2 == null) {
                    return null;
                }
                Object obj3 = k2.first;
                long longValue = ((Long) k2.second).longValue();
                e0 e0Var2 = e0Var.f4696k;
                if (e0Var2 != null && e0Var2.b.equals(obj3)) {
                    j6 = e0Var2.f4691f.a.f4826d;
                } else {
                    j6 = this.f4793c;
                    this.f4793c = 1 + j6;
                }
                j5 = longValue;
                j8 = -9223372036854775807L;
                j4 = j6;
                obj = obj3;
            } else {
                obj = obj2;
                j4 = j9;
                j5 = 0;
            }
            return e(n(obj, j5, j4), j8, j5);
        }
        e0.a aVar = f0Var.a;
        this.f4794d.h(aVar.a, this.a);
        if (aVar.b()) {
            int i3 = aVar.b;
            a.C0075a[] c0075aArr = this.a.f5882f.f4937c;
            int i4 = c0075aArr[i3].a;
            if (i4 == -1) {
                return null;
            }
            int a = c0075aArr[i3].a(aVar.f4825c);
            if (a < i4) {
                if (this.a.f(i3, a)) {
                    return f(aVar.a, i3, a, f0Var.f4779c, aVar.f4826d);
                }
                return null;
            }
            long j10 = f0Var.f4779c;
            if (j10 == -9223372036854775807L) {
                u0 u0Var = this.f4794d;
                u0.c cVar = this.b;
                u0.b bVar = this.a;
                Pair<Object, Long> k3 = u0Var.k(cVar, bVar, bVar.f5879c, -9223372036854775807L, Math.max(0L, j7));
                if (k3 == null) {
                    return null;
                }
                j3 = ((Long) k3.second).longValue();
            } else {
                j3 = j10;
            }
            return g(aVar.a, j3, aVar.f4826d);
        }
        int c2 = this.a.c(f0Var.f4780d);
        if (c2 == -1) {
            return g(aVar.a, f0Var.f4781e, aVar.f4826d);
        }
        int e2 = this.a.e(c2);
        if (this.a.f(c2, e2)) {
            return f(aVar.a, c2, e2, f0Var.f4781e, aVar.f4826d);
        }
        return null;
    }

    public e0 d() {
        return i() ? this.f4797g : this.f4799i;
    }

    public final f0 e(e0.a aVar, long j2, long j3) {
        this.f4794d.h(aVar.a, this.a);
        if (aVar.b()) {
            if (this.a.f(aVar.b, aVar.f4825c)) {
                return f(aVar.a, aVar.b, aVar.f4825c, j2, aVar.f4826d);
            }
            return null;
        }
        return g(aVar.a, j3, aVar.f4826d);
    }

    public final f0 f(Object obj, int i2, int i3, long j2, long j3) {
        e0.a aVar = new e0.a(obj, i2, i3, j3);
        return new f0(aVar, i3 == this.a.f5882f.f4937c[i2].a(-1) ? this.a.f5882f.f4938d : 0L, j2, -9223372036854775807L, this.f4794d.h(aVar.a, this.a).a(aVar.b, aVar.f4825c), false, false);
    }

    public final f0 g(Object obj, long j2, long j3) {
        int b = this.a.b(j2);
        e0.a aVar = new e0.a(obj, j3, b);
        boolean z = !aVar.b() && aVar.f4827e == -1;
        boolean j4 = j(aVar, z);
        long d2 = b != -1 ? this.a.d(b) : -9223372036854775807L;
        return new f0(aVar, j2, -9223372036854775807L, d2, (d2 == -9223372036854775807L || d2 == Long.MIN_VALUE) ? this.a.f5880d : d2, z, j4);
    }

    public f0 h(f0 f0Var) {
        long j2;
        e0.a aVar = f0Var.a;
        boolean z = !aVar.b() && aVar.f4827e == -1;
        boolean j3 = j(aVar, z);
        this.f4794d.h(f0Var.a.a, this.a);
        if (aVar.b()) {
            j2 = this.a.a(aVar.b, aVar.f4825c);
        } else {
            j2 = f0Var.f4780d;
            if (j2 == -9223372036854775807L || j2 == Long.MIN_VALUE) {
                j2 = this.a.f5880d;
            }
        }
        return new f0(aVar, f0Var.b, f0Var.f4779c, f0Var.f4780d, j2, z, j3);
    }

    public boolean i() {
        return this.f4797g != null;
    }

    public final boolean j(e0.a aVar, boolean z) {
        int b = this.f4794d.b(aVar.a);
        if (this.f4794d.n(this.f4794d.f(b, this.a).f5879c, this.b).f5885e) {
            return false;
        }
        return (this.f4794d.d(b, this.a, this.b, this.f4795e, this.f4796f) == -1) && z;
    }

    public void k(long j2) {
        e0 e0Var = this.f4799i;
        if (e0Var != null) {
            c.a.a.b.g.h.v(e0Var.h());
            if (e0Var.f4689d) {
                e0Var.a.g(j2 - e0Var.n);
            }
        }
    }

    public boolean l(e0 e0Var) {
        boolean z = false;
        c.a.a.b.g.h.v(e0Var != null);
        this.f4799i = e0Var;
        while (true) {
            e0Var = e0Var.f4696k;
            if (e0Var == null) {
                break;
            }
            if (e0Var == this.f4798h) {
                this.f4798h = this.f4797g;
                z = true;
            }
            e0Var.i();
            this.f4800j--;
        }
        e0 e0Var2 = this.f4799i;
        if (e0Var2.f4696k != null) {
            e0Var2.b();
            e0Var2.f4696k = null;
            e0Var2.c();
        }
        return z;
    }

    public e0.a m(Object obj, long j2) {
        long j3;
        int b;
        int i2 = this.f4794d.h(obj, this.a).f5879c;
        Object obj2 = this.f4801k;
        if (obj2 != null && (b = this.f4794d.b(obj2)) != -1 && this.f4794d.f(b, this.a).f5879c == i2) {
            j3 = this.f4802l;
        } else {
            e0 d2 = d();
            while (true) {
                if (d2 != null) {
                    if (d2.b.equals(obj)) {
                        j3 = d2.f4691f.a.f4826d;
                        break;
                    }
                    d2 = d2.f4696k;
                } else {
                    e0 d3 = d();
                    while (true) {
                        if (d3 != null) {
                            int b2 = this.f4794d.b(d3.b);
                            if (b2 != -1 && this.f4794d.f(b2, this.a).f5879c == i2) {
                                j3 = d3.f4691f.a.f4826d;
                                break;
                            }
                            d3 = d3.f4696k;
                        } else {
                            j3 = this.f4793c;
                            this.f4793c = 1 + j3;
                            break;
                        }
                    }
                }
            }
        }
        return n(obj, j2, j3);
    }

    public final e0.a n(Object obj, long j2, long j3) {
        this.f4794d.h(obj, this.a);
        int c2 = this.a.c(j2);
        if (c2 == -1) {
            return new e0.a(obj, j3, this.a.b(j2));
        }
        return new e0.a(obj, c2, this.a.e(c2), j3);
    }

    public final boolean o() {
        e0 d2 = d();
        if (d2 == null) {
            return true;
        }
        int b = this.f4794d.b(d2.b);
        while (true) {
            b = this.f4794d.d(b, this.a, this.b, this.f4795e, this.f4796f);
            while (true) {
                e0 e0Var = d2.f4696k;
                if (e0Var == null || d2.f4691f.f4782f) {
                    break;
                }
                d2 = e0Var;
            }
            e0 e0Var2 = d2.f4696k;
            if (b == -1 || e0Var2 == null || this.f4794d.b(e0Var2.b) != b) {
                break;
            }
            d2 = e0Var2;
        }
        boolean l2 = l(d2);
        d2.f4691f = h(d2.f4691f);
        return (l2 && i()) ? false : true;
    }
}
