package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class CubeOutTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float f3 = 0.0f;
        if (f2 < 0.0f) {
            f3 = (float) view.getWidth();
        }
        view.setPivotX(f3);
        view.setPivotY(((float) view.getHeight()) * 0.5f);
        view.setRotationY(f2 * 90.0f);
    }
}
