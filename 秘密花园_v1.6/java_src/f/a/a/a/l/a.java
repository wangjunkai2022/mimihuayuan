package f.a.a.a.l;

import androidx.recyclerview.widget.RecyclerView;
/* compiled from: AbstractFullFillLayoutHelper.java */
/* loaded from: classes.dex */
public abstract class a extends b {
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3, int i4, f.a.a.a.c cVar) {
        super.a(recycler, state, i2, i3, i4, cVar);
        this.r = false;
    }

    @Override // f.a.a.a.l.j, f.a.a.a.a
    public int d(int i2, boolean z, boolean z2, f.a.a.a.c cVar) {
        if (cVar.getOrientation() == 1) {
            if (z) {
                return this.f3403j + this.f3399f;
            }
            return (-this.f3402i) - this.f3398e;
        } else if (z) {
            return this.f3401h + this.f3397d;
        } else {
            return (-this.f3400g) - this.f3396c;
        }
    }

    @Override // f.a.a.a.a
    public boolean g(int i2, int i3, int i4, f.a.a.a.c cVar, boolean z) {
        f.a.a.a.j<Integer> jVar = this.a;
        if (jVar.b(Integer.valueOf(i2))) {
            if (this.p && i2 == this.a.a.intValue()) {
                return true;
            }
            if (this.q && i2 == this.a.b.intValue()) {
                return true;
            }
            Integer valueOf = Integer.valueOf(jVar.a.intValue() + (this.p ? 1 : 0));
            Integer valueOf2 = Integer.valueOf(jVar.b.intValue() - (this.q ? 1 : 0));
            if (valueOf != null) {
                if (valueOf2 != null) {
                    if (valueOf.compareTo(valueOf2) <= 0) {
                        Integer valueOf3 = Integer.valueOf(i3);
                        Integer valueOf4 = Integer.valueOf(i4);
                        if (valueOf3 != null) {
                            if (valueOf4 != null) {
                                if (valueOf3.compareTo(valueOf4) <= 0) {
                                    return (valueOf.compareTo(valueOf3) >= 0) && (valueOf2.compareTo(valueOf4) <= 0);
                                }
                                throw new IllegalArgumentException("lower must be less than or equal to upper");
                            }
                            throw new IllegalArgumentException("upper must not be null");
                        }
                        throw new IllegalArgumentException("lower must not be null");
                    }
                    throw new IllegalArgumentException("lower must be less than or equal to upper");
                }
                throw new IllegalArgumentException("upper must not be null");
            }
            throw new IllegalArgumentException("lower must not be null");
        }
        return true;
    }
}
