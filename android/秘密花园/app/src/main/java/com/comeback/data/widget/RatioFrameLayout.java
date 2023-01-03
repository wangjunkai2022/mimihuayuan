package com.comeback.data.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.comeback.secret.garden.R;
import f.e.a.d;

/* loaded from: classes.dex */
public class RatioFrameLayout extends FrameLayout {
    public float a;

    public RatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, d.RatioImageView, R.attr.ratio, 0);
        try {
            this.a = obtainStyledAttributes.getFloat(2, 1.0f);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, (int) (((float) measuredWidth) * this.a));
    }

    public void setRatio(float f2) {
        this.a = f2;
    }
}
