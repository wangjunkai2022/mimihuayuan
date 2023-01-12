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
    public int f2345c;

    /* renamed from: d  reason: collision with root package name */
    public int f2346d;

    /* renamed from: e  reason: collision with root package name */
    public int f2347e;

    /* renamed from: f  reason: collision with root package name */
    public Paint f2348f;

    /* renamed from: g  reason: collision with root package name */
    public Handler f2349g;

    /* renamed from: h  reason: collision with root package name */
    public int f2350h;

    public VideoLoadingProgressbar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2345c = 100;
        this.f2346d = 100;
        this.f2347e = Color.parseColor(e.a("FAYGAA4XXA=="));
        this.f2350h = 20;
        Paint paint = new Paint();
        this.f2348f = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f2348f.setAntiAlias(true);
        this.f2348f.setColor(this.f2347e);
        this.f2349g = new a(this);
        if (getVisibility() == 0) {
            this.f2349g.sendEmptyMessageDelayed(1, this.f2350h);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2349g.removeCallbacksAndMessages(null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i2 = this.f2345c + 30;
        this.f2345c = i2;
        if (i2 > this.a) {
            this.f2345c = this.f2346d;
        }
        int i3 = 255 - ((this.f2345c * 255) / this.a);
        if (i3 < 10) {
            i3 = 10;
        }
        this.f2348f.setAlpha(i3);
        int i4 = this.a;
        int i5 = this.f2345c;
        canvas.drawLine((i4 / 2.0f) - (i5 / 2.0f), 0.0f, (i5 / 2.0f) + (i4 / 2.0f), this.b, this.f2348f);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.a = i2;
        this.b = i3;
        this.f2348f.setStrokeWidth(i3);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            this.f2349g.sendEmptyMessageDelayed(1, this.f2350h);
        } else {
            this.f2349g.removeCallbacksAndMessages(null);
        }
    }
}
