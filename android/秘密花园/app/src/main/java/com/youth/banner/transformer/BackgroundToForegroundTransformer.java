package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class BackgroundToForegroundTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float height = (float) view.getHeight();
        float width = (float) view.getWidth();
        float f3 = 1.0f;
        int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        if (i2 >= 0) {
            f3 = Math.abs(1.0f - f2);
        }
        float min = ABaseTransformer.min(f3, 0.5f);
        view.setScaleX(min);
        view.setScaleY(min);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height * 0.5f);
        view.setTranslationX(i2 < 0 ? width * f2 : (-width) * f2 * 0.25f);
    }
}
