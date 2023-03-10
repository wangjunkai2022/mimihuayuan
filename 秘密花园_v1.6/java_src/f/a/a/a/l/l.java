package f.a.a.a.l;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
/* compiled from: SingleLayoutHelper.java */
/* loaded from: classes.dex */
public class l extends c {
    public l() {
        j(1);
    }

    @Override // f.a.a.a.a
    public void i(int i2, int i3) {
    }

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void j(int i2) {
        if (i2 > 0) {
            this.n = 1;
        } else {
            this.n = 0;
        }
    }

    @Override // f.a.a.a.l.c, f.a.a.a.l.b
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, f.a.a.a.c cVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (f(fVar.a.f65f)) {
            return;
        }
        View a = fVar.a.a(recycler);
        boolean z = true;
        if (a == null) {
            hVar.b = true;
            return;
        }
        VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
        virtualLayoutManager.b(fVar, a);
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) a.getLayoutParams();
        boolean z2 = virtualLayoutManager.getOrientation() == 1;
        int j2 = (((virtualLayoutManager.j() - virtualLayoutManager.getPaddingLeft()) - virtualLayoutManager.getPaddingRight()) - l()) - m();
        int i8 = (((virtualLayoutManager.i() - virtualLayoutManager.getPaddingTop()) - virtualLayoutManager.getPaddingBottom()) - n()) - o();
        if (!Float.isNaN(this.f3389m)) {
            if (z2) {
                i8 = (int) ((j2 / this.f3389m) + 0.5f);
            } else {
                j2 = (int) ((i8 * this.f3389m) + 0.5f);
            }
        }
        if (z2) {
            virtualLayoutManager.measureChildWithMargins(a, virtualLayoutManager.g(j2, Float.isNaN(this.f3389m) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : j2, !z2 && Float.isNaN(this.f3389m)), virtualLayoutManager.g(i8, Float.isNaN(layoutParams.a) ? Float.isNaN(this.f3389m) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : i8 : (int) ((j2 / layoutParams.a) + 0.5f), (z2 && Float.isNaN(this.f3389m)) ? false : false));
        } else {
            virtualLayoutManager.measureChildWithMargins(a, virtualLayoutManager.g(j2, Float.isNaN(layoutParams.a) ? Float.isNaN(this.f3389m) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : j2 : (int) ((i8 * layoutParams.a) + 0.5f), !z2 && Float.isNaN(this.f3389m)), virtualLayoutManager.g(i8, Float.isNaN(this.f3389m) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : i8, (z2 && Float.isNaN(this.f3389m)) ? false : false));
        }
        f.a.a.a.i iVar = virtualLayoutManager.a;
        hVar.a = iVar.c(a);
        if (z2) {
            int d2 = j2 - iVar.d(a);
            int i9 = (d2 >= 0 ? d2 : 0) / 2;
            i5 = virtualLayoutManager.getPaddingLeft() + this.f3400g + this.f3396c + i9;
            int j3 = (((virtualLayoutManager.j() - this.f3401h) - this.f3397d) - virtualLayoutManager.getPaddingRight()) - i9;
            ExposeLinearLayoutManagerEx.c cVar2 = fVar.a;
            if (cVar2.f67h == -1) {
                i7 = (cVar2.f63d - this.f3403j) - this.f3399f;
                i6 = i7 - hVar.a;
            } else {
                i6 = this.f3398e + cVar2.f63d + this.f3402i;
                i7 = hVar.a + i6;
            }
            i3 = j3;
            i4 = i7;
            i2 = i6;
        } else {
            int d3 = i8 - iVar.d(a);
            int i10 = (d3 >= 0 ? d3 : 0) / 2;
            int paddingTop = virtualLayoutManager.getPaddingTop() + this.f3402i + this.f3398e + i10;
            int i11 = (((virtualLayoutManager.i() - (-this.f3403j)) - this.f3399f) - virtualLayoutManager.getPaddingBottom()) - i10;
            ExposeLinearLayoutManagerEx.c cVar3 = fVar.a;
            if (cVar3.f67h == -1) {
                int i12 = (cVar3.f63d - this.f3401h) - this.f3397d;
                i2 = paddingTop;
                i3 = i12;
                i4 = i11;
                i5 = i12 - hVar.a;
            } else {
                int i13 = cVar3.f63d + this.f3400g + this.f3396c;
                i2 = paddingTop;
                i3 = hVar.a + i13;
                i4 = i11;
                i5 = i13;
            }
        }
        if (z2) {
            hVar.a = o() + n() + hVar.a;
        } else {
            hVar.a = m() + l() + hVar.a;
        }
        u(a, i5, i2, i3, i4, virtualLayoutManager);
    }
}
