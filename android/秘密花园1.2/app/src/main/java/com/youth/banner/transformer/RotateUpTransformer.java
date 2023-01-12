package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class RotateUpTransformer extends ABaseTransformer {
    public static final float ROT_MOD = -15.0f;

    @Override // com.youth.banner.transformer.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(0.0f);
        view.setTranslationX(0.0f);
        view.setRotation(f2 * (-15.0f));
    }
}
