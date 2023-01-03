package f.i.a.a;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.q;
import f.i.a.a.h1.x;
import f.i.a.a.j1.j;
import f.i.a.a.j1.k;
import f.i.a.a.j1.m;
import f.i.a.a.j1.n;
import f.i.a.a.l1.e;

/* compiled from: MediaPeriodHolder.java */
/* loaded from: classes.dex */
public final class e0 {
    public final d0 a;
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final k0[] f4604c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4605d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4606e;

    /* renamed from: f  reason: collision with root package name */
    public f0 f4607f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean[] f4608g;

    /* renamed from: h  reason: collision with root package name */
    public final p[] f4609h;

    /* renamed from: i  reason: collision with root package name */
    public final m f4610i;

    /* renamed from: j  reason: collision with root package name */
    public final f.i.a.a.h1.e0 f4611j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public e0 f4612k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public p0 f4613l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public n f4614m;
    public long n;

    public e0(p[] pVarArr, long j2, m mVar, e eVar, f.i.a.a.h1.e0 e0Var, f0 f0Var) {
        this.f4609h = pVarArr;
        this.n = j2;
        this.f4610i = mVar;
        this.f4611j = e0Var;
        e0.a aVar = f0Var.a;
        this.b = aVar.a;
        this.f4607f = f0Var;
        this.f4604c = new k0[pVarArr.length];
        this.f4608g = new boolean[pVarArr.length];
        long j3 = f0Var.b;
        long j4 = f0Var.f4696d;
        d0 c2 = e0Var.c(aVar, eVar, j3);
        if (!(j4 == -9223372036854775807L || j4 == Long.MIN_VALUE)) {
            c2 = new q(c2, true, 0, j4);
        }
        this.a = c2;
    }

    public long a(n nVar, long j2, boolean z, boolean[] zArr) {
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= nVar.a) {
                break;
            }
            boolean[] zArr2 = this.f4608g;
            if (z || !nVar.a(this.f4614m, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        k0[] k0VarArr = this.f4604c;
        int i3 = 0;
        while (true) {
            p[] pVarArr = this.f4609h;
            if (i3 >= pVarArr.length) {
                break;
            }
            if (pVarArr[i3].a == 6) {
                k0VarArr[i3] = null;
            }
            i3++;
        }
        b();
        this.f4614m = nVar;
        c();
        k kVar = nVar.f5452c;
        long j3 = this.a.j(kVar.a(), this.f4608g, this.f4604c, zArr, j2);
        k0[] k0VarArr2 = this.f4604c;
        n nVar2 = this.f4614m;
        h.t(nVar2);
        int i4 = 0;
        while (true) {
            p[] pVarArr2 = this.f4609h;
            if (i4 >= pVarArr2.length) {
                break;
            }
            if (pVarArr2[i4].a == 6 && nVar2.b(i4)) {
                k0VarArr2[i4] = new x();
            }
            i4++;
        }
        this.f4606e = false;
        int i5 = 0;
        while (true) {
            k0[] k0VarArr3 = this.f4604c;
            if (i5 >= k0VarArr3.length) {
                return j3;
            }
            if (k0VarArr3[i5] != null) {
                h.v(nVar.b(i5));
                if (this.f4609h[i5].a != 6) {
                    this.f4606e = true;
                }
            } else {
                h.v(kVar.b[i5] == null);
            }
            i5++;
        }
    }

    public final void b() {
        n nVar = this.f4614m;
        if (h() && nVar != null) {
            for (int i2 = 0; i2 < nVar.a; i2++) {
                boolean b = nVar.b(i2);
                j jVar = nVar.f5452c.b[i2];
                if (b && jVar != null) {
                    jVar.b();
                }
            }
        }
    }

    public final void c() {
        n nVar = this.f4614m;
        if (h() && nVar != null) {
            for (int i2 = 0; i2 < nVar.a; i2++) {
                boolean b = nVar.b(i2);
                j jVar = nVar.f5452c.b[i2];
                if (b && jVar != null) {
                    jVar.d();
                }
            }
        }
    }

    public long d() {
        if (!this.f4605d) {
            return this.f4607f.b;
        }
        long e2 = this.f4606e ? this.a.e() : Long.MIN_VALUE;
        return e2 == Long.MIN_VALUE ? this.f4607f.f4697e : e2;
    }

    public p0 e() {
        p0 p0Var = this.f4613l;
        h.t(p0Var);
        return p0Var;
    }

    public n f() {
        n nVar = this.f4614m;
        h.t(nVar);
        return nVar;
    }

    public boolean g() {
        return this.f4605d && (!this.f4606e || this.a.e() == Long.MIN_VALUE);
    }

    public final boolean h() {
        return this.f4612k == null;
    }

    public void i() {
        b();
        this.f4614m = null;
        long j2 = this.f4607f.f4696d;
        f.i.a.a.h1.e0 e0Var = this.f4611j;
        d0 d0Var = this.a;
        try {
            if (j2 == -9223372036854775807L || j2 == Long.MIN_VALUE) {
                e0Var.d(d0Var);
            } else {
                e0Var.d(((q) d0Var).a);
            }
        } catch (RuntimeException unused) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0036 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0038  */
    @androidx.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public f.i.a.a.j1.n j(float r5, f.i.a.a.u0 r6) throws f.i.a.a.w {
        /*
            r4 = this;
            f.i.a.a.j1.m r0 = r4.f4610i
            f.i.a.a.p[] r1 = r4.f4609h
            f.i.a.a.h1.p0 r2 = r4.e()
            f.i.a.a.f0 r3 = r4.f4607f
            f.i.a.a.h1.e0$a r3 = r3.a
            f.i.a.a.j1.n r6 = r0.a(r1, r2, r3, r6)
            f.i.a.a.j1.n r0 = r4.f4614m
            r1 = 0
            if (r0 == 0) goto L_0x0033
            f.i.a.a.j1.k r2 = r0.f5452c
            int r2 = r2.a
            f.i.a.a.j1.k r3 = r6.f5452c
            int r3 = r3.a
            if (r2 == r3) goto L_0x0020
            goto L_0x0033
        L_0x0020:
            r2 = 0
        L_0x0021:
            f.i.a.a.j1.k r3 = r6.f5452c
            int r3 = r3.a
            if (r2 >= r3) goto L_0x0031
            boolean r3 = r6.a(r0, r2)
            if (r3 != 0) goto L_0x002e
            goto L_0x0033
        L_0x002e:
            int r2 = r2 + 1
            goto L_0x0021
        L_0x0031:
            r0 = 1
            goto L_0x0034
        L_0x0033:
            r0 = 0
        L_0x0034:
            if (r0 == 0) goto L_0x0038
            r5 = 0
            return r5
        L_0x0038:
            f.i.a.a.j1.k r0 = r6.f5452c
            f.i.a.a.j1.j[] r0 = r0.a()
            int r2 = r0.length
        L_0x003f:
            if (r1 >= r2) goto L_0x004b
            r3 = r0[r1]
            if (r3 == 0) goto L_0x0048
            r3.n(r5)
        L_0x0048:
            int r1 = r1 + 1
            goto L_0x003f
        L_0x004b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.e0.j(float, f.i.a.a.u0):f.i.a.a.j1.n");
    }
}
