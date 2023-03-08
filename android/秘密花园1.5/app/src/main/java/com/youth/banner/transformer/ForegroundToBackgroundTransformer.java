package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class ForegroundToBackgroundTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float height = view.getHeight();
        float width = view.getWidth();
        int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        float min = ABaseTransformer.min(i2 <= 0 ? Math.abs(1.0f + f2) : 1.0f, 0.5f);
        view.setScaleX(min);
        view.setScaleY(min);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height * 0.5f);
        view.setTranslationX(i2 > 0 ? width * f2 : (-width) * f2 * 0.25f);
    }
}
