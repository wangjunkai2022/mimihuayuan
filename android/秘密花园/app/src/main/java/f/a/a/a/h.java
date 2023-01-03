package f.a.a.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;

/* compiled from: OrientationHelperEx.java */
/* loaded from: classes.dex */
public final class h extends i {
    public h(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx) {
        super(exposeLinearLayoutManagerEx, null);
    }

    @Override // f.a.a.a.i
    public int b(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (!this.a.isEnableMarginOverLap()) {
            return this.a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return this.a.getDecoratedBottom(view);
    }

    @Override // f.a.a.a.i
    public int c(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (!this.a.isEnableMarginOverLap()) {
            return this.a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return this.a.getDecoratedMeasuredHeight(view);
    }

    @Override // f.a.a.a.i
    public int d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // f.a.a.a.i
    public int e(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (!this.a.isEnableMarginOverLap()) {
            return this.a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }
        return this.a.getDecoratedTop(view);
    }

    @Override // f.a.a.a.i
    public int f() {
        return this.a.getHeight();
    }

    @Override // f.a.a.a.i
    public int g() {
        return this.a.getHeight() - this.a.getPaddingBottom();
    }

    @Override // f.a.a.a.i
    public int h() {
        return this.a.getPaddingBottom();
    }

    @Override // f.a.a.a.i
    public int i() {
        return this.a.getPaddingTop();
    }

    @Override // f.a.a.a.i
    public int j() {
        return (this.a.getHeight() - this.a.getPaddingTop()) - this.a.getPaddingBottom();
    }

    @Override // f.a.a.a.i
    public void k(int i2) {
        this.a.offsetChildrenVertical(i2);
    }
}
