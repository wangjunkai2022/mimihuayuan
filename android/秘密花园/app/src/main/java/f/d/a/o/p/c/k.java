package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.o.f;
import f.d.a.o.n.b0.d;
import java.security.MessageDigest;

/* compiled from: CircleCrop.java */
/* loaded from: classes.dex */
public class k extends f {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(f.a);

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // f.d.a.o.p.c.f
    public Bitmap c(@NonNull d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        return z.d(dVar, bitmap, i2, i3);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        return obj instanceof k;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return 1101716364;
    }
}
