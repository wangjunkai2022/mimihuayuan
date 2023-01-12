package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.view.PointerIconCompat;
import com.tencent.smtt.sdk.TbsListener;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallGridPulseIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    public int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};
    public float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = (getWidth() - 16.0f) / 6.0f;
        float f2 = 2.0f * width;
        float f3 = f2 + 4.0f;
        float width2 = (getWidth() / 2) - f3;
        float width3 = (getWidth() / 2) - f3;
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                canvas.save();
                float f4 = i3;
                float f5 = i2;
                canvas.translate((f4 * 4.0f) + (f2 * f4) + width2, (f5 * 4.0f) + (f2 * f5) + width3);
                float[] fArr = this.scaleFloats;
                int i4 = (i2 * 3) + i3;
                canvas.scale(fArr[i4], fArr[i4]);
                paint.setAlpha(this.alphas[i4]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {720, PointerIconCompat.TYPE_GRAB, 1280, 1420, 1450, 1180, 870, 1450, 1060};
        int[] iArr2 = {-60, 250, -170, 480, 310, 30, 460, 780, 450};
        for (final int i2 = 0; i2 < 9; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f);
            ofFloat.setDuration(iArr[i2]);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr2[i2]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallGridPulseIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.scaleFloats[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, TbsListener.ErrorCode.ROM_NOT_ENOUGH, 122, 255);
            ofInt.setDuration(iArr[i2]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr2[i2]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallGridPulseIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.alphas[i2] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
