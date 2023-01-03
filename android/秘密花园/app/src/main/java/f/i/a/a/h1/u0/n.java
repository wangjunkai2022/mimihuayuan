package f.i.a.a.h1.u0;

import android.net.Uri;
import android.os.Handler;
import f.i.a.a.b0;
import f.i.a.a.b1.f;
import f.i.a.a.b1.h;
import f.i.a.a.d1.a;
import f.i.a.a.d1.i.k;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.l0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.s0.d;
import f.i.a.a.h1.u0.g;
import f.i.a.a.h1.u0.n;
import f.i.a.a.h1.u0.t.c;
import f.i.a.a.j1.j;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.e;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.p;
import f.i.a.a.l1.w;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: HlsSampleStreamWrapper.java */
/* loaded from: classes.dex */
public final class n implements c0.b<d>, c0.f, l0, h, j0.b {
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
    public final g f5059c;

    /* renamed from: d  reason: collision with root package name */
    public final e f5060d;

    /* renamed from: e  reason: collision with root package name */
    public final b0 f5061e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.b0 f5062f;

    /* renamed from: h  reason: collision with root package name */
    public final f0.a f5064h;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList<k> f5066j;

    /* renamed from: k  reason: collision with root package name */
    public final List<k> f5067k;
    public final Map<String, f.i.a.a.z0.e> p;
    public boolean s;
    public boolean u;
    public int w;
    public int x;
    public boolean y;
    public boolean z;

    /* renamed from: g  reason: collision with root package name */
    public final c0 f5063g = new c0("Loader:HlsSampleStreamWrapper");

    /* renamed from: i  reason: collision with root package name */
    public final g.c f5065i = new g.c();
    public int[] r = new int[0];
    public int t = -1;
    public int v = -1;
    public j0[] q = new j0[0];
    public boolean[] K = new boolean[0];
    public boolean[] J = new boolean[0];
    public final ArrayList<m> o = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f5068l = new Runnable() { // from class: f.i.a.a.h1.u0.c
        @Override // java.lang.Runnable
        public final void run() {
            n.this.A();
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public final Runnable f5069m = new Runnable() { // from class: f.i.a.a.h1.u0.b
        @Override // java.lang.Runnable
        public final void run() {
            n.this.C();
        }
    };
    public final Handler n = new Handler();

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes.dex */
    public interface a extends l0.a<n> {
    }

    /* compiled from: HlsSampleStreamWrapper.java */
    /* loaded from: classes.dex */
    public static final class b extends j0 {
        public b(e eVar) {
            super(eVar);
        }

        @Override // f.i.a.a.h1.j0, f.i.a.a.b1.p
        public void d(b0 b0Var) {
            f.i.a.a.d1.a aVar = b0Var.f4011g;
            aVar = null;
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
                    if ((bVar instanceof k) && "com.apple.streaming.transportStreamTimestamp".equals(((k) bVar).b)) {
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
            super.d(b0Var.e(aVar));
        }
    }

    public n(int i2, a aVar, g gVar, Map<String, f.i.a.a.z0.e> map, e eVar, long j2, b0 b0Var, f.i.a.a.l1.b0 b0Var2, f0.a aVar2) {
        this.a = i2;
        this.b = aVar;
        this.f5059c = gVar;
        this.p = map;
        this.f5060d = eVar;
        this.f5061e = b0Var;
        this.f5062f = b0Var2;
        this.f5064h = aVar2;
        ArrayList<k> arrayList = new ArrayList<>();
        this.f5066j = arrayList;
        this.f5067k = Collections.unmodifiableList(arrayList);
        this.L = j2;
        this.M = j2;
    }

    public static b0 v(b0 b0Var, b0 b0Var2, boolean z) {
        if (b0Var == null) {
            return b0Var2;
        }
        int i2 = z ? b0Var.f4009e : -1;
        int i3 = b0Var.v;
        int i4 = i3 != -1 ? i3 : b0Var2.v;
        String y = h0.y(b0Var.f4010f, r.f(b0Var2.f4013i));
        String c2 = r.c(y);
        if (c2 == null) {
            c2 = b0Var2.f4013i;
        }
        String str = b0Var.a;
        String str2 = b0Var.b;
        f.i.a.a.d1.a aVar = b0Var.f4011g;
        int i5 = b0Var.n;
        int i6 = b0Var.o;
        int i7 = b0Var.f4007c;
        String str3 = b0Var.A;
        f.i.a.a.d1.a aVar2 = b0Var2.f4011g;
        if (aVar2 != null) {
            if (aVar == null) {
                aVar = aVar2;
            } else {
                aVar = aVar2.a(aVar.a);
            }
        }
        return new b0(str, str2, i7, b0Var2.f4008d, i2, y, aVar, b0Var2.f4012h, c2, b0Var2.f4014j, b0Var2.f4015k, b0Var2.f4016l, b0Var2.f4017m, i5, i6, b0Var2.p, b0Var2.q, b0Var2.r, b0Var2.t, b0Var2.s, b0Var2.u, i4, b0Var2.w, b0Var2.x, b0Var2.y, b0Var2.z, str3, b0Var2.B);
    }

    public static int x(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 1;
        }
        return 3;
    }

    public final void A() {
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
                            String str = n.f4013i;
                            String str2 = b0Var.f4013i;
                            int f2 = r.f(str);
                            if (f2 == 3 ? h0.b(str, str2) && ((!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) || n.B == b0Var.B) : f2 == r.f(str2)) {
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
                String str3 = this.q[i5].n().f4013i;
                if (!r.j(str3)) {
                    if (r.h(str3)) {
                        i8 = 1;
                    } else {
                        i8 = r.i(str3) ? 3 : 6;
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
            o0 o0Var = this.f5059c.f5033h;
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
                    o0VarArr[i11] = new o0(v((i6 != 2 || !r.h(n2.f4013i)) ? null : this.f5061e, n2, false));
                }
            }
            this.E = new p0(o0VarArr);
            c.a.a.b.g.h.v(this.F == null);
            this.F = p0.f4836d;
            this.z = true;
            l lVar = (l) this.b;
            int i13 = lVar.n - 1;
            lVar.n = i13;
            if (i13 <= 0) {
                int i14 = 0;
                for (n nVar : lVar.p) {
                    i14 += nVar.E.a;
                }
                o0[] o0VarArr2 = new o0[i14];
                n[] nVarArr = lVar.p;
                int i15 = 0;
                for (n nVar2 : nVarArr) {
                    int i16 = nVar2.E.a;
                    int i17 = 0;
                    while (i17 < i16) {
                        o0VarArr2[i15] = nVar2.E.b[i17];
                        i17++;
                        i15++;
                    }
                }
                lVar.o = new p0(o0VarArr2);
                lVar.f5057m.h(lVar);
            }
        }
    }

    public void B() throws IOException {
        this.f5063g.e(Integer.MIN_VALUE);
        g gVar = this.f5059c;
        IOException iOException = gVar.f5038m;
        if (iOException == null) {
            Uri uri = gVar.n;
            if (uri != null && gVar.r) {
                ((c) gVar.f5032g).f(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void C() {
        this.y = true;
        if (!(this.D || this.G != null || 1 == 0)) {
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
                            String str = n.f4013i;
                            String str2 = b0Var.f4013i;
                            int f2 = r.f(str);
                            if (f2 == 3 ? h0.b(str, str2) && ((!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) || n.B == b0Var.B) : f2 == r.f(str2)) {
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
                String str3 = this.q[i5].n().f4013i;
                if (!r.j(str3)) {
                    if (r.h(str3)) {
                        i8 = 1;
                    } else {
                        i8 = r.i(str3) ? 3 : 6;
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
            o0 o0Var = this.f5059c.f5033h;
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
                    o0VarArr[i11] = new o0(v((i6 != 2 || !r.h(n2.f4013i)) ? null : this.f5061e, n2, false));
                }
            }
            this.E = new p0(o0VarArr);
            c.a.a.b.g.h.v(this.F == null);
            this.F = p0.f4836d;
            this.z = true;
            l lVar = (l) this.b;
            int i13 = lVar.n - 1;
            lVar.n = i13;
            if (i13 <= 0) {
                int i14 = 0;
                for (n nVar : lVar.p) {
                    i14 += nVar.E.a;
                }
                o0[] o0VarArr2 = new o0[i14];
                n[] nVarArr = lVar.p;
                int i15 = 0;
                for (n nVar2 : nVarArr) {
                    int i16 = nVar2.E.a;
                    int i17 = 0;
                    while (i17 < i16) {
                        o0VarArr2[i15] = nVar2.E.b[i17];
                        i17++;
                        i15++;
                    }
                }
                lVar.o = new p0(o0VarArr2);
                lVar.f5057m.h(lVar);
            }
        }
    }

    public void D(p0 p0Var, int i2, p0 p0Var2) {
        this.z = true;
        this.E = p0Var;
        this.F = p0Var2;
        this.H = i2;
        Handler handler = this.n;
        a aVar = this.b;
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
        this.f5066j.clear();
        if (this.f5063g.d()) {
            this.f5063g.b();
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
        return w().f4871g;
    }

    @Override // f.i.a.a.b1.h
    public void d() {
        this.Q = true;
        this.n.post(this.f5069m);
    }

    @Override // f.i.a.a.h1.l0
    public long e() {
        if (this.P) {
            return Long.MIN_VALUE;
        }
        if (z()) {
            return this.M;
        }
        long j2 = this.L;
        k w = w();
        if (!w.G) {
            if (this.f5066j.size() > 1) {
                ArrayList<k> arrayList = this.f5066j;
                w = arrayList.get(arrayList.size() - 2);
            } else {
                w = null;
            }
        }
        if (w != null) {
            j2 = Math.max(j2, w.f4871g);
        }
        if (this.y) {
            for (j0 j0Var : this.q) {
                j2 = Math.max(j2, j0Var.l());
            }
        }
        return j2;
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [f.i.a.a.h1.s0.d, android.net.Uri] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // f.i.a.a.h1.l0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean f(long r35) {
        /*
        // Method dump skipped, instructions count: 626
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.u0.n.f(long):boolean");
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
        this.n.post(this.f5068l);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, boolean] */
    @Override // f.i.a.a.l1.c0.b
    public void k(d dVar, long j2, long j3, boolean z) {
        d dVar2 = dVar;
        f0.a aVar = this.f5064h;
        p pVar = dVar2.a;
        g0 g0Var = dVar2.f4872h;
        aVar.n(pVar, g0Var.f5513c, g0Var.f5514d, dVar2.b, this.a, dVar2.f4867c, dVar2.f4868d, dVar2.f4869e, dVar2.f4870f, dVar2.f4871g, j2, j3, g0Var.b);
        if (!z) {
            E();
            if (this.A > 0) {
                ((l) this.b).i(this);
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, java.io.IOException, int] */
    @Override // f.i.a.a.l1.c0.b
    public c0.c p(d dVar, long j2, long j3, IOException iOException, int i2) {
        boolean z;
        c0.c cVar;
        d dVar2 = dVar;
        long j4 = dVar2.f4872h.b;
        boolean z2 = dVar2 instanceof k;
        long a2 = ((w) this.f5062f).a(dVar2.b, j3, iOException, i2);
        boolean z3 = false;
        if (a2 != -9223372036854775807L) {
            g gVar = this.f5059c;
            j jVar = gVar.p;
            z = jVar.a(jVar.r(gVar.f5033h.a(dVar2.f4867c)), a2);
        } else {
            z = false;
        }
        if (z) {
            if (z2 && j4 == 0) {
                ArrayList<k> arrayList = this.f5066j;
                if (arrayList.remove(arrayList.size() - 1) == dVar2) {
                    z3 = true;
                }
                c.a.a.b.g.h.v(z3);
                if (this.f5066j.isEmpty()) {
                    this.M = this.L;
                }
            }
            cVar = c0.f5488d;
        } else {
            long c2 = ((w) this.f5062f).c(dVar2.b, j3, iOException, i2);
            cVar = c2 != -9223372036854775807L ? c0.c(false, c2) : c0.f5489e;
        }
        f0.a aVar = this.f5064h;
        p pVar = dVar2.a;
        g0 g0Var = dVar2.f4872h;
        aVar.t(pVar, g0Var.f5513c, g0Var.f5514d, dVar2.b, this.a, dVar2.f4867c, dVar2.f4868d, dVar2.f4869e, dVar2.f4870f, dVar2.f4871g, j2, j3, j4, iOException, !cVar.a());
        if (z) {
            if (!this.z) {
                f(this.L);
            } else {
                ((l) this.b).i(this);
            }
        }
        return cVar;
    }

    @Override // f.i.a.a.b1.h
    public f.i.a.a.b1.p q(int i2, int i3) {
        j0[] j0VarArr = this.q;
        int length = j0VarArr.length;
        boolean z = false;
        if (i3 == 1) {
            int i4 = this.t;
            if (i4 != -1) {
                if (!this.s) {
                    this.s = true;
                    this.r[i4] = i2;
                    return j0VarArr[i4];
                } else if (this.r[i4] == i2) {
                    return j0VarArr[i4];
                } else {
                    return new f();
                }
            } else if (this.Q) {
                return new f();
            }
        } else if (i3 == 2) {
            int i5 = this.v;
            if (i5 != -1) {
                if (!this.u) {
                    this.u = true;
                    this.r[i5] = i2;
                    return j0VarArr[i5];
                } else if (this.r[i5] == i2) {
                    return j0VarArr[i5];
                } else {
                    return new f();
                }
            } else if (this.Q) {
                return new f();
            }
        } else {
            for (int i6 = 0; i6 < length; i6++) {
                if (this.r[i6] == i2) {
                    return this.q[i6];
                }
            }
            if (this.Q) {
                return new f();
            }
        }
        b bVar = new b(this.f5060d);
        bVar.w(this.R);
        bVar.f4803c.s = this.S;
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
        if (i3 == 1 || i3 == 2) {
            z = true;
        }
        copyOf2[length] = z;
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

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long] */
    @Override // f.i.a.a.l1.c0.b
    public void r(d dVar, long j2, long j3) {
        d dVar2 = dVar;
        g gVar = this.f5059c;
        if (gVar != null) {
            if (dVar2 instanceof g.a) {
                g.a aVar = (g.a) dVar2;
                gVar.f5037l = aVar.f4899i;
                gVar.f5035j.put(aVar.a.a, aVar.f5039k);
            }
            f0.a aVar2 = this.f5064h;
            p pVar = dVar2.a;
            g0 g0Var = dVar2.f4872h;
            aVar2.q(pVar, g0Var.f5513c, g0Var.f5514d, dVar2.b, this.a, dVar2.f4867c, dVar2.f4868d, dVar2.f4869e, dVar2.f4870f, dVar2.f4871g, j2, j3, g0Var.b);
            if (!this.z) {
                f(this.L);
            } else {
                ((l) this.b).i(this);
            }
        } else {
            throw null;
        }
    }

    public final k w() {
        ArrayList<k> arrayList = this.f5066j;
        return arrayList.get(arrayList.size() - 1);
    }

    public void y(int i2, boolean z, boolean z2) {
        if (!z2) {
            this.s = false;
            this.u = false;
        }
        this.S = i2;
        for (j0 j0Var : this.q) {
            j0Var.f4803c.s = i2;
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
