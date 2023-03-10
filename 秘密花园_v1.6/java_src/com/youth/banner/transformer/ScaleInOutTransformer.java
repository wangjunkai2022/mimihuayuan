package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes.dex */
public class ScaleInOutTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        view.setPivotX(i2 >= 0 ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() / 2.0f);
        float f3 = i2 < 0 ? f2 + 1.0f : 1.0f - f2;
        view.setScaleX(f3);
        view.setScaleY(f3);
    }
}
