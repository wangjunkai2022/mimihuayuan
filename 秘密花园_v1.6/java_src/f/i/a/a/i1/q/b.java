package f.i.a.a.i1.q;

import c.a.a.b.g.h;
import f.i.a.a.i1.e;
import f.i.a.a.m1.h0;
import java.util.Collections;
import java.util.List;
/* compiled from: SubripSubtitle.java */
/* loaded from: classes.dex */
public final class b implements e {
    public final f.i.a.a.i1.b[] a;
    public final long[] b;

    public b(f.i.a.a.i1.b[] bVarArr, long[] jArr) {
        this.a = bVarArr;
        this.b = jArr;
    }

    @Override // f.i.a.a.i1.e
    public int a(long j2) {
        int c2 = h0.c(this.b, j2, false, false);
        if (c2 < this.b.length) {
            return c2;
        }
        return -1;
    }

    @Override // f.i.a.a.i1.e
    public long b(int i2) {
        h.m(i2 >= 0);
        h.m(i2 < this.b.length);
        return this.b[i2];
    }

    @Override // f.i.a.a.i1.e
    public List<f.i.a.a.i1.b> c(long j2) {
        int f2 = h0.f(this.b, j2, true, false);
        if (f2 != -1) {
            f.i.a.a.i1.b[] bVarArr = this.a;
            if (bVarArr[f2] != f.i.a.a.i1.b.o) {
                return Collections.singletonList(bVarArr[f2]);
            }
        }
        return Collections.emptyList();
    }

    @Override // f.i.a.a.i1.e
    public int d() {
        return this.b.length;
    }
}
