package f.a.a.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;

/* compiled from: OrientationHelperEx.java */
/* loaded from: classes.dex */
public final class g extends i {
    public g(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx) {
        super(exposeLinearLayoutManagerEx, null);
    }

    @Override // f.a.a.a.i
    public int b(View view) {
        return !this.a.isEnableMarginOverLap() ? this.a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin : this.a.getDecoratedRight(view);
    }

    @Override // f.a.a.a.i
    public int c(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return !this.a.isEnableMarginOverLap() ? this.a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : this.a.getDecoratedMeasuredWidth(view);
    }

    @Override // f.a.a.a.i
    public int d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // f.a.a.a.i
    public int e(View view) {
        return !this.a.isEnableMarginOverLap() ? this.a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin : this.a.getDecoratedLeft(view);
    }

    @Override // f.a.a.a.i
    public int f() {
        return this.a.getWidth();
    }

    @Override // f.a.a.a.i
    public int g() {
        return this.a.getWidth() - this.a.getPaddingRight();
    }

    @Override // f.a.a.a.i
    public int h() {
        return this.a.getPaddingRight();
    }

    @Override // f.a.a.a.i
    public int i() {
        return this.a.getPaddingLeft();
    }

    @Override // f.a.a.a.i
    public int j() {
        return (this.a.getWidth() - this.a.getPaddingLeft()) - this.a.getPaddingRight();
    }

    @Override // f.a.a.a.i
    public void k(int i2) {
        this.a.offsetChildrenHorizontal(i2);
    }
}
