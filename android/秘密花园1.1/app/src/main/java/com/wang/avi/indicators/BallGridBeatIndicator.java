package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.recyclerview.widget.FastScroller;
import com.tencent.smtt.sdk.TbsListener;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BallGridBeatIndicator extends Indicator {
    public static final int ALPHA = 255;
    public int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};

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
                paint.setAlpha(this.alphas[(i2 * 3) + i3]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {960, 930, 1190, 1130, 1340, 940, FastScroller.HIDE_DELAY_AFTER_DRAGGING_MS, 820, 1190};
        int[] iArr2 = {360, 400, 680, TbsListener.ErrorCode.INFO_CAN_NOT_USE_X5_TBS_NOTAVAILABLE, 710, -150, -120, 10, 320};
        for (final int i2 = 0; i2 < 9; i2++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(255, TbsListener.ErrorCode.STARTDOWNLOAD_9, 255);
            ofInt.setDuration(iArr[i2]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr2[i2]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallGridBeatIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridBeatIndicator.this.alphas[i2] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridBeatIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
