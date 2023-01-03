package f.j.a.a.k;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.NonNull;

/* compiled from: ArrowDrawable.java */
/* loaded from: classes.dex */
public class a extends d {
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f6166c = 0;

    /* renamed from: d  reason: collision with root package name */
    public Path f6167d = new Path();

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        if (this.b != width || this.f6166c != height) {
            this.f6167d.reset();
            float f2 = (width * 30) / 225;
            float f3 = f2 * 0.70710677f;
            float f4 = f2 / 0.70710677f;
            float f5 = width;
            float f6 = f5 / 2.0f;
            float f7 = height;
            this.f6167d.moveTo(f6, f7);
            float f8 = f7 / 2.0f;
            this.f6167d.lineTo(0.0f, f8);
            float f9 = f8 - f3;
            this.f6167d.lineTo(f3, f9);
            float f10 = f2 / 2.0f;
            float f11 = f6 - f10;
            float f12 = (f7 - f4) - f10;
            this.f6167d.lineTo(f11, f12);
            this.f6167d.lineTo(f11, 0.0f);
            float f13 = f6 + f10;
            this.f6167d.lineTo(f13, 0.0f);
            this.f6167d.lineTo(f13, f12);
            this.f6167d.lineTo(f5 - f3, f9);
            this.f6167d.lineTo(f5, f8);
            this.f6167d.close();
            this.b = width;
            this.f6166c = height;
        }
        canvas.drawPath(this.f6167d, this.a);
    }
}
