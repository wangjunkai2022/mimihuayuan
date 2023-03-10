package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.tencent.smtt.sdk.TbsListener;
import com.wang.avi.Indicator;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BallPulseIndicator extends Indicator {
    public static final float SCALE = 1.0f;
    public float[] scaleFloats = {1.0f, 1.0f, 1.0f};

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float min = (Math.min(getWidth(), getHeight()) - 8.0f) / 6.0f;
        float f2 = 2.0f * min;
        float width = (getWidth() / 2) - (f2 + 4.0f);
        float height = getHeight() / 2;
        for (int i2 = 0; i2 < 3; i2++) {
            canvas.save();
            float f3 = i2;
            canvas.translate((f3 * 4.0f) + (f2 * f3) + width, height);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i2], fArr[i2]);
            canvas.drawCircle(0.0f, 0.0f, min, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {120, TbsListener.ErrorCode.TPATCH_VERSION_FAILED, 360};
        for (final int i2 = 0; i2 < 3; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            ofFloat.setDuration(750L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i2]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallPulseIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallPulseIndicator.this.scaleFloats[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallPulseIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}
