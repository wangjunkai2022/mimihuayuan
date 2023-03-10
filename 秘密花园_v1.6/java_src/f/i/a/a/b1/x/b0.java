package f.i.a.a.b1.x;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import f.i.a.a.b1.n;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: TsExtractor.java */
/* loaded from: classes.dex */
public final class b0 implements f.i.a.a.b1.g {
    public static final long s = h0.C("AC-3");
    public static final long t = h0.C("EAC3");
    public static final long u = h0.C("AC-4");
    public static final long v = h0.C("HEVC");
    public final int a;
    public final List<e0> b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.m1.u f4394c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseIntArray f4395d;

    /* renamed from: e  reason: collision with root package name */
    public final c0.c f4396e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray<c0> f4397f;

    /* renamed from: g  reason: collision with root package name */
    public final SparseBooleanArray f4398g;

    /* renamed from: h  reason: collision with root package name */
    public final SparseBooleanArray f4399h;

    /* renamed from: i  reason: collision with root package name */
    public final a0 f4400i;

    /* renamed from: j  reason: collision with root package name */
    public z f4401j;

    /* renamed from: k  reason: collision with root package name */
    public f.i.a.a.b1.h f4402k;

    /* renamed from: l  reason: collision with root package name */
    public int f4403l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4404m;
    public boolean n;
    public boolean o;
    public c0 p;
    public int q;
    public int r;

    /* compiled from: TsExtractor.java */
    /* loaded from: classes.dex */
    public class a implements v {
        public final f.i.a.a.m1.t a = new f.i.a.a.m1.t(new byte[4]);

        public a() {
        }

        @Override // f.i.a.a.b1.x.v
        public void b(e0 e0Var, f.i.a.a.b1.h hVar, c0.d dVar) {
        }

        @Override // f.i.a.a.b1.x.v
        public void c(f.i.a.a.m1.u uVar) {
            if (uVar.p() != 0) {
                return;
            }
            uVar.B(7);
            int a = uVar.a() / 4;
            for (int i2 = 0; i2 < a; i2++) {
                uVar.b(this.a, 4);
                int f2 = this.a.f(16);
                this.a.l(3);
                if (f2 == 0) {
                    this.a.l(13);
                } else {
                    int f3 = this.a.f(13);
                    b0 b0Var = b0.this;
                    b0Var.f4397f.put(f3, new w(new b(f3)));
                    b0.this.f4403l++;
                }
            }
            b0 b0Var2 = b0.this;
            if (b0Var2.a != 2) {
                b0Var2.f4397f.remove(0);
            }
        }
    }

    /* compiled from: TsExtractor.java */
    /* loaded from: classes.dex */
    public class b implements v {
        public final f.i.a.a.m1.t a = new f.i.a.a.m1.t(new byte[5]);
        public final SparseArray<c0> b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        public final SparseIntArray f4405c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        public final int f4406d;

        public b(int i2) {
            this.f4406d = i2;
        }

        @Override // f.i.a.a.b1.x.v
        public void b(e0 e0Var, f.i.a.a.b1.h hVar, c0.d dVar) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x012b, code lost:
            if (r24.p() == r13) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0203  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0210  */
        @Override // f.i.a.a.b1.x.v
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void c(f.i.a.a.m1.u r24) {
            /*
                Method dump skipped, instructions count: 725
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.b0.b.c(f.i.a.a.m1.u):void");
        }
    }

    public b0(int i2, e0 e0Var, c0.c cVar) {
        this.f4396e = cVar;
        this.a = i2;
        if (i2 != 1 && i2 != 2) {
            ArrayList arrayList = new ArrayList();
            this.b = arrayList;
            arrayList.add(e0Var);
        } else {
            this.b = Collections.singletonList(e0Var);
        }
        this.f4394c = new f.i.a.a.m1.u(new byte[9400], 0);
        this.f4398g = new SparseBooleanArray();
        this.f4399h = new SparseBooleanArray();
        this.f4397f = new SparseArray<>();
        this.f4395d = new SparseIntArray();
        this.f4400i = new a0();
        this.r = -1;
        this.f4398g.clear();
        this.f4397f.clear();
        SparseArray<c0> a2 = this.f4396e.a();
        int size = a2.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f4397f.put(a2.keyAt(i3), a2.valueAt(i3));
        }
        this.f4397f.put(0, new w(new a()));
        this.p = null;
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r12v7 */
    @Override // f.i.a.a.b1.g
    public int c(f.i.a.a.b1.d dVar, f.i.a.a.b1.m mVar) throws IOException, InterruptedException {
        c0 c0Var;
        ?? r12;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        long j2;
        long j3;
        long j4 = dVar.f4125c;
        if (this.f4404m) {
            if ((j4 == -1 || this.a == 2) ? false : true) {
                a0 a0Var = this.f4400i;
                if (!a0Var.f4378c) {
                    int i4 = this.r;
                    if (i4 <= 0) {
                        a0Var.a(dVar);
                        return 0;
                    }
                    if (!a0Var.f4380e) {
                        long j5 = dVar.f4125c;
                        int min = (int) Math.min(112800L, j5);
                        long j6 = j5 - min;
                        if (dVar.f4126d != j6) {
                            mVar.a = j6;
                        } else {
                            a0Var.b.w(min);
                            dVar.f4128f = 0;
                            dVar.d(a0Var.b.a, 0, min, false);
                            f.i.a.a.m1.u uVar = a0Var.b;
                            int i5 = uVar.b;
                            int i6 = uVar.f5785c;
                            while (true) {
                                i6--;
                                if (i6 < i5) {
                                    j3 = -9223372036854775807L;
                                    break;
                                } else if (uVar.a[i6] == 71) {
                                    j3 = c.a.a.b.g.h.d1(uVar, i6, i4);
                                    if (j3 != -9223372036854775807L) {
                                        break;
                                    }
                                }
                            }
                            a0Var.f4382g = j3;
                            a0Var.f4380e = true;
                            return 0;
                        }
                    } else if (a0Var.f4382g == -9223372036854775807L) {
                        a0Var.a(dVar);
                        return 0;
                    } else if (!a0Var.f4379d) {
                        int min2 = (int) Math.min(112800L, dVar.f4125c);
                        long j7 = 0;
                        if (dVar.f4126d != j7) {
                            mVar.a = j7;
                        } else {
                            a0Var.b.w(min2);
                            dVar.f4128f = 0;
                            dVar.d(a0Var.b.a, 0, min2, false);
                            f.i.a.a.m1.u uVar2 = a0Var.b;
                            int i7 = uVar2.b;
                            int i8 = uVar2.f5785c;
                            while (true) {
                                if (i7 >= i8) {
                                    j2 = -9223372036854775807L;
                                    break;
                                }
                                if (uVar2.a[i7] == 71) {
                                    j2 = c.a.a.b.g.h.d1(uVar2, i7, i4);
                                    if (j2 != -9223372036854775807L) {
                                        break;
                                    }
                                }
                                i7++;
                            }
                            a0Var.f4381f = j2;
                            a0Var.f4379d = true;
                            return 0;
                        }
                    } else {
                        long j8 = a0Var.f4381f;
                        if (j8 == -9223372036854775807L) {
                            a0Var.a(dVar);
                            return 0;
                        }
                        a0Var.f4383h = a0Var.a.b(a0Var.f4382g) - a0Var.a.b(j8);
                        a0Var.a(dVar);
                        return 0;
                    }
                    return 1;
                }
            }
            if (this.n) {
                z2 = false;
            } else {
                this.n = true;
                a0 a0Var2 = this.f4400i;
                long j9 = a0Var2.f4383h;
                if (j9 != -9223372036854775807L) {
                    z2 = false;
                    z zVar = new z(a0Var2.a, j9, j4, this.r);
                    this.f4401j = zVar;
                    this.f4402k.a(zVar.a);
                } else {
                    z2 = false;
                    this.f4402k.a(new n.b(j9, 0L));
                }
            }
            if (this.o) {
                this.o = z2;
                f(0L, 0L);
                if (dVar.f4126d != 0) {
                    mVar.a = 0L;
                    return 1;
                }
            }
            z zVar2 = this.f4401j;
            if (zVar2 != null) {
                if (zVar2.f4102c != null) {
                    return this.f4401j.a(dVar, mVar, null);
                }
            }
            c0Var = null;
            r12 = z2;
        } else {
            c0Var = null;
            r12 = 0;
        }
        f.i.a.a.m1.u uVar3 = this.f4394c;
        byte[] bArr = uVar3.a;
        if (9400 - uVar3.b < 188) {
            int a2 = uVar3.a();
            if (a2 > 0) {
                System.arraycopy(bArr, this.f4394c.b, bArr, r12, a2);
            }
            this.f4394c.y(bArr, a2);
        }
        while (true) {
            if (this.f4394c.a() >= 188) {
                i2 = -1;
                z = true;
                break;
            }
            int i9 = this.f4394c.f5785c;
            int e2 = dVar.e(bArr, i9, 9400 - i9);
            i2 = -1;
            if (e2 == -1) {
                z = false;
                break;
            }
            this.f4394c.z(i9 + e2);
        }
        if (z) {
            f.i.a.a.m1.u uVar4 = this.f4394c;
            int i10 = uVar4.b;
            int i11 = uVar4.f5785c;
            byte[] bArr2 = uVar4.a;
            int i12 = i10;
            while (i12 < i11 && bArr2[i12] != 71) {
                i12++;
            }
            this.f4394c.A(i12);
            int i13 = i12 + 188;
            if (i13 > i11) {
                int i14 = (i12 - i10) + this.q;
                this.q = i14;
                i3 = 2;
                if (this.a == 2 && i14 > 376) {
                    throw new f.i.a.a.h0("Cannot find sync byte. Most likely not a Transport Stream.");
                }
            } else {
                i3 = 2;
                this.q = r12;
            }
            f.i.a.a.m1.u uVar5 = this.f4394c;
            int i15 = uVar5.f5785c;
            if (i13 > i15) {
                return r12;
            }
            int d2 = uVar5.d();
            if ((8388608 & d2) != 0) {
                this.f4394c.A(i13);
                return r12;
            }
            int i16 = ((4194304 & d2) != 0 ? 1 : 0) | 0;
            int i17 = (2096896 & d2) >> 8;
            boolean z3 = (d2 & 32) != 0;
            if ((d2 & 16) != 0) {
                c0Var = this.f4397f.get(i17);
            }
            if (c0Var == null) {
                this.f4394c.A(i13);
                return r12;
            }
            if (this.a != i3) {
                int i18 = d2 & 15;
                int i19 = this.f4395d.get(i17, i18 - 1);
                this.f4395d.put(i17, i18);
                if (i19 == i18) {
                    this.f4394c.A(i13);
                    return r12;
                } else if (i18 != ((i19 + 1) & 15)) {
                    c0Var.a();
                }
            }
            if (z3) {
                int p = this.f4394c.p();
                i16 |= (this.f4394c.p() & 64) != 0 ? 2 : 0;
                this.f4394c.B(p - 1);
            }
            boolean z4 = this.f4404m;
            if (this.a == i3 || z4 || !this.f4399h.get(i17, r12)) {
                this.f4394c.z(i13);
                c0Var.c(this.f4394c, i16);
                this.f4394c.z(i15);
            }
            if (this.a != i3 && !z4 && this.f4404m && j4 != -1) {
                this.o = true;
            }
            this.f4394c.A(i13);
            return r12;
        }
        return i2;
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.f4402k = hVar;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        z zVar;
        c.a.a.b.g.h.v(this.a != 2);
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            e0 e0Var = this.b.get(i2);
            if ((e0Var.c() == -9223372036854775807L) || (e0Var.c() != 0 && e0Var.a != j3)) {
                e0Var.f5745c = -9223372036854775807L;
                e0Var.d(j3);
            }
        }
        if (j3 != 0 && (zVar = this.f4401j) != null) {
            zVar.d(j3);
        }
        this.f4394c.v();
        this.f4395d.clear();
        for (int i3 = 0; i3 < this.f4397f.size(); i3++) {
            this.f4397f.valueAt(i3).a();
        }
        this.q = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f4394c.a;
        dVar.d(bArr, 0, 940, false);
        for (int i2 = 0; i2 < 188; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i3 * 188) + i2] != 71) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (z) {
                dVar.h(i2);
                return true;
            }
        }
        return false;
    }
}
