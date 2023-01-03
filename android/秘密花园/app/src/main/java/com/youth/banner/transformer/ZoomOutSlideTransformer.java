package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class ZoomOutSlideTransformer extends ABaseTransformer {
    public static final float MIN_ALPHA = 0.5f;
    public static final float MIN_SCALE = 0.85f;

    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        if (f2 >= -1.0f || f2 <= 1.0f) {
            float height = (float) view.getHeight();
            float width = (float) view.getWidth();
            float max = Math.max(0.85f, 1.0f - Math.abs(f2));
            float f3 = 1.0f - max;
            float f4 = (height * f3) / 2.0f;
            float f5 = (f3 * width) / 2.0f;
            view.setPivotY(height * 0.5f);
            view.setPivotX(width * 0.5f);
            if (f2 < 0.0f) {
                view.setTranslationX(f5 - (f4 / 2.0f));
            } else {
                view.setTranslationX((f4 / 2.0f) + (-f5));
            }
            view.setScaleX(max);
            view.setScaleY(max);
            view.setAlpha((((max - 0.85f) / 0.14999998f) * 0.5f) + 0.5f);
        }
    }
}
