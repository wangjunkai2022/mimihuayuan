package f.e.a.i.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import f.d.a.o.p.c.f;
import f.e.a.e;
import java.security.MessageDigest;

/* compiled from: GrayscaleTransformation.java */
/* loaded from: classes.dex */
public class d extends f {
    public static final String b = e.a("RwMADwoUXF0SC1FJPxgCEkQBAggOJ0tSHRVSCAoHAh9eDQ1V");

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(b.getBytes(f.d.a.o.f.a));
    }

    @Override // f.d.a.o.p.c.f
    public Bitmap c(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        Bitmap a = dVar.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        a.setDensity(bitmap.getDensity());
        Canvas canvas = new Canvas(a);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return a;
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        return obj instanceof d;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return b.hashCode();
    }

    public String toString() {
        return e.a("cBACHRgQWF8WMkYGFhkFBEUPAhACHFcbWg==");
    }
}
