package f.i.a.a.k1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

/* compiled from: SubtitlePainter.java */
/* loaded from: classes.dex */
public final class f {
    public float A;
    public int B;
    public int C;
    public int D;
    public int E;
    public StaticLayout F;
    public int G;
    public int H;
    public int I;
    public Rect J;
    public final float a;
    public final float b;

    /* renamed from: c  reason: collision with root package name */
    public final float f5476c;

    /* renamed from: d  reason: collision with root package name */
    public final float f5477d;

    /* renamed from: e  reason: collision with root package name */
    public final float f5478e;

    /* renamed from: f  reason: collision with root package name */
    public final TextPaint f5479f;

    /* renamed from: g  reason: collision with root package name */
    public final Paint f5480g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f5481h;

    /* renamed from: i  reason: collision with root package name */
    public Layout.Alignment f5482i;

    /* renamed from: j  reason: collision with root package name */
    public Bitmap f5483j;

    /* renamed from: k  reason: collision with root package name */
    public float f5484k;

    /* renamed from: l  reason: collision with root package name */
    public int f5485l;

    /* renamed from: m  reason: collision with root package name */
    public int f5486m;
    public float n;
    public int o;
    public float p;
    public float q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public float y;
    public float z;

    public f(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f5478e = (float) obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f5477d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = (float) Math.round((((float) context.getResources().getDisplayMetrics().densityDpi) * 2.0f) / 160.0f);
        this.a = round;
        this.b = round;
        this.f5476c = round;
        TextPaint textPaint = new TextPaint();
        this.f5479f = textPaint;
        textPaint.setAntiAlias(true);
        this.f5479f.setSubpixelText(true);
        Paint paint = new Paint();
        this.f5480g = paint;
        paint.setAntiAlias(true);
        this.f5480g.setStyle(Paint.Style.FILL);
    }

    public final void a(Canvas canvas, boolean z) {
        int i2;
        if (z) {
            StaticLayout staticLayout = this.F;
            if (staticLayout != null) {
                int save = canvas.save();
                canvas.translate((float) this.G, (float) this.H);
                if (Color.alpha(this.v) > 0) {
                    this.f5480g.setColor(this.v);
                    canvas.drawRect((float) (-this.I), 0.0f, (float) (staticLayout.getWidth() + this.I), (float) staticLayout.getHeight(), this.f5480g);
                }
                int i3 = this.x;
                boolean z2 = true;
                if (i3 == 1) {
                    this.f5479f.setStrokeJoin(Paint.Join.ROUND);
                    this.f5479f.setStrokeWidth(this.a);
                    this.f5479f.setColor(this.w);
                    this.f5479f.setStyle(Paint.Style.FILL_AND_STROKE);
                    staticLayout.draw(canvas);
                } else if (i3 == 2) {
                    TextPaint textPaint = this.f5479f;
                    float f2 = this.b;
                    float f3 = this.f5476c;
                    textPaint.setShadowLayer(f2, f3, f3, this.w);
                } else if (i3 == 3 || i3 == 4) {
                    if (this.x != 3) {
                        z2 = false;
                    }
                    int i4 = -1;
                    if (z2) {
                        i2 = -1;
                    } else {
                        i2 = this.w;
                    }
                    if (z2) {
                        i4 = this.w;
                    }
                    float f4 = this.b / 2.0f;
                    this.f5479f.setColor(this.t);
                    this.f5479f.setStyle(Paint.Style.FILL);
                    float f5 = -f4;
                    this.f5479f.setShadowLayer(this.b, f5, f5, i2);
                    staticLayout.draw(canvas);
                    this.f5479f.setShadowLayer(this.b, f4, f4, i4);
                }
                this.f5479f.setColor(this.t);
                this.f5479f.setStyle(Paint.Style.FILL);
                staticLayout.draw(canvas);
                this.f5479f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                canvas.restoreToCount(save);
                return;
            }
            return;
        }
        canvas.drawBitmap(this.f5483j, (Rect) null, this.J, (Paint) null);
    }
}
