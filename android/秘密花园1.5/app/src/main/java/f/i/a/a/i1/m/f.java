package f.i.a.a.i1.m;

import f.i.a.a.b1.p;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;

/* compiled from: CeaUtil.java */
/* loaded from: classes.dex */
public final class f {
    public static final int a = h0.C("GA94");

    public static void a(long j2, u uVar, p[] pVarArr) {
        while (true) {
            if (uVar.a() <= 1) {
                return;
            }
            int c2 = c(uVar);
            int c3 = c(uVar);
            int i2 = uVar.b + c3;
            if (c3 == -1 || c3 > uVar.a()) {
                i2 = uVar.f5776c;
            } else if (c2 == 4 && c3 >= 8) {
                int p = uVar.p();
                int u = uVar.u();
                int d2 = u == 49 ? uVar.d() : 0;
                int p2 = uVar.p();
                if (u == 47) {
                    uVar.B(1);
                }
                boolean z = p == 181 && (u == 49 || u == 47) && p2 == 3;
                if (u == 49) {
                    z &= d2 == a;
                }
                if (z) {
                    b(j2, uVar, pVarArr);
                }
            }
            uVar.A(i2);
        }
    }

    public static void b(long j2, u uVar, p[] pVarArr) {
        int p = uVar.p();
        if ((p & 64) != 0) {
            uVar.B(1);
            int i2 = (p & 31) * 3;
            int i3 = uVar.b;
            for (p pVar : pVarArr) {
                uVar.A(i3);
                pVar.a(uVar, i2);
                pVar.c(j2, 1, i2, 0, null);
            }
        }
    }

    public static int c(u uVar) {
        int i2 = 0;
        while (uVar.a() != 0) {
            int p = uVar.p();
            i2 += p;
            if (p != 255) {
                return i2;
            }
        }
        return -1;
    }
}
