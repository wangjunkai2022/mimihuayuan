package f.i.a.a.b1.s;

import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: Sniffer.java */
/* loaded from: classes.dex */
public final class e {
    public final u a = new u(8);
    public int b;

    public final long a(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        int i2 = 0;
        dVar.d(this.a.a, 0, 1, false);
        int i3 = this.a.a[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = 128;
        int i5 = 0;
        while ((i3 & i4) == 0) {
            i4 >>= 1;
            i5++;
        }
        int i6 = i3 & (~i4);
        dVar.d(this.a.a, 1, i5, false);
        while (i2 < i5) {
            i2++;
            i6 = (this.a.a[i2] & 255) + (i6 << 8);
        }
        this.b = i5 + 1 + this.b;
        return i6;
    }
}
