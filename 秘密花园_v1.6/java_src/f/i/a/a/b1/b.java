package f.i.a.a.b1;

import f.i.a.a.b1.n;
import f.i.a.a.m1.h0;
import java.util.Arrays;
/* compiled from: ChunkIndex.java */
/* loaded from: classes.dex */
public final class b implements n {
    public final int a;
    public final int[] b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f4117c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f4118d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f4119e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4120f;

    public b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.f4117c = jArr;
        this.f4118d = jArr2;
        this.f4119e = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length > 0) {
            int i2 = length - 1;
            this.f4120f = jArr2[i2] + jArr3[i2];
            return;
        }
        this.f4120f = 0L;
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return true;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        int f2 = h0.f(this.f4119e, j2, true, true);
        o oVar = new o(this.f4119e[f2], this.f4117c[f2]);
        if (oVar.a < j2 && f2 != this.a - 1) {
            int i2 = f2 + 1;
            return new n.a(oVar, new o(this.f4119e[i2], this.f4117c[i2]));
        }
        return new n.a(oVar);
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.f4120f;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ChunkIndex(length=");
        o.append(this.a);
        o.append(", sizes=");
        o.append(Arrays.toString(this.b));
        o.append(", offsets=");
        o.append(Arrays.toString(this.f4117c));
        o.append(", timeUs=");
        o.append(Arrays.toString(this.f4119e));
        o.append(", durationsUs=");
        o.append(Arrays.toString(this.f4118d));
        o.append(")");
        return o.toString();
    }
}
