package f.j.a.a.h;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import f.j.a.a.d;
import f.j.a.a.f.e;
import f.j.a.a.f.i;
import f.j.a.a.g.c;
/* compiled from: BallPulseFooter.java */
/* loaded from: classes.dex */
public class a extends f.j.a.a.k.b implements e {

    /* renamed from: d  reason: collision with root package name */
    public boolean f6223d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6224e;

    /* renamed from: f  reason: collision with root package name */
    public Paint f6225f;

    /* renamed from: g  reason: collision with root package name */
    public int f6226g;

    /* renamed from: h  reason: collision with root package name */
    public int f6227h;

    /* renamed from: i  reason: collision with root package name */
    public float f6228i;

    /* renamed from: j  reason: collision with root package name */
    public long f6229j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6230k;

    /* renamed from: l  reason: collision with root package name */
    public TimeInterpolator f6231l;

    public a(Context context) {
        super(context, null, 0);
        this.f6226g = -1118482;
        this.f6227h = -1615546;
        this.f6229j = 0L;
        this.f6230k = false;
        this.f6231l = new AccelerateDecelerateInterpolator();
        setMinimumHeight(f.j.a.a.m.b.d(60.0f));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, d.BallPulseFooter);
        Paint paint = new Paint();
        this.f6225f = paint;
        paint.setColor(-1);
        this.f6225f.setStyle(Paint.Style.FILL);
        this.f6225f.setAntiAlias(true);
        c cVar = c.f6216d;
        this.b = cVar;
        this.b = c.f6221i[obtainStyledAttributes.getInt(d.BallPulseFooter_srlClassicsSpinnerStyle, cVar.a)];
        if (obtainStyledAttributes.hasValue(d.BallPulseFooter_srlNormalColor)) {
            o(obtainStyledAttributes.getColor(d.BallPulseFooter_srlNormalColor, 0));
        }
        if (obtainStyledAttributes.hasValue(d.BallPulseFooter_srlAnimatingColor)) {
            int color = obtainStyledAttributes.getColor(d.BallPulseFooter_srlAnimatingColor, 0);
            this.f6227h = color;
            this.f6224e = true;
            if (this.f6230k) {
                this.f6225f.setColor(color);
            }
        }
        obtainStyledAttributes.recycle();
        this.f6228i = f.j.a.a.m.b.d(4.0f);
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void b(@NonNull i iVar, int i2, int i3) {
        if (this.f6230k) {
            return;
        }
        invalidate();
        this.f6230k = true;
        this.f6229j = System.currentTimeMillis();
        this.f6225f.setColor(this.f6227h);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float f2 = this.f6228i;
        float min = (Math.min(width, height) - (f2 * 2.0f)) / 6.0f;
        float f3 = min * 2.0f;
        float f4 = (width / 2.0f) - (f2 + f3);
        float f5 = height / 2.0f;
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 + 1;
            long j2 = (currentTimeMillis - this.f6229j) - (i3 * 120);
            float interpolation = this.f6231l.getInterpolation(j2 > 0 ? ((float) (j2 % 750)) / 750.0f : 0.0f);
            canvas.save();
            float f6 = i2;
            canvas.translate((this.f6228i * f6) + (f3 * f6) + f4, f5);
            if (interpolation < 0.5d) {
                float f7 = 1.0f - ((interpolation * 2.0f) * 0.7f);
                canvas.scale(f7, f7);
            } else {
                float f8 = ((interpolation * 2.0f) * 0.7f) - 0.4f;
                canvas.scale(f8, f8);
            }
            canvas.drawCircle(0.0f, 0.0f, min, this.f6225f);
            canvas.restore();
            i2 = i3;
        }
        super.dispatchDraw(canvas);
        if (this.f6230k) {
            invalidate();
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        this.f6230k = false;
        this.f6229j = 0L;
        this.f6225f.setColor(this.f6226g);
        return 0;
    }

    public a o(@ColorInt int i2) {
        this.f6226g = i2;
        this.f6223d = true;
        if (!this.f6230k) {
            this.f6225f.setColor(i2);
        }
        return this;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (!this.f6224e && iArr.length > 1) {
            int i2 = iArr[0];
            this.f6227h = i2;
            this.f6224e = true;
            if (this.f6230k) {
                this.f6225f.setColor(i2);
            }
            this.f6224e = false;
        }
        if (this.f6223d) {
            return;
        }
        if (iArr.length > 1) {
            o(iArr[1]);
        } else if (iArr.length > 0) {
            o(ColorUtils.compositeColors(-1711276033, iArr[0]));
        }
        this.f6223d = false;
    }
}
