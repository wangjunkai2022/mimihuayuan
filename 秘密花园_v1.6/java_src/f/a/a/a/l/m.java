package f.a.a.a.l;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
/* compiled from: StickyLayoutHelper.java */
/* loaded from: classes.dex */
public class m extends f {
    public boolean r;
    public int q = -1;
    public int s = 0;
    public View t = null;
    public boolean u = false;

    public m() {
        this.r = true;
        this.r = true;
        j(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0428 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0520  */
    @Override // f.a.a.a.l.b, f.a.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.recyclerview.widget.RecyclerView.Recycler r18, androidx.recyclerview.widget.RecyclerView.State r19, int r20, int r21, int r22, f.a.a.a.c r23) {
        /*
            Method dump skipped, instructions count: 1321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.a.l.m.a(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, int, int, int, f.a.a.a.c):void");
    }

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void b(RecyclerView.Recycler recycler, RecyclerView.State state, f.a.a.a.c cVar) {
        super.b(recycler, state, cVar);
        View view = this.t;
        if (view != null) {
            VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
            RecyclerView recyclerView = virtualLayoutManager.b;
            RecyclerView.ViewHolder childViewHolder = recyclerView != null ? recyclerView.getChildViewHolder(view) : null;
            if (childViewHolder == null || ExposeLinearLayoutManagerEx.isViewHolderUpdated(childViewHolder)) {
                virtualLayoutManager.removeView(this.t);
                recycler.recycleView(this.t);
                this.t = null;
            }
        }
        this.u = false;
    }

    @Override // f.a.a.a.a
    public void i(int i2, int i3) {
        this.q = i2;
    }

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void j(int i2) {
        if (i2 > 0) {
            this.n = 1;
        } else {
            this.n = 0;
        }
    }

    @Override // f.a.a.a.l.b
    public void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, f.a.a.a.c cVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int paddingLeft;
        int d2;
        int g2;
        int i8;
        if (f(fVar.a.f65f)) {
            return;
        }
        View view = this.t;
        if (view == null) {
            view = fVar.a.a(recycler);
        } else {
            ExposeLinearLayoutManagerEx.c cVar2 = fVar.a;
            cVar2.f65f += cVar2.f66g;
        }
        View view2 = view;
        if (view2 == null) {
            hVar.b = true;
            return;
        }
        z(view2, cVar);
        boolean z = cVar.getOrientation() == 1;
        VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
        f.a.a.a.i iVar = virtualLayoutManager.a;
        hVar.a = iVar.c(view2);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view2.getLayoutParams();
        this.u = true;
        ExposeLinearLayoutManagerEx.c cVar3 = fVar.a;
        int i9 = (cVar3.f64e - hVar.a) + cVar3.f69j;
        if (cVar.getOrientation() == 1) {
            if (virtualLayoutManager.isLayoutRTL()) {
                d2 = (virtualLayoutManager.j() - cVar.getPaddingRight()) - this.f3401h;
                paddingLeft = d2 - iVar.d(view2);
            } else {
                paddingLeft = this.f3400g + cVar.getPaddingLeft();
                d2 = iVar.d(view2) + paddingLeft;
            }
            ExposeLinearLayoutManagerEx.c cVar4 = fVar.a;
            if (cVar4.f67h == -1) {
                int i10 = cVar4.f63d;
                g2 = i10 - this.f3403j;
                i8 = i10 - hVar.a;
            } else if (this.r) {
                int i11 = cVar4.f63d;
                i8 = this.f3402i + i11;
                g2 = hVar.a + i11;
            } else {
                g2 = ((iVar.g() - this.f3403j) - this.s) - this.p.f3392d;
                i8 = g2 - hVar.a;
            }
            if (!cVar.getReverseLayout() && this.r) {
                if ((i9 < this.s + this.p.b && fVar.a.f66g == -1) || i8 < this.f3402i + this.s + this.p.b) {
                    this.u = false;
                    this.t = view2;
                    int i12 = iVar.i() + this.f3402i + this.s + this.p.b;
                    i7 = i12;
                    i4 = d2;
                    i6 = paddingLeft;
                    i5 = hVar.a + i12;
                }
                i4 = d2;
                i6 = paddingLeft;
                i7 = i8;
                i5 = g2;
            } else {
                if ((i9 < this.s + this.p.f3392d && fVar.a.f66g == 1) || g2 > this.f3403j + this.s + this.p.f3392d) {
                    this.u = false;
                    this.t = view2;
                    int g3 = ((iVar.g() - this.f3403j) - this.s) - this.p.f3392d;
                    i7 = g3 - hVar.a;
                    i4 = d2;
                    i6 = paddingLeft;
                    i5 = g3;
                }
                i4 = d2;
                i6 = paddingLeft;
                i7 = i8;
                i5 = g2;
            }
        } else {
            int paddingTop = cVar.getPaddingTop();
            int d3 = iVar.d(view2) + paddingTop + this.f3402i;
            ExposeLinearLayoutManagerEx.c cVar5 = fVar.a;
            if (cVar5.f67h == -1) {
                int i13 = cVar5.f63d;
                i2 = i13 - this.f3401h;
                i3 = i13 - hVar.a;
            } else {
                int i14 = cVar5.f63d;
                int i15 = this.f3400g + i14;
                i2 = i14 + hVar.a;
                i3 = i15;
            }
            if (!cVar.getReverseLayout() && this.r) {
                if (i9 < this.s + this.p.a) {
                    this.u = false;
                    this.t = view2;
                    int i16 = iVar.i() + this.s + this.p.a;
                    i5 = d3;
                    i4 = hVar.a;
                    i6 = i16;
                    i7 = paddingTop;
                }
                i7 = paddingTop;
                int i17 = i2;
                i5 = d3;
                i6 = i3;
                i4 = i17;
            } else {
                if (i9 < this.s + this.p.f3391c) {
                    this.u = false;
                    this.t = view2;
                    int g4 = (iVar.g() - this.s) - this.p.f3391c;
                    i4 = g4;
                    i5 = d3;
                    i6 = g4 - hVar.a;
                    i7 = paddingTop;
                }
                i7 = paddingTop;
                int i172 = i2;
                i5 = d3;
                i6 = i3;
                i4 = i172;
            }
        }
        u(view2, i6, i7, i4, i5, cVar);
        hVar.a += z ? n() : l();
        if (state.isPreLayout()) {
            this.u = true;
        }
        if (this.u) {
            virtualLayoutManager.b(fVar, view2);
            t(hVar, view2);
            this.t = null;
        }
    }

    @Override // f.a.a.a.l.b
    public void x(f.a.a.a.c cVar) {
        View view = this.t;
        if (view != null) {
            VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
            virtualLayoutManager.removeView(view);
            View view2 = this.t;
            RecyclerView recyclerView = virtualLayoutManager.b;
            if (recyclerView != null) {
                virtualLayoutManager.b.getRecycledViewPool().putRecycledView(recyclerView.getChildViewHolder(view2));
            }
            this.t = null;
        }
    }

    @Override // f.a.a.a.l.b
    public boolean y() {
        return false;
    }

    public final void z(View view, f.a.a.a.c cVar) {
        int g2;
        int g3;
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) view.getLayoutParams();
        boolean z = cVar.getOrientation() == 1;
        VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
        int j2 = ((virtualLayoutManager.j() - cVar.getPaddingLeft()) - cVar.getPaddingRight()) - l();
        int i2 = ((virtualLayoutManager.i() - cVar.getPaddingTop()) - cVar.getPaddingBottom()) - n();
        float f2 = layoutParams.a;
        if (z) {
            int g4 = virtualLayoutManager.g(j2, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            if (!Float.isNaN(f2) && f2 > 0.0f) {
                g3 = View.MeasureSpec.makeMeasureSpec((int) ((j2 / f2) + 0.5f), 1073741824);
            } else {
                if (!Float.isNaN(this.f3389m)) {
                    float f3 = this.f3389m;
                    if (f3 > 0.0f) {
                        g3 = View.MeasureSpec.makeMeasureSpec((int) ((j2 / f3) + 0.5d), 1073741824);
                    }
                }
                g3 = virtualLayoutManager.g(i2, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
            }
            cVar.measureChildWithMargins(view, g4, g3);
            return;
        }
        int g5 = virtualLayoutManager.g(i2, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
        if (!Float.isNaN(f2) && f2 > 0.0f) {
            g2 = View.MeasureSpec.makeMeasureSpec((int) ((i2 * f2) + 0.5d), 1073741824);
        } else {
            if (!Float.isNaN(this.f3389m)) {
                float f4 = this.f3389m;
                if (f4 > 0.0f) {
                    g2 = View.MeasureSpec.makeMeasureSpec((int) ((i2 * f4) + 0.5d), 1073741824);
                }
            }
            g2 = virtualLayoutManager.g(j2, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
        }
        cVar.measureChildWithMargins(view, g2, g5);
    }
}
