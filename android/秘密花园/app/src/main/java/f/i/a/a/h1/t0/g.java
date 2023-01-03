package f.i.a.a.h1.t0;

import f.i.a.a.b1.b;
import f.i.a.a.h1.t0.k.h;
import f.i.a.a.m1.h0;

/* compiled from: DashWrappingSegmentIndex.java */
/* loaded from: classes.dex */
public final class g implements f {
    public final b a;
    public final long b;

    public g(b bVar, long j2) {
        this.a = bVar;
        this.b = j2;
    }

    @Override // f.i.a.a.h1.t0.f
    public long a(long j2, long j3) {
        return (long) h0.f(this.a.f4035e, j2 + this.b, true, true);
    }

    @Override // f.i.a.a.h1.t0.f
    public long b(long j2) {
        return this.a.f4035e[(int) j2] - this.b;
    }

    @Override // f.i.a.a.h1.t0.f
    public long c(long j2, long j3) {
        return this.a.f4034d[(int) j2];
    }

    @Override // f.i.a.a.h1.t0.f
    public h d(long j2) {
        b bVar = this.a;
        int i2 = (int) j2;
        return new h(null, bVar.f4033c[i2], (long) bVar.b[i2]);
    }

    @Override // f.i.a.a.h1.t0.f
    public boolean e() {
        return true;
    }

    @Override // f.i.a.a.h1.t0.f
    public long f() {
        return 0;
    }

    @Override // f.i.a.a.h1.t0.f
    public int g(long j2) {
        return this.a.a;
    }
}
