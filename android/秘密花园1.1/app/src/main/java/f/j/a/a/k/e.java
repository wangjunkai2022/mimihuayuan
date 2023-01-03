package f.j.a.a.k;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import androidx.annotation.NonNull;
import androidx.core.util.TimeUtils;

/* compiled from: ProgressDrawable.java */
/* loaded from: classes.dex */
public class e extends d implements Animatable, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: e  reason: collision with root package name */
    public ValueAnimator f6181e;
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f6179c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f6180d = 0;

    /* renamed from: f  reason: collision with root package name */
    public Path f6182f = new Path();

    public e() {
        ValueAnimator ofInt = ValueAnimator.ofInt(30, TimeUtils.SECONDS_PER_HOUR);
        this.f6181e = ofInt;
        ofInt.setDuration(10000L);
        this.f6181e.setInterpolator(null);
        this.f6181e.setRepeatCount(-1);
        this.f6181e.setRepeatMode(1);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        float f2 = width;
        float max = Math.max(1.0f, f2 / 22.0f);
        if (this.b != width || this.f6179c != height) {
            this.f6182f.reset();
            float f3 = f2 - max;
            float f4 = height / 2.0f;
            this.f6182f.addCircle(f3, f4, max, Path.Direction.CW);
            float f5 = f2 - (5.0f * max);
            this.f6182f.addRect(f5, f4 - max, f3, f4 + max, Path.Direction.CW);
            this.f6182f.addCircle(f5, f4, max, Path.Direction.CW);
            this.b = width;
            this.f6179c = height;
        }
        canvas.save();
        float f6 = f2 / 2.0f;
        float f7 = height / 2.0f;
        canvas.rotate(this.f6180d, f6, f7);
        for (int i2 = 0; i2 < 12; i2++) {
            this.a.setAlpha((i2 + 5) * 17);
            canvas.rotate(30.0f, f6, f7);
            canvas.drawPath(this.f6182f, this.a);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f6181e.isRunning();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f6180d = (((Integer) valueAnimator.getAnimatedValue()).intValue() / 30) * 30;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f6181e.isRunning()) {
            return;
        }
        this.f6181e.addUpdateListener(this);
        this.f6181e.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f6181e.isRunning()) {
            this.f6181e.removeAllListeners();
            this.f6181e.removeAllUpdateListeners();
            this.f6181e.cancel();
        }
    }
}
