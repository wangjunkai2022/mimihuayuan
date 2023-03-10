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

    /* renamed from: c  reason: collision with root package name */
    public int f2349c;

    /* renamed from: d  reason: collision with root package name */
    public int f2350d;

    /* renamed from: e  reason: collision with root package name */
    public int f2351e;

    /* renamed from: f  reason: collision with root package name */
    public Paint f2352f;

    /* renamed from: g  reason: collision with root package name */
    public Handler f2353g;

    /* renamed from: h  reason: collision with root package name */
    public int f2354h;

    public VideoLoadingProgressbar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2349c = 100;
        this.f2350d = 100;
        this.f2351e = Color.parseColor(e.a("FAYGAA4XXA=="));
        this.f2354h = 20;
        Paint paint = new Paint();
        this.f2352f = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f2352f.setAntiAlias(true);
        this.f2352f.setColor(this.f2351e);
        this.f2353g = new a(this);
        if (getVisibility() == 0) {
            this.f2353g.sendEmptyMessageDelayed(1, this.f2354h);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2353g.removeCallbacksAndMessages(null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i2 = this.f2349c + 30;
        this.f2349c = i2;
        if (i2 > this.a) {
            this.f2349c = this.f2350d;
        }
        int i3 = 255 - ((this.f2349c * 255) / this.a);
        if (i3 < 10) {
            i3 = 10;
        }
        this.f2352f.setAlpha(i3);
        int i4 = this.a;
        int i5 = this.f2349c;
        canvas.drawLine((i4 / 2.0f) - (i5 / 2.0f), 0.0f, (i5 / 2.0f) + (i4 / 2.0f), this.b, this.f2352f);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.a = i2;
        this.b = i3;
        this.f2352f.setStrokeWidth(i3);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            this.f2353g.sendEmptyMessageDelayed(1, this.f2354h);
        } else {
            this.f2353g.removeCallbacksAndMessages(null);
        }
    }
}
