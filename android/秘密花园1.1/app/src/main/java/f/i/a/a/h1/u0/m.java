package f.i.a.a.h1.u0;

import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.p0;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: HlsSampleStream.java */
/* loaded from: classes.dex */
public final class m implements k0 {
    public final int a;
    public final n b;

    /* renamed from: c  reason: collision with root package name */
    public int f5058c = -1;

    public m(n nVar, int i2) {
        this.b = nVar;
        this.a = i2;
    }

    @Override // f.i.a.a.h1.k0
    public void a() throws IOException {
        if (this.f5058c != -2) {
            this.b.B();
            return;
        }
        p0 p0Var = this.b.E;
        throw new p(p0Var.b[this.a].b[0].f4013i);
    }

    public void b() {
        c.a.a.b.g.h.m(this.f5058c == -1);
        n nVar = this.b;
        int i2 = this.a;
        int i3 = nVar.G[i2];
        if (i3 == -1) {
            if (nVar.F.a(nVar.E.b[i2]) != -1) {
                i3 = -3;
            }
            i3 = -2;
        } else {
            boolean[] zArr = nVar.J;
            if (!zArr[i3]) {
                zArr[i3] = true;
            }
            i3 = -2;
        }
        this.f5058c = i3;
    }

    public final boolean c() {
        int i2 = this.f5058c;
        return (i2 == -1 || i2 == -3 || i2 == -2) ? false : true;
    }

    @Override // f.i.a.a.h1.k0
    public boolean d() {
        if (this.f5058c != -3) {
            if (!c()) {
                return false;
            }
            n nVar = this.b;
            if (!(nVar.P || (!nVar.z() && nVar.q[this.f5058c].o()))) {
                return false;
            }
        }
        return true;
    }

    @Override // f.i.a.a.h1.k0
    public int i(c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
        f.i.a.a.z0.e eVar2;
        if (this.f5058c == -3) {
            eVar.e(4);
            return -4;
        } else if (c()) {
            n nVar = this.b;
            int i2 = this.f5058c;
            if (nVar.z()) {
                return -3;
            }
            int i3 = 0;
            if (!nVar.f5066j.isEmpty()) {
                int i4 = 0;
                while (true) {
                    boolean z2 = true;
                    if (i4 >= nVar.f5066j.size() - 1) {
                        break;
                    }
                    int i5 = nVar.f5066j.get(i4).f5043j;
                    int length = nVar.q.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 < length) {
                            if (nVar.J[i6] && nVar.q[i6].p() == i5) {
                                z2 = false;
                                break;
                            }
                            i6++;
                        } else {
                            break;
                        }
                    }
                    if (!z2) {
                        break;
                    }
                    i4++;
                }
                h0.f0(nVar.f5066j, 0, i4);
                k kVar = nVar.f5066j.get(0);
                b0 b0Var = kVar.f4867c;
                if (!b0Var.equals(nVar.C)) {
                    nVar.f5064h.b(nVar.a, b0Var, kVar.f4868d, kVar.f4869e, kVar.f4870f);
                }
                nVar.C = b0Var;
            }
            int s = nVar.q[i2].s(c0Var, eVar, z, nVar.P, nVar.L);
            if (s == -5) {
                b0 b0Var2 = c0Var.a;
                if (i2 == nVar.x) {
                    int p = nVar.q[i2].p();
                    while (i3 < nVar.f5066j.size() && nVar.f5066j.get(i3).f5043j != p) {
                        i3++;
                    }
                    b0Var2 = b0Var2.d(i3 < nVar.f5066j.size() ? nVar.f5066j.get(i3).f4867c : nVar.B);
                }
                f.i.a.a.z0.e eVar3 = b0Var2.f4016l;
                if (eVar3 != null && (eVar2 = nVar.p.get(eVar3.f5996c)) != null) {
                    b0Var2 = b0Var2.a(eVar2);
                }
                c0Var.a = b0Var2;
            }
            return s;
        } else {
            return -3;
        }
    }

    @Override // f.i.a.a.h1.k0
    public int q(long j2) {
        int e2;
        if (c()) {
            n nVar = this.b;
            int i2 = this.f5058c;
            if (nVar.z()) {
                return 0;
            }
            j0 j0Var = nVar.q[i2];
            if (nVar.P && j2 > j0Var.l()) {
                e2 = j0Var.f();
            } else {
                e2 = j0Var.e(j2, true, true);
                if (e2 == -1) {
                    return 0;
                }
            }
            return e2;
        }
        return 0;
    }
}
