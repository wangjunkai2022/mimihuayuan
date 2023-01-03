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
    public int I;
    public int J;
    public int K;
    public int O;
    public int P;
    public float S;
    public b a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public Handler f2283c;

    /* renamed from: d  reason: collision with root package name */
    public GestureDetector f2284d;

    /* renamed from: e  reason: collision with root package name */
    public f.f.c.b f2285e;

    /* renamed from: i  reason: collision with root package name */
    public ScheduledFuture<?> f2289i;

    /* renamed from: j  reason: collision with root package name */
    public Paint f2290j;

    /* renamed from: k  reason: collision with root package name */
    public Paint f2291k;

    /* renamed from: l  reason: collision with root package name */
    public Paint f2292l;

    /* renamed from: m  reason: collision with root package name */
    public f.f.a.a f2293m;
    public String n;
    public int o;
    public int p;
    public int q;
    public int r;
    public float s;
    public int u;
    public int v;
    public int w;
    public int x;
    public float y;
    public boolean z;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2286f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2287g = true;

    /* renamed from: h  reason: collision with root package name */
    public ScheduledExecutorService f2288h = Executors.newSingleThreadScheduledExecutor();
    public Typeface t = Typeface.MONOSPACE;
    public int H = 11;
    public int L = 0;
    public float M = 0.0f;
    public long N = 0;
    public int Q = 0;
    public int R = 0;
    public boolean T = false;

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
        this.y = 1.6f;
        this.P = 17;
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
        this.f2283c = new f.f.d.b(this);
        GestureDetector gestureDetector = new GestureDetector(context, new f.f.c.a(this));
        this.f2284d = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.z = true;
        this.D = 0.0f;
        this.E = -1;
        Paint paint = new Paint();
        this.f2290j = paint;
        paint.setColor(this.u);
        this.f2290j.setAntiAlias(true);
        this.f2290j.setTypeface(this.t);
        this.f2290j.setTextSize((float) this.o);
        Paint paint2 = new Paint();
        this.f2291k = paint2;
        paint2.setColor(this.v);
        this.f2291k.setAntiAlias(true);
        this.f2291k.setTextScaleX(1.1f);
        this.f2291k.setTypeface(this.t);
        this.f2291k.setTextSize((float) this.o);
        Paint paint3 = new Paint();
        this.f2292l = paint3;
        paint3.setColor(this.w);
        this.f2292l.setAntiAlias(true);
        setLayerType(1, null);
    }

    public void a() {
        ScheduledFuture<?> scheduledFuture = this.f2289i;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f2289i.cancel(true);
            this.f2289i = null;
        }
    }

    public final String b(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof f.f.b.a) {
            return ((f.f.b.a) obj).a();
        }
        if (!(obj instanceof Integer)) {
            return obj.toString();
        }
        int intValue = ((Integer) obj).intValue();
        return (intValue < 0 || intValue >= 10) ? String.valueOf(intValue) : U[intValue];
    }

    public final int c(int i2) {
        if (i2 < 0) {
            return c(((f.c.a.f.a) this.f2293m).b() + i2);
        }
        return i2 > ((f.c.a.f.a) this.f2293m).b() + -1 ? c(i2 - ((f.c.a.f.a) this.f2293m).b()) : i2;
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
        if (this.f2293m != null) {
            Rect rect = new Rect();
            for (int i2 = 0; i2 < ((f.c.a.f.a) this.f2293m).b(); i2++) {
                String b2 = b(((f.c.a.f.a) this.f2293m).a(i2));
                this.f2291k.getTextBounds(b2, 0, b2.length(), rect);
                int width = rect.width();
                if (width > this.p) {
                    this.p = width;
                }
            }
            this.f2291k.getTextBounds("星期", 0, 2, rect);
            int height = rect.height() + 2;
            this.q = height;
            float f2 = this.y * ((float) height);
            this.s = f2;
            int i3 = (int) (f2 * ((float) (this.H - 1)));
            this.I = (int) (((double) (i3 * 2)) / 3.141592653589793d);
            this.K = (int) (((double) i3) / 3.141592653589793d);
            this.J = View.MeasureSpec.getSize(this.O);
            int i4 = this.I;
            float f3 = this.s;
            this.A = (((float) i4) - f3) / 2.0f;
            float f4 = (((float) i4) + f3) / 2.0f;
            this.B = f4;
            this.C = (f4 - ((f3 - ((float) this.q)) / 2.0f)) - this.S;
            if (this.E == -1) {
                if (this.z) {
                    this.E = (((f.c.a.f.a) this.f2293m).b() + 1) / 2;
                } else {
                    this.E = 0;
                }
            }
            this.G = this.E;
        }
    }

    public final void f(float f2, float f3) {
        int i2 = this.r;
        int i3 = -1;
        int i4 = i2 > 0 ? 1 : i2 < 0 ? -1 : 0;
        Paint paint = this.f2290j;
        if (f3 <= 0.0f) {
            i3 = 1;
        }
        paint.setTextSkewX(((float) (i4 * i3)) * 0.5f * f2);
        this.f2290j.setAlpha(this.T ? (int) (((90.0f - Math.abs(f3)) / 90.0f) * 255.0f) : 255);
    }

    public void g(a aVar) {
        a();
        if (aVar == a.FLING || aVar == a.DAGGLE) {
            float f2 = this.D;
            float f3 = this.s;
            int i2 = (int) (((f2 % f3) + f3) % f3);
            this.L = i2;
            float f4 = (float) i2;
            if (f4 > f3 / 2.0f) {
                this.L = (int) (f3 - f4);
            } else {
                this.L = -i2;
            }
        }
        this.f2289i = this.f2288h.scheduleWithFixedDelay(new c(this, this.L), 0, 10, TimeUnit.MILLISECONDS);
    }

    public final f.f.a.a getAdapter() {
        return this.f2293m;
    }

    public final int getCurrentItem() {
        int i2;
        f.f.a.a aVar = this.f2293m;
        if (aVar == null) {
            return 0;
        }
        if (!this.z || ((i2 = this.F) >= 0 && i2 < ((f.c.a.f.a) aVar).b())) {
            return Math.max(0, Math.min(this.F, ((f.c.a.f.a) this.f2293m).b() - 1));
        }
        return Math.max(0, Math.min(Math.abs(Math.abs(this.F) - ((f.c.a.f.a) this.f2293m).b()), ((f.c.a.f.a) this.f2293m).b() - 1));
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.f2283c;
    }

    public int getInitPosition() {
        return this.E;
    }

    public float getItemHeight() {
        return this.s;
    }

    public int getItemsCount() {
        f.f.a.a aVar = this.f2293m;
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
        Object obj;
        float f2;
        String str;
        int i2;
        String str2;
        String str3;
        int i3;
        float f3;
        int i4;
        if (this.f2293m != null) {
            int i5 = 0;
            int min = Math.min(Math.max(0, this.E), ((f.c.a.f.a) this.f2293m).b() - 1);
            this.E = min;
            try {
                this.G = min + (((int) (this.D / this.s)) % ((f.c.a.f.a) this.f2293m).b());
            } catch (ArithmeticException unused) {
            }
            if (!this.z) {
                if (this.G < 0) {
                    this.G = 0;
                }
                if (this.G > ((f.c.a.f.a) this.f2293m).b() - 1) {
                    this.G = ((f.c.a.f.a) this.f2293m).b() - 1;
                }
            } else {
                if (this.G < 0) {
                    this.G = ((f.c.a.f.a) this.f2293m).b() + this.G;
                }
                if (this.G > ((f.c.a.f.a) this.f2293m).b() - 1) {
                    this.G -= ((f.c.a.f.a) this.f2293m).b();
                }
            }
            float f4 = this.D % this.s;
            b bVar = this.a;
            float f5 = 10.0f;
            if (bVar == b.WRAP) {
                if (TextUtils.isEmpty(this.n)) {
                    i4 = (this.J - this.p) / 2;
                } else {
                    i4 = (this.J - this.p) / 4;
                }
                float f6 = (float) (i4 - 12);
                float f7 = f6 <= 0.0f ? 10.0f : f6;
                float f8 = ((float) this.J) - f7;
                float f9 = this.A;
                canvas.drawLine(f7, f9, f8, f9, this.f2292l);
                float f10 = this.B;
                canvas.drawLine(f7, f10, f8, f10, this.f2292l);
            } else if (bVar == b.CIRCLE) {
                this.f2292l.setStyle(Paint.Style.STROKE);
                this.f2292l.setStrokeWidth((float) this.x);
                if (TextUtils.isEmpty(this.n)) {
                    f3 = ((float) (this.J - this.p)) / 2.0f;
                } else {
                    f3 = ((float) (this.J - this.p)) / 4.0f;
                }
                float f11 = f3 - 12.0f;
                if (f11 > 0.0f) {
                    f5 = f11;
                }
                canvas.drawCircle(((float) this.J) / 2.0f, ((float) this.I) / 2.0f, Math.max((((float) this.J) - f5) - f5, this.s) / 1.8f, this.f2292l);
            } else {
                float f12 = this.A;
                canvas.drawLine(0.0f, f12, (float) this.J, f12, this.f2292l);
                float f13 = this.B;
                canvas.drawLine(0.0f, f13, (float) this.J, f13, this.f2292l);
            }
            if (!TextUtils.isEmpty(this.n) && this.f2287g) {
                int i6 = this.J;
                Paint paint = this.f2291k;
                String str4 = this.n;
                if (str4 == null || str4.length() <= 0) {
                    i3 = 0;
                } else {
                    int length = str4.length();
                    float[] fArr = new float[length];
                    paint.getTextWidths(str4, fArr);
                    i3 = 0;
                    for (int i7 = 0; i7 < length; i7++) {
                        i3 += (int) Math.ceil((double) fArr[i7]);
                    }
                }
                canvas.drawText(this.n, ((float) (i6 - i3)) - this.S, this.C, this.f2291k);
            }
            int i8 = 0;
            while (true) {
                int i9 = this.H;
                if (i8 < i9) {
                    int i10 = this.G - ((i9 / 2) - i8);
                    if (this.z) {
                        obj = ((f.c.a.f.a) this.f2293m).a(c(i10));
                    } else if (i10 >= 0 && i10 <= ((f.c.a.f.a) this.f2293m).b() - 1) {
                        obj = ((f.c.a.f.a) this.f2293m).a(i10);
                    } else {
                        obj = "";
                    }
                    canvas.save();
                    double d2 = (double) (((this.s * ((float) i8)) - f4) / ((float) this.K));
                    float f14 = (float) (90.0d - ((d2 / 3.141592653589793d) * 180.0d));
                    if (f14 > 90.0f || f14 < -90.0f) {
                        f2 = f4;
                        canvas.restore();
                    } else {
                        if (this.f2287g || TextUtils.isEmpty(this.n) || TextUtils.isEmpty(b(obj))) {
                            str = b(obj);
                        } else {
                            str = b(obj) + this.n;
                        }
                        float pow = (float) Math.pow((double) (Math.abs(f14) / 90.0f), 2.2d);
                        Rect rect = new Rect();
                        this.f2291k.getTextBounds(str, i5, str.length(), rect);
                        int i11 = this.o;
                        for (int width = rect.width(); width > this.J; width = rect.width()) {
                            i11--;
                            this.f2291k.setTextSize((float) i11);
                            this.f2291k.getTextBounds(str, i5, str.length(), rect);
                        }
                        this.f2290j.setTextSize((float) i11);
                        Rect rect2 = new Rect();
                        this.f2291k.getTextBounds(str, i5, str.length(), rect2);
                        int i12 = this.P;
                        if (i12 != 3) {
                            if (i12 == 5) {
                                this.Q = (this.J - rect2.width()) - ((int) this.S);
                            } else if (i12 == 17) {
                                if (this.f2286f || (str3 = this.n) == null || str3.equals("") || !this.f2287g) {
                                    this.Q = (int) (((double) (this.J - rect2.width())) * 0.5d);
                                } else {
                                    this.Q = (int) (((double) (this.J - rect2.width())) * 0.25d);
                                }
                            }
                            i2 = 0;
                        } else {
                            i2 = 0;
                            this.Q = 0;
                        }
                        Rect rect3 = new Rect();
                        this.f2290j.getTextBounds(str, i2, str.length(), rect3);
                        int i13 = this.P;
                        if (i13 == 3) {
                            this.R = 0;
                        } else if (i13 == 5) {
                            this.R = (this.J - rect3.width()) - ((int) this.S);
                        } else if (i13 == 17) {
                            if (this.f2286f || (str2 = this.n) == null || str2.equals("") || !this.f2287g) {
                                this.R = (int) (((double) (this.J - rect3.width())) * 0.5d);
                            } else {
                                this.R = (int) (((double) (this.J - rect3.width())) * 0.25d);
                            }
                        }
                        f2 = f4;
                        float cos = (float) ((((double) this.K) - (Math.cos(d2) * ((double) this.K))) - ((Math.sin(d2) * ((double) this.q)) / 2.0d));
                        canvas.translate(0.0f, cos);
                        float f15 = this.A;
                        if (cos > f15 || ((float) this.q) + cos < f15) {
                            float f16 = this.B;
                            if (cos > f16 || ((float) this.q) + cos < f16) {
                                if (cos >= this.A) {
                                    int i14 = this.q;
                                    if (((float) i14) + cos <= this.B) {
                                        canvas.drawText(str, (float) this.Q, ((float) i14) - this.S, this.f2291k);
                                        this.F = this.G - ((this.H / 2) - i8);
                                    }
                                }
                                canvas.save();
                                canvas.clipRect(0, 0, this.J, (int) this.s);
                                canvas.scale(1.0f, ((float) Math.sin(d2)) * 0.8f);
                                f(pow, f14);
                                canvas.drawText(str, (((float) this.r) * pow) + ((float) this.R), (float) this.q, this.f2290j);
                                canvas.restore();
                            } else {
                                canvas.save();
                                canvas.clipRect(0.0f, 0.0f, (float) this.J, this.B - cos);
                                canvas.scale(1.0f, ((float) Math.sin(d2)) * 1.0f);
                                canvas.drawText(str, (float) this.Q, ((float) this.q) - this.S, this.f2291k);
                                canvas.restore();
                                canvas.save();
                                canvas.clipRect(0.0f, this.B - cos, (float) this.J, (float) ((int) this.s));
                                canvas.scale(1.0f, ((float) Math.sin(d2)) * 0.8f);
                                f(pow, f14);
                                canvas.drawText(str, (float) this.R, (float) this.q, this.f2290j);
                                canvas.restore();
                            }
                        } else {
                            canvas.save();
                            canvas.clipRect(0.0f, 0.0f, (float) this.J, this.A - cos);
                            canvas.scale(1.0f, ((float) Math.sin(d2)) * 0.8f);
                            f(pow, f14);
                            canvas.drawText(str, (float) this.R, (float) this.q, this.f2290j);
                            canvas.restore();
                            canvas.save();
                            canvas.clipRect(0.0f, this.A - cos, (float) this.J, (float) ((int) this.s));
                            canvas.scale(1.0f, ((float) Math.sin(d2)) * 1.0f);
                            canvas.drawText(str, (float) this.Q, ((float) this.q) - this.S, this.f2291k);
                            canvas.restore();
                        }
                        canvas.restore();
                        this.f2291k.setTextSize((float) this.o);
                    }
                    i8++;
                    f4 = f2;
                    i5 = 0;
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        this.O = i2;
        e();
        setMeasuredDimension(this.J, this.I);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x00a7, code lost:
        if (r0 > 0.0f) goto L_0x00a9;
     */
    @Override // android.view.View
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
        // Method dump skipped, instructions count: 203
        */
        throw new UnsupportedOperationException("Method not decompiled: com.contrarywind.view.WheelView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setAdapter(f.f.a.a aVar) {
        this.f2293m = aVar;
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
        this.f2292l.setColor(i2);
    }

    public void setDividerType(b bVar) {
        this.a = bVar;
    }

    public void setDividerWidth(int i2) {
        this.x = i2;
        this.f2292l.setStrokeWidth((float) i2);
    }

    public void setGravity(int i2) {
        this.P = i2;
    }

    public void setIsOptions(boolean z) {
        this.f2286f = z;
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
        this.f2285e = bVar;
    }

    public void setTextColorCenter(int i2) {
        this.v = i2;
        this.f2291k.setColor(i2);
    }

    public void setTextColorOut(int i2) {
        this.u = i2;
        this.f2290j.setColor(i2);
    }

    public final void setTextSize(float f2) {
        if (f2 > 0.0f) {
            int i2 = (int) (this.b.getResources().getDisplayMetrics().density * f2);
            this.o = i2;
            this.f2290j.setTextSize((float) i2);
            this.f2291k.setTextSize((float) this.o);
        }
    }

    public void setTextXOffset(int i2) {
        this.r = i2;
        if (i2 != 0) {
            this.f2291k.setTextScaleX(1.0f);
        }
    }

    public void setTotalScrollY(float f2) {
        this.D = f2;
    }

    public final void setTypeface(Typeface typeface) {
        this.t = typeface;
        this.f2290j.setTypeface(typeface);
        this.f2291k.setTypeface(this.t);
    }
}
