package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes.dex */
public class DepthPageTransformer extends ABaseTransformer {
    public static final float MIN_SCALE = 0.75f;

    @Override // com.youth.banner.transformer.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        if (f2 <= 0.0f) {
            view.setTranslationX(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else if (f2 <= 1.0f) {
            float abs = ((1.0f - Math.abs(f2)) * 0.25f) + 0.75f;
            view.setAlpha(1.0f - f2);
            view.setPivotY(view.getHeight() * 0.5f);
            view.setTranslationX(view.getWidth() * (-f2));
            view.setScaleX(abs);
            view.setScaleY(abs);
        }
    }
}
