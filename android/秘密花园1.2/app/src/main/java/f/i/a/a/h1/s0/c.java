package f.i.a.a.h1.s0;

import f.i.a.a.b1.p;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.s0.e;

/* compiled from: BaseMediaChunkOutput.java */
/* loaded from: classes.dex */
public final class c implements e.b {
    public final int[] a;
    public final j0[] b;

    public c(int[] iArr, j0[] j0VarArr) {
        this.a = iArr;
        this.b = j0VarArr;
    }

    public void a(long j2) {
        j0[] j0VarArr;
        for (j0 j0Var : this.b) {
            if (j0Var != null && j0Var.f4887l != j2) {
                j0Var.f4887l = j2;
                j0Var.f4885j = true;
            }
        }
    }

    public p b(int i2, int i3) {
        int i4 = 0;
        while (true) {
            int[] iArr = this.a;
            if (i4 < iArr.length) {
                if (i3 == iArr[i4]) {
                    return this.b[i4];
                }
                i4++;
            } else {
                return new f.i.a.a.b1.f();
            }
        }
    }
}
