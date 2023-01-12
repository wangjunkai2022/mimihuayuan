package f.d.a.o.n.b0;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* compiled from: BitmapPool.java */
/* loaded from: classes.dex */
public interface d {
    @NonNull
    Bitmap a(int i2, int i3, Bitmap.Config config);

    void b(Bitmap bitmap);

    void c();

    @NonNull
    Bitmap d(int i2, int i3, Bitmap.Config config);

    void trimMemory(int i2);
}
