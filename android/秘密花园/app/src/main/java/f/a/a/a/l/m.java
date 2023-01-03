package f.a.a.a.l;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import f.a.a.a.c;
import f.a.a.a.i;

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

    /* JADX WARNING: Removed duplicated region for block: B:114:0x01c2 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x01cd  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x01eb  */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x01f1  */
    /* JADX WARNING: Removed duplicated region for block: B:217:0x0361  */
    /* JADX WARNING: Removed duplicated region for block: B:257:0x0428 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:261:0x0431  */
    /* JADX WARNING: Removed duplicated region for block: B:308:0x0515  */
    /* JADX WARNING: Removed duplicated region for block: B:310:0x0520  */
    @Override // f.a.a.a.l.b, f.a.a.a.a
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(androidx.recyclerview.widget.RecyclerView.Recycler r18, androidx.recyclerview.widget.RecyclerView.State r19, int r20, int r21, int r22, f.a.a.a.c r23) {
        /*
        // Method dump skipped, instructions count: 1321
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.a.l.m.a(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, int, int, int, f.a.a.a.c):void");
    }

    @Override // f.a.a.a.l.b, f.a.a.a.a
    public void b(RecyclerView.Recycler recycler, RecyclerView.State state, c cVar) {
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
        if (!f(fVar.a.f65f)) {
            View view = this.t;
            if (view == null) {
                view = fVar.a.a(recycler);
            } else {
                ExposeLinearLayoutManagerEx.c cVar2 = fVar.a;
                cVar2.f65f += cVar2.f66g;
            }
            if (view == null) {
                hVar.b = true;
                return;
            }
            z(view, cVar);
            boolean z = cVar.getOrientation() == 1;
            VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
            i iVar = virtualLayoutManager.a;
            hVar.a = iVar.c(view);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.u = true;
            ExposeLinearLayoutManagerEx.c cVar3 = fVar.a;
            int i12 = (cVar3.f64e - hVar.a) + cVar3.f69j;
            if (cVar.getOrientation() == 1) {
                if (virtualLayoutManager.isLayoutRTL()) {
                    i9 = (virtualLayoutManager.j() - cVar.getPaddingRight()) - this.f3322h;
                    i8 = i9 - iVar.d(view);
                } else {
                    i8 = this.f3321g + cVar.getPaddingLeft();
                    i9 = iVar.d(view) + i8;
                }
                ExposeLinearLayoutManagerEx.c cVar4 = fVar.a;
                if (cVar4.f67h == -1) {
                    int i13 = cVar4.f63d;
                    i10 = i13 - this.f3324j;
                    i11 = i13 - hVar.a;
                } else if (this.r) {
                    int i14 = cVar4.f63d;
                    i11 = this.f3323i + i14;
                    i10 = hVar.a + i14;
                } else {
                    i10 = ((iVar.g() - this.f3324j) - this.s) - this.p.f3313d;
                    i11 = i10 - hVar.a;
                }
                if (cVar.getReverseLayout() || !this.r) {
                    if ((i12 < this.s + this.p.f3313d && fVar.a.f66g == 1) || i10 > this.f3324j + this.s + this.p.f3313d) {
                        this.u = false;
                        this.t = view;
                        int g2 = ((iVar.g() - this.f3324j) - this.s) - this.p.f3313d;
                        i4 = g2 - hVar.a;
                        i3 = i9;
                        i5 = i8;
                        i2 = g2;
                    }
                    i3 = i9;
                    i5 = i8;
                    i4 = i11;
                    i2 = i10;
                } else {
                    if ((i12 < this.s + this.p.b && fVar.a.f66g == -1) || i11 < this.f3323i + this.s + this.p.b) {
                        this.u = false;
                        this.t = view;
                        int i15 = iVar.i() + this.f3323i + this.s + this.p.b;
                        i2 = hVar.a + i15;
                        i4 = i15;
                        i3 = i9;
                        i5 = i8;
                    }
                    i3 = i9;
                    i5 = i8;
                    i4 = i11;
                    i2 = i10;
                }
            } else {
                int paddingTop = cVar.getPaddingTop();
                int d2 = iVar.d(view) + paddingTop + this.f3323i;
                ExposeLinearLayoutManagerEx.c cVar5 = fVar.a;
                if (cVar5.f67h == -1) {
                    int i16 = cVar5.f63d;
                    i6 = i16 - this.f3322h;
                    i7 = i16 - hVar.a;
                } else {
                    int i17 = cVar5.f63d;
                    int i18 = this.f3321g + i17;
                    i6 = i17 + hVar.a;
                    i7 = i18;
                }
                if (cVar.getReverseLayout() || !this.r) {
                    if (i12 < this.s + this.p.f3312c) {
                        this.u = false;
                        this.t = view;
                        int g3 = (iVar.g() - this.s) - this.p.f3312c;
                        i5 = g3 - hVar.a;
                        i3 = g3;
                        i2 = d2;
                        i4 = paddingTop;
                    }
                    i4 = paddingTop;
                    i2 = d2;
                    i5 = i7;
                    i3 = i6;
                } else {
                    if (i12 < this.s + this.p.a) {
                        this.u = false;
                        this.t = view;
                        i3 = hVar.a;
                        i2 = d2;
                        i5 = iVar.i() + this.s + this.p.a;
                        i4 = paddingTop;
                    }
                    i4 = paddingTop;
                    i2 = d2;
                    i5 = i7;
                    i3 = i6;
                }
            }
            u(view, i5, i4, i3, i2, cVar);
            hVar.a += z ? n() : l();
            if (state.isPreLayout()) {
                this.u = true;
            }
            if (this.u) {
                virtualLayoutManager.b(fVar, view);
                t(hVar, view);
                this.t = null;
            }
        }
    }

    @Override // f.a.a.a.l.b
    public void x(c cVar) {
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

    public final void z(View view, c cVar) {
        int i2;
        int i3;
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) view.getLayoutParams();
        boolean z = cVar.getOrientation() == 1;
        VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
        int j2 = ((virtualLayoutManager.j() - cVar.getPaddingLeft()) - cVar.getPaddingRight()) - l();
        int i4 = ((virtualLayoutManager.i() - cVar.getPaddingTop()) - cVar.getPaddingBottom()) - n();
        float f2 = layoutParams.a;
        if (z) {
            int g2 = virtualLayoutManager.g(j2, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            if (Float.isNaN(f2) || f2 <= 0.0f) {
                if (!Float.isNaN(this.f3310m)) {
                    float f3 = this.f3310m;
                    if (f3 > 0.0f) {
                        i3 = View.MeasureSpec.makeMeasureSpec((int) (((double) (((float) j2) / f3)) + 0.5d), 1073741824);
                    }
                }
                i3 = virtualLayoutManager.g(i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
            } else {
                i3 = View.MeasureSpec.makeMeasureSpec((int) ((((float) j2) / f2) + 0.5f), 1073741824);
            }
            cVar.measureChildWithMargins(view, g2, i3);
            return;
        }
        int g3 = virtualLayoutManager.g(i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
        if (Float.isNaN(f2) || f2 <= 0.0f) {
            if (!Float.isNaN(this.f3310m)) {
                float f4 = this.f3310m;
                if (f4 > 0.0f) {
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (((double) (((float) i4) * f4)) + 0.5d), 1073741824);
                }
            }
            i2 = virtualLayoutManager.g(j2, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
        } else {
            i2 = View.MeasureSpec.makeMeasureSpec((int) (((double) (((float) i4) * f2)) + 0.5d), 1073741824);
        }
        cVar.measureChildWithMargins(view, i2, g3);
    }
}
