package f.i.a.a.h1;

import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.h1.d0;
import f.i.a.a.j1.j;
import f.i.a.a.m1.h0;
import f.i.a.a.s0;
import f.i.a.a.y0.e;
import java.io.IOException;
import java.util.List;

/* compiled from: ClippingMediaPeriod.java */
/* loaded from: classes.dex */
public final class q implements d0, d0.a {
    public final d0 a;
    public d0.a b;

    /* renamed from: c  reason: collision with root package name */
    public a[] f4838c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    public long f4839d;

    /* renamed from: e  reason: collision with root package name */
    public long f4840e;

    /* renamed from: f  reason: collision with root package name */
    public long f4841f;

    /* compiled from: ClippingMediaPeriod.java */
    /* loaded from: classes.dex */
    public final class a implements k0 {
        public final k0 a;
        public boolean b;

        public a(k0 k0Var) {
            this.a = k0Var;
        }

        @Override // f.i.a.a.h1.k0
        public void a() throws IOException {
            this.a.a();
        }

        @Override // f.i.a.a.h1.k0
        public boolean d() {
            return !q.this.a() && this.a.d();
        }

        @Override // f.i.a.a.h1.k0
        public int i(c0 c0Var, e eVar, boolean z) {
            if (q.this.a()) {
                return -3;
            }
            if (this.b) {
                eVar.a = 4;
                return -4;
            }
            int i2 = this.a.i(c0Var, eVar, z);
            if (i2 == -5) {
                b0 b0Var = c0Var.a;
                if (!(b0Var.y == 0 && b0Var.z == 0)) {
                    int i3 = 0;
                    int i4 = q.this.f4840e != 0 ? 0 : b0Var.y;
                    if (q.this.f4841f == Long.MIN_VALUE) {
                        i3 = b0Var.z;
                    }
                    c0Var.a = b0Var.c(i4, i3);
                }
                return -5;
            }
            long j2 = q.this.f4841f;
            if (j2 == Long.MIN_VALUE || ((i2 != -4 || eVar.f5956d < j2) && (i2 != -3 || q.this.e() != Long.MIN_VALUE))) {
                return i2;
            }
            eVar.i();
            eVar.a = 4;
            this.b = true;
            return -4;
        }

        @Override // f.i.a.a.h1.k0
        public int q(long j2) {
            if (q.this.a()) {
                return -3;
            }
            return this.a.q(j2);
        }
    }

    public q(d0 d0Var, boolean z, long j2, long j3) {
        this.a = d0Var;
        this.f4839d = z ? j2 : -9223372036854775807L;
        this.f4840e = j2;
        this.f4841f = j3;
    }

    public boolean a() {
        return this.f4839d != -9223372036854775807L;
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        long j3 = this.f4840e;
        if (j2 == j3) {
            return j3;
        }
        long p = h0.p(s0Var.a, 0, j2 - j3);
        long j4 = s0Var.b;
        long j5 = this.f4841f;
        long p2 = h0.p(j4, 0, j5 == Long.MIN_VALUE ? RecyclerView.FOREVER_NS : j5 - j2);
        if (!(p == s0Var.a && p2 == s0Var.b)) {
            s0Var = new s0(p, p2);
        }
        return this.a.b(j2, s0Var);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        long c2 = this.a.c();
        if (c2 != Long.MIN_VALUE) {
            long j2 = this.f4841f;
            if (j2 == Long.MIN_VALUE || c2 < j2) {
                return c2;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        long e2 = this.a.e();
        if (e2 != Long.MIN_VALUE) {
            long j2 = this.f4841f;
            if (j2 == Long.MIN_VALUE || e2 < j2) {
                return e2;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        return this.a.f(j2);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
        this.a.g(j2);
    }

    @Override // f.i.a.a.h1.d0.a
    public void h(d0 d0Var) {
        this.b.h(this);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.h1.l0] */
    @Override // f.i.a.a.h1.l0.a
    public void i(d0 d0Var) {
        this.b.i(this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0083, code lost:
        if (r1 > r5) goto L_0x0086;
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0073  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008d  */
    @Override // f.i.a.a.h1.d0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long j(f.i.a.a.j1.j[] r16, boolean[] r17, f.i.a.a.h1.k0[] r18, boolean[] r19, long r20) {
        /*
            r15 = this;
            r0 = r15
            r8 = r16
            r9 = r18
            int r1 = r9.length
            f.i.a.a.h1.q$a[] r1 = new f.i.a.a.h1.q.a[r1]
            r0.f4838c = r1
            int r1 = r9.length
            f.i.a.a.h1.k0[] r10 = new f.i.a.a.h1.k0[r1]
            r11 = 0
            r1 = 0
        L_0x000f:
            int r2 = r9.length
            r12 = 0
            if (r1 >= r2) goto L_0x0028
            f.i.a.a.h1.q$a[] r2 = r0.f4838c
            r3 = r9[r1]
            f.i.a.a.h1.q$a r3 = (f.i.a.a.h1.q.a) r3
            r2[r1] = r3
            r3 = r2[r1]
            if (r3 == 0) goto L_0x0023
            r2 = r2[r1]
            f.i.a.a.h1.k0 r12 = r2.a
        L_0x0023:
            r10[r1] = r12
            int r1 = r1 + 1
            goto L_0x000f
        L_0x0028:
            f.i.a.a.h1.d0 r1 = r0.a
            r2 = r16
            r3 = r17
            r4 = r10
            r5 = r19
            r6 = r20
            long r1 = r1.j(r2, r3, r4, r5, r6)
            boolean r3 = r15.a()
            r4 = 1
            if (r3 == 0) goto L_0x0068
            long r5 = r0.f4840e
            int r3 = (r20 > r5 ? 1 : (r20 == r5 ? 0 : -1))
            if (r3 != 0) goto L_0x0068
            r13 = 0
            int r3 = (r5 > r13 ? 1 : (r5 == r13 ? 0 : -1))
            if (r3 == 0) goto L_0x0063
            int r3 = r8.length
            r5 = 0
        L_0x004c:
            if (r5 >= r3) goto L_0x0063
            r6 = r8[r5]
            if (r6 == 0) goto L_0x0060
            f.i.a.a.b0 r6 = r6.k()
            java.lang.String r6 = r6.f4013i
            boolean r6 = f.i.a.a.m1.r.h(r6)
            if (r6 != 0) goto L_0x0060
            r3 = 1
            goto L_0x0064
        L_0x0060:
            int r5 = r5 + 1
            goto L_0x004c
        L_0x0063:
            r3 = 0
        L_0x0064:
            if (r3 == 0) goto L_0x0068
            r5 = r1
            goto L_0x006d
        L_0x0068:
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L_0x006d:
            r0.f4839d = r5
            int r3 = (r1 > r20 ? 1 : (r1 == r20 ? 0 : -1))
            if (r3 == 0) goto L_0x0087
            long r5 = r0.f4840e
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 < 0) goto L_0x0086
            long r5 = r0.f4841f
            r7 = -9223372036854775808
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 == 0) goto L_0x0087
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 > 0) goto L_0x0086
            goto L_0x0087
        L_0x0086:
            r4 = 0
        L_0x0087:
            c.a.a.b.g.h.v(r4)
        L_0x008a:
            int r3 = r9.length
            if (r11 >= r3) goto L_0x00b8
            r3 = r10[r11]
            if (r3 != 0) goto L_0x0096
            f.i.a.a.h1.q$a[] r3 = r0.f4838c
            r3[r11] = r12
            goto L_0x00af
        L_0x0096:
            r3 = r9[r11]
            if (r3 == 0) goto L_0x00a4
            f.i.a.a.h1.q$a[] r3 = r0.f4838c
            r3 = r3[r11]
            f.i.a.a.h1.k0 r3 = r3.a
            r4 = r10[r11]
            if (r3 == r4) goto L_0x00af
        L_0x00a4:
            f.i.a.a.h1.q$a[] r3 = r0.f4838c
            f.i.a.a.h1.q$a r4 = new f.i.a.a.h1.q$a
            r5 = r10[r11]
            r4.<init>(r5)
            r3[r11] = r4
        L_0x00af:
            f.i.a.a.h1.q$a[] r3 = r0.f4838c
            r3 = r3[r11]
            r9[r11] = r3
            int r11 = r11 + 1
            goto L_0x008a
        L_0x00b8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.q.j(f.i.a.a.j1.j[], boolean[], f.i.a.a.h1.k0[], boolean[], long):long");
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (a()) {
            long j2 = this.f4839d;
            this.f4839d = -9223372036854775807L;
            long l2 = l();
            return l2 != -9223372036854775807L ? l2 : j2;
        }
        long l3 = this.a.l();
        if (l3 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z = true;
        h.v(l3 >= this.f4840e);
        long j3 = this.f4841f;
        if (j3 != Long.MIN_VALUE && l3 > j3) {
            z = false;
        }
        h.v(z);
        return l3;
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.b = aVar;
        this.a.m(this, j2);
    }

    @Override // f.i.a.a.h1.d0
    public /* synthetic */ List<f.i.a.a.e1.c0> n(List<j> list) {
        return c0.a(this, list);
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return this.a.o();
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        this.a.s();
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        this.a.t(j2, z);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r0 > r7) goto L_0x0034;
     */
    @Override // f.i.a.a.h1.d0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long u(long r7) {
        /*
            r6 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.f4839d = r0
            f.i.a.a.h1.q$a[] r0 = r6.f4838c
            int r1 = r0.length
            r2 = 0
            r3 = 0
        L_0x000c:
            if (r3 >= r1) goto L_0x0017
            r4 = r0[r3]
            if (r4 == 0) goto L_0x0014
            r4.b = r2
        L_0x0014:
            int r3 = r3 + 1
            goto L_0x000c
        L_0x0017:
            f.i.a.a.h1.d0 r0 = r6.a
            long r0 = r0.u(r7)
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 == 0) goto L_0x0033
            long r7 = r6.f4840e
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 < 0) goto L_0x0034
            long r7 = r6.f4841f
            r3 = -9223372036854775808
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0033
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 > 0) goto L_0x0034
        L_0x0033:
            r2 = 1
        L_0x0034:
            c.a.a.b.g.h.v(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.q.u(long):long");
    }
}
