package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class ZoomInTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float f3 = 0.0f;
        float abs = f2 < 0.0f ? f2 + 1.0f : Math.abs(1.0f - f2);
        view.setScaleX(abs);
        view.setScaleY(abs);
        view.setPivotX(((float) view.getWidth()) * 0.5f);
        view.setPivotY(((float) view.getHeight()) * 0.5f);
        if (f2 >= -1.0f && f2 <= 1.0f) {
            f3 = 1.0f - (abs - 1.0f);
        }
        view.setAlpha(f3);
    }
}
