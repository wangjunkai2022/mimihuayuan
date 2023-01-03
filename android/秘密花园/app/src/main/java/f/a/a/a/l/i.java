package f.a.a.a.l;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import f.a.a.a.c;

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
    public int d(int i2, boolean z, boolean z2, c cVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z3 = cVar.getOrientation() == 1;
        if (z) {
            if (i2 == this.n - 1) {
                if (z3) {
                    i6 = this.f3324j;
                    i5 = this.f3320f;
                } else {
                    i6 = this.f3322h;
                    i5 = this.f3318d;
                }
                return i6 + i5;
            }
        } else if (i2 == 0) {
            if (z3) {
                i4 = -this.f3323i;
                i3 = this.f3319e;
            } else {
                i4 = -this.f3321g;
                i3 = this.f3317c;
            }
            return i4 - i3;
        }
        return 0;
    }

    @Override // f.a.a.a.l.b
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, c cVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (!f(fVar.a.f65f)) {
            int i15 = fVar.a.f65f;
            View w = w(recycler, fVar, cVar, hVar);
            if (w != null) {
                boolean isEnableMarginOverLap = cVar.isEnableMarginOverLap();
                VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) w.getLayoutParams();
                boolean z = cVar.getOrientation() == 1;
                boolean z2 = fVar.a.f67h == 1;
                boolean z3 = !z2 ? i15 == this.a.b.intValue() : i15 == this.a.a.intValue();
                boolean z4 = !z2 ? i15 == this.a.a.intValue() : i15 == this.a.b.intValue();
                int s = z3 ? s(cVar, z, z2, isEnableMarginOverLap) : 0;
                if (z4) {
                    if (z) {
                        i14 = this.f3324j;
                        i13 = this.f3320f;
                    } else {
                        i14 = this.f3321g;
                        i13 = this.f3317c;
                    }
                    i2 = i14 + i13;
                } else {
                    i2 = 0;
                }
                if (z3) {
                    i3 = 0;
                } else if (!isEnableMarginOverLap) {
                    i3 = this.p;
                } else if (z2) {
                    i11 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    View findViewByPosition = cVar.findViewByPosition(i15 - 1);
                    i12 = findViewByPosition != null ? ((ViewGroup.MarginLayoutParams) ((VirtualLayoutManager.LayoutParams) findViewByPosition.getLayoutParams())).bottomMargin : 0;
                    if (i12 >= 0 && i11 >= 0) {
                        i3 = Math.max(i12, i11);
                    }
                    i3 = i12 + i11;
                } else {
                    i11 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    View findViewByPosition2 = cVar.findViewByPosition(i15 + 1);
                    i12 = findViewByPosition2 != null ? ((ViewGroup.MarginLayoutParams) ((VirtualLayoutManager.LayoutParams) findViewByPosition2.getLayoutParams())).topMargin : 0;
                    if (i11 >= 0 && i12 >= 0) {
                        i3 = Math.max(i11, i12);
                    }
                    i3 = i12 + i11;
                }
                VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
                int j2 = (((virtualLayoutManager.j() - cVar.getPaddingLeft()) - cVar.getPaddingRight()) - l()) - m();
                int g2 = virtualLayoutManager.g(j2, ((ViewGroup.MarginLayoutParams) layoutParams).width, !z);
                float f2 = layoutParams.a;
                if (Float.isNaN(f2) || f2 <= 0.0f) {
                    if (!Float.isNaN(this.f3310m)) {
                        float f3 = this.f3310m;
                        if (f3 > 0.0f) {
                            i4 = View.MeasureSpec.makeMeasureSpec((int) (((double) (((float) j2) / f3)) + 0.5d), 1073741824);
                        }
                    }
                    i4 = virtualLayoutManager.g((((virtualLayoutManager.i() - cVar.getPaddingTop()) - cVar.getPaddingBottom()) - n()) - o(), ((ViewGroup.MarginLayoutParams) layoutParams).height, z);
                } else {
                    i4 = View.MeasureSpec.makeMeasureSpec((int) ((((float) j2) / f2) + 0.5f), 1073741824);
                }
                if (!isEnableMarginOverLap) {
                    cVar.measureChildWithMargins(w, g2, i4);
                } else {
                    cVar.measureChild(w, g2, i4);
                }
                f.a.a.a.i iVar = virtualLayoutManager.a;
                hVar.a = iVar.c(w) + s + i2 + i3;
                if (cVar.getOrientation() == 1) {
                    if (virtualLayoutManager.isLayoutRTL()) {
                        i10 = ((virtualLayoutManager.j() - cVar.getPaddingRight()) - this.f3322h) - this.f3318d;
                        i9 = i10 - iVar.d(w);
                    } else {
                        i9 = this.f3317c + cVar.getPaddingLeft() + this.f3321g;
                        i10 = iVar.d(w) + i9;
                    }
                    ExposeLinearLayoutManagerEx.c cVar2 = fVar.a;
                    if (cVar2.f67h == -1) {
                        int i16 = (cVar2.f63d - s) - (z3 ? 0 : i3);
                        i7 = i16 - iVar.c(w);
                        i6 = i10;
                        i8 = i9;
                        i5 = i16;
                    } else {
                        int i17 = cVar2.f63d + s + (z3 ? 0 : i3);
                        i5 = iVar.c(w) + i17;
                        i6 = i10;
                        i8 = i9;
                        i7 = i17;
                    }
                } else {
                    i7 = cVar.getPaddingTop() + this.f3323i + this.f3319e;
                    i5 = iVar.d(w) + i7;
                    ExposeLinearLayoutManagerEx.c cVar3 = fVar.a;
                    if (cVar3.f67h == -1) {
                        int i18 = (cVar3.f63d - s) - (z3 ? 0 : i3);
                        i8 = i18 - iVar.c(w);
                        i6 = i18;
                    } else {
                        int i19 = cVar3.f63d + s + (z3 ? 0 : i3);
                        i6 = iVar.c(w) + i19;
                        i8 = i19;
                    }
                }
                u(w, i8, i7, i6, i5, cVar);
                t(hVar, w);
            }
        }
    }

    public i(int i2) {
        this.p = 0;
        this.n = 0;
        this.p = i2 < 0 ? 0 : i2;
    }
}
