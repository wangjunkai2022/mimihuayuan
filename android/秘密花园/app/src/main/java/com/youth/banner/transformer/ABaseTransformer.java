package com.youth.banner.transformer;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public abstract class ABaseTransformer implements ViewPager.PageTransformer {
    public static final float min(float f2, float f3) {
        return f2 < f3 ? f3 : f2;
    }

    public boolean hideOffscreenPages() {
        return true;
    }

    public boolean isPagingEnabled() {
        return false;
    }

    public void onPostTransform(View view, float f2) {
    }

    public void onPreTransform(View view, float f2) {
        float width = (float) view.getWidth();
        float f3 = 0.0f;
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationY(0.0f);
        view.setTranslationX(isPagingEnabled() ? 0.0f : (-width) * f2);
        if (hideOffscreenPages()) {
            if (f2 > -1.0f && f2 < 1.0f) {
                f3 = 1.0f;
            }
            view.setAlpha(f3);
            return;
        }
        view.setAlpha(1.0f);
    }

    public abstract void onTransform(View view, float f2);

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f2) {
        onPreTransform(view, f2);
        onTransform(view, f2);
        onPostTransform(view, f2);
    }
}
