package f.i.a.a.h1;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b0;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.n;
import f.i.a.a.d1.a;
import f.i.a.a.h1.a0;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.j0;
import f.i.a.a.j1.j;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import f.i.a.a.l1.w;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.k;
import f.i.a.a.m1.r;
import f.i.a.a.s0;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* compiled from: ProgressiveMediaPeriod.java */
/* loaded from: classes.dex */
public final class g0 implements d0, h, c0.b<a>, c0.f, j0.b {
    public static final b0 K = b0.m("icy", "application/x-icy", RecyclerView.FOREVER_NS);
    public boolean A;
    public int B;
    public long E;
    public boolean G;
    public int H;
    public boolean I;
    public boolean J;
    public final Uri a;
    public final m b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.b0 f4754c;

    /* renamed from: d  reason: collision with root package name */
    public final f0.a f4755d;

    /* renamed from: e  reason: collision with root package name */
    public final c f4756e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.e f4757f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f4758g;

    /* renamed from: h  reason: collision with root package name */
    public final long f4759h;

    /* renamed from: j  reason: collision with root package name */
    public final b f4761j;
    @Nullable
    public d0.a o;
    @Nullable
    public n p;
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
    public final c0 f4760i = new c0("Loader:ProgressiveMediaPeriod");

    /* renamed from: k  reason: collision with root package name */
    public final k f4762k = new k();

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f4763l = new Runnable() { // from class: f.i.a.a.h1.b
        @Override // java.lang.Runnable
        public final void run() {
            g0.this.B();
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public final Runnable f4764m = new Runnable() { // from class: f.i.a.a.h1.m
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
        public final b f4765c;

        /* renamed from: d  reason: collision with root package name */
        public final h f4766d;

        /* renamed from: e  reason: collision with root package name */
        public final k f4767e;

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f4769g;

        /* renamed from: i  reason: collision with root package name */
        public long f4771i;

        /* renamed from: j  reason: collision with root package name */
        public p f4772j;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        public f.i.a.a.b1.p f4774l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f4775m;

        /* renamed from: f  reason: collision with root package name */
        public final f.i.a.a.b1.m f4768f = new f.i.a.a.b1.m();

        /* renamed from: h  reason: collision with root package name */
        public boolean f4770h = true;

        /* renamed from: k  reason: collision with root package name */
        public long f4773k = -1;

        public a(Uri uri, m mVar, b bVar, h hVar, k kVar) {
            this.a = uri;
            this.b = new f.i.a.a.l1.g0(mVar);
            this.f4765c = bVar;
            this.f4766d = hVar;
            this.f4767e = kVar;
            this.f4772j = new p(this.a, 0, -1, g0.this.f4758g, 22);
        }

        @Override // f.i.a.a.l1.c0.e
        public void a() throws IOException, InterruptedException {
            Throwable th;
            int i2 = 0;
            while (i2 == 0 && !this.f4769g) {
                f.i.a.a.b1.d dVar = null;
                try {
                    long j2 = this.f4768f.a;
                    p pVar = new p(this.a, j2, -1, g0.this.f4758g, 22);
                    this.f4772j = pVar;
                    long b = this.b.b(pVar);
                    this.f4773k = b;
                    if (b != -1) {
                        this.f4773k = b + j2;
                    }
                    Uri d2 = this.b.d();
                    c.a.a.b.g.h.t(d2);
                    g0.this.q = f.i.a.a.d1.h.b.a(this.b.a());
                    m mVar = this.b;
                    if (!(g0.this.q == null || g0.this.q.f4553f == -1)) {
                        mVar = new a0(this.b, g0.this.q.f4553f, this);
                        f.i.a.a.b1.p E = g0.this.E(new f(0, true));
                        this.f4774l = E;
                        E.d(g0.K);
                    }
                    f.i.a.a.b1.d dVar2 = new f.i.a.a.b1.d(mVar, j2, this.f4773k);
                    try {
                        g a = this.f4765c.a(dVar2, this.f4766d, d2);
                        if (this.f4770h) {
                            a.f(j2, this.f4771i);
                            this.f4770h = false;
                        }
                        while (i2 == 0 && !this.f4769g) {
                            k kVar = this.f4767e;
                            synchronized (kVar) {
                                while (!kVar.a) {
                                    kVar.wait();
                                }
                            }
                            i2 = a.c(dVar2, this.f4768f);
                            if (dVar2.f4042d > g0.this.f4759h + j2) {
                                j2 = dVar2.f4042d;
                                k kVar2 = this.f4767e;
                                synchronized (kVar2) {
                                    kVar2.a = false;
                                }
                                g0.this.n.post(g0.this.f4764m);
                            }
                        }
                        if (i2 == 1) {
                            i2 = 0;
                        } else {
                            this.f4768f.a = dVar2.f4042d;
                        }
                        f.i.a.a.l1.g0 g0Var = this.b;
                        if (g0Var != null) {
                            try {
                                g0Var.a.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dVar = dVar2;
                        if (!(i2 == 1 || dVar == null)) {
                            this.f4768f.a = dVar.f4042d;
                        }
                        h0.k(this.b);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }

        @Override // f.i.a.a.l1.c0.e
        public void b() {
            this.f4769g = true;
        }
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final g[] a;
        @Nullable
        public g b;

        public b(g[] gVarArr) {
            this.a = gVarArr;
        }

        public g a(f.i.a.a.b1.d dVar, h hVar, Uri uri) throws IOException, InterruptedException {
            g gVar = this.b;
            if (gVar != null) {
                return gVar;
            }
            g[] gVarArr = this.a;
            int length = gVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                g gVar2 = gVarArr[i2];
                try {
                } catch (EOFException unused) {
                } catch (Throwable th) {
                    dVar.f4044f = 0;
                    throw th;
                }
                if (gVar2.i(dVar)) {
                    this.b = gVar2;
                    dVar.f4044f = 0;
                    break;
                }
                continue;
                dVar.f4044f = 0;
                i2++;
            }
            g gVar3 = this.b;
            if (gVar3 != null) {
                gVar3.d(hVar);
                return this.b;
            }
            throw new q0(f.b.a.a.a.l(f.b.a.a.a.o("None of the available extractors ("), h0.z(this.a), ") could read the stream."), uri);
        }
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes.dex */
    public static final class d {
        public final n a;
        public final p0 b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f4776c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f4777d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean[] f4778e;

        public d(n nVar, p0 p0Var, boolean[] zArr) {
            this.a = nVar;
            this.b = p0Var;
            this.f4776c = zArr;
            int i2 = p0Var.a;
            this.f4777d = new boolean[i2];
            this.f4778e = new boolean[i2];
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
            g0Var.f4760i.e(((w) g0Var.f4754c).b(g0Var.x));
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
                if (!g0Var.I || j2 <= j0Var.l()) {
                    int e2 = j0Var.e(j2, true, true);
                    if (e2 != -1) {
                        i3 = e2;
                    }
                } else {
                    i3 = j0Var.f();
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
            if (this.a == fVar.a && this.b == fVar.b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.a * 31) + (this.b ? 1 : 0);
        }
    }

    public g0(Uri uri, m mVar, g[] gVarArr, f.i.a.a.l1.b0 b0Var, f0.a aVar, c cVar, f.i.a.a.l1.e eVar, @Nullable String str, int i2) {
        this.a = uri;
        this.b = mVar;
        this.f4754c = b0Var;
        this.f4755d = aVar;
        this.f4756e = cVar;
        this.f4757f = eVar;
        this.f4758g = str;
        this.f4759h = (long) i2;
        this.f4761j = new b(gVarArr);
        aVar.y();
    }

    public /* synthetic */ void A() {
        if (!this.J) {
            d0.a aVar = this.o;
            c.a.a.b.g.h.t(aVar);
            aVar.i(this);
        }
    }

    public final void B() {
        boolean[] zArr;
        b0 b0Var;
        int i2;
        f.i.a.a.d1.a aVar;
        n nVar = this.p;
        if (!(this.J || this.u || !this.t || nVar == null)) {
            char c2 = 0;
            for (j0 j0Var : this.r) {
                if (j0Var.n() == null) {
                    return;
                }
            }
            k kVar = this.f4762k;
            synchronized (kVar) {
                kVar.a = false;
            }
            int length = this.r.length;
            o0[] o0VarArr = new o0[length];
            boolean[] zArr2 = new boolean[length];
            this.C = nVar.j();
            int i3 = 0;
            while (i3 < length) {
                b0 n = this.r[i3].n();
                String str = n.f4013i;
                boolean h2 = r.h(str);
                boolean z = h2 || r.j(str);
                zArr2[i3] = z;
                this.w = z | this.w;
                f.i.a.a.d1.h.b bVar = this.q;
                if (bVar != null) {
                    if (h2 || this.s[i3].b) {
                        f.i.a.a.d1.a aVar2 = n.f4011g;
                        if (aVar2 == null) {
                            a.b[] bVarArr = new a.b[1];
                            bVarArr[c2] = bVar;
                            aVar = new f.i.a.a.d1.a(bVarArr);
                        } else {
                            a.b[] bVarArr2 = new a.b[1];
                            bVarArr2[c2] = bVar;
                            aVar = aVar2.a(bVarArr2);
                        }
                        n = n.e(aVar);
                    }
                    if (h2 && n.f4009e == -1 && (i2 = bVar.a) != -1) {
                        zArr = zArr2;
                        b0Var = new b0(n.a, n.b, n.f4007c, n.f4008d, i2, n.f4010f, n.f4011g, n.f4012h, n.f4013i, n.f4014j, n.f4015k, n.f4016l, n.f4017m, n.n, n.o, n.p, n.q, n.r, n.t, n.s, n.u, n.v, n.w, n.x, n.y, n.z, n.A, n.B);
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
            this.x = (this.D == -1 && nVar.j() == -9223372036854775807L) ? 7 : 1;
            this.v = new d(nVar, new p0(o0VarArr), zArr2);
            this.u = true;
            ((h0) this.f4756e).q(this.C, nVar.g());
            d0.a aVar3 = this.o;
            c.a.a.b.g.h.t(aVar3);
            aVar3.h(this);
        }
    }

    public final void C(int i2) {
        d y = y();
        boolean[] zArr = y.f4778e;
        if (!zArr[i2]) {
            b0 b0Var = y.b.b[i2].b[0];
            this.f4755d.b(r.f(b0Var.f4013i), b0Var, 0, null, this.E);
            zArr[i2] = true;
        }
    }

    public final void D(int i2) {
        boolean[] zArr = y().f4776c;
        if (this.G && zArr[i2] && !this.r[i2].o()) {
            this.F = 0;
            this.G = false;
            this.z = true;
            this.E = 0;
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
        j0 j0Var = new j0(this.f4757f);
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
        a aVar = new a(this.a, this.b, this.f4761j, this, this.f4762k);
        if (this.u) {
            n nVar = y().a;
            c.a.a.b.g.h.v(z());
            long j2 = this.C;
            if (j2 == -9223372036854775807L || this.F <= j2) {
                long j3 = nVar.h(this.F).a.b;
                long j4 = this.F;
                aVar.f4768f.a = j3;
                aVar.f4771i = j4;
                aVar.f4770h = true;
                aVar.f4775m = false;
                this.F = -9223372036854775807L;
            } else {
                this.I = true;
                this.F = -9223372036854775807L;
                return;
            }
        }
        this.H = w();
        this.f4755d.w(aVar.f4772j, 1, -1, null, 0, null, aVar.f4771i, this.C, this.f4760i.g(aVar, this, ((w) this.f4754c).b(this.x)));
    }

    public final boolean G() {
        return this.z || z();
    }

    @Override // f.i.a.a.b1.h
    public void a(n nVar) {
        if (this.q != null) {
            nVar = new n.b(-9223372036854775807L, 0);
        }
        this.p = nVar;
        this.n.post(this.f4763l);
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        n nVar = y().a;
        if (!nVar.g()) {
            return 0;
        }
        n.a h2 = nVar.h(j2);
        return h0.g0(j2, s0Var, h2.a.a, h2.b.a);
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
        this.n.post(this.f4763l);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        long j2;
        boolean z;
        boolean[] zArr = y().f4776c;
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
                    i0 i0Var = this.r[i2].f4803c;
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
        boolean a2 = this.f4762k.a();
        if (this.f4760i.d()) {
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
        b bVar = this.f4761j;
        g gVar = bVar.b;
        if (gVar != null) {
            gVar.a();
            bVar.b = null;
        }
    }

    @Override // f.i.a.a.h1.j0.b
    public void i(b0 b0Var) {
        this.n.post(this.f4763l);
    }

    @Override // f.i.a.a.h1.d0
    public long j(j[] jVarArr, boolean[] zArr, k0[] k0VarArr, boolean[] zArr2, long j2) {
        d y = y();
        p0 p0Var = y.b;
        boolean[] zArr3 = y.f4777d;
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
        boolean z = !this.y ? j2 != 0 : i2 == 0;
        for (int i6 = 0; i6 < jVarArr.length; i6++) {
            if (k0VarArr[i6] == null && jVarArr[i6] != null) {
                j jVar = jVarArr[i6];
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
            if (this.f4760i.d()) {
                j0[] j0VarArr = this.r;
                int length = j0VarArr.length;
                while (i3 < length) {
                    j0VarArr[i3].j();
                    i3++;
                }
                this.f4760i.b();
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

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, boolean] */
    @Override // f.i.a.a.l1.c0.b
    public void k(a aVar, long j2, long j3, boolean z) {
        a aVar2 = aVar;
        f0.a aVar3 = this.f4755d;
        p pVar = aVar2.f4772j;
        f.i.a.a.l1.g0 g0Var = aVar2.b;
        aVar3.n(pVar, g0Var.f5513c, g0Var.f5514d, 1, -1, null, 0, null, aVar2.f4771i, this.C, j2, j3, g0Var.b);
        if (!z) {
            if (this.D == -1) {
                this.D = aVar2.f4773k;
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
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (!this.A) {
            this.f4755d.B();
            this.A = true;
        }
        if (!this.z) {
            return -9223372036854775807L;
        }
        if (!this.I && w() <= this.H) {
            return -9223372036854775807L;
        }
        this.z = false;
        return this.E;
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.o = aVar;
        this.f4762k.a();
        F();
    }

    @Override // f.i.a.a.h1.d0
    public /* synthetic */ List<f.i.a.a.e1.c0> n(List<j> list) {
        return c0.a(this, list);
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return y().b;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, java.io.IOException, int] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0089  */
    @Override // f.i.a.a.l1.c0.b
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public f.i.a.a.l1.c0.c p(f.i.a.a.h1.g0.a r31, long r32, long r34, java.io.IOException r36, int r37) {
        /*
            r30 = this;
            r0 = r30
            r1 = r31
            f.i.a.a.h1.g0$a r1 = (f.i.a.a.h1.g0.a) r1
            long r2 = r0.D
            r4 = -1
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L_0x0012
            long r2 = r1.f4773k
            r0.D = r2
        L_0x0012:
            f.i.a.a.l1.b0 r2 = r0.f4754c
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
            if (r9 != 0) goto L_0x0030
            f.i.a.a.l1.c0$c r2 = f.i.a.a.l1.c0.f5489e
            goto L_0x008b
        L_0x0030:
            int r9 = r30.w()
            int r10 = r0.H
            r11 = 0
            if (r9 <= r10) goto L_0x003b
            r10 = 1
            goto L_0x003c
        L_0x003b:
            r10 = 0
        L_0x003c:
            long r12 = r0.D
            int r14 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r14 != 0) goto L_0x007f
            f.i.a.a.b1.n r4 = r0.p
            if (r4 == 0) goto L_0x004f
            long r4 = r4.j()
            int r12 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r12 == 0) goto L_0x004f
            goto L_0x007f
        L_0x004f:
            boolean r4 = r0.u
            if (r4 == 0) goto L_0x005c
            boolean r4 = r30.G()
            if (r4 != 0) goto L_0x005c
            r0.G = r8
            goto L_0x0082
        L_0x005c:
            boolean r4 = r0.u
            r0.z = r4
            r4 = 0
            r0.E = r4
            r0.H = r11
            f.i.a.a.h1.j0[] r6 = r0.r
            int r7 = r6.length
            r9 = 0
        L_0x006a:
            if (r9 >= r7) goto L_0x0074
            r12 = r6[r9]
            r12.u(r11)
            int r9 = r9 + 1
            goto L_0x006a
        L_0x0074:
            f.i.a.a.b1.m r6 = r1.f4768f
            r6.a = r4
            r1.f4771i = r4
            r1.f4770h = r8
            r1.f4775m = r11
            goto L_0x0081
        L_0x007f:
            r0.H = r9
        L_0x0081:
            r11 = 1
        L_0x0082:
            if (r11 == 0) goto L_0x0089
            f.i.a.a.l1.c0$c r2 = f.i.a.a.l1.c0.c(r10, r2)
            goto L_0x008b
        L_0x0089:
            f.i.a.a.l1.c0$c r2 = f.i.a.a.l1.c0.f5488d
        L_0x008b:
            f.i.a.a.h1.f0$a r9 = r0.f4755d
            f.i.a.a.l1.p r10 = r1.f4772j
            f.i.a.a.l1.g0 r3 = r1.b
            android.net.Uri r11 = r3.f5513c
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r12 = r3.f5514d
            r13 = 1
            r16 = 0
            r17 = 0
            long r4 = r1.f4771i
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

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long] */
    @Override // f.i.a.a.l1.c0.b
    public void r(a aVar, long j2, long j3) {
        n nVar;
        a aVar2 = aVar;
        if (this.C == -9223372036854775807L && (nVar = this.p) != null) {
            boolean g2 = nVar.g();
            long x = x();
            long j4 = x == Long.MIN_VALUE ? 0 : x + 10000;
            this.C = j4;
            ((h0) this.f4756e).q(j4, g2);
        }
        f0.a aVar3 = this.f4755d;
        p pVar = aVar2.f4772j;
        f.i.a.a.l1.g0 g0Var = aVar2.b;
        aVar3.q(pVar, g0Var.f5513c, g0Var.f5514d, 1, -1, null, 0, null, aVar2.f4771i, this.C, j2, j3, g0Var.b);
        if (this.D == -1) {
            this.D = aVar2.f4773k;
        }
        this.I = true;
        d0.a aVar4 = this.o;
        c.a.a.b.g.h.t(aVar4);
        aVar4.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        this.f4760i.e(((w) this.f4754c).b(this.x));
        if (this.I && !this.u) {
            throw new f.i.a.a.h0("Loading finished before preparation is complete.");
        }
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        if (!z()) {
            boolean[] zArr = y().f4777d;
            int length = this.r.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.r[i2].i(j2, z, zArr[i2]);
            }
        }
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        boolean z;
        d y = y();
        n nVar = y.a;
        boolean[] zArr = y.f4776c;
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
            int i2 = 0;
            while (true) {
                z = true;
                if (i2 >= length) {
                    break;
                }
                j0 j0Var = this.r[i2];
                j0Var.v();
                if (j0Var.e(j2, true, false) == -1) {
                    z = false;
                }
                if (z || (!zArr[i2] && this.w)) {
                    i2++;
                }
            }
            z = false;
            if (z) {
                return j2;
            }
        }
        this.G = false;
        this.F = j2;
        this.I = false;
        if (this.f4760i.d()) {
            this.f4760i.b();
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
            i0 i0Var = j0Var.f4803c;
            i2 += i0Var.f4797j + i0Var.f4796i;
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
