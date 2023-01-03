package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class ScaleInOutTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float f3 = 0.0f;
        int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        if (i2 >= 0) {
            f3 = (float) view.getWidth();
        }
        view.setPivotX(f3);
        view.setPivotY(((float) view.getHeight()) / 2.0f);
        float f4 = i2 < 0 ? f2 + 1.0f : 1.0f - f2;
        view.setScaleX(f4);
        view.setScaleY(f4);
    }
}
