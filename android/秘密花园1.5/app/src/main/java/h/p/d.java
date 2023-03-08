package h.p;

import h.o.c.g;

/* loaded from: classes.dex */
public final class d extends e {
    public static final a a(int i2, int i3) {
        return new a(i2, i3, -1);
    }

    public static final a b(a aVar, int i2) {
        if (aVar != null) {
            boolean z = i2 > 0;
            Integer valueOf = Integer.valueOf(i2);
            if (valueOf == null) {
                g.f("step");
                throw null;
            } else if (z) {
                int i3 = aVar.a;
                int i4 = aVar.b;
                if (aVar.f6409c <= 0) {
                    i2 = -i2;
                }
                return new a(i3, i4, i2);
            } else {
                throw new IllegalArgumentException("Step must be positive, was: " + valueOf + '.');
            }
        }
        g.f("$this$step");
        throw null;
    }

    public static final c c(int i2, int i3) {
        if (i3 <= Integer.MIN_VALUE) {
            c cVar = c.f6413e;
            return c.f6412d;
        }
        return new c(i2, i3 - 1);
    }
}
