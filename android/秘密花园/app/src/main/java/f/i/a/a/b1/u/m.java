package f.i.a.a.b1.u;

import c.a.a.b.g.h;
import f.i.a.a.m1.h0;

/* compiled from: TrackSampleTable.java */
/* loaded from: classes.dex */
public final class m {
    public final j a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f4235c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f4236d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4237e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f4238f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f4239g;

    /* renamed from: h  reason: collision with root package name */
    public final long f4240h;

    public m(j jVar, long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2, long j2) {
        boolean z = false;
        h.m(iArr.length == jArr2.length);
        h.m(jArr.length == jArr2.length);
        h.m(iArr2.length == jArr2.length ? true : z);
        this.a = jVar;
        this.f4235c = jArr;
        this.f4236d = iArr;
        this.f4237e = i2;
        this.f4238f = jArr2;
        this.f4239g = iArr2;
        this.f4240h = j2;
        this.b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j2) {
        for (int f2 = h0.f(this.f4238f, j2, true, false); f2 >= 0; f2--) {
            if ((this.f4239g[f2] & 1) != 0) {
                return f2;
            }
        }
        return -1;
    }

    public int b(long j2) {
        for (int c2 = h0.c(this.f4238f, j2, true, false); c2 < this.f4238f.length; c2++) {
            if ((this.f4239g[c2] & 1) != 0) {
                return c2;
            }
        }
        return -1;
    }
}
