package f.d.a.o.p.c;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.c;
import f.d.a.o.l;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
import f.d.a.u.i;

/* compiled from: BitmapTransformation.java */
/* loaded from: classes.dex */
public abstract class f implements l<Bitmap> {
    @Override // f.d.a.o.l
    @NonNull
    public final w<Bitmap> a(@NonNull Context context, @NonNull w<Bitmap> wVar, int i2, int i3) {
        if (i.m(i2, i3)) {
            d dVar = c.b(context).a;
            Bitmap bitmap = wVar.get();
            if (i2 == Integer.MIN_VALUE) {
                i2 = bitmap.getWidth();
            }
            if (i3 == Integer.MIN_VALUE) {
                i3 = bitmap.getHeight();
            }
            Bitmap c2 = c(dVar, bitmap, i2, i3);
            return bitmap.equals(c2) ? wVar : e.c(c2, dVar);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i2 + " or height: " + i3 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    public abstract Bitmap c(@NonNull d dVar, @NonNull Bitmap bitmap, int i2, int i3);
}
