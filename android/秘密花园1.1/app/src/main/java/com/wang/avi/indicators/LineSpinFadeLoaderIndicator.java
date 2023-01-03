package com.wang.avi.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.indicators.BallSpinFadeLoaderIndicator;

/* loaded from: classes.dex */
public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    @Override // com.wang.avi.indicators.BallSpinFadeLoaderIndicator, com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i2 = 0; i2 < 8; i2++) {
            canvas.save();
            BallSpinFadeLoaderIndicator.Point circleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2.5f) - width, 0.7853981633974483d * i2);
            canvas.translate(circleAt.x, circleAt.y);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i2], fArr[i2]);
            canvas.rotate(i2 * 45);
            paint.setAlpha(this.alphas[i2]);
            float f2 = -width;
            canvas.drawRoundRect(new RectF(f2, f2 / 1.5f, width * 1.5f, width / 1.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}
