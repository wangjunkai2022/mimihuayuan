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
    public final long f4214c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4215d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4216e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final long[] f4217f;

    public f(long j2, int i2, long j3, long j4, @Nullable long[] jArr) {
        this.a = j2;
        this.b = i2;
        this.f4214c = j3;
        this.f4217f = jArr;
        this.f4215d = j4;
        this.f4216e = j4 != -1 ? j2 + j4 : -1L;
    }

    @Override // f.i.a.a.b1.t.d.a
    public long b(long j2) {
        long j3 = j2 - this.a;
        if (!g() || j3 <= this.b) {
            return 0L;
        }
        long[] jArr = this.f4217f;
        h.t(jArr);
        double d2 = (j3 * 256.0d) / this.f4215d;
        int f2 = h0.f(jArr, (long) d2, true, true);
        long j4 = this.f4214c;
        long j5 = (f2 * j4) / 100;
        long j6 = jArr[f2];
        int i2 = f2 + 1;
        long j7 = (j4 * i2) / 100;
        long j8 = f2 == 99 ? 256L : jArr[i2];
        return Math.round((j6 == j8 ? 0.0d : (d2 - j6) / (j8 - j6)) * (j7 - j5)) + j5;
    }

    @Override // f.i.a.a.b1.t.d.a
    public long e() {
        return this.f4216e;
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return this.f4217f != null;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        long[] jArr;
        if (!g()) {
            return new n.a(new o(0L, this.a + this.b));
        }
        long p = h0.p(j2, 0L, this.f4214c);
        double d2 = (p * 100.0d) / this.f4214c;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i2 = (int) d2;
                long[] jArr2 = this.f4217f;
                h.t(jArr2);
                double d4 = jArr2[i2];
                d3 = d4 + (((i2 == 99 ? 256.0d : jArr[i2 + 1]) - d4) * (d2 - i2));
            }
        }
        return new n.a(new o(p, this.a + h0.p(Math.round((d3 / 256.0d) * this.f4215d), this.b, this.f4215d - 1)));
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.f4214c;
    }
}
