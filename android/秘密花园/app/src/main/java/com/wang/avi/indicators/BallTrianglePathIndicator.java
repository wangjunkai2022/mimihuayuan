package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallTrianglePathIndicator extends Indicator {
    public float[] translateX = new float[3];
    public float[] translateY = new float[3];

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        for (int i2 = 0; i2 < 3; i2++) {
            canvas.save();
            canvas.translate(this.translateX[i2], this.translateY[i2]);
            canvas.drawCircle(0.0f, 0.0f, (float) (getWidth() / 10), paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = (float) (getWidth() / 5);
        float width2 = (float) (getWidth() / 5);
        for (final int i2 = 0; i2 < 3; i2++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat((float) (getWidth() / 2), ((float) getWidth()) - width, width, (float) (getWidth() / 2));
            if (i2 == 1) {
                ofFloat = ValueAnimator.ofFloat(((float) getWidth()) - width, width, (float) (getWidth() / 2), ((float) getWidth()) - width);
            } else if (i2 == 2) {
                ofFloat = ValueAnimator.ofFloat(width, (float) (getWidth() / 2), ((float) getWidth()) - width, width);
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(width2, ((float) getHeight()) - width2, ((float) getHeight()) - width2, width2);
            if (i2 == 1) {
                ofFloat2 = ValueAnimator.ofFloat(((float) getHeight()) - width2, ((float) getHeight()) - width2, width2, ((float) getHeight()) - width2);
            } else if (i2 == 2) {
                ofFloat2 = ValueAnimator.ofFloat(((float) getHeight()) - width2, width2, ((float) getHeight()) - width2, ((float) getHeight()) - width2);
            }
            ofFloat.setDuration(ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallTrianglePathIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateX[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallTrianglePathIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateY[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}
