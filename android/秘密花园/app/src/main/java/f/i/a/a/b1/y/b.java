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
    public final int f4515c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4516d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4517e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4518f;

    /* renamed from: g  reason: collision with root package name */
    public int f4519g = -1;

    /* renamed from: h  reason: collision with root package name */
    public long f4520h = -1;

    public b(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.a = i2;
        this.b = i3;
        this.f4515c = i4;
        this.f4516d = i5;
        this.f4517e = i6;
        this.f4518f = i7;
    }

    public long b(long j2) {
        return (Math.max(0L, j2 - ((long) this.f4519g)) * 1000000) / ((long) this.f4515c);
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return true;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        long j3 = this.f4520h - ((long) this.f4519g);
        int i2 = this.f4516d;
        long p = h0.p((((((long) this.f4515c) * j2) / 1000000) / ((long) i2)) * ((long) i2), 0, j3 - ((long) i2));
        long j4 = ((long) this.f4519g) + p;
        long b = b(j4);
        o oVar = new o(b, j4);
        if (b < j2) {
            int i3 = this.f4516d;
            if (p != j3 - ((long) i3)) {
                long j5 = j4 + ((long) i3);
                return new n.a(oVar, new o(b(j5), j5));
            }
        }
        return new n.a(oVar);
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return (((this.f4520h - ((long) this.f4519g)) / ((long) this.f4516d)) * 1000000) / ((long) this.b);
    }
}
