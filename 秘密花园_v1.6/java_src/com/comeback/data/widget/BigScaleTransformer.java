package com.comeback.data.widget;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes.dex */
public class BigScaleTransformer implements ViewPager.PageTransformer {
    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f2) {
        if (f2 < -1.0f || f2 > 1.0f) {
            view.setScaleX(0.92f);
            view.setScaleY(0.87f);
        } else if (f2 < 0.0f) {
            view.setScaleX((f2 * 0.07999998f) + 1.0f);
            view.setScaleY((0.13f * f2) + 1.0f);
        } else {
            view.setScaleX(1.0f - (f2 * 0.07999998f));
            view.setScaleY(1.0f - (0.13f * f2));
        }
    }
}
