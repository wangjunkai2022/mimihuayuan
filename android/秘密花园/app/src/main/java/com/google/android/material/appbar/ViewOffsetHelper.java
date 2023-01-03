package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class ViewOffsetHelper {
    public int layoutLeft;
    public int layoutTop;
    public int offsetLeft;
    public int offsetTop;
    public final View view;

    public ViewOffsetHelper(View view) {
        this.view = view;
    }

    private void updateOffsets() {
        View view = this.view;
        ViewCompat.offsetTopAndBottom(view, this.offsetTop - (view.getTop() - this.layoutTop));
        View view2 = this.view;
        ViewCompat.offsetLeftAndRight(view2, this.offsetLeft - (view2.getLeft() - this.layoutLeft));
    }

    public int getLayoutLeft() {
        return this.layoutLeft;
    }

    public int getLayoutTop() {
        return this.layoutTop;
    }

    public int getLeftAndRightOffset() {
        return this.offsetLeft;
    }

    public int getTopAndBottomOffset() {
        return this.offsetTop;
    }

    public void onViewLayout() {
        this.layoutTop = this.view.getTop();
        this.layoutLeft = this.view.getLeft();
        updateOffsets();
    }

    public boolean setLeftAndRightOffset(int i2) {
        if (this.offsetLeft == i2) {
            return false;
        }
        this.offsetLeft = i2;
        updateOffsets();
        return true;
    }

    public boolean setTopAndBottomOffset(int i2) {
        if (this.offsetTop == i2) {
            return false;
        }
        this.offsetTop = i2;
        updateOffsets();
        return true;
    }
}
