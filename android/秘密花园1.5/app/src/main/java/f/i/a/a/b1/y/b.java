package f.i.a.a.b1.y;

import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.m1.h0;

/* compiled from: WavHeader.java */
/* loaded from: classes.dex */
public final class b implements n {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4590c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4591d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4592e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4593f;

    /* renamed from: g  reason: collision with root package name */
    public int f4594g = -1;

    /* renamed from: h  reason: collision with root package name */
    public long f4595h = -1;

    public b(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.a = i2;
        this.b = i3;
        this.f4590c = i4;
        this.f4591d = i5;
        this.f4592e = i6;
        this.f4593f = i7;
    }

    public long b(long j2) {
        return (Math.max(0L, j2 - this.f4594g) * 1000000) / this.f4590c;
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return true;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        long j3 = this.f4595h - this.f4594g;
        int i2 = this.f4591d;
        long p = h0.p((((this.f4590c * j2) / 1000000) / i2) * i2, 0L, j3 - i2);
        long j4 = this.f4594g + p;
        long b = b(j4);
        o oVar = new o(b, j4);
        if (b < j2) {
            int i3 = this.f4591d;
            if (p != j3 - i3) {
                long j5 = j4 + i3;
                return new n.a(oVar, new o(b(j5), j5));
            }
        }
        return new n.a(oVar);
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return (((this.f4595h - this.f4594g) / this.f4591d) * 1000000) / this.b;
    }
}
