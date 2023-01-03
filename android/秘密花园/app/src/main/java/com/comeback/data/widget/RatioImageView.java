package com.comeback.data.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.comeback.secret.garden.R;
import f.e.a.d;

/* loaded from: classes.dex */
public class RatioImageView extends AppCompatImageView {
    public float a;
    public Path b;

    /* renamed from: c  reason: collision with root package name */
    public float f2268c;

    public RatioImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Path path = new Path();
        this.b = path;
        this.b = path;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, d.RatioImageView, R.attr.ratio, 0);
        try {
            this.a = obtainStyledAttributes.getFloat(2, 1.0f);
            this.f2268c = obtainStyledAttributes.getDimension(1, 0.0f);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f2268c > 0.0f) {
            canvas.clipPath(this.b);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onDrawForeground(Canvas canvas) {
        if (this.f2268c > 0.0f) {
            canvas.clipPath(this.b);
        }
        super.onDrawForeground(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, (int) (((float) size) * this.a));
        if (this.f2268c > 0.0f) {
            this.b.reset();
            Path path = this.b;
            RectF rectF = new RectF(0.0f, 0.0f, (float) getMeasuredWidth(), (float) getMeasuredHeight());
            float f2 = this.f2268c;
            path.addRoundRect(rectF, f2, f2, Path.Direction.CCW);
        }
    }

    public void setRatio(float f2) {
        this.a = f2;
        postInvalidate();
    }
}
