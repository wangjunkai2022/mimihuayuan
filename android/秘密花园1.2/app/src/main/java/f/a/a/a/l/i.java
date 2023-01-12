package f.a.a.a.l;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* compiled from: LinearLayoutHelper.java */
/* loaded from: classes.dex */
public class i extends b {
    public int p;

    public i() {
        this.p = 0;
        this.n = 0;
        this.p = 0;
    }

    @Override // f.a.a.a.l.j, f.a.a.a.a
    public int d(int i2, boolean z, boolean z2, f.a.a.a.c cVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z3 = cVar.getOrientation() == 1;
        if (z) {
            if (i2 == this.n - 1) {
                if (z3) {
                    i5 = this.f3399j;
                    i6 = this.f3395f;
                } else {
                    i5 = this.f3397h;
                    i6 = this.f3393d;
                }
                return i5 + i6;
            }
        } else if (i2 == 0) {
            if (z3) {
                i3 = -this.f3398i;
                i4 = this.f3394e;
            } else {
                i3 = -this.f3396g;
                i4 = this.f3392c;
            }
            return i3 - i4;
        }
        return 0;
    }

    @Override // f.a.a.a.l.b
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, f.a.a.a.c cVar) {
        int i2;
        int i3;
        int g2;
        int paddingTop;
        int d2;
        int i4;
        int c2;
        int paddingLeft;
        int d3;
        int i5;
        int i6;
        int i7;
        int i8;
        if (f(fVar.a.f65f)) {
            return;
        }
        int i9 = fVar.a.f65f;
        View w = w(recycler, fVar, cVar, hVar);
        if (w == null) {
            return;
        }
        boolean isEnableMarginOverLap = cVar.isEnableMarginOverLap();
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) w.getLayoutParams();
        boolean z = cVar.getOrientation() == 1;
        boolean z2 = fVar.a.f67h == 1;
        boolean z3 = !z2 ? i9 != this.a.b.intValue() : i9 != this.a.a.intValue();
        boolean z4 = !z2 ? i9 != this.a.a.intValue() : i9 != this.a.b.intValue();
        int s = z3 ? s(cVar, z, z2, isEnableMarginOverLap) : 0;
        if (z4) {
            if (z) {
                i7 = this.f3399j;
                i8 = this.f3395f;
            } else {
                i7 = this.f3396g;
                i8 = this.f3392c;
            }
            i2 = i7 + i8;
        } else {
            i2 = 0;
        }
        if (z3) {
            i3 = 0;
        } else if (!isEnableMarginOverLap) {
            i3 = this.p;
        } else if (z2) {
            i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            View findViewByPosition = cVar.findViewByPosition(i9 - 1);
            i6 = findViewByPosition != null ? ((ViewGroup.MarginLayoutParams) ((VirtualLayoutManager.LayoutParams) findViewByPosition.getLayoutParams())).bottomMargin : 0;
            if (i6 >= 0 && i5 >= 0) {
                i3 = Math.max(i6, i5);
            }
            i3 = i6 + i5;
        } else {
            i5 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            View findViewByPosition2 = cVar.findViewByPosition(i9 + 1);
            i6 = findViewByPosition2 != null ? ((ViewGroup.MarginLayoutParams) ((VirtualLayoutManager.LayoutParams) findViewByPosition2.getLayoutParams())).topMargin : 0;
            if (i5 >= 0 && i6 >= 0) {
                i3 = Math.max(i5, i6);
            }
            i3 = i6 + i5;
        }
        VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
        int j2 = (((virtualLayoutManager.j() - cVar.getPaddingLeft()) - cVar.getPaddingRight()) - l()) - m();
        int g3 = virtualLayoutManager.g(j2, ((ViewGroup.MarginLayoutParams) layoutParams).width, !z);
        float f2 = layoutParams.a;
        boolean z5 = z3;
        if (!Float.isNaN(f2) && f2 > 0.0f) {
            g2 = View.MeasureSpec.makeMeasureSpec((int) ((j2 / f2) + 0.5f), 1073741824);
        } else {
            if (!Float.isNaN(this.f3385m)) {
                float f3 = this.f3385m;
                if (f3 > 0.0f) {
                    g2 = View.MeasureSpec.makeMeasureSpec((int) ((j2 / f3) + 0.5d), 1073741824);
                }
            }
            g2 = virtualLayoutManager.g((((virtualLayoutManager.i() - cVar.getPaddingTop()) - cVar.getPaddingBottom()) - n()) - o(), ((ViewGroup.MarginLayoutParams) layoutParams).height, z);
        }
        if (!isEnableMarginOverLap) {
            cVar.measureChildWithMargins(w, g3, g2);
        } else {
            cVar.measureChild(w, g3, g2);
        }
        f.a.a.a.i iVar = virtualLayoutManager.a;
        hVar.a = iVar.c(w) + s + i2 + i3;
        if (cVar.getOrientation() == 1) {
            if (virtualLayoutManager.isLayoutRTL()) {
                d3 = ((virtualLayoutManager.j() - cVar.getPaddingRight()) - this.f3397h) - this.f3393d;
                paddingLeft = d3 - iVar.d(w);
            } else {
                paddingLeft = this.f3392c + cVar.getPaddingLeft() + this.f3396g;
                d3 = iVar.d(w) + paddingLeft;
            }
            ExposeLinearLayoutManagerEx.c cVar2 = fVar.a;
            if (cVar2.f67h == -1) {
                int i10 = (cVar2.f63d - s) - (z5 ? 0 : i3);
                c2 = d3;
                i4 = paddingLeft;
                d2 = i10;
                paddingTop = i10 - iVar.c(w);
            } else {
                int i11 = cVar2.f63d + s + (z5 ? 0 : i3);
                c2 = d3;
                i4 = paddingLeft;
                paddingTop = i11;
                d2 = iVar.c(w) + i11;
            }
        } else {
            paddingTop = cVar.getPaddingTop() + this.f3398i + this.f3394e;
            d2 = iVar.d(w) + paddingTop;
            ExposeLinearLayoutManagerEx.c cVar3 = fVar.a;
            if (cVar3.f67h == -1) {
                int i12 = (cVar3.f63d - s) - (z5 ? 0 : i3);
                c2 = i12;
                i4 = i12 - iVar.c(w);
            } else {
                int i13 = cVar3.f63d + s + (z5 ? 0 : i3);
                i4 = i13;
                c2 = iVar.c(w) + i13;
            }
        }
        u(w, i4, paddingTop, c2, d2, cVar);
        t(hVar, w);
    }

    public i(int i2) {
        this.p = 0;
        this.n = 0;
        this.p = i2 < 0 ? 0 : i2;
    }
}
