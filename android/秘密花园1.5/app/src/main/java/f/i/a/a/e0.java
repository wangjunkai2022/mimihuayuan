package f.i.a.a;

import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;

/* compiled from: MediaPeriodHolder.java */
/* loaded from: classes.dex */
public final class e0 {
    public final f.i.a.a.h1.d0 a;
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.h1.k0[] f4679c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4680d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4681e;

    /* renamed from: f  reason: collision with root package name */
    public f0 f4682f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean[] f4683g;

    /* renamed from: h  reason: collision with root package name */
    public final p[] f4684h;

    /* renamed from: i  reason: collision with root package name */
    public final f.i.a.a.j1.m f4685i;

    /* renamed from: j  reason: collision with root package name */
    public final f.i.a.a.h1.e0 f4686j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public e0 f4687k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public f.i.a.a.h1.p0 f4688l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public f.i.a.a.j1.n f4689m;
    public long n;

    public e0(p[] pVarArr, long j2, f.i.a.a.j1.m mVar, f.i.a.a.l1.e eVar, f.i.a.a.h1.e0 e0Var, f0 f0Var) {
        this.f4684h = pVarArr;
        this.n = j2;
        this.f4685i = mVar;
        this.f4686j = e0Var;
        e0.a aVar = f0Var.a;
        this.b = aVar.a;
        this.f4682f = f0Var;
        this.f4679c = new f.i.a.a.h1.k0[pVarArr.length];
        this.f4683g = new boolean[pVarArr.length];
        long j3 = f0Var.b;
        long j4 = f0Var.f4771d;
        f.i.a.a.h1.d0 c2 = e0Var.c(aVar, eVar, j3);
        if (j4 != -9223372036854775807L && j4 != Long.MIN_VALUE) {
            c2 = new f.i.a.a.h1.q(c2, true, 0L, j4);
        }
        this.a = c2;
    }

    public long a(f.i.a.a.j1.n nVar, long j2, boolean z, boolean[] zArr) {
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= nVar.a) {
                break;
            }
            boolean[] zArr2 = this.f4683g;
            if (z || !nVar.a(this.f4689m, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        f.i.a.a.h1.k0[] k0VarArr = this.f4679c;
        int i3 = 0;
        while (true) {
            p[] pVarArr = this.f4684h;
            if (i3 >= pVarArr.length) {
                break;
            }
            if (pVarArr[i3].a == 6) {
                k0VarArr[i3] = null;
            }
            i3++;
        }
        b();
        this.f4689m = nVar;
        c();
        f.i.a.a.j1.k kVar = nVar.f5527c;
        long j3 = this.a.j(kVar.a(), this.f4683g, this.f4679c, zArr, j2);
        f.i.a.a.h1.k0[] k0VarArr2 = this.f4679c;
        f.i.a.a.j1.n nVar2 = this.f4689m;
        c.a.a.b.g.h.t(nVar2);
        int i4 = 0;
        while (true) {
            p[] pVarArr2 = this.f4684h;
            if (i4 >= pVarArr2.length) {
                break;
            }
            if (pVarArr2[i4].a == 6 && nVar2.b(i4)) {
                k0VarArr2[i4] = new f.i.a.a.h1.x();
            }
            i4++;
        }
        this.f4681e = false;
        int i5 = 0;
        while (true) {
            f.i.a.a.h1.k0[] k0VarArr3 = this.f4679c;
            if (i5 >= k0VarArr3.length) {
                return j3;
            }
            if (k0VarArr3[i5] != null) {
                c.a.a.b.g.h.v(nVar.b(i5));
                if (this.f4684h[i5].a != 6) {
                    this.f4681e = true;
                }
            } else {
                c.a.a.b.g.h.v(kVar.b[i5] == null);
            }
            i5++;
        }
    }

    public final void b() {
        f.i.a.a.j1.n nVar = this.f4689m;
        if (!h() || nVar == null) {
            return;
        }
        for (int i2 = 0; i2 < nVar.a; i2++) {
            boolean b = nVar.b(i2);
            f.i.a.a.j1.j jVar = nVar.f5527c.b[i2];
            if (b && jVar != null) {
                jVar.b();
            }
        }
    }

    public final void c() {
        f.i.a.a.j1.n nVar = this.f4689m;
        if (!h() || nVar == null) {
            return;
        }
        for (int i2 = 0; i2 < nVar.a; i2++) {
            boolean b = nVar.b(i2);
            f.i.a.a.j1.j jVar = nVar.f5527c.b[i2];
            if (b && jVar != null) {
                jVar.d();
            }
        }
    }

    public long d() {
        if (!this.f4680d) {
            return this.f4682f.b;
        }
        long e2 = this.f4681e ? this.a.e() : Long.MIN_VALUE;
        return e2 == Long.MIN_VALUE ? this.f4682f.f4772e : e2;
    }

    public f.i.a.a.h1.p0 e() {
        f.i.a.a.h1.p0 p0Var = this.f4688l;
        c.a.a.b.g.h.t(p0Var);
        return p0Var;
    }

    public f.i.a.a.j1.n f() {
        f.i.a.a.j1.n nVar = this.f4689m;
        c.a.a.b.g.h.t(nVar);
        return nVar;
    }

    public boolean g() {
        return this.f4680d && (!this.f4681e || this.a.e() == Long.MIN_VALUE);
    }

    public final boolean h() {
        return this.f4687k == null;
    }

    public void i() {
        b();
        this.f4689m = null;
        long j2 = this.f4682f.f4771d;
        f.i.a.a.h1.e0 e0Var = this.f4686j;
        f.i.a.a.h1.d0 d0Var = this.a;
        try {
            if (j2 != -9223372036854775807L && j2 != Long.MIN_VALUE) {
                e0Var.d(((f.i.a.a.h1.q) d0Var).a);
            } else {
                e0Var.d(d0Var);
            }
        } catch (RuntimeException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f.i.a.a.j1.n j(float r5, f.i.a.a.u0 r6) throws f.i.a.a.w {
        /*
            r4 = this;
            f.i.a.a.j1.m r0 = r4.f4685i
            f.i.a.a.p[] r1 = r4.f4684h
            f.i.a.a.h1.p0 r2 = r4.e()
            f.i.a.a.f0 r3 = r4.f4682f
            f.i.a.a.h1.e0$a r3 = r3.a
            f.i.a.a.j1.n r6 = r0.a(r1, r2, r3, r6)
            f.i.a.a.j1.n r0 = r4.f4689m
            r1 = 0
            if (r0 == 0) goto L33
            f.i.a.a.j1.k r2 = r0.f5527c
            int r2 = r2.a
            f.i.a.a.j1.k r3 = r6.f5527c
            int r3 = r3.a
            if (r2 == r3) goto L20
            goto L33
        L20:
            r2 = 0
        L21:
            f.i.a.a.j1.k r3 = r6.f5527c
            int r3 = r3.a
            if (r2 >= r3) goto L31
            boolean r3 = r6.a(r0, r2)
            if (r3 != 0) goto L2e
            goto L33
        L2e:
            int r2 = r2 + 1
            goto L21
        L31:
            r0 = 1
            goto L34
        L33:
            r0 = 0
        L34:
            if (r0 == 0) goto L38
            r5 = 0
            return r5
        L38:
            f.i.a.a.j1.k r0 = r6.f5527c
            f.i.a.a.j1.j[] r0 = r0.a()
            int r2 = r0.length
        L3f:
            if (r1 >= r2) goto L4b
            r3 = r0[r1]
            if (r3 == 0) goto L48
            r3.n(r5)
        L48:
            int r1 = r1 + 1
            goto L3f
        L4b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.e0.j(float, f.i.a.a.u0):f.i.a.a.j1.n");
    }
}
