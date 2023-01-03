package f.d.a.o.n.b0;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* compiled from: BitmapPoolAdapter.java */
/* loaded from: classes.dex */
public class e implements d {
    @Override // f.d.a.o.n.b0.d
    @NonNull
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // f.d.a.o.n.b0.d
    public void b(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // f.d.a.o.n.b0.d
    public void c() {
    }

    @Override // f.d.a.o.n.b0.d
    @NonNull
    public Bitmap d(int i2, int i3, Bitmap.Config config) {
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // f.d.a.o.n.b0.d
    public void trimMemory(int i2) {
    }
}
