package f.a.a.a.l;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import f.a.a.a.c;

/* compiled from: RangeGridLayoutHelper.java */
/* loaded from: classes.dex */
public class k extends b {
    public static final int p = View.MeasureSpec.makeMeasureSpec(0, 0);

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3, int i4, c cVar) {
        throw null;
    }

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void b(RecyclerView.Recycler recycler, RecyclerView.State state, c cVar) {
        throw null;
    }

    @Override // f.a.a.a.a
    public void c(RecyclerView.State state, VirtualLayoutManager.d dVar, c cVar) {
        if (state.getItemCount() > 0) {
            int i2 = dVar.a;
            throw null;
        }
    }

    @Override // f.a.a.a.l.j, f.a.a.a.a
    public int d(int i2, boolean z, boolean z2, c cVar) {
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
    public void h(c cVar) {
        throw null;
    }

    @Override // f.a.a.a.a
    public void i(int i2, int i3) {
        throw null;
    }

    @Override // f.a.a.a.l.j
    public void p(int i2, int i3, int i4, int i5) {
        this.f3321g = i2;
        this.f3323i = i3;
        this.f3322h = i4;
        this.f3324j = i5;
        throw null;
    }

    @Override // f.a.a.a.l.j
    public void q(int i2, int i3, int i4, int i5) {
        this.f3317c = i2;
        this.f3318d = i4;
        this.f3319e = i3;
        this.f3320f = i5;
        throw null;
    }

    @Override // f.a.a.a.l.b
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, c cVar) {
        if (!f(fVar.a.f65f)) {
            int i2 = fVar.a.f65f;
            throw null;
        }
    }

    @Override // f.a.a.a.l.b
    public void x(c cVar) {
        throw null;
    }

    @Override // f.a.a.a.l.b
    public boolean y() {
        throw null;
    }
}
