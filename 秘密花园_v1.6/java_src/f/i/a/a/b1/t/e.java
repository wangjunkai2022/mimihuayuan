package f.i.a.a.b1.t;

import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.b1.t.d;
import f.i.a.a.m1.h0;
/* compiled from: VbriSeeker.java */
/* loaded from: classes.dex */
public final class e implements d.a {
    public final long[] a;
    public final long[] b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4221c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4222d;

    public e(long[] jArr, long[] jArr2, long j2, long j3) {
        this.a = jArr;
        this.b = jArr2;
        this.f4221c = j2;
        this.f4222d = j3;
    }

    @Override // f.i.a.a.b1.t.d.a
    public long b(long j2) {
        return this.a[h0.f(this.b, j2, true, true)];
    }

    @Override // f.i.a.a.b1.t.d.a
    public long e() {
        return this.f4222d;
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return true;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        int f2 = h0.f(this.a, j2, true, true);
        o oVar = new o(this.a[f2], this.b[f2]);
        if (oVar.a < j2) {
            long[] jArr = this.a;
            if (f2 != jArr.length - 1) {
                int i2 = f2 + 1;
                return new n.a(oVar, new o(jArr[i2], this.b[i2]));
            }
        }
        return new n.a(oVar);
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.f4221c;
    }
}
