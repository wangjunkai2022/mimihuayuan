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
    public final float f5551c;

    /* renamed from: d  reason: collision with root package name */
    public final float f5552d;

    /* renamed from: e  reason: collision with root package name */
    public final float f5553e;

    /* renamed from: f  reason: collision with root package name */
    public final TextPaint f5554f;

    /* renamed from: g  reason: collision with root package name */
    public final Paint f5555g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f5556h;

    /* renamed from: i  reason: collision with root package name */
    public Layout.Alignment f5557i;

    /* renamed from: j  reason: collision with root package name */
    public Bitmap f5558j;

    /* renamed from: k  reason: collision with root package name */
    public float f5559k;

    /* renamed from: l  reason: collision with root package name */
    public int f5560l;

    /* renamed from: m  reason: collision with root package name */
    public int f5561m;
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
        this.f5553e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f5552d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.a = round;
        this.b = round;
        this.f5551c = round;
        TextPaint textPaint = new TextPaint();
        this.f5554f = textPaint;
        textPaint.setAntiAlias(true);
        this.f5554f.setSubpixelText(true);
        Paint paint = new Paint();
        this.f5555g = paint;
        paint.setAntiAlias(true);
        this.f5555g.setStyle(Paint.Style.FILL);
    }

    public final void a(Canvas canvas, boolean z) {
        if (z) {
            StaticLayout staticLayout = this.F;
            if (staticLayout == null) {
                return;
            }
            int save = canvas.save();
            canvas.translate(this.G, this.H);
            if (Color.alpha(this.v) > 0) {
                this.f5555g.setColor(this.v);
                canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f5555g);
            }
            int i2 = this.x;
            if (i2 == 1) {
                this.f5554f.setStrokeJoin(Paint.Join.ROUND);
                this.f5554f.setStrokeWidth(this.a);
                this.f5554f.setColor(this.w);
                this.f5554f.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (i2 == 2) {
                TextPaint textPaint = this.f5554f;
                float f2 = this.b;
                float f3 = this.f5551c;
                textPaint.setShadowLayer(f2, f3, f3, this.w);
            } else if (i2 == 3 || i2 == 4) {
                boolean z2 = this.x == 3;
                int i3 = z2 ? -1 : this.w;
                int i4 = z2 ? this.w : -1;
                float f4 = this.b / 2.0f;
                this.f5554f.setColor(this.t);
                this.f5554f.setStyle(Paint.Style.FILL);
                float f5 = -f4;
                this.f5554f.setShadowLayer(this.b, f5, f5, i3);
                staticLayout.draw(canvas);
                this.f5554f.setShadowLayer(this.b, f4, f4, i4);
            }
            this.f5554f.setColor(this.t);
            this.f5554f.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            this.f5554f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
            return;
        }
        canvas.drawBitmap(this.f5558j, (Rect) null, this.J, (Paint) null);
    }
}
