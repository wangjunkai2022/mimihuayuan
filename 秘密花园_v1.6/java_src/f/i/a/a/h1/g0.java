package f.i.a.a.h1;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b1.n;
import f.i.a.a.d1.a;
import f.i.a.a.h1.a0;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.j0;
import f.i.a.a.l1.c0;
import f.i.a.a.s0;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* compiled from: ProgressiveMediaPeriod.java */
/* loaded from: classes.dex */
public final class g0 implements d0, f.i.a.a.b1.h, c0.b<a>, c0.f, j0.b {
    public static final f.i.a.a.b0 K = f.i.a.a.b0.m("icy", "application/x-icy", RecyclerView.FOREVER_NS);
    public boolean A;
    public int B;
    public long E;
    public boolean G;
    public int H;
    public boolean I;
    public boolean J;
    public final Uri a;
    public final f.i.a.a.l1.m b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.b0 f4838c;

    /* renamed from: d  reason: collision with root package name */
    public final f0.a f4839d;

    /* renamed from: e  reason: collision with root package name */
    public final c f4840e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.e f4841f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f4842g;

    /* renamed from: h  reason: collision with root package name */
    public final long f4843h;

    /* renamed from: j  reason: collision with root package name */
    public final b f4845j;
    @Nullable
    public d0.a o;
    @Nullable
    public f.i.a.a.b1.n p;
    @Nullable
    public f.i.a.a.d1.h.b q;
    public boolean t;
    public boolean u;
    @Nullable
    public d v;
    public boolean w;
    public boolean y;
    public boolean z;

    /* renamed from: i  reason: collision with root package name */
    public final f.i.a.a.l1.c0 f4844i = new f.i.a.a.l1.c0("Loader:ProgressiveMediaPeriod");

    /* renamed from: k  reason: collision with root package name */
    public final f.i.a.a.m1.k f4846k = new f.i.a.a.m1.k();

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f4847l = new Runnable() { // from class: f.i.a.a.h1.b
        @Override // java.lang.Runnable
        public final void run() {
            g0.this.B();
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public final Runnable f4848m = new Runnable() { // from class: f.i.a.a.h1.m
        @Override // java.lang.Runnable
        public final void run() {
            g0.this.A();
        }
    };
    public final Handler n = new Handler();
    public f[] s = new f[0];
    public j0[] r = new j0[0];
    public long F = -9223372036854775807L;
    public long D = -1;
    public long C = -9223372036854775807L;
    public int x = 1;

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public final class a implements c0.e, a0.a {
        public final Uri a;
        public final f.i.a.a.l1.g0 b;

        /* renamed from: c  reason: collision with root package name */
        public final b f4849c;

        /* renamed from: d  reason: collision with root package name */
        public final f.i.a.a.b1.h f4850d;

        /* renamed from: e  reason: collision with root package name */
        public final f.i.a.a.m1.k f4851e;

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f4853g;

        /* renamed from: i  reason: collision with root package name */
        public long f4855i;

        /* renamed from: j  reason: collision with root package name */
        public f.i.a.a.l1.p f4856j;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        public f.i.a.a.b1.p f4858l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f4859m;

        /* renamed from: f  reason: collision with root package name */
        public final f.i.a.a.b1.m f4852f = new f.i.a.a.b1.m();

        /* renamed from: h  reason: collision with root package name */
        public boolean f4854h = true;

        /* renamed from: k  reason: collision with root package name */
        public long f4857k = -1;

        public a(Uri uri, f.i.a.a.l1.m mVar, b bVar, f.i.a.a.b1.h hVar, f.i.a.a.m1.k kVar) {
            this.a = uri;
            this.b = new f.i.a.a.l1.g0(mVar);
            this.f4849c = bVar;
            this.f4850d = hVar;
            this.f4851e = kVar;
            this.f4856j = new f.i.a.a.l1.p(this.a, 0L, -1L, g0.this.f4842g, 22);
        }

        @Override // f.i.a.a.l1.c0.e
        public void a() throws IOException, InterruptedException {
            int i2 = 0;
            while (i2 == 0 && !this.f4853g) {
                f.i.a.a.b1.d dVar = null;
                try {
                    long j2 = this.f4852f.a;
                    f.i.a.a.l1.p pVar = new f.i.a.a.l1.p(this.a, j2, -1L, g0.this.f4842g, 22);
                    this.f4856j = pVar;
                    long b = this.b.b(pVar);
                    this.f4857k = b;
                    if (b != -1) {
                        this.f4857k = b + j2;
                    }
                    Uri d2 = this.b.d();
                    c.a.a.b.g.h.t(d2);
                    g0.this.q = f.i.a.a.d1.h.b.a(this.b.a());
                    f.i.a.a.l1.m mVar = this.b;
                    if (g0.this.q != null && g0.this.q.f4637f != -1) {
                        mVar = new a0(this.b, g0.this.q.f4637f, this);
                        f.i.a.a.b1.p E = g0.this.E(new f(0, true));
                        this.f4858l = E;
                        E.d(g0.K);
                    }
                    f.i.a.a.b1.d dVar2 = new f.i.a.a.b1.d(mVar, j2, this.f4857k);
                    try {
                        f.i.a.a.b1.g a = this.f4849c.a(dVar2, this.f4850d, d2);
                        if (this.f4854h) {
                            a.f(j2, this.f4855i);
                            this.f4854h = false;
                        }
                        while (i2 == 0 && !this.f4853g) {
                            f.i.a.a.m1.k kVar = this.f4851e;
                            synchronized (kVar) {
                                while (!kVar.a) {
                                    kVar.wait();
                                }
                            }
                            i2 = a.c(dVar2, this.f4852f);
                            if (dVar2.f4126d > g0.this.f4843h + j2) {
                                j2 = dVar2.f4126d;
                                f.i.a.a.m1.k kVar2 = this.f4851e;
                                synchronized (kVar2) {
                                    kVar2.a = false;
                                }
                                g0.this.n.post(g0.this.f4848m);
                            }
                        }
                        if (i2 == 1) {
                            i2 = 0;
                        } else {
                            this.f4852f.a = dVar2.f4126d;
                        }
                        f.i.a.a.l1.g0 g0Var = this.b;
                        if (g0Var != null) {
                            try {
                                g0Var.a.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        dVar = dVar2;
                        if (i2 != 1 && dVar != null) {
                            this.f4852f.a = dVar.f4126d;
                        }
                        f.i.a.a.m1.h0.k(this.b);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        @Override // f.i.a.a.l1.c0.e
        public void b() {
            this.f4853g = true;
        }
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final f.i.a.a.b1.g[] a;
        @Nullable
        public f.i.a.a.b1.g b;

        public b(f.i.a.a.b1.g[] gVarArr) {
            this.a = gVarArr;
        }

        public f.i.a.a.b1.g a(f.i.a.a.b1.d dVar, f.i.a.a.b1.h hVar, Uri uri) throws IOException, InterruptedException {
            f.i.a.a.b1.g gVar = this.b;
            if (gVar != null) {
                return gVar;
            }
            f.i.a.a.b1.g[] gVarArr = this.a;
            int length = gVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                f.i.a.a.b1.g gVar2 = gVarArr[i2];
                try {
                } catch (EOFException unused) {
                } catch (Throwable th) {
                    dVar.f4128f = 0;
                    throw th;
                }
                if (gVar2.i(dVar)) {
                    this.b = gVar2;
                    dVar.f4128f = 0;
                    break;
                }
                continue;
                dVar.f4128f = 0;
                i2++;
            }
            f.i.a.a.b1.g gVar3 = this.b;
            if (gVar3 != null) {
                gVar3.d(hVar);
                return this.b;
            }
            throw new q0(f.b.a.a.a.l(f.b.a.a.a.o("None of the available extractors ("), f.i.a.a.m1.h0.z(this.a), ") could read the stream."), uri);
        }
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public static final class d {
        public final f.i.a.a.b1.n a;
        public final p0 b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f4860c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f4861d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean[] f4862e;

        public d(f.i.a.a.b1.n nVar, p0 p0Var, boolean[] zArr) {
            this.a = nVar;
            this.b = p0Var;
            this.f4860c = zArr;
            int i2 = p0Var.a;
            this.f4861d = new boolean[i2];
            this.f4862e = new boolean[i2];
        }
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public final class e implements k0 {
        public final int a;

        public e(int i2) {
            this.a = i2;
        }

        @Override // f.i.a.a.h1.k0
        public void a() throws IOException {
            g0 g0Var = g0.this;
            g0Var.f4844i.e(((f.i.a.a.l1.w) g0Var.f4838c).b(g0Var.x));
        }

        @Override // f.i.a.a.h1.k0
        public boolean d() {
            g0 g0Var = g0.this;
            return !g0Var.G() && (g0Var.I || g0Var.r[this.a].o());
        }

        @Override // f.i.a.a.h1.k0
        public int i(f.i.a.a.c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
            g0 g0Var = g0.this;
            int i2 = this.a;
            if (g0Var.G()) {
                return -3;
            }
            g0Var.C(i2);
            int s = g0Var.r[i2].s(c0Var, eVar, z, g0Var.I, g0Var.E);
            if (s == -3) {
                g0Var.D(i2);
            }
            return s;
        }

        @Override // f.i.a.a.h1.k0
        public int q(long j2) {
            g0 g0Var = g0.this;
            int i2 = this.a;
            int i3 = 0;
            if (!g0Var.G()) {
                g0Var.C(i2);
                j0 j0Var = g0Var.r[i2];
                if (g0Var.I && j2 > j0Var.l()) {
                    i3 = j0Var.f();
                } else {
                    int e2 = j0Var.e(j2, true, true);
                    if (e2 != -1) {
                        i3 = e2;
                    }
                }
                if (i3 == 0) {
                    g0Var.D(i2);
                }
            }
            return i3;
        }
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public static final class f {
        public final int a;
        public final boolean b;

        public f(int i2, boolean z) {
            this.a = i2;
            this.b = z;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || f.class != obj.getClass()) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && this.b == fVar.b;
        }

        public int hashCode() {
            return (this.a * 31) + (this.b ? 1 : 0);
        }
    }

    public g0(Uri uri, f.i.a.a.l1.m mVar, f.i.a.a.b1.g[] gVarArr, f.i.a.a.l1.b0 b0Var, f0.a aVar, c cVar, f.i.a.a.l1.e eVar, @Nullable String str, int i2) {
        this.a = uri;
        this.b = mVar;
        this.f4838c = b0Var;
        this.f4839d = aVar;
        this.f4840e = cVar;
        this.f4841f = eVar;
        this.f4842g = str;
        this.f4843h = i2;
        this.f4845j = new b(gVarArr);
        aVar.y();
    }

    public /* synthetic */ void A() {
        if (this.J) {
            return;
        }
        d0.a aVar = this.o;
        c.a.a.b.g.h.t(aVar);
        aVar.i(this);
    }

    public final void B() {
        boolean[] zArr;
        f.i.a.a.b0 b0Var;
        f.i.a.a.d1.a a2;
        int i2;
        f.i.a.a.b1.n nVar = this.p;
        if (this.J || this.u || !this.t || nVar == null) {
            return;
        }
        char c2 = 0;
        for (j0 j0Var : this.r) {
            if (j0Var.n() == null) {
                return;
            }
        }
        f.i.a.a.m1.k kVar = this.f4846k;
        synchronized (kVar) {
            kVar.a = false;
        }
        int length = this.r.length;
        o0[] o0VarArr = new o0[length];
        boolean[] zArr2 = new boolean[length];
        this.C = nVar.j();
        int i3 = 0;
        while (i3 < length) {
            f.i.a.a.b0 n = this.r[i3].n();
            String str = n.f4097i;
            boolean h2 = f.i.a.a.m1.r.h(str);
            boolean z = h2 || f.i.a.a.m1.r.j(str);
            zArr2[i3] = z;
            this.w = z | this.w;
            f.i.a.a.d1.h.b bVar = this.q;
            if (bVar != null) {
                if (h2 || this.s[i3].b) {
                    f.i.a.a.d1.a aVar = n.f4095g;
                    if (aVar == null) {
                        a.b[] bVarArr = new a.b[1];
                        bVarArr[c2] = bVar;
                        a2 = new f.i.a.a.d1.a(bVarArr);
                    } else {
                        a.b[] bVarArr2 = new a.b[1];
                        bVarArr2[c2] = bVar;
                        a2 = aVar.a(bVarArr2);
                    }
                    n = n.e(a2);
                }
                if (h2 && n.f4093e == -1 && (i2 = bVar.a) != -1) {
                    zArr = zArr2;
                    b0Var = new f.i.a.a.b0(n.a, n.b, n.f4091c, n.f4092d, i2, n.f4094f, n.f4095g, n.f4096h, n.f4097i, n.f4098j, n.f4099k, n.f4100l, n.f4101m, n.n, n.o, n.p, n.q, n.r, n.t, n.s, n.u, n.v, n.w, n.x, n.y, n.z, n.A, n.B);
                    o0VarArr[i3] = new o0(b0Var);
                    i3++;
                    zArr2 = zArr;
                    c2 = 0;
                }
            }
            zArr = zArr2;
            b0Var = n;
            o0VarArr[i3] = new o0(b0Var);
            i3++;
            zArr2 = zArr;
            c2 = 0;
        }
        boolean[] zArr3 = zArr2;
        this.x = (this.D == -1 && nVar.j() == -9223372036854775807L) ? 7 : 1;
        this.v = new d(nVar, new p0(o0VarArr), zArr3);
        this.u = true;
        ((h0) this.f4840e).q(this.C, nVar.g());
        d0.a aVar2 = this.o;
        c.a.a.b.g.h.t(aVar2);
        aVar2.h(this);
    }

    public final void C(int i2) {
        d y = y();
        boolean[] zArr = y.f4862e;
        if (zArr[i2]) {
            return;
        }
        f.i.a.a.b0 b0Var = y.b.b[i2].b[0];
        this.f4839d.b(f.i.a.a.m1.r.f(b0Var.f4097i), b0Var, 0, null, this.E);
        zArr[i2] = true;
    }

    public final void D(int i2) {
        boolean[] zArr = y().f4860c;
        if (this.G && zArr[i2] && !this.r[i2].o()) {
            this.F = 0L;
            this.G = false;
            this.z = true;
            this.E = 0L;
            this.H = 0;
            for (j0 j0Var : this.r) {
                j0Var.u(false);
            }
            d0.a aVar = this.o;
            c.a.a.b.g.h.t(aVar);
            aVar.i(this);
        }
    }

    public final f.i.a.a.b1.p E(f fVar) {
        int length = this.r.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (fVar.equals(this.s[i2])) {
                return this.r[i2];
            }
        }
        j0 j0Var = new j0(this.f4841f);
        j0Var.o = this;
        int i3 = length + 1;
        f[] fVarArr = (f[]) Arrays.copyOf(this.s, i3);
        fVarArr[length] = fVar;
        this.s = fVarArr;
        j0[] j0VarArr = (j0[]) Arrays.copyOf(this.r, i3);
        j0VarArr[length] = j0Var;
        this.r = j0VarArr;
        return j0Var;
    }

    public final void F() {
        a aVar = new a(this.a, this.b, this.f4845j, this, this.f4846k);
        if (this.u) {
            f.i.a.a.b1.n nVar = y().a;
            c.a.a.b.g.h.v(z());
            long j2 = this.C;
            if (j2 != -9223372036854775807L && this.F > j2) {
                this.I = true;
                this.F = -9223372036854775807L;
                return;
            }
            long j3 = nVar.h(this.F).a.b;
            long j4 = this.F;
            aVar.f4852f.a = j3;
            aVar.f4855i = j4;
            aVar.f4854h = true;
            aVar.f4859m = false;
            this.F = -9223372036854775807L;
        }
        this.H = w();
        this.f4839d.w(aVar.f4856j, 1, -1, null, 0, null, aVar.f4855i, this.C, this.f4844i.g(aVar, this, ((f.i.a.a.l1.w) this.f4838c).b(this.x)));
    }

    public final boolean G() {
        return this.z || z();
    }

    @Override // f.i.a.a.b1.h
    public void a(f.i.a.a.b1.n nVar) {
        if (this.q != null) {
            nVar = new n.b(-9223372036854775807L, 0L);
        }
        this.p = nVar;
        this.n.post(this.f4847l);
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        f.i.a.a.b1.n nVar = y().a;
        if (nVar.g()) {
            n.a h2 = nVar.h(j2);
            return f.i.a.a.m1.h0.g0(j2, s0Var, h2.a.a, h2.b.a);
        }
        return 0L;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        if (this.B == 0) {
            return Long.MIN_VALUE;
        }
        return e();
    }

    @Override // f.i.a.a.b1.h
    public void d() {
        this.t = true;
        this.n.post(this.f4847l);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        long j2;
        boolean z;
        boolean[] zArr = y().f4860c;
        if (this.I) {
            return Long.MIN_VALUE;
        }
        if (z()) {
            return this.F;
        }
        if (this.w) {
            int length = this.r.length;
            j2 = Long.MAX_VALUE;
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i2]) {
                    i0 i0Var = this.r[i2].f4887c;
                    synchronized (i0Var) {
                        z = i0Var.o;
                    }
                    if (!z) {
                        j2 = Math.min(j2, this.r[i2].l());
                    }
                }
            }
        } else {
            j2 = Long.MAX_VALUE;
        }
        if (j2 == RecyclerView.FOREVER_NS) {
            j2 = x();
        }
        return j2 == Long.MIN_VALUE ? this.E : j2;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        if (this.I || this.G) {
            return false;
        }
        if (this.u && this.B == 0) {
            return false;
        }
        boolean a2 = this.f4846k.a();
        if (this.f4844i.d()) {
            return a2;
        }
        F();
        return true;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
    }

    @Override // f.i.a.a.l1.c0.f
    public void h() {
        for (j0 j0Var : this.r) {
            j0Var.u(false);
        }
        b bVar = this.f4845j;
        f.i.a.a.b1.g gVar = bVar.b;
        if (gVar != null) {
            gVar.a();
            bVar.b = null;
        }
    }

    @Override // f.i.a.a.h1.j0.b
    public void i(f.i.a.a.b0 b0Var) {
        this.n.post(this.f4847l);
    }

    @Override // f.i.a.a.h1.d0
    public long j(f.i.a.a.j1.j[] jVarArr, boolean[] zArr, k0[] k0VarArr, boolean[] zArr2, long j2) {
        d y = y();
        p0 p0Var = y.b;
        boolean[] zArr3 = y.f4861d;
        int i2 = this.B;
        int i3 = 0;
        for (int i4 = 0; i4 < jVarArr.length; i4++) {
            if (k0VarArr[i4] != null && (jVarArr[i4] == null || !zArr[i4])) {
                int i5 = ((e) k0VarArr[i4]).a;
                c.a.a.b.g.h.v(zArr3[i5]);
                this.B--;
                zArr3[i5] = false;
                k0VarArr[i4] = null;
            }
        }
        boolean z = !this.y ? j2 == 0 : i2 != 0;
        for (int i6 = 0; i6 < jVarArr.length; i6++) {
            if (k0VarArr[i6] == null && jVarArr[i6] != null) {
                f.i.a.a.j1.j jVar = jVarArr[i6];
                c.a.a.b.g.h.v(jVar.length() == 1);
                c.a.a.b.g.h.v(jVar.e(0) == 0);
                int a2 = p0Var.a(jVar.j());
                c.a.a.b.g.h.v(!zArr3[a2]);
                this.B++;
                zArr3[a2] = true;
                k0VarArr[i6] = new e(a2);
                zArr2[i6] = true;
                if (!z) {
                    j0 j0Var = this.r[a2];
                    j0Var.v();
                    z = j0Var.e(j2, true, true) == -1 && j0Var.m() != 0;
                }
            }
        }
        if (this.B == 0) {
            this.G = false;
            this.z = false;
            if (this.f4844i.d()) {
                j0[] j0VarArr = this.r;
                int length = j0VarArr.length;
                while (i3 < length) {
                    j0VarArr[i3].j();
                    i3++;
                }
                this.f4844i.b();
            } else {
                for (j0 j0Var2 : this.r) {
                    j0Var2.u(false);
                }
            }
        } else if (z) {
            j2 = u(j2);
            while (i3 < k0VarArr.length) {
                if (k0VarArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.y = true;
        return j2;
    }

    @Override // f.i.a.a.l1.c0.b
    public void k(a aVar, long j2, long j3, boolean z) {
        a aVar2 = aVar;
        f0.a aVar3 = this.f4839d;
        f.i.a.a.l1.p pVar = aVar2.f4856j;
        f.i.a.a.l1.g0 g0Var = aVar2.b;
        aVar3.n(pVar, g0Var.f5597c, g0Var.f5598d, 1, -1, null, 0, null, aVar2.f4855i, this.C, j2, j3, g0Var.b);
        if (z) {
            return;
        }
        if (this.D == -1) {
            this.D = aVar2.f4857k;
        }
        for (j0 j0Var : this.r) {
            j0Var.u(false);
        }
        if (this.B > 0) {
            d0.a aVar4 = this.o;
            c.a.a.b.g.h.t(aVar4);
            aVar4.i(this);
        }
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (!this.A) {
            this.f4839d.B();
            this.A = true;
        }
        if (this.z) {
            if (this.I || w() > this.H) {
                this.z = false;
                return this.E;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.o = aVar;
        this.f4846k.a();
        F();
    }

    @Override // f.i.a.a.h1.d0
    public /* synthetic */ List<f.i.a.a.e1.c0> n(List<f.i.a.a.j1.j> list) {
        return c0.a(this, list);
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return y().b;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    @Override // f.i.a.a.l1.c0.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f.i.a.a.l1.c0.c p(f.i.a.a.h1.g0.a r31, long r32, long r34, java.io.IOException r36, int r37) {
        /*
            r30 = this;
            r0 = r30
            r1 = r31
            f.i.a.a.h1.g0$a r1 = (f.i.a.a.h1.g0.a) r1
            long r2 = r0.D
            r4 = -1
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L12
            long r2 = r1.f4857k
            r0.D = r2
        L12:
            f.i.a.a.l1.b0 r2 = r0.f4838c
            int r7 = r0.x
            r6 = r2
            f.i.a.a.l1.w r6 = (f.i.a.a.l1.w) r6
            r8 = r34
            r10 = r36
            r11 = r37
            long r2 = r6.c(r7, r8, r10, r11)
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = 1
            int r9 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r9 != 0) goto L30
            f.i.a.a.l1.c0$c r2 = f.i.a.a.l1.c0.f5573e
            goto L8b
        L30:
            int r9 = r30.w()
            int r10 = r0.H
            r11 = 0
            if (r9 <= r10) goto L3b
            r10 = 1
            goto L3c
        L3b:
            r10 = 0
        L3c:
            long r12 = r0.D
            int r14 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r14 != 0) goto L7f
            f.i.a.a.b1.n r4 = r0.p
            if (r4 == 0) goto L4f
            long r4 = r4.j()
            int r12 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r12 == 0) goto L4f
            goto L7f
        L4f:
            boolean r4 = r0.u
            if (r4 == 0) goto L5c
            boolean r4 = r30.G()
            if (r4 != 0) goto L5c
            r0.G = r8
            goto L82
        L5c:
            boolean r4 = r0.u
            r0.z = r4
            r4 = 0
            r0.E = r4
            r0.H = r11
            f.i.a.a.h1.j0[] r6 = r0.r
            int r7 = r6.length
            r9 = 0
        L6a:
            if (r9 >= r7) goto L74
            r12 = r6[r9]
            r12.u(r11)
            int r9 = r9 + 1
            goto L6a
        L74:
            f.i.a.a.b1.m r6 = r1.f4852f
            r6.a = r4
            r1.f4855i = r4
            r1.f4854h = r8
            r1.f4859m = r11
            goto L81
        L7f:
            r0.H = r9
        L81:
            r11 = 1
        L82:
            if (r11 == 0) goto L89
            f.i.a.a.l1.c0$c r2 = f.i.a.a.l1.c0.c(r10, r2)
            goto L8b
        L89:
            f.i.a.a.l1.c0$c r2 = f.i.a.a.l1.c0.f5572d
        L8b:
            f.i.a.a.h1.f0$a r9 = r0.f4839d
            f.i.a.a.l1.p r10 = r1.f4856j
            f.i.a.a.l1.g0 r3 = r1.b
            android.net.Uri r11 = r3.f5597c
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r12 = r3.f5598d
            r13 = 1
            r16 = 0
            r17 = 0
            long r4 = r1.f4855i
            r18 = r4
            long r4 = r0.C
            r20 = r4
            long r3 = r3.b
            r26 = r3
            boolean r1 = r2.a()
            r29 = r1 ^ 1
            r14 = -1
            r15 = 0
            r22 = r32
            r24 = r34
            r28 = r36
            r9.t(r10, r11, r12, r13, r14, r15, r16, r17, r18, r20, r22, r24, r26, r28, r29)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.g0.p(f.i.a.a.l1.c0$e, long, long, java.io.IOException, int):f.i.a.a.l1.c0$c");
    }

    @Override // f.i.a.a.b1.h
    public f.i.a.a.b1.p q(int i2, int i3) {
        return E(new f(i2, false));
    }

    @Override // f.i.a.a.l1.c0.b
    public void r(a aVar, long j2, long j3) {
        f.i.a.a.b1.n nVar;
        a aVar2 = aVar;
        if (this.C == -9223372036854775807L && (nVar = this.p) != null) {
            boolean g2 = nVar.g();
            long x = x();
            long j4 = x == Long.MIN_VALUE ? 0L : x + 10000;
            this.C = j4;
            ((h0) this.f4840e).q(j4, g2);
        }
        f0.a aVar3 = this.f4839d;
        f.i.a.a.l1.p pVar = aVar2.f4856j;
        f.i.a.a.l1.g0 g0Var = aVar2.b;
        aVar3.q(pVar, g0Var.f5597c, g0Var.f5598d, 1, -1, null, 0, null, aVar2.f4855i, this.C, j2, j3, g0Var.b);
        if (this.D == -1) {
            this.D = aVar2.f4857k;
        }
        this.I = true;
        d0.a aVar4 = this.o;
        c.a.a.b.g.h.t(aVar4);
        aVar4.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        this.f4844i.e(((f.i.a.a.l1.w) this.f4838c).b(this.x));
        if (this.I && !this.u) {
            throw new f.i.a.a.h0("Loading finished before preparation is complete.");
        }
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        if (z()) {
            return;
        }
        boolean[] zArr = y().f4861d;
        int length = this.r.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.r[i2].i(j2, z, zArr[i2]);
        }
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        int i2;
        boolean z;
        d y = y();
        f.i.a.a.b1.n nVar = y.a;
        boolean[] zArr = y.f4860c;
        if (!nVar.g()) {
            j2 = 0;
        }
        this.z = false;
        this.E = j2;
        if (z()) {
            this.F = j2;
            return j2;
        }
        if (this.x != 7) {
            int length = this.r.length;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                j0 j0Var = this.r[i2];
                j0Var.v();
                i2 = ((j0Var.e(j2, true, false) != -1) || (!zArr[i2] && this.w)) ? i2 + 1 : 0;
            }
            z = false;
            if (z) {
                return j2;
            }
        }
        this.G = false;
        this.F = j2;
        this.I = false;
        if (this.f4844i.d()) {
            this.f4844i.b();
        } else {
            for (j0 j0Var2 : this.r) {
                j0Var2.u(false);
            }
        }
        return j2;
    }

    public final int w() {
        int i2 = 0;
        for (j0 j0Var : this.r) {
            i0 i0Var = j0Var.f4887c;
            i2 += i0Var.f4881j + i0Var.f4880i;
        }
        return i2;
    }

    public final long x() {
        long j2 = Long.MIN_VALUE;
        for (j0 j0Var : this.r) {
            j2 = Math.max(j2, j0Var.l());
        }
        return j2;
    }

    public final d y() {
        d dVar = this.v;
        c.a.a.b.g.h.t(dVar);
        return dVar;
    }

    public final boolean z() {
        return this.F != -9223372036854775807L;
    }
}
