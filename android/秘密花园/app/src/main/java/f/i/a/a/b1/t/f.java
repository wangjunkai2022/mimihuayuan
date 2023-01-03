package f.i.a.a.b1.t;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.b1.t.d;
import f.i.a.a.m1.h0;

/* compiled from: XingSeeker.java */
/* loaded from: classes.dex */
public final class f implements d.a {
    public final long a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4139c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4140d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4141e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final long[] f4142f;

    public f(long j2, int i2, long j3, long j4, @Nullable long[] jArr) {
        this.a = j2;
        this.b = i2;
        this.f4139c = j3;
        this.f4142f = jArr;
        this.f4140d = j4;
        this.f4141e = j4 != -1 ? j2 + j4 : -1;
    }

    @Override // f.i.a.a.b1.t.d.a
    public long b(long j2) {
        long j3;
        long j4 = j2 - this.a;
        if (!g() || j4 <= ((long) this.b)) {
            return 0;
        }
        long[] jArr = this.f4142f;
        h.t(jArr);
        double d2 = (((double) j4) * 256.0d) / ((double) this.f4140d);
        int f2 = h0.f(jArr, (long) d2, true, true);
        long j5 = this.f4139c;
        long j6 = (((long) f2) * j5) / 100;
        long j7 = jArr[f2];
        int i2 = f2 + 1;
        long j8 = (j5 * ((long) i2)) / 100;
        if (f2 == 99) {
            j3 = 256;
        } else {
            j3 = jArr[i2];
        }
        return Math.round((j7 == j3 ? 0.0d : (d2 - ((double) j7)) / ((double) (j3 - j7))) * ((double) (j8 - j6))) + j6;
    }

    @Override // f.i.a.a.b1.t.d.a
    public long e() {
        return this.f4141e;
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return this.f4142f != null;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        double d2;
        if (!g()) {
            return new n.a(new o(0, this.a + ((long) this.b)));
        }
        long p = h0.p(j2, 0, this.f4139c);
        double d3 = (((double) p) * 100.0d) / ((double) this.f4139c);
        double d4 = 0.0d;
        if (d3 > 0.0d) {
            if (d3 >= 100.0d) {
                d4 = 256.0d;
            } else {
                int i2 = (int) d3;
                long[] jArr = this.f4142f;
                h.t(jArr);
                long[] jArr2 = jArr;
                double d5 = (double) jArr2[i2];
                if (i2 == 99) {
                    d2 = 256.0d;
                } else {
                    d2 = (double) jArr2[i2 + 1];
                }
                d4 = d5 + ((d2 - d5) * (d3 - ((double) i2)));
            }
        }
        return new n.a(new o(p, this.a + h0.p(Math.round((d4 / 256.0d) * ((double) this.f4140d)), (long) this.b, this.f4140d - 1)));
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.f4139c;
    }
}
