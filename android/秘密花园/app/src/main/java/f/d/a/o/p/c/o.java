package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.b0.e;
import f.d.a.o.n.w;
import java.util.concurrent.locks.Lock;

/* compiled from: DrawableToBitmapConverter.java */
/* loaded from: classes.dex */
public final class o {
    public static final d a = new a();

    /* compiled from: DrawableToBitmapConverter.java */
    /* loaded from: classes.dex */
    public class a extends e {
        @Override // f.d.a.o.n.b0.e, f.d.a.o.n.b0.d
        public void b(Bitmap bitmap) {
        }
    }

    /* JADX INFO: finally extract failed */
    @Nullable
    public static w<Bitmap> a(d dVar, Drawable drawable, int i2, int i3) {
        Drawable current = drawable.getCurrent();
        boolean z = false;
        Bitmap bitmap = null;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (!(current instanceof Animatable)) {
            if (i2 != Integer.MIN_VALUE || current.getIntrinsicWidth() > 0) {
                if (i3 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                    if (current.getIntrinsicWidth() > 0) {
                        i2 = current.getIntrinsicWidth();
                    }
                    if (current.getIntrinsicHeight() > 0) {
                        i3 = current.getIntrinsicHeight();
                    }
                    Lock lock = z.f3711e;
                    lock.lock();
                    Bitmap a2 = dVar.a(i2, i3, Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(a2);
                        current.setBounds(0, 0, i2, i3);
                        current.draw(canvas);
                        canvas.setBitmap(null);
                        lock.unlock();
                        bitmap = a2;
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                    String str = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height";
                }
            } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                String str2 = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width";
            }
            z = true;
        }
        if (!z) {
            dVar = a;
        }
        return e.c(bitmap, dVar);
    }
}
