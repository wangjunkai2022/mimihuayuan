package f.i.a.a.h1;

import android.util.Pair;
import f.i.a.a.u0;

/* compiled from: AbstractConcatenatedTimeline.java */
/* loaded from: classes.dex */
public abstract class n extends u0 {
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final m0 f4821c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f4822d;

    public n(boolean z, m0 m0Var) {
        this.f4822d = z;
        this.f4821c = m0Var;
        this.b = m0Var.d();
    }

    public static Object u(Object obj) {
        return ((Pair) obj).second;
    }

    public abstract u0 A(int i2);

    @Override // f.i.a.a.u0
    public int a(boolean z) {
        if (this.b == 0) {
            return -1;
        }
        if (this.f4822d) {
            z = false;
        }
        int e2 = z ? this.f4821c.e() : 0;
        while (A(e2).q()) {
            e2 = y(e2, z);
            if (e2 == -1) {
                return -1;
            }
        }
        return A(e2).a(z) + x(e2);
    }

    @Override // f.i.a.a.u0
    public final int b(Object obj) {
        int b;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int r = r(obj2);
            if (r == -1 || (b = A(r).b(obj3)) == -1) {
                return -1;
            }
            return w(r) + b;
        }
        return -1;
    }

    @Override // f.i.a.a.u0
    public int c(boolean z) {
        if (this.b == 0) {
            return -1;
        }
        if (this.f4822d) {
            z = false;
        }
        int g2 = z ? this.f4821c.g() : this.b - 1;
        while (A(g2).q()) {
            g2 = z(g2, z);
            if (g2 == -1) {
                return -1;
            }
        }
        return A(g2).c(z) + x(g2);
    }

    @Override // f.i.a.a.u0
    public int e(int i2, int i3, boolean z) {
        if (this.f4822d) {
            if (i3 == 1) {
                i3 = 2;
            }
            z = false;
        }
        int t = t(i2);
        int x = x(t);
        int e2 = A(t).e(i2 - x, i3 != 2 ? i3 : 0, z);
        if (e2 != -1) {
            return x + e2;
        }
        int y = y(t, z);
        while (y != -1 && A(y).q()) {
            y = y(y, z);
        }
        if (y != -1) {
            return A(y).a(z) + x(y);
        } else if (i3 == 2) {
            return a(z);
        } else {
            return -1;
        }
    }

    @Override // f.i.a.a.u0
    public final u0.b g(int i2, u0.b bVar, boolean z) {
        int s = s(i2);
        int x = x(s);
        A(s).g(i2 - w(s), bVar, z);
        bVar.f5795c += x;
        if (z) {
            bVar.b = Pair.create(v(s), bVar.b);
        }
        return bVar;
    }

    @Override // f.i.a.a.u0
    public final u0.b h(Object obj, u0.b bVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int r = r(obj2);
        int x = x(r);
        A(r).h(obj3, bVar);
        bVar.f5795c += x;
        bVar.b = obj;
        return bVar;
    }

    @Override // f.i.a.a.u0
    public int l(int i2, int i3, boolean z) {
        if (this.f4822d) {
            if (i3 == 1) {
                i3 = 2;
            }
            z = false;
        }
        int t = t(i2);
        int x = x(t);
        int l2 = A(t).l(i2 - x, i3 != 2 ? i3 : 0, z);
        if (l2 != -1) {
            return x + l2;
        }
        int z2 = z(t, z);
        while (z2 != -1 && A(z2).q()) {
            z2 = z(z2, z);
        }
        if (z2 != -1) {
            return A(z2).c(z) + x(z2);
        } else if (i3 == 2) {
            return c(z);
        } else {
            return -1;
        }
    }

    @Override // f.i.a.a.u0
    public final Object m(int i2) {
        int s = s(i2);
        return Pair.create(v(s), A(s).m(i2 - w(s)));
    }

    @Override // f.i.a.a.u0
    public final u0.c o(int i2, u0.c cVar, boolean z, long j2) {
        int t = t(i2);
        int x = x(t);
        int w = w(t);
        A(t).o(i2 - x, cVar, z, j2);
        cVar.f5802f += w;
        cVar.f5803g += w;
        return cVar;
    }

    public abstract int r(Object obj);

    public abstract int s(int i2);

    public abstract int t(int i2);

    public abstract Object v(int i2);

    public abstract int w(int i2);

    public abstract int x(int i2);

    public final int y(int i2, boolean z) {
        if (z) {
            return this.f4821c.b(i2);
        }
        if (i2 < this.b - 1) {
            return i2 + 1;
        }
        return -1;
    }

    public final int z(int i2, boolean z) {
        if (z) {
            return this.f4821c.f(i2);
        }
        if (i2 > 0) {
            return i2 - 1;
        }
        return -1;
    }
}
