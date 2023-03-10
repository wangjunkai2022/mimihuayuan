package com.contrarywind.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import f.f.d.c;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class WheelView extends View {
    public static final String[] U = {"00", "01", "02", "03", "04", "05", "06", "07", "08", "09"};
    public float A;
    public float B;
    public float C;
    public float D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public float M;
    public long N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public float S;
    public boolean T;
    public b a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public Handler f2362c;

    /* renamed from: d  reason: collision with root package name */
    public GestureDetector f2363d;

    /* renamed from: e  reason: collision with root package name */
    public f.f.c.b f2364e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2365f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2366g;

    /* renamed from: h  reason: collision with root package name */
    public ScheduledExecutorService f2367h;

    /* renamed from: i  reason: collision with root package name */
    public ScheduledFuture<?> f2368i;

    /* renamed from: j  reason: collision with root package name */
    public Paint f2369j;

    /* renamed from: k  reason: collision with root package name */
    public Paint f2370k;

    /* renamed from: l  reason: collision with root package name */
    public Paint f2371l;

    /* renamed from: m  reason: collision with root package name */
    public f.f.a.a f2372m;
    public String n;
    public int o;
    public int p;
    public int q;
    public int r;
    public float s;
    public Typeface t;
    public int u;
    public int v;
    public int w;
    public int x;
    public float y;
    public boolean z;

    /* loaded from: classes.dex */
    public enum a {
        CLICK,
        FLING,
        DAGGLE
    }

    /* loaded from: classes.dex */
    public enum b {
        FILL,
        WRAP,
        CIRCLE
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2365f = false;
        this.f2366g = true;
        this.f2367h = Executors.newSingleThreadScheduledExecutor();
        this.t = Typeface.MONOSPACE;
        this.y = 1.6f;
        this.H = 11;
        this.L = 0;
        this.M = 0.0f;
        this.N = 0L;
        this.P = 17;
        this.Q = 0;
        this.R = 0;
        this.T = false;
        this.o = getResources().getDimensionPixelSize(f.f.e.a.pickerview_textsize);
        float f2 = getResources().getDisplayMetrics().density;
        if (f2 < 1.0f) {
            this.S = 2.4f;
        } else if (1.0f <= f2 && f2 < 2.0f) {
            this.S = 4.0f;
        } else if (2.0f <= f2 && f2 < 3.0f) {
            this.S = 6.0f;
        } else if (f2 >= 3.0f) {
            this.S = f2 * 2.5f;
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.f.e.b.pickerview, 0, 0);
            this.P = obtainStyledAttributes.getInt(f.f.e.b.pickerview_wheelview_gravity, 17);
            this.u = obtainStyledAttributes.getColor(f.f.e.b.pickerview_wheelview_textColorOut, -5723992);
            this.v = obtainStyledAttributes.getColor(f.f.e.b.pickerview_wheelview_textColorCenter, -14013910);
            this.w = obtainStyledAttributes.getColor(f.f.e.b.pickerview_wheelview_dividerColor, -2763307);
            this.x = obtainStyledAttributes.getDimensionPixelSize(f.f.e.b.pickerview_wheelview_dividerWidth, 2);
            this.o = obtainStyledAttributes.getDimensionPixelOffset(f.f.e.b.pickerview_wheelview_textSize, this.o);
            this.y = obtainStyledAttributes.getFloat(f.f.e.b.pickerview_wheelview_lineSpacingMultiplier, this.y);
            obtainStyledAttributes.recycle();
        }
        d();
        this.b = context;
        this.f2362c = new f.f.d.b(this);
        GestureDetector gestureDetector = new GestureDetector(context, new f.f.c.a(this));
        this.f2363d = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.z = true;
        this.D = 0.0f;
        this.E = -1;
        Paint paint = new Paint();
        this.f2369j = paint;
        paint.setColor(this.u);
        this.f2369j.setAntiAlias(true);
        this.f2369j.setTypeface(this.t);
        this.f2369j.setTextSize(this.o);
        Paint paint2 = new Paint();
        this.f2370k = paint2;
        paint2.setColor(this.v);
        this.f2370k.setAntiAlias(true);
        this.f2370k.setTextScaleX(1.1f);
        this.f2370k.setTypeface(this.t);
        this.f2370k.setTextSize(this.o);
        Paint paint3 = new Paint();
        this.f2371l = paint3;
        paint3.setColor(this.w);
        this.f2371l.setAntiAlias(true);
        setLayerType(1, null);
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.f2368i;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f2368i.cancel(true);
        this.f2368i = null;
    }

    public final String b(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof f.f.b.a) {
            return ((f.f.b.a) obj).a();
        }
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            return (intValue < 0 || intValue >= 10) ? String.valueOf(intValue) : U[intValue];
        }
        return obj.toString();
    }

    public final int c(int i2) {
        if (i2 < 0) {
            return c(((f.c.a.f.a) this.f2372m).b() + i2);
        }
        return i2 > ((f.c.a.f.a) this.f2372m).b() + (-1) ? c(i2 - ((f.c.a.f.a) this.f2372m).b()) : i2;
    }

    public final void d() {
        float f2 = this.y;
        if (f2 < 1.0f) {
            this.y = 1.0f;
        } else if (f2 > 4.0f) {
            this.y = 4.0f;
        }
    }

    public final void e() {
        if (this.f2372m == null) {
            return;
        }
        Rect rect = new Rect();
        for (int i2 = 0; i2 < ((f.c.a.f.a) this.f2372m).b(); i2++) {
            String b2 = b(((f.c.a.f.a) this.f2372m).a(i2));
            this.f2370k.getTextBounds(b2, 0, b2.length(), rect);
            int width = rect.width();
            if (width > this.p) {
                this.p = width;
            }
        }
        this.f2370k.getTextBounds("星期", 0, 2, rect);
        int height = rect.height() + 2;
        this.q = height;
        float f2 = this.y * height;
        this.s = f2;
        int i3 = (int) (f2 * (this.H - 1));
        this.I = (int) ((i3 * 2) / 3.141592653589793d);
        this.K = (int) (i3 / 3.141592653589793d);
        this.J = View.MeasureSpec.getSize(this.O);
        int i4 = this.I;
        float f3 = this.s;
        this.A = (i4 - f3) / 2.0f;
        float f4 = (i4 + f3) / 2.0f;
        this.B = f4;
        this.C = (f4 - ((f3 - this.q) / 2.0f)) - this.S;
        if (this.E == -1) {
            if (this.z) {
                this.E = (((f.c.a.f.a) this.f2372m).b() + 1) / 2;
            } else {
                this.E = 0;
            }
        }
        this.G = this.E;
    }

    public final void f(float f2, float f3) {
        int i2 = this.r;
        this.f2369j.setTextSkewX((i2 > 0 ? 1 : i2 < 0 ? -1 : 0) * (f3 <= 0.0f ? 1 : -1) * 0.5f * f2);
        this.f2369j.setAlpha(this.T ? (int) (((90.0f - Math.abs(f3)) / 90.0f) * 255.0f) : 255);
    }

    public void g(a aVar) {
        a();
        if (aVar == a.FLING || aVar == a.DAGGLE) {
            float f2 = this.D;
            float f3 = this.s;
            int i2 = (int) (((f2 % f3) + f3) % f3);
            this.L = i2;
            float f4 = i2;
            if (f4 > f3 / 2.0f) {
                this.L = (int) (f3 - f4);
            } else {
                this.L = -i2;
            }
        }
        this.f2368i = this.f2367h.scheduleWithFixedDelay(new c(this, this.L), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    public final f.f.a.a getAdapter() {
        return this.f2372m;
    }

    public final int getCurrentItem() {
        int i2;
        f.f.a.a aVar = this.f2372m;
        if (aVar == null) {
            return 0;
        }
        if (this.z && ((i2 = this.F) < 0 || i2 >= ((f.c.a.f.a) aVar).b())) {
            return Math.max(0, Math.min(Math.abs(Math.abs(this.F) - ((f.c.a.f.a) this.f2372m).b()), ((f.c.a.f.a) this.f2372m).b() - 1));
        }
        return Math.max(0, Math.min(this.F, ((f.c.a.f.a) this.f2372m).b() - 1));
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.f2362c;
    }

    public int getInitPosition() {
        return this.E;
    }

    public float getItemHeight() {
        return this.s;
    }

    public int getItemsCount() {
        f.f.a.a aVar = this.f2372m;
        if (aVar != null) {
            return ((f.c.a.f.a) aVar).b();
        }
        return 0;
    }

    public float getTotalScrollY() {
        return this.D;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f2;
        String a2;
        float f3;
        int i2;
        String str;
        String str2;
        int i3;
        float[] fArr;
        int i4;
        if (this.f2372m == null) {
            return;
        }
        int i5 = 0;
        int min = Math.min(Math.max(0, this.E), ((f.c.a.f.a) this.f2372m).b() - 1);
        this.E = min;
        try {
            this.G = min + (((int) (this.D / this.s)) % ((f.c.a.f.a) this.f2372m).b());
        } catch (ArithmeticException unused) {
        }
        if (!this.z) {
            if (this.G < 0) {
                this.G = 0;
            }
            if (this.G > ((f.c.a.f.a) this.f2372m).b() - 1) {
                this.G = ((f.c.a.f.a) this.f2372m).b() - 1;
            }
        } else {
            if (this.G < 0) {
                this.G = ((f.c.a.f.a) this.f2372m).b() + this.G;
            }
            if (this.G > ((f.c.a.f.a) this.f2372m).b() - 1) {
                this.G -= ((f.c.a.f.a) this.f2372m).b();
            }
        }
        float f4 = this.D % this.s;
        b bVar = this.a;
        if (bVar == b.WRAP) {
            if (TextUtils.isEmpty(this.n)) {
                i4 = (this.J - this.p) / 2;
            } else {
                i4 = (this.J - this.p) / 4;
            }
            float f5 = i4 - 12;
            float f6 = f5 <= 0.0f ? 10.0f : f5;
            float f7 = this.J - f6;
            float f8 = this.A;
            float f9 = f6;
            canvas.drawLine(f9, f8, f7, f8, this.f2371l);
            float f10 = this.B;
            canvas.drawLine(f9, f10, f7, f10, this.f2371l);
        } else if (bVar == b.CIRCLE) {
            this.f2371l.setStyle(Paint.Style.STROKE);
            this.f2371l.setStrokeWidth(this.x);
            if (TextUtils.isEmpty(this.n)) {
                f2 = (this.J - this.p) / 2.0f;
            } else {
                f2 = (this.J - this.p) / 4.0f;
            }
            float f11 = f2 - 12.0f;
            float f12 = f11 > 0.0f ? f11 : 10.0f;
            canvas.drawCircle(this.J / 2.0f, this.I / 2.0f, Math.max((this.J - f12) - f12, this.s) / 1.8f, this.f2371l);
        } else {
            float f13 = this.A;
            canvas.drawLine(0.0f, f13, this.J, f13, this.f2371l);
            float f14 = this.B;
            canvas.drawLine(0.0f, f14, this.J, f14, this.f2371l);
        }
        if (!TextUtils.isEmpty(this.n) && this.f2366g) {
            int i6 = this.J;
            Paint paint = this.f2370k;
            String str3 = this.n;
            if (str3 == null || str3.length() <= 0) {
                i3 = 0;
            } else {
                int length = str3.length();
                paint.getTextWidths(str3, new float[length]);
                i3 = 0;
                for (int i7 = 0; i7 < length; i7++) {
                    i3 += (int) Math.ceil(fArr[i7]);
                }
            }
            canvas.drawText(this.n, (i6 - i3) - this.S, this.C, this.f2370k);
        }
        int i8 = 0;
        while (true) {
            int i9 = this.H;
            if (i8 >= i9) {
                return;
            }
            int i10 = this.G - ((i9 / 2) - i8);
            if (this.z) {
                a2 = ((f.c.a.f.a) this.f2372m).a(c(i10));
            } else {
                a2 = (i10 >= 0 && i10 <= ((f.c.a.f.a) this.f2372m).b() + (-1)) ? ((f.c.a.f.a) this.f2372m).a(i10) : "";
            }
            canvas.save();
            double d2 = ((this.s * i8) - f4) / this.K;
            float f15 = (float) (90.0d - ((d2 / 3.141592653589793d) * 180.0d));
            if (f15 <= 90.0f && f15 >= -90.0f) {
                String b2 = (!this.f2366g && !TextUtils.isEmpty(this.n) && !TextUtils.isEmpty(b(a2))) ? b(a2) + this.n : b(a2);
                float pow = (float) Math.pow(Math.abs(f15) / 90.0f, 2.2d);
                Rect rect = new Rect();
                this.f2370k.getTextBounds(b2, i5, b2.length(), rect);
                int i11 = this.o;
                for (int width = rect.width(); width > this.J; width = rect.width()) {
                    i11--;
                    this.f2370k.setTextSize(i11);
                    this.f2370k.getTextBounds(b2, i5, b2.length(), rect);
                }
                this.f2369j.setTextSize(i11);
                Rect rect2 = new Rect();
                this.f2370k.getTextBounds(b2, i5, b2.length(), rect2);
                int i12 = this.P;
                if (i12 != 3) {
                    if (i12 == 5) {
                        this.Q = (this.J - rect2.width()) - ((int) this.S);
                    } else if (i12 == 17) {
                        if (!this.f2365f && (str2 = this.n) != null && !str2.equals("") && this.f2366g) {
                            this.Q = (int) ((this.J - rect2.width()) * 0.25d);
                        } else {
                            this.Q = (int) ((this.J - rect2.width()) * 0.5d);
                        }
                    }
                    i2 = 0;
                } else {
                    i2 = 0;
                    this.Q = 0;
                }
                Rect rect3 = new Rect();
                this.f2369j.getTextBounds(b2, i2, b2.length(), rect3);
                int i13 = this.P;
                if (i13 == 3) {
                    this.R = 0;
                } else if (i13 == 5) {
                    this.R = (this.J - rect3.width()) - ((int) this.S);
                } else if (i13 == 17) {
                    if (!this.f2365f && (str = this.n) != null && !str.equals("") && this.f2366g) {
                        this.R = (int) ((this.J - rect3.width()) * 0.25d);
                    } else {
                        this.R = (int) ((this.J - rect3.width()) * 0.5d);
                    }
                }
                f3 = f4;
                float cos = (float) ((this.K - (Math.cos(d2) * this.K)) - ((Math.sin(d2) * this.q) / 2.0d));
                canvas.translate(0.0f, cos);
                float f16 = this.A;
                if (cos <= f16 && this.q + cos >= f16) {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.J, this.A - cos);
                    canvas.scale(1.0f, ((float) Math.sin(d2)) * 0.8f);
                    f(pow, f15);
                    canvas.drawText(b2, this.R, this.q, this.f2369j);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.A - cos, this.J, (int) this.s);
                    canvas.scale(1.0f, ((float) Math.sin(d2)) * 1.0f);
                    canvas.drawText(b2, this.Q, this.q - this.S, this.f2370k);
                    canvas.restore();
                } else {
                    float f17 = this.B;
                    if (cos <= f17 && this.q + cos >= f17) {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.J, this.B - cos);
                        canvas.scale(1.0f, ((float) Math.sin(d2)) * 1.0f);
                        canvas.drawText(b2, this.Q, this.q - this.S, this.f2370k);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.B - cos, this.J, (int) this.s);
                        canvas.scale(1.0f, ((float) Math.sin(d2)) * 0.8f);
                        f(pow, f15);
                        canvas.drawText(b2, this.R, this.q, this.f2369j);
                        canvas.restore();
                    } else {
                        if (cos >= this.A) {
                            int i14 = this.q;
                            if (i14 + cos <= this.B) {
                                canvas.drawText(b2, this.Q, i14 - this.S, this.f2370k);
                                this.F = this.G - ((this.H / 2) - i8);
                            }
                        }
                        canvas.save();
                        canvas.clipRect(0, 0, this.J, (int) this.s);
                        canvas.scale(1.0f, ((float) Math.sin(d2)) * 0.8f);
                        f(pow, f15);
                        canvas.drawText(b2, (this.r * pow) + this.R, this.q, this.f2369j);
                        canvas.restore();
                    }
                }
                canvas.restore();
                this.f2370k.setTextSize(this.o);
            } else {
                f3 = f4;
                canvas.restore();
            }
            i8++;
            f4 = f3;
            i5 = 0;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        this.O = i2;
        e();
        setMeasuredDimension(this.J, this.I);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a7, code lost:
        if (r0 > 0.0f) goto L22;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.contrarywind.view.WheelView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setAdapter(f.f.a.a aVar) {
        this.f2372m = aVar;
        e();
        invalidate();
    }

    public void setAlphaGradient(boolean z) {
        this.T = z;
    }

    public final void setCurrentItem(int i2) {
        this.F = i2;
        this.E = i2;
        this.D = 0.0f;
        invalidate();
    }

    public final void setCyclic(boolean z) {
        this.z = z;
    }

    public void setDividerColor(int i2) {
        this.w = i2;
        this.f2371l.setColor(i2);
    }

    public void setDividerType(b bVar) {
        this.a = bVar;
    }

    public void setDividerWidth(int i2) {
        this.x = i2;
        this.f2371l.setStrokeWidth(i2);
    }

    public void setGravity(int i2) {
        this.P = i2;
    }

    public void setIsOptions(boolean z) {
        this.f2365f = z;
    }

    public void setItemsVisibleCount(int i2) {
        if (i2 % 2 == 0) {
            i2++;
        }
        this.H = i2 + 2;
    }

    public void setLabel(String str) {
        this.n = str;
    }

    public void setLineSpacingMultiplier(float f2) {
        if (f2 != 0.0f) {
            this.y = f2;
            d();
        }
    }

    public final void setOnItemSelectedListener(f.f.c.b bVar) {
        this.f2364e = bVar;
    }

    public void setTextColorCenter(int i2) {
        this.v = i2;
        this.f2370k.setColor(i2);
    }

    public void setTextColorOut(int i2) {
        this.u = i2;
        this.f2369j.setColor(i2);
    }

    public final void setTextSize(float f2) {
        if (f2 > 0.0f) {
            int i2 = (int) (this.b.getResources().getDisplayMetrics().density * f2);
            this.o = i2;
            this.f2369j.setTextSize(i2);
            this.f2370k.setTextSize(this.o);
        }
    }

    public void setTextXOffset(int i2) {
        this.r = i2;
        if (i2 != 0) {
            this.f2370k.setTextScaleX(1.0f);
        }
    }

    public void setTotalScrollY(float f2) {
        this.D = f2;
    }

    public final void setTypeface(Typeface typeface) {
        this.t = typeface;
        this.f2369j.setTypeface(typeface);
        this.f2370k.setTypeface(this.t);
    }
}
