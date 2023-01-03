package com.comeback.data.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.e.a.e;
import f.e.a.m.a;

/* loaded from: classes.dex */
public class VideoLoadingProgressbar extends View {
    public int a;
    public int b;

    /* renamed from: f  reason: collision with root package name */
    public Paint f2273f;

    /* renamed from: c  reason: collision with root package name */
    public int f2270c = 100;

    /* renamed from: d  reason: collision with root package name */
    public int f2271d = 100;

    /* renamed from: e  reason: collision with root package name */
    public int f2272e = Color.parseColor(e.a("FAYGAA4XXA=="));

    /* renamed from: h  reason: collision with root package name */
    public int f2275h = 20;

    /* renamed from: g  reason: collision with root package name */
    public Handler f2274g = new a(this);

    public VideoLoadingProgressbar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Paint paint = new Paint();
        this.f2273f = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f2273f.setAntiAlias(true);
        this.f2273f.setColor(this.f2272e);
        if (getVisibility() == 0) {
            this.f2274g.sendEmptyMessageDelayed(1, (long) this.f2275h);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2274g.removeCallbacksAndMessages(null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i2 = this.f2270c + 30;
        this.f2270c = i2;
        if (i2 > this.a) {
            this.f2270c = this.f2271d;
        }
        int i3 = 255 - ((this.f2270c * 255) / this.a);
        if (i3 < 10) {
            i3 = 10;
        }
        this.f2273f.setAlpha(i3);
        int i4 = this.a;
        int i5 = this.f2270c;
        canvas.drawLine((((float) i4) / 2.0f) - (((float) i5) / 2.0f), 0.0f, (((float) i5) / 2.0f) + (((float) i4) / 2.0f), (float) this.b, this.f2273f);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.a = i2;
        this.b = i3;
        this.f2273f.setStrokeWidth((float) i3);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            this.f2274g.sendEmptyMessageDelayed(1, (long) this.f2275h);
        } else {
            this.f2274g.removeCallbacksAndMessages(null);
        }
    }
}
