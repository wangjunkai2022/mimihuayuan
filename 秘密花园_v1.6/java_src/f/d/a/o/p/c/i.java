package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* compiled from: CenterCrop.java */
/* loaded from: classes.dex */
public class i extends f {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(f.d.a.o.f.a);

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // f.d.a.o.p.c.f
    public Bitmap c(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        return z.b(dVar, bitmap, i2, i3);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return -599754482;
    }
}
