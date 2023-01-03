package f.i.a.a;

import android.util.Pair;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.h1.r0.a;

/* compiled from: Timeline.java */
/* loaded from: classes.dex */
public abstract class u0 {
    public static final u0 a = new a();

    /* compiled from: Timeline.java */
    /* loaded from: classes.dex */
    public static class a extends u0 {
        @Override // f.i.a.a.u0
        public int b(Object obj) {
            return -1;
        }

        @Override // f.i.a.a.u0
        public b g(int i2, b bVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // f.i.a.a.u0
        public int i() {
            return 0;
        }

        @Override // f.i.a.a.u0
        public Object m(int i2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // f.i.a.a.u0
        public c o(int i2, c cVar, boolean z, long j2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // f.i.a.a.u0
        public int p() {
            return 0;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes.dex */
    public static final class b {
        @Nullable
        public Object a;
        @Nullable
        public Object b;

        /* renamed from: c  reason: collision with root package name */
        public int f5795c;

        /* renamed from: d  reason: collision with root package name */
        public long f5796d;

        /* renamed from: e  reason: collision with root package name */
        public long f5797e;

        /* renamed from: f  reason: collision with root package name */
        public f.i.a.a.h1.r0.a f5798f = f.i.a.a.h1.r0.a.f4852f;

        public long a(int i2, int i3) {
            a.C0068a aVar = this.f5798f.f4853c[i2];
            if (aVar.a != -1) {
                return aVar.f4857d[i3];
            }
            return -9223372036854775807L;
        }

        public int b(long j2) {
            f.i.a.a.h1.r0.a aVar = this.f5798f;
            long j3 = this.f5796d;
            if (aVar == null) {
                throw null;
            } else if (j2 == Long.MIN_VALUE) {
                return -1;
            } else {
                if (j3 != -9223372036854775807L && j2 >= j3) {
                    return -1;
                }
                int i2 = 0;
                while (true) {
                    long[] jArr = aVar.b;
                    if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j2 < jArr[i2] && aVar.f4853c[i2].b())) {
                        break;
                    }
                    i2++;
                }
                if (i2 < aVar.b.length) {
                    return i2;
                }
                return -1;
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0026, code lost:
            if (r10 >= r3) goto L_0x002e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x002b, code lost:
            if (r10 < r7) goto L_0x002d;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int c(long r10) {
            /*
                r9 = this;
                f.i.a.a.h1.r0.a r0 = r9.f5798f
                long[] r1 = r0.b
                int r1 = r1.length
                r2 = 1
                int r1 = r1 - r2
            L_0x0007:
                if (r1 < 0) goto L_0x0033
                r3 = -9223372036854775808
                r5 = 0
                int r6 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r6 != 0) goto L_0x0011
                goto L_0x002e
            L_0x0011:
                long[] r6 = r0.b
                r7 = r6[r1]
                int r6 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
                if (r6 != 0) goto L_0x0029
                long r3 = r0.f4855e
                r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r8 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
                if (r8 == 0) goto L_0x002d
                int r6 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r6 >= 0) goto L_0x002e
                goto L_0x002d
            L_0x0029:
                int r3 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
                if (r3 >= 0) goto L_0x002e
            L_0x002d:
                r5 = 1
            L_0x002e:
                if (r5 == 0) goto L_0x0033
                int r1 = r1 + -1
                goto L_0x0007
            L_0x0033:
                if (r1 < 0) goto L_0x0040
                f.i.a.a.h1.r0.a$a[] r10 = r0.f4853c
                r10 = r10[r1]
                boolean r10 = r10.b()
                if (r10 == 0) goto L_0x0040
                goto L_0x0041
            L_0x0040:
                r1 = -1
            L_0x0041:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.u0.b.c(long):int");
        }

        public long d(int i2) {
            return this.f5798f.b[i2];
        }

        public int e(int i2) {
            return this.f5798f.f4853c[i2].a(-1);
        }

        public boolean f(int i2, int i3) {
            a.C0068a aVar = this.f5798f.f4853c[i2];
            return (aVar.a == -1 || aVar.f4856c[i3] == 0) ? false : true;
        }

        public b g(@Nullable Object obj, @Nullable Object obj2, int i2, long j2, long j3) {
            f.i.a.a.h1.r0.a aVar = f.i.a.a.h1.r0.a.f4852f;
            this.a = obj;
            this.b = obj2;
            this.f5795c = i2;
            this.f5796d = j2;
            this.f5797e = j3;
            this.f5798f = aVar;
            return this;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes.dex */
    public static final class c {
        @Nullable
        public Object a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f5799c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f5800d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f5801e;

        /* renamed from: f  reason: collision with root package name */
        public int f5802f;

        /* renamed from: g  reason: collision with root package name */
        public int f5803g;

        /* renamed from: h  reason: collision with root package name */
        public long f5804h;

        /* renamed from: i  reason: collision with root package name */
        public long f5805i;

        /* renamed from: j  reason: collision with root package name */
        public long f5806j;

        public long a() {
            return q.b(this.f5805i);
        }

        public c b(@Nullable Object obj, long j2, long j3, boolean z, boolean z2, long j4, long j5, int i2, int i3, long j6) {
            this.a = obj;
            this.b = j2;
            this.f5799c = j3;
            this.f5800d = z;
            this.f5801e = z2;
            this.f5804h = j4;
            this.f5805i = j5;
            this.f5802f = i2;
            this.f5803g = i3;
            this.f5806j = j6;
            return this;
        }
    }

    public int a(boolean z) {
        return q() ? -1 : 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z) {
        if (q()) {
            return -1;
        }
        return p() - 1;
    }

    public final int d(int i2, b bVar, c cVar, int i3, boolean z) {
        int i4 = g(i2, bVar, false).f5795c;
        if (n(i4, cVar).f5803g != i2) {
            return i2 + 1;
        }
        int e2 = e(i4, i3, z);
        if (e2 == -1) {
            return -1;
        }
        return n(e2, cVar).f5802f;
    }

    public int e(int i2, int i3, boolean z) {
        if (i3 != 0) {
            if (i3 == 1) {
                return i2;
            }
            if (i3 == 2) {
                return i2 == c(z) ? a(z) : i2 + 1;
            }
            throw new IllegalStateException();
        } else if (i2 == c(z)) {
            return -1;
        } else {
            return i2 + 1;
        }
    }

    public final b f(int i2, b bVar) {
        return g(i2, bVar, false);
    }

    public abstract b g(int i2, b bVar, boolean z);

    public b h(Object obj, b bVar) {
        return g(b(obj), bVar, true);
    }

    public abstract int i();

    public final Pair<Object, Long> j(c cVar, b bVar, int i2, long j2) {
        Pair<Object, Long> k2 = k(cVar, bVar, i2, j2, 0);
        h.t(k2);
        return k2;
    }

    @Nullable
    public final Pair<Object, Long> k(c cVar, b bVar, int i2, long j2, long j3) {
        h.q(i2, 0, p());
        o(i2, cVar, false, j3);
        if (j2 == -9223372036854775807L) {
            j2 = cVar.f5804h;
            if (j2 == -9223372036854775807L) {
                return null;
            }
        }
        int i3 = cVar.f5802f;
        long j4 = cVar.f5806j + j2;
        long j5 = g(i3, bVar, true).f5796d;
        while (j5 != -9223372036854775807L && j4 >= j5 && i3 < cVar.f5803g) {
            j4 -= j5;
            i3++;
            j5 = g(i3, bVar, true).f5796d;
        }
        Object obj = bVar.b;
        h.t(obj);
        return Pair.create(obj, Long.valueOf(j4));
    }

    public int l(int i2, int i3, boolean z) {
        if (i3 != 0) {
            if (i3 == 1) {
                return i2;
            }
            if (i3 == 2) {
                return i2 == a(z) ? c(z) : i2 - 1;
            }
            throw new IllegalStateException();
        } else if (i2 == a(z)) {
            return -1;
        } else {
            return i2 - 1;
        }
    }

    public abstract Object m(int i2);

    public final c n(int i2, c cVar) {
        return o(i2, cVar, false, 0);
    }

    public abstract c o(int i2, c cVar, boolean z, long j2);

    public abstract int p();

    public final boolean q() {
        return p() == 0;
    }
}
