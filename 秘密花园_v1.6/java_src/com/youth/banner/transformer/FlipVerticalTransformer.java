package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes.dex */
public class FlipVerticalTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onPostTransform(View view, float f2) {
        super.onPostTransform(view, f2);
        if (f2 > -0.5f && f2 < 0.5f) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float f3 = f2 * (-180.0f);
        view.setAlpha((f3 > 90.0f || f3 < -90.0f) ? 0.0f : 1.0f);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationX(f3);
    }
}
