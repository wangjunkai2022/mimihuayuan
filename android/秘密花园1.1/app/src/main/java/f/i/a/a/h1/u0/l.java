package f.i.a.a.h1.u0;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.e1.c0;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.l0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.t;
import f.i.a.a.h1.u0.n;
import f.i.a.a.h1.u0.t.j;
import f.i.a.a.h1.v;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.i0;
import f.i.a.a.m1.h0;
import f.i.a.a.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: HlsMediaPeriod.java */
/* loaded from: classes.dex */
public final class l implements d0, n.a, j.b {
    public final i a;
    public final f.i.a.a.h1.u0.t.j b;

    /* renamed from: c  reason: collision with root package name */
    public final h f5047c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final i0 f5048d;

    /* renamed from: e  reason: collision with root package name */
    public final b0 f5049e;

    /* renamed from: f  reason: collision with root package name */
    public final f0.a f5050f;

    /* renamed from: g  reason: collision with root package name */
    public final f.i.a.a.l1.e f5051g;

    /* renamed from: h  reason: collision with root package name */
    public final IdentityHashMap<k0, Integer> f5052h;

    /* renamed from: i  reason: collision with root package name */
    public final q f5053i;

    /* renamed from: j  reason: collision with root package name */
    public final v f5054j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f5055k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f5056l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public d0.a f5057m;
    public int n;
    public p0 o;
    public n[] p;
    public n[] q;
    public int[][] r;
    public l0 s;
    public boolean t;

    public l(i iVar, f.i.a.a.h1.u0.t.j jVar, h hVar, @Nullable i0 i0Var, b0 b0Var, f0.a aVar, f.i.a.a.l1.e eVar, v vVar, boolean z, boolean z2) {
        this.a = iVar;
        this.b = jVar;
        this.f5047c = hVar;
        this.f5048d = i0Var;
        this.f5049e = b0Var;
        this.f5050f = aVar;
        this.f5051g = eVar;
        this.f5054j = vVar;
        this.f5055k = z;
        this.f5056l = z2;
        l0[] l0VarArr = new l0[0];
        if (vVar != null) {
            this.s = new t(l0VarArr);
            this.f5052h = new IdentityHashMap<>();
            this.f5053i = new q();
            this.p = new n[0];
            this.q = new n[0];
            this.r = new int[0];
            aVar.y();
            return;
        }
        throw null;
    }

    public static f.i.a.a.b0 p(f.i.a.a.b0 b0Var, f.i.a.a.b0 b0Var2, boolean z) {
        String str;
        String str2;
        String str3;
        int i2;
        int i3;
        int i4;
        if (b0Var2 != null) {
            String str4 = b0Var2.f4010f;
            int i5 = b0Var2.v;
            int i6 = b0Var2.f4007c;
            int i7 = b0Var2.f4008d;
            String str5 = b0Var2.A;
            str2 = b0Var2.b;
            str = str4;
            i2 = i5;
            i3 = i6;
            i4 = i7;
            str3 = str5;
        } else {
            String y = h0.y(b0Var.f4010f, 1);
            if (z) {
                int i8 = b0Var.v;
                str = y;
                i3 = b0Var.f4007c;
                i2 = i8;
                i4 = b0Var.f4008d;
                str3 = b0Var.A;
                str2 = b0Var.b;
            } else {
                str = y;
                str2 = null;
                str3 = null;
                i2 = -1;
                i3 = 0;
                i4 = 0;
            }
        }
        return f.i.a.a.b0.g(b0Var.a, str2, b0Var.f4012h, f.i.a.a.m1.r.c(str), str, z ? b0Var.f4009e : -1, i2, -1, null, i3, i4, str3);
    }

    @Override // f.i.a.a.h1.u0.t.j.b
    public void a() {
        this.f5057m.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        return j2;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        return this.s.c();
    }

    @Override // f.i.a.a.h1.u0.t.j.b
    public boolean d(Uri uri, long j2) {
        boolean z;
        int r;
        boolean z2 = true;
        for (n nVar : this.p) {
            g gVar = nVar.f5059c;
            int i2 = 0;
            while (true) {
                Uri[] uriArr = gVar.f5030e;
                if (i2 >= uriArr.length) {
                    i2 = -1;
                    break;
                } else if (uriArr[i2].equals(uri)) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 != -1 && (r = gVar.p.r(i2)) != -1) {
                gVar.r |= uri.equals(gVar.n);
                if (j2 != -9223372036854775807L && !gVar.p.a(r, j2)) {
                    z = false;
                    z2 &= z;
                }
            }
            z = true;
            z2 &= z;
        }
        this.f5057m.i(this);
        return z2;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        return this.s.e();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        n[] nVarArr;
        if (this.o == null) {
            for (n nVar : this.p) {
                if (!nVar.z) {
                    nVar.f(nVar.L);
                }
            }
            return false;
        }
        return this.s.f(j2);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
        this.s.g(j2);
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(n nVar) {
        this.f5057m.i(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0267  */
    @Override // f.i.a.a.h1.d0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long j(f.i.a.a.j1.j[] r38, boolean[] r39, f.i.a.a.h1.k0[] r40, boolean[] r41, long r42) {
        /*
            Method dump skipped, instructions count: 839
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.u0.l.j(f.i.a.a.j1.j[], boolean[], f.i.a.a.h1.k0[], boolean[], long):long");
    }

    public final n k(int i2, Uri[] uriArr, f.i.a.a.b0[] b0VarArr, f.i.a.a.b0 b0Var, List<f.i.a.a.b0> list, Map<String, f.i.a.a.z0.e> map, long j2) {
        return new n(i2, this, new g(this.a, this.b, uriArr, b0VarArr, this.f5047c, this.f5048d, this.f5053i, list), map, this.f5051g, j2, b0Var, this.f5049e, this.f5050f);
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (this.t) {
            return -9223372036854775807L;
        }
        this.f5050f.B();
        this.t = true;
        return -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x038a A[LOOP:8: B:129:0x0384->B:131:0x038a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010a  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v31, types: [java.util.HashMap] */
    @Override // f.i.a.a.h1.d0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m(f.i.a.a.h1.d0.a r34, long r35) {
        /*
            Method dump skipped, instructions count: 1050
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.u0.l.m(f.i.a.a.h1.d0$a, long):void");
    }

    @Override // f.i.a.a.h1.d0
    public List<c0> n(List<f.i.a.a.j1.j> list) {
        int[] iArr;
        p0 p0Var;
        int i2;
        int i3;
        l lVar = this;
        f.i.a.a.h1.u0.t.e eVar = ((f.i.a.a.h1.u0.t.c) lVar.b).f5089l;
        c.a.a.b.g.h.t(eVar);
        int i4 = !eVar.f5102e.isEmpty();
        int length = lVar.p.length - eVar.f5104g.size();
        int i5 = 0;
        if (i4 != 0) {
            n nVar = lVar.p[0];
            iArr = lVar.r[0];
            p0Var = nVar.E;
            i2 = nVar.H;
        } else {
            iArr = new int[0];
            p0Var = p0.f4836d;
            i2 = 0;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        for (f.i.a.a.j1.j jVar : list) {
            o0 j2 = jVar.j();
            int a = p0Var.a(j2);
            if (a == -1) {
                int i6 = i4;
                while (true) {
                    n[] nVarArr = lVar.p;
                    if (i6 >= nVarArr.length) {
                        break;
                    } else if (nVarArr[i6].E.a(j2) != -1) {
                        int i7 = i6 < length ? 1 : 2;
                        int[] iArr2 = lVar.r[i6];
                        int i8 = 0;
                        while (i8 < jVar.length()) {
                            arrayList.add(new c0(0, i7, iArr2[jVar.e(i8)]));
                            i8++;
                            i4 = i4;
                        }
                    } else {
                        i6++;
                        lVar = this;
                    }
                }
                i3 = i4;
            } else if (a == i2) {
                for (int i9 = 0; i9 < jVar.length(); i9++) {
                    arrayList.add(new c0(i5, i5, iArr[jVar.e(i9)]));
                }
                i3 = i4;
                z2 = true;
            } else {
                i3 = i4;
                z = true;
            }
            lVar = this;
            i4 = i3;
            i5 = 0;
        }
        if (z && !z2) {
            int i10 = iArr[0];
            int i11 = eVar.f5102e.get(iArr[0]).b.f4009e;
            for (int i12 = 1; i12 < iArr.length; i12++) {
                int i13 = eVar.f5102e.get(iArr[i12]).b.f4009e;
                if (i13 < i11) {
                    i10 = iArr[i12];
                    i11 = i13;
                }
            }
            arrayList.add(new c0(0, 0, i10));
        }
        return arrayList;
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return this.o;
    }

    public void q() {
        n[] nVarArr;
        int i2 = this.n - 1;
        this.n = i2;
        if (i2 > 0) {
            return;
        }
        int i3 = 0;
        for (n nVar : this.p) {
            i3 += nVar.E.a;
        }
        o0[] o0VarArr = new o0[i3];
        int i4 = 0;
        for (n nVar2 : this.p) {
            int i5 = nVar2.E.a;
            int i6 = 0;
            while (i6 < i5) {
                o0VarArr[i4] = nVar2.E.b[i6];
                i6++;
                i4++;
            }
        }
        this.o = new p0(o0VarArr);
        this.f5057m.h(this);
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        for (n nVar : this.p) {
            nVar.B();
        }
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        n[] nVarArr;
        for (n nVar : this.q) {
            if (nVar.y && !nVar.z()) {
                int length = nVar.q.length;
                for (int i2 = 0; i2 < length; i2++) {
                    nVar.q[i2].i(j2, z, nVar.J[i2]);
                }
            }
        }
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        n[] nVarArr = this.q;
        if (nVarArr.length > 0) {
            boolean F = nVarArr[0].F(j2, false);
            int i2 = 1;
            while (true) {
                n[] nVarArr2 = this.q;
                if (i2 >= nVarArr2.length) {
                    break;
                }
                nVarArr2[i2].F(j2, F);
                i2++;
            }
            if (F) {
                this.f5053i.a.clear();
            }
        }
        return j2;
    }
}
