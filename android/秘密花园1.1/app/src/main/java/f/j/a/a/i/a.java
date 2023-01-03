package f.j.a.a.i;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment;
import f.j.a.a.d;
import f.j.a.a.f.f;
import f.j.a.a.f.i;
import f.j.a.a.g.c;

/* compiled from: BezierRadarHeader.java */
/* loaded from: classes.dex */
public class a extends f.j.a.a.k.b implements f {

    /* renamed from: d  reason: collision with root package name */
    public int f6148d;

    /* renamed from: e  reason: collision with root package name */
    public int f6149e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f6150f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6151g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f6152h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6153i;

    /* renamed from: j  reason: collision with root package name */
    public Path f6154j;

    /* renamed from: k  reason: collision with root package name */
    public Paint f6155k;

    /* renamed from: l  reason: collision with root package name */
    public int f6156l;

    /* renamed from: m  reason: collision with root package name */
    public int f6157m;
    public int n;
    public int o;
    public float p;
    public float q;
    public float r;
    public float s;
    public int t;
    public float u;
    public float v;
    public float w;
    public Animator x;
    public RectF y;

    /* compiled from: BezierRadarHeader.java */
    /* renamed from: f.j.a.a.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0097a implements ValueAnimator.AnimatorUpdateListener {
        public byte a;

        public C0097a(byte b) {
            this.a = b;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            byte b = this.a;
            if (b == 0) {
                a.this.w = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (1 == b) {
                a aVar = a.this;
                if (aVar.f6152h) {
                    valueAnimator.cancel();
                    return;
                }
                aVar.f6157m = ((Integer) valueAnimator.getAnimatedValue()).intValue() / 2;
            } else if (2 == b) {
                a.this.p = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (3 == b) {
                a.this.s = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (4 == b) {
                a.this.t = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
            a.this.invalidate();
        }
    }

    public a(Context context) {
        super(context, null, 0);
        this.f6153i = false;
        this.n = -1;
        this.o = 0;
        this.t = 0;
        this.u = 0.0f;
        this.v = 0.0f;
        this.w = 0.0f;
        this.y = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.b = c.f6134f;
        this.f6154j = new Path();
        Paint paint = new Paint();
        this.f6155k = paint;
        paint.setAntiAlias(true);
        this.r = f.j.a.a.m.b.d(7.0f);
        this.u = f.j.a.a.m.b.d(20.0f);
        this.v = f.j.a.a.m.b.d(7.0f);
        this.f6155k.setStrokeWidth(f.j.a.a.m.b.d(3.0f));
        setMinimumHeight(f.j.a.a.m.b.d(100.0f));
        if (isInEditMode()) {
            this.f6156l = 1000;
            this.w = 1.0f;
            this.t = BottomAppBarTopEdgeTreatment.ANGLE_UP;
        } else {
            this.w = 0.0f;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, d.BezierRadarHeader);
        this.f6153i = obtainStyledAttributes.getBoolean(d.BezierRadarHeader_srlEnableHorizontalDrag, this.f6153i);
        this.f6148d = obtainStyledAttributes.getColor(d.BezierRadarHeader_srlAccentColor, -1);
        this.f6151g = true;
        this.f6149e = obtainStyledAttributes.getColor(d.BezierRadarHeader_srlPrimaryColor, -14540254);
        this.f6150f = true;
        this.f6151g = obtainStyledAttributes.hasValue(d.BezierRadarHeader_srlAccentColor);
        this.f6150f = obtainStyledAttributes.hasValue(d.BezierRadarHeader_srlPrimaryColor);
        obtainStyledAttributes.recycle();
    }

    @Override // f.j.a.a.k.b, f.j.a.a.l.e
    public void a(@NonNull i iVar, @NonNull f.j.a.a.g.b bVar, @NonNull f.j.a.a.g.b bVar2) {
        int ordinal = bVar2.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            this.p = 1.0f;
            this.w = 0.0f;
            this.s = 0.0f;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int i2;
        float f2;
        int width = getWidth();
        int height = isInEditMode() ? getHeight() : this.o;
        this.f6154j.reset();
        this.f6154j.lineTo(0.0f, this.f6156l);
        Path path = this.f6154j;
        int i3 = this.n;
        float f3 = 2.0f;
        float f4 = i3 >= 0 ? i3 : width / 2.0f;
        float f5 = width;
        path.quadTo(f4, this.f6157m + i2, f5, this.f6156l);
        this.f6154j.lineTo(f5, 0.0f);
        this.f6155k.setColor(this.f6149e);
        canvas.drawPath(this.f6154j, this.f6155k);
        if (this.p > 0.0f) {
            this.f6155k.setColor(this.f6148d);
            float f6 = height;
            float f7 = f6 / f.j.a.a.m.b.f6184d;
            float f8 = 7.0f;
            float f9 = (f5 * 1.0f) / 7.0f;
            float f10 = this.q;
            float f11 = (f9 * f10) - (f10 > 1.0f ? ((f10 - 1.0f) * f9) / f10 : 0.0f);
            float f12 = this.q;
            float f13 = f6 - (f12 > 1.0f ? (((f12 - 1.0f) * f6) / 2.0f) / f12 : 0.0f);
            int i4 = 0;
            while (i4 < 7) {
                this.f6155k.setAlpha((int) ((1.0d - (1.0d / Math.pow((f7 / 800.0d) + 1.0d, 15.0d))) * this.p * (1.0f - ((Math.abs(f2) / f8) * f3)) * 255.0f));
                float f14 = (1.0f - (1.0f / ((f7 / 10.0f) + 1.0f))) * this.r;
                canvas.drawCircle((((i4 + 1.0f) - 4.0f) * f11) + ((f5 / 2.0f) - (f14 / 2.0f)), f13 / 2.0f, f14, this.f6155k);
                i4++;
                f8 = 7.0f;
                f3 = 2.0f;
            }
            this.f6155k.setAlpha(255);
        }
        if (this.x != null || isInEditMode()) {
            float f15 = this.u;
            float f16 = this.w;
            float f17 = f15 * f16;
            float f18 = this.v * f16;
            this.f6155k.setColor(this.f6148d);
            this.f6155k.setStyle(Paint.Style.FILL);
            float f19 = f5 / 2.0f;
            float f20 = height / 2.0f;
            canvas.drawCircle(f19, f20, f17, this.f6155k);
            this.f6155k.setStyle(Paint.Style.STROKE);
            float f21 = f18 + f17;
            canvas.drawCircle(f19, f20, f21, this.f6155k);
            this.f6155k.setColor((this.f6149e & ViewCompat.MEASURED_SIZE_MASK) | 1426063360);
            this.f6155k.setStyle(Paint.Style.FILL);
            this.y.set(f19 - f17, f20 - f17, f19 + f17, f17 + f20);
            canvas.drawArc(this.y, 270.0f, this.t, true, this.f6155k);
            this.f6155k.setStyle(Paint.Style.STROKE);
            this.y.set(f19 - f21, f20 - f21, f19 + f21, f20 + f21);
            canvas.drawArc(this.y, 270.0f, this.t, false, this.f6155k);
            this.f6155k.setStyle(Paint.Style.FILL);
        }
        if (this.s > 0.0f) {
            this.f6155k.setColor(this.f6148d);
            canvas.drawCircle(f5 / 2.0f, height / 2.0f, this.s, this.f6155k);
        }
        super.dispatchDraw(canvas);
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void g(float f2, int i2, int i3) {
        this.n = i2;
        invalidate();
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void h(boolean z, float f2, int i2, int i3, int i4) {
        this.o = i2;
        if (z || this.f6152h) {
            this.f6152h = true;
            this.f6156l = Math.min(i3, i2);
            this.f6157m = (int) (Math.max(0, i2 - i3) * 1.9f);
            this.q = f2;
            invalidate();
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        Animator animator = this.x;
        if (animator != null) {
            animator.removeAllListeners();
            this.x.end();
            this.x = null;
        }
        int width = getWidth();
        int i2 = this.o;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.u, (float) Math.sqrt((i2 * i2) + (width * width)));
        ofFloat.setDuration(400L);
        ofFloat.addUpdateListener(new C0097a((byte) 3));
        ofFloat.start();
        return 400;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public boolean j() {
        return this.f6153i;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void k(@NonNull i iVar, int i2, int i3) {
        this.f6156l = i2 - 1;
        this.f6152h = false;
        int i4 = f.j.a.a.m.b.f6183c;
        f.j.a.a.m.b bVar = new f.j.a.a.m.b(1);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(bVar);
        ofFloat.addUpdateListener(new C0097a((byte) 2));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setInterpolator(bVar);
        ofFloat2.addUpdateListener(new C0097a((byte) 0));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 360);
        ofInt.setDuration(720L);
        ofInt.setRepeatCount(-1);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.addUpdateListener(new C0097a((byte) 4));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(ofFloat, ofFloat2, ofInt);
        animatorSet.start();
        int i5 = this.f6157m;
        ValueAnimator ofInt2 = ValueAnimator.ofInt(i5, 0, -((int) (i5 * 0.8f)), 0, -((int) (i5 * 0.4f)), 0);
        ofInt2.addUpdateListener(new C0097a((byte) 1));
        int i6 = f.j.a.a.m.b.f6183c;
        ofInt2.setInterpolator(new f.j.a.a.m.b(1));
        ofInt2.setDuration(800L);
        ofInt2.start();
        this.x = animatorSet;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.x;
        if (animator != null) {
            animator.removeAllListeners();
            this.x.end();
            this.x = null;
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0 && !this.f6150f) {
            this.f6149e = iArr[0];
            this.f6150f = true;
            this.f6150f = false;
        }
        if (iArr.length <= 1 || this.f6151g) {
            return;
        }
        this.f6148d = iArr[1];
        this.f6151g = true;
        this.f6151g = false;
    }
}
