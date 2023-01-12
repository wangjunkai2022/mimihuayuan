package f.i.a.a.h1.t0;

import android.util.Pair;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.e1.c0;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.l0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.s0.g;
import f.i.a.a.h1.t;
import f.i.a.a.h1.t0.c;
import f.i.a.a.h1.t0.j;
import f.i.a.a.h1.v;
import f.i.a.a.h1.x;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.i0;
import f.i.a.a.m1.h0;
import f.i.a.a.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: DashMediaPeriod.java */
/* loaded from: classes.dex */
public final class e implements d0, l0.a<f.i.a.a.h1.s0.g<c>>, g.b<c> {
    public static final Pattern v = Pattern.compile("CC([1-4])=(.+)");
    public final int a;
    public final c.a b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final i0 f4981c;

    /* renamed from: d  reason: collision with root package name */
    public final b0 f4982d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4983e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.d0 f4984f;

    /* renamed from: g  reason: collision with root package name */
    public final f.i.a.a.l1.e f4985g;

    /* renamed from: h  reason: collision with root package name */
    public final p0 f4986h;

    /* renamed from: i  reason: collision with root package name */
    public final a[] f4987i;

    /* renamed from: j  reason: collision with root package name */
    public final v f4988j;

    /* renamed from: k  reason: collision with root package name */
    public final j f4989k;

    /* renamed from: m  reason: collision with root package name */
    public final f0.a f4991m;
    @Nullable
    public d0.a n;
    public l0 q;
    public f.i.a.a.h1.t0.k.b r;
    public int s;
    public List<f.i.a.a.h1.t0.k.e> t;
    public boolean u;
    public f.i.a.a.h1.s0.g<c>[] o = new f.i.a.a.h1.s0.g[0];
    public i[] p = new i[0];

    /* renamed from: l  reason: collision with root package name */
    public final IdentityHashMap<f.i.a.a.h1.s0.g<c>, j.c> f4990l = new IdentityHashMap<>();

    /* compiled from: DashMediaPeriod.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final int[] a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4992c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4993d;

        /* renamed from: e  reason: collision with root package name */
        public final int f4994e;

        /* renamed from: f  reason: collision with root package name */
        public final int f4995f;

        /* renamed from: g  reason: collision with root package name */
        public final int f4996g;

        public a(int i2, int i3, int[] iArr, int i4, int i5, int i6, int i7) {
            this.b = i2;
            this.a = iArr;
            this.f4992c = i3;
            this.f4994e = i4;
            this.f4995f = i5;
            this.f4996g = i6;
            this.f4993d = i7;
        }
    }

    public e(int i2, f.i.a.a.h1.t0.k.b bVar, int i3, c.a aVar, @Nullable i0 i0Var, b0 b0Var, f0.a aVar2, long j2, f.i.a.a.l1.d0 d0Var, f.i.a.a.l1.e eVar, v vVar, j.b bVar2) {
        int i4;
        List<f.i.a.a.h1.t0.k.a> list;
        int i5;
        boolean z;
        f.i.a.a.b0[] b0VarArr;
        f.i.a.a.h1.t0.k.d dVar;
        int i6;
        this.a = i2;
        this.r = bVar;
        this.s = i3;
        this.b = aVar;
        this.f4981c = i0Var;
        this.f4982d = b0Var;
        this.f4991m = aVar2;
        this.f4983e = j2;
        this.f4984f = d0Var;
        this.f4985g = eVar;
        this.f4988j = vVar;
        this.f4989k = new j(bVar, bVar2, eVar);
        f.i.a.a.h1.s0.g<c>[] gVarArr = this.o;
        if (vVar != null) {
            this.q = new t(gVarArr);
            f.i.a.a.h1.t0.k.f fVar = bVar.f5040l.get(i3);
            List<f.i.a.a.h1.t0.k.e> list2 = fVar.f5052d;
            this.t = list2;
            List<f.i.a.a.h1.t0.k.a> list3 = fVar.f5051c;
            int size = list3.size();
            SparseIntArray sparseIntArray = new SparseIntArray(size);
            for (int i7 = 0; i7 < size; i7++) {
                sparseIntArray.put(list3.get(i7).a, i7);
            }
            int[][] iArr = new int[size];
            boolean[] zArr = new boolean[size];
            int i8 = 0;
            for (int i9 = 0; i9 < size; i9++) {
                if (!zArr[i9]) {
                    zArr[i9] = true;
                    List<f.i.a.a.h1.t0.k.d> list4 = list3.get(i9).f5030e;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list4.size()) {
                            dVar = null;
                            break;
                        }
                        dVar = list4.get(i10);
                        if ("urn:mpeg:dash:adaptation-set-switching:2016".equals(dVar.a)) {
                            break;
                        }
                        i10++;
                    }
                    if (dVar == null) {
                        i6 = i8 + 1;
                        int[] iArr2 = new int[1];
                        iArr2[0] = i9;
                        iArr[i8] = iArr2;
                    } else {
                        String[] l0 = h0.l0(dVar.b, ",");
                        int length = l0.length + 1;
                        int[] iArr3 = new int[length];
                        iArr3[0] = i9;
                        int i11 = 1;
                        for (String str : l0) {
                            int i12 = sparseIntArray.get(Integer.parseInt(str), -1);
                            if (i12 != -1) {
                                zArr[i12] = true;
                                iArr3[i11] = i12;
                                i11++;
                            }
                        }
                        i6 = i8 + 1;
                        iArr[i8] = i11 < length ? Arrays.copyOf(iArr3, i11) : iArr3;
                    }
                    i8 = i6;
                }
            }
            iArr = i8 < size ? (int[][]) Arrays.copyOf(iArr, i8) : iArr;
            int length2 = iArr.length;
            boolean[] zArr2 = new boolean[length2];
            f.i.a.a.b0[][] b0VarArr2 = new f.i.a.a.b0[length2];
            int i13 = 0;
            for (int i14 = 0; i14 < length2; i14++) {
                int[] iArr4 = iArr[i14];
                int length3 = iArr4.length;
                int i15 = 0;
                while (true) {
                    if (i15 >= length3) {
                        z = false;
                        break;
                    }
                    List<f.i.a.a.h1.t0.k.i> list5 = list3.get(iArr4[i15]).f5028c;
                    for (int i16 = 0; i16 < list5.size(); i16++) {
                        if (!list5.get(i16).f5059d.isEmpty()) {
                            z = true;
                            break;
                        }
                    }
                    i15++;
                }
                if (z) {
                    zArr2[i14] = true;
                    i13++;
                }
                int[] iArr5 = iArr[i14];
                int length4 = iArr5.length;
                int i17 = 0;
                while (true) {
                    if (i17 >= length4) {
                        b0VarArr = new f.i.a.a.b0[0];
                        break;
                    }
                    int i18 = iArr5[i17];
                    f.i.a.a.h1.t0.k.a aVar3 = list3.get(i18);
                    List<f.i.a.a.h1.t0.k.d> list6 = list3.get(i18).f5029d;
                    int i19 = 0;
                    while (i19 < list6.size()) {
                        f.i.a.a.h1.t0.k.d dVar2 = list6.get(i19);
                        int[] iArr6 = iArr5;
                        int i20 = length4;
                        if ("urn:scte:dash:cc:cea-608:2015".equals(dVar2.a)) {
                            String str2 = dVar2.b;
                            if (str2 != null) {
                                String[] split = str2.split(";", -1);
                                f.i.a.a.b0[] b0VarArr3 = new f.i.a.a.b0[split.length];
                                int i21 = 0;
                                while (true) {
                                    if (i21 >= split.length) {
                                        b0VarArr = b0VarArr3;
                                        break;
                                    }
                                    Matcher matcher = v.matcher(split[i21]);
                                    if (!matcher.matches()) {
                                        b0VarArr = new f.i.a.a.b0[]{a(aVar3.a, null, -1)};
                                        break;
                                    }
                                    b0VarArr3[i21] = a(aVar3.a, matcher.group(2), Integer.parseInt(matcher.group(1)));
                                    i21++;
                                    split = split;
                                }
                            } else {
                                b0VarArr = new f.i.a.a.b0[]{a(aVar3.a, null, -1)};
                            }
                        } else {
                            i19++;
                            iArr5 = iArr6;
                            length4 = i20;
                        }
                    }
                    i17++;
                }
                b0VarArr2[i14] = b0VarArr;
                if (b0VarArr2[i14].length != 0) {
                    i13++;
                }
            }
            int size2 = list2.size() + i13 + length2;
            o0[] o0VarArr = new o0[size2];
            a[] aVarArr = new a[size2];
            int i22 = 0;
            int i23 = 0;
            while (i23 < length2) {
                int[] iArr7 = iArr[i23];
                ArrayList arrayList = new ArrayList();
                int length5 = iArr7.length;
                int i24 = 0;
                while (i24 < length5) {
                    arrayList.addAll(list3.get(iArr7[i24]).f5028c);
                    i24++;
                    length2 = length2;
                }
                int i25 = length2;
                int size3 = arrayList.size();
                f.i.a.a.b0[] b0VarArr4 = new f.i.a.a.b0[size3];
                int i26 = 0;
                while (i26 < size3) {
                    b0VarArr4[i26] = ((f.i.a.a.h1.t0.k.i) arrayList.get(i26)).a;
                    i26++;
                    size3 = size3;
                }
                f.i.a.a.h1.t0.k.a aVar4 = list3.get(iArr7[0]);
                int i27 = i22 + 1;
                if (zArr2[i23]) {
                    list = list3;
                    i4 = i27;
                    i27++;
                } else {
                    i4 = -1;
                    list = list3;
                }
                if (b0VarArr2[i23].length != 0) {
                    i5 = i27 + 1;
                } else {
                    i5 = i27;
                    i27 = -1;
                }
                o0VarArr[i22] = new o0(b0VarArr4);
                int i28 = i27;
                int i29 = i4;
                aVarArr[i22] = new a(aVar4.b, 0, iArr7, i22, i29, i28, -1);
                if (i29 != -1) {
                    o0VarArr[i29] = new o0(f.i.a.a.b0.n(f.b.a.a.a.k(new StringBuilder(), aVar4.a, ":emsg"), "application/x-emsg", null, -1, null));
                    aVarArr[i29] = new a(4, 1, iArr7, i22, -1, -1, -1);
                }
                if (i28 != -1) {
                    o0VarArr[i28] = new o0(b0VarArr2[i23]);
                    aVarArr[i28] = new a(3, 1, iArr7, i22, -1, -1, -1);
                }
                i23++;
                length2 = i25;
                list3 = list;
                i22 = i5;
            }
            int i30 = 0;
            while (i30 < list2.size()) {
                o0VarArr[i22] = new o0(f.i.a.a.b0.n(list2.get(i30).a(), "application/x-emsg", null, -1, null));
                aVarArr[i22] = new a(4, 2, new int[0], -1, -1, -1, i30);
                i30++;
                i22++;
            }
            Pair create = Pair.create(new p0(o0VarArr), aVarArr);
            this.f4986h = (p0) create.first;
            this.f4987i = (a[]) create.second;
            aVar2.y();
            return;
        }
        throw null;
    }

    public static f.i.a.a.b0 a(int i2, String str, int i3) {
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append(":cea608");
        sb.append(i3 != -1 ? f.b.a.a.a.J(":", i3) : "");
        return f.i.a.a.b0.r(sb.toString(), "application/cea-608", null, -1, 0, str, i3, null, RecyclerView.FOREVER_NS, null);
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        f.i.a.a.h1.s0.g<c>[] gVarArr;
        for (f.i.a.a.h1.s0.g<c> gVar : this.o) {
            if (gVar.a == 2) {
                return gVar.f4962e.b(j2, s0Var);
            }
        }
        return j2;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        return this.q.c();
    }

    public final int d(int i2, int[] iArr) {
        int i3 = iArr[i2];
        if (i3 == -1) {
            return -1;
        }
        int i4 = this.f4987i[i3].f4994e;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = iArr[i5];
            if (i6 == i4 && this.f4987i[i6].f4992c == 0) {
                return i5;
            }
        }
        return -1;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        return this.q.e();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        return this.q.f(j2);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
        this.q.g(j2);
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(f.i.a.a.h1.s0.g<c> gVar) {
        this.n.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public long j(f.i.a.a.j1.j[] jVarArr, boolean[] zArr, k0[] k0VarArr, boolean[] zArr2, long j2) {
        int i2;
        boolean z;
        int[] iArr;
        int i3;
        int[] iArr2;
        o0 o0Var;
        int i4;
        o0 o0Var2;
        int i5;
        j.c cVar;
        f.i.a.a.j1.j[] jVarArr2 = jVarArr;
        int[] iArr3 = new int[jVarArr2.length];
        int i6 = 0;
        while (true) {
            i2 = -1;
            if (i6 >= jVarArr2.length) {
                break;
            }
            if (jVarArr2[i6] != null) {
                iArr3[i6] = this.f4986h.a(jVarArr2[i6].j());
            } else {
                iArr3[i6] = -1;
            }
            i6++;
        }
        for (int i7 = 0; i7 < jVarArr2.length; i7++) {
            if (jVarArr2[i7] == null || !zArr[i7]) {
                if (k0VarArr[i7] instanceof f.i.a.a.h1.s0.g) {
                    ((f.i.a.a.h1.s0.g) k0VarArr[i7]).B(this);
                } else if (k0VarArr[i7] instanceof g.a) {
                    ((g.a) k0VarArr[i7]).c();
                }
                k0VarArr[i7] = null;
            }
        }
        int i8 = 0;
        while (true) {
            z = true;
            if (i8 >= jVarArr2.length) {
                break;
            }
            if ((k0VarArr[i8] instanceof x) || (k0VarArr[i8] instanceof g.a)) {
                int d2 = d(i8, iArr3);
                if (d2 == -1) {
                    z = k0VarArr[i8] instanceof x;
                } else if (!(k0VarArr[i8] instanceof g.a) || ((g.a) k0VarArr[i8]).a != k0VarArr[d2]) {
                    z = false;
                }
                if (!z) {
                    if (k0VarArr[i8] instanceof g.a) {
                        ((g.a) k0VarArr[i8]).c();
                    }
                    k0VarArr[i8] = null;
                }
            }
            i8++;
        }
        int i9 = 0;
        while (i9 < jVarArr2.length) {
            f.i.a.a.j1.j jVar = jVarArr2[i9];
            if (jVar == null) {
                i3 = i9;
                iArr2 = iArr3;
            } else if (k0VarArr[i9] == null) {
                zArr2[i9] = z;
                a aVar = this.f4987i[iArr3[i9]];
                int i10 = aVar.f4992c;
                if (i10 == 0) {
                    boolean z2 = aVar.f4995f != i2;
                    if (z2) {
                        o0Var = this.f4986h.b[aVar.f4995f];
                        i4 = 1;
                    } else {
                        o0Var = null;
                        i4 = 0;
                    }
                    boolean z3 = aVar.f4996g != i2;
                    if (z3) {
                        o0Var2 = this.f4986h.b[aVar.f4996g];
                        i4 += o0Var2.a;
                    } else {
                        o0Var2 = null;
                    }
                    f.i.a.a.b0[] b0VarArr = new f.i.a.a.b0[i4];
                    int[] iArr4 = new int[i4];
                    if (z2) {
                        b0VarArr[0] = o0Var.b[0];
                        iArr4[0] = 4;
                        i5 = 1;
                    } else {
                        i5 = 0;
                    }
                    ArrayList arrayList = new ArrayList();
                    if (z3) {
                        for (int i11 = 0; i11 < o0Var2.a; i11++) {
                            b0VarArr[i5] = o0Var2.b[i11];
                            iArr4[i5] = 3;
                            arrayList.add(b0VarArr[i5]);
                            i5++;
                        }
                    }
                    if (this.r.f5032d && z2) {
                        j jVar2 = this.f4989k;
                        cVar = new j.c(new j0(jVar2.a));
                    } else {
                        cVar = null;
                    }
                    j.c cVar2 = cVar;
                    i3 = i9;
                    iArr2 = iArr3;
                    f.i.a.a.h1.s0.g<c> gVar = new f.i.a.a.h1.s0.g<>(aVar.b, iArr4, b0VarArr, this.b.a(this.f4984f, this.r, this.s, aVar.a, jVar, aVar.b, this.f4983e, z2, arrayList, cVar2, this.f4981c), this, this.f4985g, j2, this.f4982d, this.f4991m);
                    synchronized (this) {
                        this.f4990l.put(gVar, cVar2);
                    }
                    k0VarArr[i3] = gVar;
                } else {
                    i3 = i9;
                    iArr2 = iArr3;
                    if (i10 == 2) {
                        k0VarArr[i3] = new i(this.t.get(aVar.f4993d), jVar.j().b[0], this.r.f5032d);
                    }
                }
            } else {
                i3 = i9;
                iArr2 = iArr3;
                if (k0VarArr[i3] instanceof f.i.a.a.h1.s0.g) {
                    ((c) ((f.i.a.a.h1.s0.g) k0VarArr[i3]).f4962e).c(jVar);
                }
            }
            i9 = i3 + 1;
            jVarArr2 = jVarArr;
            iArr3 = iArr2;
            z = true;
            i2 = -1;
        }
        int[] iArr5 = iArr3;
        int i12 = 0;
        while (i12 < jVarArr.length) {
            if (k0VarArr[i12] != null || jVarArr[i12] == null) {
                iArr = iArr5;
            } else {
                iArr = iArr5;
                a aVar2 = this.f4987i[iArr[i12]];
                if (aVar2.f4992c == 1) {
                    int d3 = d(i12, iArr);
                    if (d3 == -1) {
                        k0VarArr[i12] = new x();
                    } else {
                        f.i.a.a.h1.s0.g gVar2 = (f.i.a.a.h1.s0.g) k0VarArr[d3];
                        int i13 = aVar2.b;
                        for (int i14 = 0; i14 < gVar2.n.length; i14++) {
                            if (gVar2.b[i14] == i13) {
                                c.a.a.b.g.h.v(!gVar2.f4961d[i14]);
                                gVar2.f4961d[i14] = true;
                                gVar2.n[i14].v();
                                gVar2.n[i14].e(j2, true, true);
                                k0VarArr[i12] = new g.a(gVar2, gVar2.n[i14], i14);
                            }
                        }
                        throw new IllegalStateException();
                    }
                    i12++;
                    iArr5 = iArr;
                }
            }
            i12++;
            iArr5 = iArr;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (k0 k0Var : k0VarArr) {
            if (k0Var instanceof f.i.a.a.h1.s0.g) {
                arrayList2.add((f.i.a.a.h1.s0.g) k0Var);
            } else if (k0Var instanceof i) {
                arrayList3.add((i) k0Var);
            }
        }
        f.i.a.a.h1.s0.g<c>[] gVarArr = new f.i.a.a.h1.s0.g[arrayList2.size()];
        this.o = gVarArr;
        arrayList2.toArray(gVarArr);
        i[] iVarArr = new i[arrayList3.size()];
        this.p = iVarArr;
        arrayList3.toArray(iVarArr);
        v vVar = this.f4988j;
        f.i.a.a.h1.s0.g<c>[] gVarArr2 = this.o;
        if (vVar != null) {
            this.q = new t(gVarArr2);
            return j2;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (this.u) {
            return -9223372036854775807L;
        }
        this.f4991m.B();
        this.u = true;
        return -9223372036854775807L;
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.n = aVar;
        aVar.h(this);
    }

    @Override // f.i.a.a.h1.d0
    public List<c0> n(List<f.i.a.a.j1.j> list) {
        List<f.i.a.a.h1.t0.k.a> list2 = this.r.b(this.s).f5051c;
        ArrayList arrayList = new ArrayList();
        for (f.i.a.a.j1.j jVar : list) {
            a aVar = this.f4987i[this.f4986h.a(jVar.j())];
            if (aVar.f4992c == 0) {
                int[] iArr = aVar.a;
                int length = jVar.length();
                int[] iArr2 = new int[length];
                for (int i2 = 0; i2 < jVar.length(); i2++) {
                    iArr2[i2] = jVar.e(i2);
                }
                Arrays.sort(iArr2);
                int size = list2.get(iArr[0]).f5028c.size();
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < length; i5++) {
                    while (true) {
                        int i6 = i4 + size;
                        if (iArr2[i5] >= i6) {
                            i3++;
                            size = list2.get(iArr[i3]).f5028c.size();
                            i4 = i6;
                        }
                    }
                    arrayList.add(new c0(this.s, iArr[i3], iArr2[i5] - i4));
                }
            }
        }
        return arrayList;
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return this.f4986h;
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        this.f4984f.a();
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        for (f.i.a.a.h1.s0.g<c> gVar : this.o) {
            gVar.t(j2, z);
        }
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        for (f.i.a.a.h1.s0.g<c> gVar : this.o) {
            gVar.C(j2);
        }
        for (i iVar : this.p) {
            iVar.b(j2);
        }
        return j2;
    }
}
