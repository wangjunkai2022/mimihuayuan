package f.i.a.a.h1;

import androidx.recyclerview.widget.RecyclerView;
/* compiled from: CompositeSequenceableLoader.java */
/* loaded from: classes.dex */
public class t implements l0 {
    public final l0[] a;

    public t(l0[] l0VarArr) {
        this.a = l0VarArr;
    }

    @Override // f.i.a.a.h1.l0
    public final long c() {
        long j2 = Long.MAX_VALUE;
        for (l0 l0Var : this.a) {
            long c2 = l0Var.c();
            if (c2 != Long.MIN_VALUE) {
                j2 = Math.min(j2, c2);
            }
        }
        if (j2 == RecyclerView.FOREVER_NS) {
            return Long.MIN_VALUE;
        }
        return j2;
    }

    @Override // f.i.a.a.h1.l0
    public final long e() {
        long j2 = Long.MAX_VALUE;
        for (l0 l0Var : this.a) {
            long e2 = l0Var.e();
            if (e2 != Long.MIN_VALUE) {
                j2 = Math.min(j2, e2);
            }
        }
        if (j2 == RecyclerView.FOREVER_NS) {
            return Long.MIN_VALUE;
        }
        return j2;
    }

    @Override // f.i.a.a.h1.l0
    public boolean f(long j2) {
        l0[] l0VarArr;
        boolean z;
        boolean z2 = false;
        do {
            long c2 = c();
            if (c2 == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (l0 l0Var : this.a) {
                long c3 = l0Var.c();
                boolean z3 = c3 != Long.MIN_VALUE && c3 <= j2;
                if (c3 == c2 || z3) {
                    z |= l0Var.f(j2);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // f.i.a.a.h1.l0
    public final void g(long j2) {
        for (l0 l0Var : this.a) {
            l0Var.g(j2);
        }
    }
}
