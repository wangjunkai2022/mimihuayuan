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
import f.j.a.a.k.b;

/* compiled from: BallPulseFooter.java */
/* loaded from: classes.dex */
public class a extends b implements e {

    /* renamed from: d  reason: collision with root package name */
    public boolean f6139d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6140e;

    /* renamed from: f  reason: collision with root package name */
    public Paint f6141f;

    /* renamed from: h  reason: collision with root package name */
    public int f6143h;

    /* renamed from: i  reason: collision with root package name */
    public float f6144i;

    /* renamed from: g  reason: collision with root package name */
    public int f6142g = -1118482;

    /* renamed from: j  reason: collision with root package name */
    public long f6145j = 0;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6146k = false;

    /* renamed from: l  reason: collision with root package name */
    public TimeInterpolator f6147l = new AccelerateDecelerateInterpolator();

    public a(Context context) {
        super(context, null, 0);
        this.f6143h = -1615546;
        setMinimumHeight(f.j.a.a.m.b.d(60.0f));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, d.BallPulseFooter);
        Paint paint = new Paint();
        this.f6141f = paint;
        paint.setColor(-1);
        this.f6141f.setStyle(Paint.Style.FILL);
        this.f6141f.setAntiAlias(true);
        c cVar = c.f6132d;
        this.b = cVar;
        this.b = c.f6137i[obtainStyledAttributes.getInt(d.BallPulseFooter_srlClassicsSpinnerStyle, cVar.a)];
        if (obtainStyledAttributes.hasValue(d.BallPulseFooter_srlNormalColor)) {
            o(obtainStyledAttributes.getColor(d.BallPulseFooter_srlNormalColor, 0));
        }
        if (obtainStyledAttributes.hasValue(d.BallPulseFooter_srlAnimatingColor)) {
            int color = obtainStyledAttributes.getColor(d.BallPulseFooter_srlAnimatingColor, 0);
            this.f6143h = color;
            this.f6140e = true;
            if (this.f6146k) {
                this.f6141f.setColor(color);
            }
        }
        obtainStyledAttributes.recycle();
        this.f6144i = (float) f.j.a.a.m.b.d(4.0f);
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void b(@NonNull i iVar, int i2, int i3) {
        if (!this.f6146k) {
            invalidate();
            this.f6146k = true;
            this.f6145j = System.currentTimeMillis();
            this.f6141f.setColor(this.f6143h);
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float f2 = this.f6144i;
        float min = (((float) Math.min(width, height)) - (f2 * 2.0f)) / 6.0f;
        float f3 = min * 2.0f;
        float f4 = (((float) width) / 2.0f) - (f2 + f3);
        float f5 = ((float) height) / 2.0f;
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 + 1;
            long j2 = (currentTimeMillis - this.f6145j) - ((long) (i3 * 120));
            float interpolation = this.f6147l.getInterpolation(j2 > 0 ? ((float) (j2 % 750)) / 750.0f : 0.0f);
            canvas.save();
            float f6 = (float) i2;
            canvas.translate((this.f6144i * f6) + (f3 * f6) + f4, f5);
            if (((double) interpolation) < 0.5d) {
                float f7 = 1.0f - ((interpolation * 2.0f) * 0.7f);
                canvas.scale(f7, f7);
            } else {
                float f8 = ((interpolation * 2.0f) * 0.7f) - 0.4f;
                canvas.scale(f8, f8);
            }
            canvas.drawCircle(0.0f, 0.0f, min, this.f6141f);
            canvas.restore();
            i2 = i3;
        }
        super.dispatchDraw(canvas);
        if (this.f6146k) {
            invalidate();
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        this.f6146k = false;
        this.f6145j = 0;
        this.f6141f.setColor(this.f6142g);
        return 0;
    }

    public a o(@ColorInt int i2) {
        this.f6142g = i2;
        this.f6139d = true;
        if (!this.f6146k) {
            this.f6141f.setColor(i2);
        }
        return this;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (!this.f6140e && iArr.length > 1) {
            int i2 = iArr[0];
            this.f6143h = i2;
            this.f6140e = true;
            if (this.f6146k) {
                this.f6141f.setColor(i2);
            }
            this.f6140e = false;
        }
        if (!this.f6139d) {
            if (iArr.length > 1) {
                o(iArr[1]);
            } else if (iArr.length > 0) {
                o(ColorUtils.compositeColors(-1711276033, iArr[0]));
            }
            this.f6139d = false;
        }
    }
}
