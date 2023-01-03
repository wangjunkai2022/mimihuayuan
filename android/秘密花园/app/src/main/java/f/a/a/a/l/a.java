package f.a.a.a.l;

import androidx.recyclerview.widget.RecyclerView;
import f.a.a.a.c;
import f.a.a.a.j;

/* compiled from: AbstractFullFillLayoutHelper.java */
/* loaded from: classes.dex */
public abstract class a extends b {
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3, int i4, c cVar) {
        super.a(recycler, state, i2, i3, i4, cVar);
        this.r = false;
    }

    @Override // f.a.a.a.l.j, f.a.a.a.a
    public int d(int i2, boolean z, boolean z2, c cVar) {
        boolean z3 = true;
        if (cVar.getOrientation() != 1) {
            z3 = false;
        }
        if (z3) {
            if (z) {
                return this.f3324j + this.f3320f;
            }
            return (-this.f3323i) - this.f3319e;
        } else if (z) {
            return this.f3322h + this.f3318d;
        } else {
            return (-this.f3321g) - this.f3317c;
        }
    }

    @Override // f.a.a.a.a
    public boolean g(int i2, int i3, int i4, c cVar, boolean z) {
        j<Integer> jVar = this.a;
        if (!jVar.b(Integer.valueOf(i2))) {
            return true;
        }
        if (this.p && i2 == this.a.a.intValue()) {
            return true;
        }
        if (this.q && i2 == this.a.b.intValue()) {
            return true;
        }
        Integer valueOf = Integer.valueOf(jVar.a.intValue() + (this.p ? 1 : 0));
        Integer valueOf2 = Integer.valueOf(jVar.b.intValue() - (this.q ? 1 : 0));
        if (valueOf == null) {
            throw new IllegalArgumentException("lower must not be null");
        } else if (valueOf2 == null) {
            throw new IllegalArgumentException("upper must not be null");
        } else if (valueOf.compareTo(valueOf2) <= 0) {
            Integer valueOf3 = Integer.valueOf(i3);
            Integer valueOf4 = Integer.valueOf(i4);
            if (valueOf3 == null) {
                throw new IllegalArgumentException("lower must not be null");
            } else if (valueOf4 == null) {
                throw new IllegalArgumentException("upper must not be null");
            } else if (valueOf3.compareTo(valueOf4) <= 0) {
                boolean z2 = valueOf.compareTo(valueOf3) >= 0;
                boolean z3 = valueOf2.compareTo(valueOf4) <= 0;
                if (!z2 || !z3) {
                    return false;
                }
                return true;
            } else {
                throw new IllegalArgumentException("lower must be less than or equal to upper");
            }
        } else {
            throw new IllegalArgumentException("lower must be less than or equal to upper");
        }
    }
}
