package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: RoundedCorners.java */
/* loaded from: classes.dex */
public final class x extends f {

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f3787c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(f.d.a.o.f.a);
    public final int b;

    public x(int i2) {
        c.a.a.b.g.h.o(i2 > 0, "roundingRadius must be greater than 0.");
        this.b = i2;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f3787c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // f.d.a.o.p.c.f
    public Bitmap c(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        return z.i(dVar, bitmap, this.b);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        return (obj instanceof x) && this.b == ((x) obj).b;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return (f.d.a.u.i.i(this.b) * 31) - 569625254;
    }
}
