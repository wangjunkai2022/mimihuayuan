package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes.dex */
public class StackTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f2) {
        float f3 = 0.0f;
        if (f2 >= 0.0f) {
            f3 = ((float) (-view.getWidth())) * f2;
        }
        view.setTranslationX(f3);
    }
}
