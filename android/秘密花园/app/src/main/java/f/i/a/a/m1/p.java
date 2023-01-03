package f.i.a.a.m1;

import f.b.a.a.a;
import java.util.Arrays;

/* compiled from: LongArray.java */
/* loaded from: classes.dex */
public final class p {
    public int a;
    public long[] b = new long[32];

    public void a(long j2) {
        int i2 = this.a;
        long[] jArr = this.b;
        if (i2 == jArr.length) {
            this.b = Arrays.copyOf(jArr, i2 * 2);
        }
        long[] jArr2 = this.b;
        int i3 = this.a;
        this.a = i3 + 1;
        jArr2[i3] = j2;
    }

    public long b(int i2) {
        if (i2 >= 0 && i2 < this.a) {
            return this.b[i2];
        }
        StringBuilder p = a.p("Invalid index ", i2, ", size is ");
        p.append(this.a);
        throw new IndexOutOfBoundsException(p.toString());
    }
}
