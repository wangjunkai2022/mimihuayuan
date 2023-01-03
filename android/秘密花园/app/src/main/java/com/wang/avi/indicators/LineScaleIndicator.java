package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class LineScaleIndicator extends Indicator {
    public static final float SCALE = 1.0f;
    public float[] scaleYFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 11);
        float height = (float) (getHeight() / 2);
        for (int i2 = 0; i2 < 5; i2++) {
            canvas.save();
            float f2 = width / 2.0f;
            canvas.translate((((float) ((i2 * 2) + 2)) * width) - f2, height);
            canvas.scale(1.0f, this.scaleYFloats[i2]);
            canvas.drawRoundRect(new RectF((-width) / 2.0f, ((float) (-getHeight())) / 2.5f, f2, ((float) getHeight()) / 2.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        long[] jArr = {100, 200, 300, 400, 500};
        for (final int i2 = 0; i2 < 5; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(jArr[i2]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.LineScaleIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LineScaleIndicator.this.scaleYFloats[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    LineScaleIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}
