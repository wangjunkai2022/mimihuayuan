package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes.dex */
public class AccordionTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        view.setPivotX(i2 >= 0 ? view.getWidth() : 0.0f);
        view.setScaleX(i2 < 0 ? f2 + 1.0f : 1.0f - f2);
    }
}
