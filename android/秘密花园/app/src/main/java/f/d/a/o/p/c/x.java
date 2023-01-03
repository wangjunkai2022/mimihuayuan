package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.f;
import f.d.a.o.n.b0.d;
import f.d.a.u.i;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: RoundedCorners.java */
/* loaded from: classes.dex */
public final class x extends f {

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f3708c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(f.a);
    public final int b;

    public x(int i2) {
        h.o(i2 > 0, "roundingRadius must be greater than 0.");
        this.b = i2;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f3708c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // f.d.a.o.p.c.f
    public Bitmap c(@NonNull d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        return z.i(dVar, bitmap, this.b);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (!(obj instanceof x) || this.b != ((x) obj).b) {
            return false;
        }
        return true;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return (i.i(this.b) * 31) - 569625254;
    }
}
