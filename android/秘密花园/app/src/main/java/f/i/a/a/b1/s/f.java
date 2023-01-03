package f.i.a.a.b1.s;

import f.i.a.a.b1.d;
import java.io.IOException;

/* compiled from: VarintReader.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: d  reason: collision with root package name */
    public static final long[] f4123d = {128, 64, 32, 16, 8, 4, 2, 1};
    public final byte[] a = new byte[8];
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f4124c;

    public static long a(byte[] bArr, int i2, boolean z) {
        long j2 = ((long) bArr[0]) & 255;
        if (z) {
            j2 &= ~f4123d[i2 - 1];
        }
        for (int i3 = 1; i3 < i2; i3++) {
            j2 = (j2 << 8) | (((long) bArr[i3]) & 255);
        }
        return j2;
    }

    public static int b(int i2) {
        int i3 = 0;
        while (true) {
            long[] jArr = f4123d;
            if (i3 >= jArr.length) {
                return -1;
            }
            if ((jArr[i3] & ((long) i2)) != 0) {
                return i3 + 1;
            }
            i3++;
        }
    }

    public long c(d dVar, boolean z, boolean z2, int i2) throws IOException, InterruptedException {
        if (this.b == 0) {
            if (!dVar.g(this.a, 0, 1, z)) {
                return -1;
            }
            int b = b(this.a[0] & 255);
            this.f4124c = b;
            if (b != -1) {
                this.b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i3 = this.f4124c;
        if (i3 > i2) {
            this.b = 0;
            return -2;
        }
        if (i3 != 1) {
            dVar.g(this.a, 1, i3 - 1, false);
        }
        this.b = 0;
        return a(this.a, this.f4124c, z2);
    }
}
