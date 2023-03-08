package f.i.a.a.b1;

import f.i.a.a.b1.n;
import f.i.a.a.m1.h0;

/* compiled from: ConstantBitrateSeekMap.java */
/* loaded from: classes.dex */
public class c implements n {
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4112c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4113d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4114e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4115f;

    public c(long j2, long j3, int i2, int i3) {
        this.a = j2;
        this.b = j3;
        this.f4112c = i3 == -1 ? 1 : i3;
        this.f4114e = i2;
        if (j2 == -1) {
            this.f4113d = -1L;
            this.f4115f = -9223372036854775807L;
            return;
        }
        this.f4113d = j2 - j3;
        this.f4115f = c(j2, j3, i2);
    }

    public static long c(long j2, long j3, int i2) {
        return ((Math.max(0L, j2 - j3) * 8) * 1000000) / i2;
    }

    public long a(long j2) {
        return c(j2, this.b, this.f4114e);
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return this.f4113d != -1;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        long j3 = this.f4113d;
        if (j3 == -1) {
            return new n.a(new o(0L, this.b));
        }
        long j4 = this.f4112c;
        long p = this.b + h0.p((((this.f4114e * j2) / 8000000) / j4) * j4, 0L, j3 - j4);
        long a = a(p);
        o oVar = new o(a, p);
        if (a < j2) {
            int i2 = this.f4112c;
            if (i2 + p < this.a) {
                long j5 = p + i2;
                return new n.a(oVar, new o(a(j5), j5));
            }
        }
        return new n.a(oVar);
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.f4115f;
    }
}
