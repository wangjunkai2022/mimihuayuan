package f.i.a.a.h1.u0;

import android.net.Uri;
import android.os.Handler;
import f.i.a.a.b0;
import f.i.a.a.d1.a;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.l0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.u0.g;
import f.i.a.a.h1.u0.n;
import f.i.a.a.h1.u0.t.f;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.w;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: HlsSampleStreamWrapper.java */
/* loaded from: classes.dex */
public final class n implements c0.b<f.i.a.a.h1.s0.d>, c0.f, l0, f.i.a.a.b1.h, j0.b {
    public int A;
    public b0 B;
    public b0 C;
    public boolean D;
    public p0 E;
    public p0 F;
    public int[] G;
    public int H;
    public boolean I;
    public long L;
    public long M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public long R;
    public int S;
    public final int a;
    public final a b;

    /* renamed from: c  reason: collision with root package name */
    public final g f5134c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.l1.e f5135d;

    /* renamed from: e  reason: collision with root package name */
    public final b0 f5136e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.b0 f5137f;

    /* renamed from: h  reason: collision with root package name */
    public final f0.a f5139h;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList<k> f5141j;

    /* renamed from: k  reason: collision with root package name */
    public final List<k> f5142k;

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f5143l;

    /* renamed from: m  reason: collision with root package name */
    public final Runnable f5144m;
    public final Handler n;
    public final ArrayList<m> o;
    public final Map<String, f.i.a.a.z0.e> p;
    public boolean s;
    public boolean u;
    public int w;
    public int x;
    public boolean y;
    public boolean z;

    /* renamed from: g  reason: collision with root package name */
    public final c0 f5138g = new c0("Loader:HlsSampleStreamWrapper");

    /* renamed from: i  reason: collision with root package name */
    public final g.c f5140i = new g.c();
    public int[] r = new int[0];
    public int t = -1;
    public int v = -1;
    public j0[] q = new j0[0];
    public boolean[] K = new boolean[0];
    public boolean[] J = new boolean[0];

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes.dex */
    public interface a extends l0.a<n> {
    }

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes.dex */
    public static final class b extends j0 {
        public b(f.i.a.a.l1.e eVar) {
            super(eVar);
        }

        @Override // f.i.a.a.h1.j0, f.i.a.a.b1.p
        public void d(b0 b0Var) {
            f.i.a.a.d1.a aVar = b0Var.f4086g;
            if (aVar != null) {
                int length = aVar.a.length;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i3 = -1;
                        break;
                    }
                    a.b bVar = aVar.a[i3];
                    if ((bVar instanceof f.i.a.a.d1.i.k) && "com.apple.streaming.transportStreamTimestamp".equals(((f.i.a.a.d1.i.k) bVar).b)) {
                        break;
                    }
                    i3++;
                }
                if (i3 != -1) {
                    if (length != 1) {
                        a.b[] bVarArr = new a.b[length - 1];
                        while (i2 < length) {
                            if (i2 != i3) {
                                bVarArr[i2 < i3 ? i2 : i2 - 1] = aVar.a[i2];
                            }
                            i2++;
                        }
                        aVar = new f.i.a.a.d1.a(bVarArr);
                    }
                }
                super.d(b0Var.e(aVar));
            }
            aVar = null;
            super.d(b0Var.e(aVar));
        }
    }

    public n(int i2, a aVar, g gVar, Map<String, f.i.a.a.z0.e> map, f.i.a.a.l1.e eVar, long j2, b0 b0Var, f.i.a.a.l1.b0 b0Var2, f0.a aVar2) {
        this.a = i2;
        this.b = aVar;
        this.f5134c = gVar;
        this.p = map;
        this.f5135d = eVar;
        this.f5136e = b0Var;
        this.f5137f = b0Var2;
        this.f5139h = aVar2;
        ArrayList<k> arrayList = new ArrayList<>();
        this.f5141j = arrayList;
        this.f5142k = Collections.unmodifiableList(arrayList);
        this.o = new ArrayList<>();
        this.f5143l = new Runnable() { // from class: f.i.a.a.h1.u0.c
            @Override // java.lang.Runnable
            public final void run() {
                n.this.A();
            }
        };
        this.f5144m = new Runnable() { // from class: f.i.a.a.h1.u0.b
            @Override // java.lang.Runnable
            public final void run() {
                n.this.C();
            }
        };
        this.n = new Handler();
        this.L = j2;
        this.M = j2;
    }

    public static b0 v(b0 b0Var, b0 b0Var2, boolean z) {
        if (b0Var == null) {
            return b0Var2;
        }
        int i2 = z ? b0Var.f4084e : -1;
        int i3 = b0Var.v;
        int i4 = i3 != -1 ? i3 : b0Var2.v;
        String y = h0.y(b0Var.f4085f, f.i.a.a.m1.r.f(b0Var2.f4088i));
        String c2 = f.i.a.a.m1.r.c(y);
        if (c2 == null) {
            c2 = b0Var2.f4088i;
        }
        String str = c2;
        String str2 = b0Var.a;
        String str3 = b0Var.b;
        f.i.a.a.d1.a aVar = b0Var.f4086g;
        int i5 = b0Var.n;
        int i6 = b0Var.o;
        int i7 = b0Var.f4082c;
        String str4 = b0Var.A;
        f.i.a.a.d1.a aVar2 = b0Var2.f4086g;
        if (aVar2 != null) {
            aVar = aVar == null ? aVar2 : aVar2.a(aVar.a);
        }
        return new b0(str2, str3, i7, b0Var2.f4083d, i2, y, aVar, b0Var2.f4087h, str, b0Var2.f4089j, b0Var2.f4090k, b0Var2.f4091l, b0Var2.f4092m, i5, i6, b0Var2.p, b0Var2.q, b0Var2.r, b0Var2.t, b0Var2.s, b0Var2.u, i4, b0Var2.w, b0Var2.x, b0Var2.y, b0Var2.z, str4, b0Var2.B);
    }

    public static int x(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                return i2 != 3 ? 0 : 1;
            }
            return 3;
        }
        return 2;
    }

    public final void A() {
        n[] nVarArr;
        if (!this.D && this.G == null && this.y) {
            for (j0 j0Var : this.q) {
                if (j0Var.n() == null) {
                    return;
                }
            }
            p0 p0Var = this.E;
            if (p0Var != null) {
                int i2 = p0Var.a;
                int[] iArr = new int[i2];
                this.G = iArr;
                Arrays.fill(iArr, -1);
                for (int i3 = 0; i3 < i2; i3++) {
                    int i4 = 0;
                    while (true) {
                        j0[] j0VarArr = this.q;
                        if (i4 < j0VarArr.length) {
                            b0 n = j0VarArr[i4].n();
                            b0 b0Var = this.E.b[i3].b[0];
                            String str = n.f4088i;
                            String str2 = b0Var.f4088i;
                            int f2 = f.i.a.a.m1.r.f(str);
                            if (f2 == 3 ? h0.b(str, str2) && (!("application/cea-608".equals(str) || "application/cea-708".equals(str)) || n.B == b0Var.B) : f2 == f.i.a.a.m1.r.f(str2)) {
                                this.G[i3] = i4;
                                break;
                            }
                            i4++;
                        }
                    }
                }
                Iterator<m> it = this.o.iterator();
                while (it.hasNext()) {
                    it.next().b();
                }
                return;
            }
            int length = this.q.length;
            int i5 = 0;
            int i6 = 6;
            int i7 = -1;
            while (true) {
                int i8 = 2;
                if (i5 >= length) {
                    break;
                }
                String str3 = this.q[i5].n().f4088i;
                if (!f.i.a.a.m1.r.j(str3)) {
                    if (f.i.a.a.m1.r.h(str3)) {
                        i8 = 1;
                    } else {
                        i8 = f.i.a.a.m1.r.i(str3) ? 3 : 6;
                    }
                }
                if (x(i8) > x(i6)) {
                    i7 = i5;
                    i6 = i8;
                } else if (i8 == i6 && i7 != -1) {
                    i7 = -1;
                }
                i5++;
            }
            o0 o0Var = this.f5134c.f5108h;
            int i9 = o0Var.a;
            this.H = -1;
            this.G = new int[length];
            for (int i10 = 0; i10 < length; i10++) {
                this.G[i10] = i10;
            }
            o0[] o0VarArr = new o0[length];
            for (int i11 = 0; i11 < length; i11++) {
                b0 n2 = this.q[i11].n();
                if (i11 == i7) {
                    b0[] b0VarArr = new b0[i9];
                    if (i9 == 1) {
                        b0VarArr[0] = n2.d(o0Var.b[0]);
                    } else {
                        for (int i12 = 0; i12 < i9; i12++) {
                            b0VarArr[i12] = v(o0Var.b[i12], n2, true);
                        }
                    }
                    o0VarArr[i11] = new o0(b0VarArr);
                    this.H = i11;
                } else {
                    o0VarArr[i11] = new o0(v((i6 == 2 && f.i.a.a.m1.r.h(n2.f4088i)) ? this.f5136e : null, n2, false));
                }
            }
            this.E = new p0(o0VarArr);
            c.a.a.b.g.h.v(this.F == null);
            this.F = p0.f4911d;
            this.z = true;
            l lVar = (l) this.b;
            int i13 = lVar.n - 1;
            lVar.n = i13;
            if (i13 > 0) {
                return;
            }
            int i14 = 0;
            for (n nVar : lVar.p) {
                i14 += nVar.E.a;
            }
            o0[] o0VarArr2 = new o0[i14];
            int i15 = 0;
            for (n nVar2 : lVar.p) {
                int i16 = nVar2.E.a;
                int i17 = 0;
                while (i17 < i16) {
                    o0VarArr2[i15] = nVar2.E.b[i17];
                    i17++;
                    i15++;
                }
            }
            lVar.o = new p0(o0VarArr2);
            lVar.f5132m.h(lVar);
        }
    }

    public void B() throws IOException {
        this.f5138g.e(Integer.MIN_VALUE);
        g gVar = this.f5134c;
        IOException iOException = gVar.f5113m;
        if (iOException == null) {
            Uri uri = gVar.n;
            if (uri == null || !gVar.r) {
                return;
            }
            ((f.i.a.a.h1.u0.t.c) gVar.f5107g).f(uri);
            return;
        }
        throw iOException;
    }

    public final void C() {
        n[] nVarArr;
        this.y = true;
        if (this.D || this.G != null || 1 == 0) {
            return;
        }
        for (j0 j0Var : this.q) {
            if (j0Var.n() == null) {
                return;
            }
        }
        p0 p0Var = this.E;
        if (p0Var != null) {
            int i2 = p0Var.a;
            int[] iArr = new int[i2];
            this.G = iArr;
            Arrays.fill(iArr, -1);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = 0;
                while (true) {
                    j0[] j0VarArr = this.q;
                    if (i4 < j0VarArr.length) {
                        b0 n = j0VarArr[i4].n();
                        b0 b0Var = this.E.b[i3].b[0];
                        String str = n.f4088i;
                        String str2 = b0Var.f4088i;
                        int f2 = f.i.a.a.m1.r.f(str);
                        if (f2 == 3 ? h0.b(str, str2) && (!("application/cea-608".equals(str) || "application/cea-708".equals(str)) || n.B == b0Var.B) : f2 == f.i.a.a.m1.r.f(str2)) {
                            this.G[i3] = i4;
                            break;
                        }
                        i4++;
                    }
                }
            }
            Iterator<m> it = this.o.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            return;
        }
        int length = this.q.length;
        int i5 = 0;
        int i6 = 6;
        int i7 = -1;
        while (true) {
            int i8 = 2;
            if (i5 >= length) {
                break;
            }
            String str3 = this.q[i5].n().f4088i;
            if (!f.i.a.a.m1.r.j(str3)) {
                if (f.i.a.a.m1.r.h(str3)) {
                    i8 = 1;
                } else {
                    i8 = f.i.a.a.m1.r.i(str3) ? 3 : 6;
                }
            }
            if (x(i8) > x(i6)) {
                i7 = i5;
                i6 = i8;
            } else if (i8 == i6 && i7 != -1) {
                i7 = -1;
            }
            i5++;
        }
        o0 o0Var = this.f5134c.f5108h;
        int i9 = o0Var.a;
        this.H = -1;
        this.G = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.G[i10] = i10;
        }
        o0[] o0VarArr = new o0[length];
        for (int i11 = 0; i11 < length; i11++) {
            b0 n2 = this.q[i11].n();
            if (i11 == i7) {
                b0[] b0VarArr = new b0[i9];
                if (i9 == 1) {
                    b0VarArr[0] = n2.d(o0Var.b[0]);
                } else {
                    for (int i12 = 0; i12 < i9; i12++) {
                        b0VarArr[i12] = v(o0Var.b[i12], n2, true);
                    }
                }
                o0VarArr[i11] = new o0(b0VarArr);
                this.H = i11;
            } else {
                o0VarArr[i11] = new o0(v((i6 == 2 && f.i.a.a.m1.r.h(n2.f4088i)) ? this.f5136e : null, n2, false));
            }
        }
        this.E = new p0(o0VarArr);
        c.a.a.b.g.h.v(this.F == null);
        this.F = p0.f4911d;
        this.z = true;
        l lVar = (l) this.b;
        int i13 = lVar.n - 1;
        lVar.n = i13;
        if (i13 > 0) {
            return;
        }
        int i14 = 0;
        for (n nVar : lVar.p) {
            i14 += nVar.E.a;
        }
        o0[] o0VarArr2 = new o0[i14];
        int i15 = 0;
        for (n nVar2 : lVar.p) {
            int i16 = nVar2.E.a;
            int i17 = 0;
            while (i17 < i16) {
                o0VarArr2[i15] = nVar2.E.b[i17];
                i17++;
                i15++;
            }
        }
        lVar.o = new p0(o0VarArr2);
        lVar.f5132m.h(lVar);
    }

    public void D(p0 p0Var, int i2, p0 p0Var2) {
        this.z = true;
        this.E = p0Var;
        this.F = p0Var2;
        this.H = i2;
        Handler handler = this.n;
        final a aVar = this.b;
        aVar.getClass();
        handler.post(new Runnable() { // from class: f.i.a.a.h1.u0.a
            @Override // java.lang.Runnable
            public final void run() {
                ((l) n.a.this).q();
            }
        });
    }

    public final void E() {
        for (j0 j0Var : this.q) {
            j0Var.u(this.N);
        }
        this.N = false;
    }

    public boolean F(long j2, boolean z) {
        boolean z2;
        this.L = j2;
        if (z()) {
            this.M = j2;
            return true;
        }
        if (this.y && !z) {
            int length = this.q.length;
            for (int i2 = 0; i2 < length; i2++) {
                j0 j0Var = this.q[i2];
                j0Var.v();
                if (!(j0Var.e(j2, true, false) != -1) && (this.K[i2] || !this.I)) {
                    z2 = false;
                    break;
                }
            }
            z2 = true;
            if (z2) {
                return false;
            }
        }
        this.M = j2;
        this.P = false;
        this.f5141j.clear();
        if (this.f5138g.d()) {
            this.f5138g.b();
        } else {
            E();
        }
        return true;
    }

    @Override // f.i.a.a.b1.h
    public void a(f.i.a.a.b1.n nVar) {
    }

    @Override // f.i.a.a.h1.l0
    public long c() {
        if (z()) {
            return this.M;
        }
        if (this.P) {
            return Long.MIN_VALUE;
        }
        return w().f4946g;
    }

    @Override // f.i.a.a.b1.h
    public void d() {
        this.Q = true;
        this.n.post(this.f5144m);
    }

    @Override // f.i.a.a.h1.l0
    public long e() {
        ArrayList<k> arrayList;
        if (this.P) {
            return Long.MIN_VALUE;
        }
        if (z()) {
            return this.M;
        }
        long j2 = this.L;
        k w = w();
        if (!w.G) {
            w = this.f5141j.size() > 1 ? this.f5141j.get(arrayList.size() - 2) : null;
        }
        if (w != null) {
            j2 = Math.max(j2, w.f4946g);
        }
        if (this.y) {
            for (j0 j0Var : this.q) {
                j2 = Math.max(j2, j0Var.l());
            }
        }
        return j2;
    }

    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7, types: [f.i.a.a.h1.s0.d, android.net.Uri] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // f.i.a.a.h1.l0
    public boolean f(long j2) {
        List<k> list;
        long max;
        long j3;
        g.c cVar;
        ?? r8;
        long j4;
        Uri uri;
        int i2;
        String str;
        if (this.P || this.f5138g.d()) {
            return false;
        }
        if (z()) {
            list = Collections.emptyList();
            max = this.M;
        } else {
            list = this.f5142k;
            k w = w();
            if (w.G) {
                max = w.f4946g;
            } else {
                max = Math.max(this.L, w.f4945f);
            }
        }
        List<k> list2 = list;
        long j5 = max;
        g gVar = this.f5134c;
        g.c cVar2 = this.f5140i;
        if (gVar != null) {
            k kVar = list2.isEmpty() ? null : list2.get(list2.size() - 1);
            int a2 = kVar == null ? -1 : gVar.f5108h.a(kVar.f4942c);
            long j6 = j5 - j2;
            long j7 = (gVar.q > (-9223372036854775807L) ? 1 : (gVar.q == (-9223372036854775807L) ? 0 : -1)) != 0 ? gVar.q - j2 : -9223372036854775807L;
            if (kVar == null || gVar.o) {
                j3 = -9223372036854775807L;
                cVar = cVar2;
            } else {
                cVar = cVar2;
                long j8 = kVar.f4946g - kVar.f4945f;
                j6 = Math.max(0L, j6 - j8);
                j3 = -9223372036854775807L;
                if (j7 != -9223372036854775807L) {
                    j7 = Math.max(0L, j7 - j8);
                }
            }
            k kVar2 = kVar;
            int i3 = a2;
            gVar.p.h(j2, j6, j7, list2, gVar.a(kVar, j5));
            int i4 = gVar.p.i();
            boolean z = i3 != i4;
            Uri uri2 = gVar.f5105e[i4];
            if (!((f.i.a.a.h1.u0.t.c) gVar.f5107g).e(uri2)) {
                cVar.f5115c = uri2;
                gVar.r &= uri2.equals(gVar.n);
                gVar.n = uri2;
                r8 = 0;
            } else {
                g.c cVar3 = cVar;
                f.i.a.a.h1.u0.t.f d2 = ((f.i.a.a.h1.u0.t.c) gVar.f5107g).d(uri2, true);
                gVar.o = d2.f5208c;
                gVar.q = d2.f5197l ? j3 : (d2.f5191f + d2.p) - ((f.i.a.a.h1.u0.t.c) gVar.f5107g).p;
                long j9 = d2.f5191f - ((f.i.a.a.h1.u0.t.c) gVar.f5107g).p;
                r8 = 0;
                r8 = 0;
                r8 = 0;
                r8 = 0;
                r8 = 0;
                r8 = 0;
                long b2 = gVar.b(kVar2, z, d2, j9, j5);
                if (b2 >= d2.f5194i || kVar2 == null || !z) {
                    j4 = j9;
                    uri = uri2;
                    i2 = i4;
                } else {
                    Uri uri3 = gVar.f5105e[i3];
                    d2 = ((f.i.a.a.h1.u0.t.c) gVar.f5107g).d(uri3, true);
                    long j10 = d2.f5191f - ((f.i.a.a.h1.u0.t.c) gVar.f5107g).p;
                    b2 = kVar2.c();
                    uri = uri3;
                    i2 = i3;
                    j4 = j10;
                }
                long j11 = d2.f5194i;
                if (b2 < j11) {
                    gVar.f5113m = new f.i.a.a.h1.p();
                } else {
                    int i5 = (int) (b2 - j11);
                    if (i5 >= d2.o.size()) {
                        if (d2.f5197l) {
                            cVar3.b = true;
                        } else {
                            cVar3.f5115c = uri;
                            gVar.r &= uri.equals(gVar.n);
                            gVar.n = uri;
                        }
                    } else {
                        gVar.r = false;
                        gVar.n = null;
                        f.a aVar = d2.o.get(i5);
                        f.a aVar2 = aVar.b;
                        Uri e1 = (aVar2 == null || (str = aVar2.f5203g) == null) ? null : c.a.a.b.g.h.e1(d2.a, str);
                        f.i.a.a.h1.s0.d c2 = gVar.c(e1, i2);
                        cVar3.a = c2;
                        if (c2 == null) {
                            String str2 = aVar.f5203g;
                            Uri e12 = str2 == null ? null : c.a.a.b.g.h.e1(d2.a, str2);
                            f.i.a.a.h1.s0.d c3 = gVar.c(e12, i2);
                            cVar3.a = c3;
                            if (c3 == null) {
                                cVar3.a = k.e(gVar.a, gVar.b, gVar.f5106f[i2], j4, d2, i5, uri, gVar.f5109i, gVar.p.l(), gVar.p.p(), gVar.f5111k, gVar.f5104d, kVar2, gVar.f5110j.get(e12), gVar.f5110j.get(e1));
                            }
                        }
                    }
                }
            }
            g.c cVar4 = this.f5140i;
            boolean z2 = cVar4.b;
            f.i.a.a.h1.s0.d dVar = cVar4.a;
            Uri uri4 = cVar4.f5115c;
            cVar4.a = r8;
            cVar4.b = false;
            cVar4.f5115c = r8;
            if (z2) {
                this.M = -9223372036854775807L;
                this.P = true;
                return true;
            } else if (dVar == null) {
                if (uri4 != null) {
                    ((f.i.a.a.h1.u0.t.c) ((l) this.b).b).f5156d.get(uri4).b();
                    return false;
                }
                return false;
            } else {
                if (dVar instanceof k) {
                    this.M = -9223372036854775807L;
                    k kVar3 = (k) dVar;
                    kVar3.C = this;
                    this.f5141j.add(kVar3);
                    this.B = kVar3.f4942c;
                }
                this.f5139h.w(dVar.a, dVar.b, this.a, dVar.f4942c, dVar.f4943d, dVar.f4944e, dVar.f4945f, dVar.f4946g, this.f5138g.g(dVar, this, ((w) this.f5137f).b(dVar.b)));
                return true;
            }
        }
        throw null;
    }

    @Override // f.i.a.a.h1.l0
    public void g(long j2) {
    }

    @Override // f.i.a.a.l1.c0.f
    public void h() {
        E();
    }

    @Override // f.i.a.a.h1.j0.b
    public void i(b0 b0Var) {
        this.n.post(this.f5143l);
    }

    @Override // f.i.a.a.l1.c0.b
    public void k(f.i.a.a.h1.s0.d dVar, long j2, long j3, boolean z) {
        f.i.a.a.h1.s0.d dVar2 = dVar;
        f0.a aVar = this.f5139h;
        f.i.a.a.l1.p pVar = dVar2.a;
        g0 g0Var = dVar2.f4947h;
        aVar.n(pVar, g0Var.f5588c, g0Var.f5589d, dVar2.b, this.a, dVar2.f4942c, dVar2.f4943d, dVar2.f4944e, dVar2.f4945f, dVar2.f4946g, j2, j3, g0Var.b);
        if (z) {
            return;
        }
        E();
        if (this.A > 0) {
            ((l) this.b).i(this);
        }
    }

    @Override // f.i.a.a.l1.c0.b
    public c0.c p(f.i.a.a.h1.s0.d dVar, long j2, long j3, IOException iOException, int i2) {
        boolean z;
        c0.c c2;
        f.i.a.a.h1.s0.d dVar2 = dVar;
        long j4 = dVar2.f4947h.b;
        boolean z2 = dVar2 instanceof k;
        long a2 = ((w) this.f5137f).a(dVar2.b, j3, iOException, i2);
        if (a2 != -9223372036854775807L) {
            g gVar = this.f5134c;
            f.i.a.a.j1.j jVar = gVar.p;
            z = jVar.a(jVar.r(gVar.f5108h.a(dVar2.f4942c)), a2);
        } else {
            z = false;
        }
        if (z) {
            if (z2 && j4 == 0) {
                ArrayList<k> arrayList = this.f5141j;
                c.a.a.b.g.h.v(arrayList.remove(arrayList.size() + (-1)) == dVar2);
                if (this.f5141j.isEmpty()) {
                    this.M = this.L;
                }
            }
            c2 = c0.f5563d;
        } else {
            long c3 = ((w) this.f5137f).c(dVar2.b, j3, iOException, i2);
            c2 = c3 != -9223372036854775807L ? c0.c(false, c3) : c0.f5564e;
        }
        f0.a aVar = this.f5139h;
        f.i.a.a.l1.p pVar = dVar2.a;
        g0 g0Var = dVar2.f4947h;
        aVar.t(pVar, g0Var.f5588c, g0Var.f5589d, dVar2.b, this.a, dVar2.f4942c, dVar2.f4943d, dVar2.f4944e, dVar2.f4945f, dVar2.f4946g, j2, j3, j4, iOException, !c2.a());
        if (z) {
            if (!this.z) {
                f(this.L);
            } else {
                ((l) this.b).i(this);
            }
        }
        return c2;
    }

    @Override // f.i.a.a.b1.h
    public f.i.a.a.b1.p q(int i2, int i3) {
        j0[] j0VarArr = this.q;
        int length = j0VarArr.length;
        boolean z = false;
        if (i3 == 1) {
            int i4 = this.t;
            if (i4 != -1) {
                if (this.s) {
                    return this.r[i4] == i2 ? j0VarArr[i4] : new f.i.a.a.b1.f();
                }
                this.s = true;
                this.r[i4] = i2;
                return j0VarArr[i4];
            } else if (this.Q) {
                return new f.i.a.a.b1.f();
            }
        } else if (i3 == 2) {
            int i5 = this.v;
            if (i5 != -1) {
                if (this.u) {
                    return this.r[i5] == i2 ? j0VarArr[i5] : new f.i.a.a.b1.f();
                }
                this.u = true;
                this.r[i5] = i2;
                return j0VarArr[i5];
            } else if (this.Q) {
                return new f.i.a.a.b1.f();
            }
        } else {
            for (int i6 = 0; i6 < length; i6++) {
                if (this.r[i6] == i2) {
                    return this.q[i6];
                }
            }
            if (this.Q) {
                return new f.i.a.a.b1.f();
            }
        }
        b bVar = new b(this.f5135d);
        bVar.w(this.R);
        bVar.f4878c.s = this.S;
        bVar.o = this;
        int i7 = length + 1;
        int[] copyOf = Arrays.copyOf(this.r, i7);
        this.r = copyOf;
        copyOf[length] = i2;
        j0[] j0VarArr2 = (j0[]) Arrays.copyOf(this.q, i7);
        this.q = j0VarArr2;
        j0VarArr2[length] = bVar;
        boolean[] copyOf2 = Arrays.copyOf(this.K, i7);
        this.K = copyOf2;
        copyOf2[length] = (i3 == 1 || i3 == 2) ? true : true;
        this.I |= this.K[length];
        if (i3 == 1) {
            this.s = true;
            this.t = length;
        } else if (i3 == 2) {
            this.u = true;
            this.v = length;
        }
        if (x(i3) > x(this.w)) {
            this.x = length;
            this.w = i3;
        }
        this.J = Arrays.copyOf(this.J, i7);
        return bVar;
    }

    @Override // f.i.a.a.l1.c0.b
    public void r(f.i.a.a.h1.s0.d dVar, long j2, long j3) {
        f.i.a.a.h1.s0.d dVar2 = dVar;
        g gVar = this.f5134c;
        if (gVar != null) {
            if (dVar2 instanceof g.a) {
                g.a aVar = (g.a) dVar2;
                gVar.f5112l = aVar.f4974i;
                gVar.f5110j.put(aVar.a.a, aVar.f5114k);
            }
            f0.a aVar2 = this.f5139h;
            f.i.a.a.l1.p pVar = dVar2.a;
            g0 g0Var = dVar2.f4947h;
            aVar2.q(pVar, g0Var.f5588c, g0Var.f5589d, dVar2.b, this.a, dVar2.f4942c, dVar2.f4943d, dVar2.f4944e, dVar2.f4945f, dVar2.f4946g, j2, j3, g0Var.b);
            if (!this.z) {
                f(this.L);
                return;
            } else {
                ((l) this.b).i(this);
                return;
            }
        }
        throw null;
    }

    public final k w() {
        ArrayList<k> arrayList = this.f5141j;
        return arrayList.get(arrayList.size() - 1);
    }

    public void y(int i2, boolean z, boolean z2) {
        if (!z2) {
            this.s = false;
            this.u = false;
        }
        this.S = i2;
        for (j0 j0Var : this.q) {
            j0Var.f4878c.s = i2;
        }
        if (z) {
            for (j0 j0Var2 : this.q) {
                j0Var2.n = true;
            }
        }
    }

    public final boolean z() {
        return this.M != -9223372036854775807L;
    }
}
