package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* loaded from: classes.dex */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    public int overlayTop;
    public final Rect tempRect1 = new Rect();
    public final Rect tempRect2 = new Rect();
    public int verticalLayoutGap = 0;

    public HeaderScrollingViewBehavior() {
    }

    public static int resolveGravity(int i2) {
        if (i2 == 0) {
            return 8388659;
        }
        return i2;
    }

    public abstract View findFirstDependency(List<View> list);

    public final int getOverlapPixelsForOffset(View view) {
        if (this.overlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i2 = this.overlayTop;
        return MathUtils.clamp((int) (overlapRatioForOffset * ((float) i2)), 0, i2);
    }

    public float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.overlayTop;
    }

    public int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    public final int getVerticalLayoutGap() {
        return this.verticalLayoutGap;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        View findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (findFirstDependency != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.tempRect1;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, findFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((findFirstDependency.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left = lastWindowInsets.getSystemWindowInsetLeft() + rect.left;
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.tempRect2;
            GravityCompat.apply(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
            int overlapPixelsForOffset = getOverlapPixelsForOffset(findFirstDependency);
            view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
            this.verticalLayoutGap = rect2.top - findFirstDependency.getBottom();
            return;
        }
        super.layoutChild(coordinatorLayout, view, i2);
        this.verticalLayoutGap = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int i5) {
        View findFirstDependency;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.getFitsSystemWindows(findFirstDependency) && !ViewCompat.getFitsSystemWindows(view)) {
            ViewCompat.setFitsSystemWindows(view, true);
            if (ViewCompat.getFitsSystemWindows(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i4);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i2, i3, View.MeasureSpec.makeMeasureSpec(getScrollRange(findFirstDependency) + (size - findFirstDependency.getMeasuredHeight()), i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i5);
        return true;
    }

    public final void setOverlayTop(int i2) {
        this.overlayTop = i2;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
