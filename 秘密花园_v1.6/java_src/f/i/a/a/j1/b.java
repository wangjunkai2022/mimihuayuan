package f.i.a.a.j1;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ItemTouchHelper;
import f.i.a.a.b0;
import f.i.a.a.h1.o0;
import f.i.a.a.j1.j;
import f.i.a.a.m1.h0;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AdaptiveTrackSelection.java */
/* loaded from: classes.dex */
public class b extends f.i.a.a.j1.c {

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC0084b f5470g;

    /* renamed from: h  reason: collision with root package name */
    public final long f5471h;

    /* renamed from: i  reason: collision with root package name */
    public final long f5472i;

    /* renamed from: j  reason: collision with root package name */
    public final long f5473j;

    /* renamed from: k  reason: collision with root package name */
    public final float f5474k;

    /* renamed from: l  reason: collision with root package name */
    public final long f5475l;

    /* renamed from: m  reason: collision with root package name */
    public final f.i.a.a.m1.h f5476m;
    public final b0[] n;
    public final int[] o;
    public final int[] p;
    public h q;
    public float r;
    public int s;
    public int t;
    public long u;

    /* compiled from: AdaptiveTrackSelection.java */
    /* renamed from: f.i.a.a.j1.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0084b {
    }

    /* compiled from: AdaptiveTrackSelection.java */
    /* loaded from: classes.dex */
    public static final class c implements InterfaceC0084b {
        public final f.i.a.a.l1.g a;
        public final float b;

        /* renamed from: c  reason: collision with root package name */
        public long f5477c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public long[][] f5478d;

        public c(f.i.a.a.l1.g gVar, float f2) {
            this.a = gVar;
            this.b = f2;
        }
    }

    /* compiled from: AdaptiveTrackSelection.java */
    /* loaded from: classes.dex */
    public static class d implements j.b {
        @Nullable
        public final f.i.a.a.l1.g a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5479c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5480d;

        /* renamed from: e  reason: collision with root package name */
        public final float f5481e;

        /* renamed from: f  reason: collision with root package name */
        public final float f5482f;

        /* renamed from: g  reason: collision with root package name */
        public final long f5483g;

        /* renamed from: h  reason: collision with root package name */
        public final f.i.a.a.m1.h f5484h;

        /* renamed from: i  reason: collision with root package name */
        public h f5485i;

        public d() {
            f.i.a.a.m1.h hVar = f.i.a.a.m1.h.a;
            this.a = null;
            this.b = 10000;
            this.f5479c = 25000;
            this.f5480d = 25000;
            this.f5481e = 0.75f;
            this.f5482f = 0.75f;
            this.f5483g = ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS;
            this.f5484h = hVar;
            this.f5485i = h.a;
        }

        @Override // f.i.a.a.j1.j.b
        public final j[] a(j.a[] aVarArr, f.i.a.a.l1.g gVar) {
            int i2;
            int[] iArr;
            f.i.a.a.l1.g gVar2;
            int i3;
            j.a[] aVarArr2 = aVarArr;
            f.i.a.a.l1.g gVar3 = this.a;
            if (gVar3 == null) {
                gVar3 = gVar;
            }
            j[] jVarArr = new j[aVarArr2.length];
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            while (i4 < aVarArr2.length) {
                j.a aVar = aVarArr2[i4];
                if (aVar == null) {
                    gVar2 = gVar3;
                    i3 = i4;
                } else {
                    int[] iArr2 = aVar.b;
                    if (iArr2.length > 1) {
                        i3 = i4;
                        gVar2 = gVar3;
                        b bVar = new b(aVar.a, iArr2, new c(gVar3, this.f5481e), this.b, this.f5479c, this.f5480d, this.f5482f, this.f5483g, this.f5484h, null);
                        bVar.q = this.f5485i;
                        arrayList.add(bVar);
                        jVarArr[i3] = bVar;
                    } else {
                        gVar2 = gVar3;
                        i3 = i4;
                        jVarArr[i3] = new e(aVar.a, iArr2[0], aVar.f5528c, aVar.f5529d);
                        int i5 = aVar.a.b[aVar.b[0]].f4093e;
                    }
                }
                i4 = i3 + 1;
                aVarArr2 = aVarArr;
                gVar3 = gVar2;
            }
            if (arrayList.size() > 1) {
                int size = arrayList.size();
                long[][] jArr = new long[size];
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    b bVar2 = (b) arrayList.get(i6);
                    jArr[i6] = new long[bVar2.f5486c.length];
                    int i7 = 0;
                    while (true) {
                        if (i7 < bVar2.f5486c.length) {
                            jArr[i6][i7] = bVar2.f5487d[(iArr.length - i7) - 1].f4093e;
                            i7++;
                        }
                    }
                }
                double[][] dArr = new double[size];
                for (int i8 = 0; i8 < size; i8++) {
                    dArr[i8] = new double[jArr[i8].length];
                    for (int i9 = 0; i9 < jArr[i8].length; i9++) {
                        dArr[i8][i9] = jArr[i8][i9] == -1 ? 0.0d : Math.log(jArr[i8][i9]);
                    }
                }
                double[][] dArr2 = new double[size];
                for (int i10 = 0; i10 < size; i10++) {
                    dArr2[i10] = new double[dArr[i10].length - 1];
                    if (dArr2[i10].length != 0) {
                        double d2 = dArr[i10][dArr[i10].length - 1] - dArr[i10][0];
                        int i11 = 0;
                        while (i11 < dArr[i10].length - 1) {
                            int i12 = i11 + 1;
                            dArr2[i10][i11] = d2 == 0.0d ? 1.0d : (((dArr[i10][i11] + dArr[i10][i12]) * 0.5d) - dArr[i10][0]) / d2;
                            i11 = i12;
                        }
                    }
                }
                int i13 = 0;
                for (int i14 = 0; i14 < size; i14++) {
                    i13 += dArr2[i14].length;
                }
                int i15 = i13 + 3;
                long[][][] jArr2 = (long[][][]) Array.newInstance(long.class, size, i15, 2);
                int[] iArr3 = new int[size];
                b.u(jArr2, 1, jArr, iArr3);
                int i16 = 2;
                while (true) {
                    i2 = i15 - 1;
                    if (i16 >= i2) {
                        break;
                    }
                    double d3 = Double.MAX_VALUE;
                    int i17 = 0;
                    for (int i18 = 0; i18 < size; i18++) {
                        if (iArr3[i18] + 1 != dArr[i18].length) {
                            double d4 = dArr2[i18][iArr3[i18]];
                            if (d4 < d3) {
                                i17 = i18;
                                d3 = d4;
                            }
                        }
                    }
                    iArr3[i17] = iArr3[i17] + 1;
                    b.u(jArr2, i16, jArr, iArr3);
                    i16++;
                }
                for (long[][] jArr3 : jArr2) {
                    int i19 = i15 - 2;
                    jArr3[i2][0] = jArr3[i19][0] * 2;
                    jArr3[i2][1] = jArr3[i19][1] * 2;
                }
                for (int i20 = 0; i20 < arrayList.size(); i20++) {
                    long[][] jArr4 = jArr2[i20];
                    c cVar = (c) ((b) arrayList.get(i20)).f5470g;
                    if (cVar != null) {
                        c.a.a.b.g.h.m(jArr4.length >= 2);
                        cVar.f5478d = jArr4;
                    } else {
                        throw null;
                    }
                }
            }
            return jVarArr;
        }
    }

    public b(o0 o0Var, int[] iArr, InterfaceC0084b interfaceC0084b, long j2, long j3, long j4, float f2, long j5, f.i.a.a.m1.h hVar, a aVar) {
        super(o0Var, iArr);
        this.f5470g = interfaceC0084b;
        this.f5471h = j2 * 1000;
        this.f5472i = j3 * 1000;
        this.f5473j = j4 * 1000;
        this.f5474k = f2;
        this.f5475l = j5;
        this.f5476m = hVar;
        this.r = 1.0f;
        this.t = 0;
        this.u = -9223372036854775807L;
        this.q = h.a;
        int i2 = this.b;
        this.n = new b0[i2];
        this.o = new int[i2];
        this.p = new int[i2];
        for (int i3 = 0; i3 < this.b; i3++) {
            b0 b0Var = this.f5487d[i3];
            b0[] b0VarArr = this.n;
            b0VarArr[i3] = b0Var;
            this.o[i3] = b0VarArr[i3].f4093e;
        }
    }

    public static void u(long[][][] jArr, int i2, long[][] jArr2, int[] iArr) {
        long j2 = 0;
        for (int i3 = 0; i3 < jArr.length; i3++) {
            jArr[i3][i2][1] = jArr2[i3][iArr[i3]];
            j2 += jArr[i3][i2][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i2][0] = j2;
        }
    }

    @Override // f.i.a.a.j1.c, f.i.a.a.j1.j
    public void d() {
        this.u = -9223372036854775807L;
    }

    @Override // f.i.a.a.j1.c, f.i.a.a.j1.j
    public int f(long j2, List<? extends f.i.a.a.h1.s0.l> list) {
        int i2;
        int i3;
        long c2 = this.f5476m.c();
        long j3 = this.u;
        if (!(j3 == -9223372036854775807L || c2 - j3 >= this.f5475l)) {
            return list.size();
        }
        this.u = c2;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long I = h0.I(list.get(size - 1).f4954f - j2, this.r);
        long j4 = this.f5473j;
        if (I < j4) {
            return size;
        }
        b0 b0Var = this.f5487d[t(c2, this.o)];
        for (int i4 = 0; i4 < size; i4++) {
            f.i.a.a.h1.s0.l lVar = list.get(i4);
            b0 b0Var2 = lVar.f4951c;
            if (h0.I(lVar.f4954f - j2, this.r) >= j4 && b0Var2.f4093e < b0Var.f4093e && (i2 = b0Var2.o) != -1 && i2 < 720 && (i3 = b0Var2.n) != -1 && i3 < 1280 && i2 < b0Var.o) {
                return i4;
            }
        }
        return size;
    }

    @Override // f.i.a.a.j1.c, f.i.a.a.j1.j
    public void h(long j2, long j3, long j4, List<? extends f.i.a.a.h1.s0.l> list, f.i.a.a.h1.s0.m[] mVarArr) {
        long c2 = this.f5476m.c();
        this.q.a(this.n, list, mVarArr, this.p);
        boolean z = true;
        if (this.t == 0) {
            this.t = 1;
            this.s = t(c2, this.p);
            return;
        }
        int i2 = this.s;
        int t = t(c2, this.p);
        this.s = t;
        if (t == i2) {
            return;
        }
        if (!s(i2, c2)) {
            b0[] b0VarArr = this.f5487d;
            b0 b0Var = b0VarArr[i2];
            b0 b0Var2 = b0VarArr[this.s];
            if (b0Var2.f4093e > b0Var.f4093e) {
                if (j3 < ((j4 == -9223372036854775807L || j4 > this.f5471h) ? false : false ? ((float) j4) * this.f5474k : this.f5471h)) {
                    this.s = i2;
                }
            }
            if (b0Var2.f4093e < b0Var.f4093e && j3 >= this.f5472i) {
                this.s = i2;
            }
        }
        if (this.s != i2) {
            this.t = 3;
        }
    }

    @Override // f.i.a.a.j1.j
    public int l() {
        return this.t;
    }

    @Override // f.i.a.a.j1.j
    public int m() {
        return this.s;
    }

    @Override // f.i.a.a.j1.c, f.i.a.a.j1.j
    public void n(float f2) {
        this.r = f2;
    }

    @Override // f.i.a.a.j1.j
    @Nullable
    public Object p() {
        return null;
    }

    public final int t(long j2, int[] iArr) {
        c cVar = (c) this.f5470g;
        long max = Math.max(0L, (((float) cVar.a.c()) * cVar.b) - cVar.f5477c);
        if (cVar.f5478d != null) {
            int i2 = 1;
            while (true) {
                long[][] jArr = cVar.f5478d;
                if (i2 >= jArr.length - 1 || jArr[i2][0] >= max) {
                    break;
                }
                i2++;
            }
            long[][] jArr2 = cVar.f5478d;
            long[] jArr3 = jArr2[i2 - 1];
            long[] jArr4 = jArr2[i2];
            max = jArr3[1] + ((((float) (max - jArr3[0])) / ((float) (jArr4[0] - jArr3[0]))) * ((float) (jArr4[1] - jArr3[1])));
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.b; i4++) {
            if (j2 == Long.MIN_VALUE || !s(i4, j2)) {
                b0 b0Var = this.f5487d[i4];
                if (((long) Math.round(((float) iArr[i4]) * this.r)) <= max) {
                    return i4;
                }
                i3 = i4;
            }
        }
        return i3;
    }
}
