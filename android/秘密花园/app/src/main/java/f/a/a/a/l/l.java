package f.a.a.a.l;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import f.a.a.a.c;
import f.a.a.a.i;

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
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, c cVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (!f(fVar.a.f65f)) {
            View a = fVar.a.a(recycler);
            boolean z = true;
            if (a == null) {
                hVar.b = true;
                return;
            }
            VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
            virtualLayoutManager.b(fVar, a);
            VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) a.getLayoutParams();
            int i8 = 0;
            boolean z2 = virtualLayoutManager.getOrientation() == 1;
            int j2 = (((virtualLayoutManager.j() - virtualLayoutManager.getPaddingLeft()) - virtualLayoutManager.getPaddingRight()) - l()) - m();
            int i9 = (((virtualLayoutManager.i() - virtualLayoutManager.getPaddingTop()) - virtualLayoutManager.getPaddingBottom()) - n()) - o();
            if (!Float.isNaN(this.f3310m)) {
                if (z2) {
                    i9 = (int) ((((float) j2) / this.f3310m) + 0.5f);
                } else {
                    j2 = (int) ((((float) i9) * this.f3310m) + 0.5f);
                }
            }
            if (z2) {
                int g2 = virtualLayoutManager.g(j2, Float.isNaN(this.f3310m) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : j2, !z2 && Float.isNaN(this.f3310m));
                int i10 = Float.isNaN(layoutParams.a) ? Float.isNaN(this.f3310m) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : i9 : (int) ((((float) j2) / layoutParams.a) + 0.5f);
                if (!z2 || !Float.isNaN(this.f3310m)) {
                    z = false;
                }
                virtualLayoutManager.measureChildWithMargins(a, g2, virtualLayoutManager.g(i9, i10, z));
            } else {
                int g3 = virtualLayoutManager.g(j2, Float.isNaN(layoutParams.a) ? Float.isNaN(this.f3310m) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : j2 : (int) ((((float) i9) * layoutParams.a) + 0.5f), !z2 && Float.isNaN(this.f3310m));
                int i11 = Float.isNaN(this.f3310m) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : i9;
                if (!z2 || !Float.isNaN(this.f3310m)) {
                    z = false;
                }
                virtualLayoutManager.measureChildWithMargins(a, g3, virtualLayoutManager.g(i9, i11, z));
            }
            i iVar = virtualLayoutManager.a;
            hVar.a = iVar.c(a);
            if (z2) {
                int d2 = j2 - iVar.d(a);
                if (d2 >= 0) {
                    i8 = d2;
                }
                int i12 = i8 / 2;
                i5 = virtualLayoutManager.getPaddingLeft() + this.f3321g + this.f3317c + i12;
                int j3 = (((virtualLayoutManager.j() - this.f3322h) - this.f3318d) - virtualLayoutManager.getPaddingRight()) - i12;
                ExposeLinearLayoutManagerEx.c cVar2 = fVar.a;
                if (cVar2.f67h == -1) {
                    i7 = (cVar2.f63d - this.f3324j) - this.f3320f;
                    i6 = i7 - hVar.a;
                } else {
                    i6 = this.f3319e + cVar2.f63d + this.f3323i;
                    i7 = hVar.a + i6;
                }
                i3 = j3;
                i2 = i7;
                i4 = i6;
            } else {
                int d3 = i9 - iVar.d(a);
                if (d3 >= 0) {
                    i8 = d3;
                }
                int i13 = i8 / 2;
                int paddingTop = virtualLayoutManager.getPaddingTop() + this.f3323i + this.f3319e + i13;
                int i14 = (((virtualLayoutManager.i() - (-this.f3324j)) - this.f3320f) - virtualLayoutManager.getPaddingBottom()) - i13;
                ExposeLinearLayoutManagerEx.c cVar3 = fVar.a;
                if (cVar3.f67h == -1) {
                    int i15 = (cVar3.f63d - this.f3322h) - this.f3318d;
                    i5 = i15 - hVar.a;
                    i4 = paddingTop;
                    i3 = i15;
                    i2 = i14;
                } else {
                    int i16 = cVar3.f63d + this.f3321g + this.f3317c;
                    i3 = hVar.a + i16;
                    i4 = paddingTop;
                    i2 = i14;
                    i5 = i16;
                }
            }
            if (z2) {
                hVar.a = o() + n() + hVar.a;
            } else {
                hVar.a = m() + l() + hVar.a;
            }
            u(a, i5, i4, i3, i2, virtualLayoutManager);
        }
    }
}
