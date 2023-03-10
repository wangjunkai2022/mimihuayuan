package f.a.a.a.l;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.VirtualLayoutManager;
/* compiled from: RangeGridLayoutHelper.java */
/* loaded from: classes.dex */
public class k extends b {
    public static final int p = View.MeasureSpec.makeMeasureSpec(0, 0);

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3, int i4, f.a.a.a.c cVar) {
        throw null;
    }

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void b(RecyclerView.Recycler recycler, RecyclerView.State state, f.a.a.a.c cVar) {
        throw null;
    }

    @Override // f.a.a.a.a
    public void c(RecyclerView.State state, VirtualLayoutManager.d dVar, f.a.a.a.c cVar) {
        if (state.getItemCount() <= 0) {
            return;
        }
        int i2 = dVar.a;
        throw null;
    }

    @Override // f.a.a.a.l.j, f.a.a.a.a
    public int d(int i2, boolean z, boolean z2, f.a.a.a.c cVar) {
        cVar.getOrientation();
        if (z) {
            if (i2 != this.n - 1) {
                return 0;
            }
            throw null;
        } else if (i2 != 0) {
            return 0;
        } else {
            throw null;
        }
    }

    @Override // f.a.a.a.a
    public void h(f.a.a.a.c cVar) {
        throw null;
    }

    @Override // f.a.a.a.a
    public void i(int i2, int i3) {
        throw null;
    }

    @Override // f.a.a.a.l.j
    public void p(int i2, int i3, int i4, int i5) {
        this.f3400g = i2;
        this.f3402i = i3;
        this.f3401h = i4;
        this.f3403j = i5;
        throw null;
    }

    @Override // f.a.a.a.l.j
    public void q(int i2, int i3, int i4, int i5) {
        this.f3396c = i2;
        this.f3397d = i4;
        this.f3398e = i3;
        this.f3399f = i5;
        throw null;
    }

    @Override // f.a.a.a.l.b
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, f.a.a.a.c cVar) {
        if (f(fVar.a.f65f)) {
            return;
        }
        int i2 = fVar.a.f65f;
        throw null;
    }

    @Override // f.a.a.a.l.b
    public void x(f.a.a.a.c cVar) {
        throw null;
    }

    @Override // f.a.a.a.l.b
    public boolean y() {
        throw null;
    }
}
