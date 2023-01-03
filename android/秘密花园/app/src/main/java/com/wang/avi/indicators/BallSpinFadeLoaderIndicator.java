package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.tencent.smtt.sdk.TbsListener;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallSpinFadeLoaderIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    public float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};
    public int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255};

    /* loaded from: classes.dex */
    public final class Point {
        public float x;
        public float y;

        public Point(float f2, float f3) {
            this.x = f2;
            this.y = f3;
        }
    }

    public Point circleAt(int i2, int i3, float f2, double d2) {
        double d3 = (double) f2;
        return new Point((float) ((Math.cos(d2) * d3) + ((double) (i2 / 2))), (float) ((Math.sin(d2) * d3) + ((double) (i3 / 2))));
    }

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 10);
        for (int i2 = 0; i2 < 8; i2++) {
            canvas.save();
            Point circleAt = circleAt(getWidth(), getHeight(), ((float) (getWidth() / 2)) - width, 0.7853981633974483d * ((double) i2));
            canvas.translate(circleAt.x, circleAt.y);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i2], fArr[i2]);
            paint.setAlpha(this.alphas[i2]);
            canvas.drawCircle(0.0f, 0.0f, width, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {0, 120, TbsListener.ErrorCode.TPATCH_VERSION_FAILED, 360, 480, 600, 720, 780, 840};
        for (final int i2 = 0; i2 < 8; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay((long) iArr[i2]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallSpinFadeLoaderIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.scaleFloats[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 77, 255);
            ofInt.setDuration(1000L);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay((long) iArr[i2]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallSpinFadeLoaderIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.alphas[i2] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
