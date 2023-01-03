package f.d.a.s.h;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* compiled from: BitmapImageViewTarget.java */
/* loaded from: classes.dex */
public class b extends e<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Override // f.d.a.s.h.e
    public void j(Bitmap bitmap) {
        ((ImageView) this.a).setImageBitmap(bitmap);
    }
}
