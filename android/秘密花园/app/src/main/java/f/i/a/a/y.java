package f.i.a.a;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.f;
import f.i.a.a.j1.j;
import f.i.a.a.j1.k;
import f.i.a.a.j1.m;
import f.i.a.a.j1.n;
import f.i.a.a.l0;
import f.i.a.a.l1.g;
import f.i.a.a.m1.c0;
import f.i.a.a.m1.h;
import f.i.a.a.m1.h0;
import f.i.a.a.n0;
import f.i.a.a.o;
import f.i.a.a.u0;
import f.i.a.a.z;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes.dex */
public final class y extends o implements l0 {
    public final n b;

    /* renamed from: c  reason: collision with root package name */
    public final p0[] f5924c;

    /* renamed from: d  reason: collision with root package name */
    public final m f5925d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f5926e;

    /* renamed from: f  reason: collision with root package name */
    public final z f5927f;

    /* renamed from: g  reason: collision with root package name */
    public final Handler f5928g;

    /* renamed from: h  reason: collision with root package name */
    public final CopyOnWriteArrayList<o.a> f5929h;

    /* renamed from: i  reason: collision with root package name */
    public final u0.b f5930i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayDeque<Runnable> f5931j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5932k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5933l;

    /* renamed from: m  reason: collision with root package name */
    public int f5934m;
    public boolean n;
    public int o;
    public boolean p;
    public boolean q;
    public j0 r;
    @Nullable
    public w s;
    public i0 t;
    public int u;
    public int v;
    public long w;

    /* compiled from: ExoPlayerImpl.java */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {
        public final i0 a;
        public final CopyOnWriteArrayList<o.a> b;

        /* renamed from: c  reason: collision with root package name */
        public final m f5935c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f5936d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5937e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5938f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f5939g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f5940h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f5941i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f5942j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f5943k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f5944l;

        public a(i0 i0Var, i0 i0Var2, CopyOnWriteArrayList<o.a> copyOnWriteArrayList, m mVar, boolean z, int i2, int i3, boolean z2, boolean z3) {
            this.a = i0Var;
            this.b = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f5935c = mVar;
            this.f5936d = z;
            this.f5937e = i2;
            this.f5938f = i3;
            this.f5939g = z2;
            this.f5944l = z3;
            boolean z4 = true;
            this.f5940h = i0Var2.f5214f != i0Var.f5214f;
            this.f5941i = (i0Var2.a == i0Var.a && i0Var2.b == i0Var.b) ? false : true;
            this.f5942j = i0Var2.f5215g != i0Var.f5215g;
            this.f5943k = i0Var2.f5217i == i0Var.f5217i ? false : z4;
        }

        public /* synthetic */ void a(l0.b bVar) {
            i0 i0Var = this.a;
            bVar.onTimelineChanged(i0Var.a, i0Var.b, this.f5938f);
        }

        public /* synthetic */ void b(l0.b bVar) {
            bVar.onPositionDiscontinuity(this.f5937e);
        }

        public /* synthetic */ void c(l0.b bVar) {
            i0 i0Var = this.a;
            bVar.onTracksChanged(i0Var.f5216h, i0Var.f5217i.f5452c);
        }

        public /* synthetic */ void d(l0.b bVar) {
            bVar.onLoadingChanged(this.a.f5215g);
        }

        public /* synthetic */ void e(l0.b bVar) {
            bVar.onPlayerStateChanged(this.f5944l, this.a.f5214f);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5941i || this.f5938f == 0) {
                y.G(this.b, new g(this));
            }
            if (this.f5936d) {
                y.G(this.b, new f(this));
            }
            if (this.f5943k) {
                m mVar = this.f5935c;
                Object obj = this.a.f5217i.f5453d;
                f fVar = (f) mVar;
                if (fVar != null) {
                    fVar.f5440c = (f.a) obj;
                    y.G(this.b, new i(this));
                } else {
                    throw null;
                }
            }
            if (this.f5942j) {
                y.G(this.b, new h(this));
            }
            if (this.f5940h) {
                y.G(this.b, new j(this));
            }
            if (this.f5939g) {
                y.G(this.b, a.a);
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    public y(p0[] p0VarArr, m mVar, t tVar, g gVar, h hVar, Looper looper) {
        Integer.toHexString(System.identityHashCode(this));
        String str = h0.f5664e;
        c.a.a.b.g.h.v(p0VarArr.length > 0);
        this.f5924c = p0VarArr;
        if (mVar != null) {
            this.f5925d = mVar;
            this.f5932k = false;
            this.f5934m = 0;
            this.n = false;
            this.f5929h = new CopyOnWriteArrayList<>();
            this.b = new n(new q0[p0VarArr.length], new j[p0VarArr.length], null);
            this.f5930i = new u0.b();
            this.r = j0.f5383e;
            s0 s0Var = s0.f5770d;
            this.f5926e = new x(this, looper);
            this.t = i0.c(0, this.b);
            this.f5931j = new ArrayDeque<>();
            this.f5927f = new z(p0VarArr, mVar, this.b, tVar, gVar, this.f5932k, this.f5934m, this.n, this.f5926e, hVar);
            this.f5928g = new Handler(this.f5927f.f5974h.getLooper());
            return;
        }
        throw null;
    }

    public static void G(CopyOnWriteArrayList<o.a> copyOnWriteArrayList, o.b bVar) {
        Iterator<o.a> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            o.a next = it.next();
            if (!next.b) {
                bVar.a(next.a);
            }
        }
    }

    @Override // f.i.a.a.l0
    public k A() {
        return this.t.f5217i.f5452c;
    }

    @Override // f.i.a.a.l0
    public int B(int i2) {
        return this.f5924c[i2].t();
    }

    @Override // f.i.a.a.l0
    public long C() {
        if (S()) {
            return this.w;
        }
        if (this.t.f5211c.b()) {
            return q.b(this.t.f5221m);
        }
        i0 i0Var = this.t;
        return Q(i0Var.f5211c, i0Var.f5221m);
    }

    @Override // f.i.a.a.l0
    @Nullable
    public l0.c D() {
        return null;
    }

    public n0 E(n0.b bVar) {
        return new n0(this.f5927f, bVar, this.t.a, z(), this.f5928g);
    }

    public final i0 F(boolean z, boolean z2, int i2) {
        long j2;
        int i3;
        long j3 = 0;
        boolean z3 = false;
        if (z) {
            this.u = 0;
            this.v = 0;
            this.w = 0;
        } else {
            this.u = z();
            if (S()) {
                i3 = this.v;
            } else {
                i0 i0Var = this.t;
                i3 = i0Var.a.b(i0Var.f5211c.a);
            }
            this.v = i3;
            this.w = C();
        }
        if (z || z2) {
            z3 = true;
        }
        e0.a d2 = z3 ? this.t.d(this.n, this.a) : this.t.f5211c;
        if (!z3) {
            j3 = this.t.f5221m;
        }
        if (z3) {
            j2 = -9223372036854775807L;
        } else {
            j2 = this.t.f5213e;
        }
        return new i0(z2 ? u0.a : this.t.a, z2 ? null : this.t.b, d2, j3, j2, i2, false, z2 ? p0.f4836d : this.t.f5216h, z2 ? this.b : this.t.f5217i, d2, j3, 0, j3);
    }

    public final void O(o.b bVar) {
        P(new Runnable(new CopyOnWriteArrayList(this.f5929h), bVar) { // from class: f.i.a.a.b
            public final /* synthetic */ CopyOnWriteArrayList a;
            public final /* synthetic */ o.b b;

            {
                this.a = r1;
                this.b = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                y.G(this.a, this.b);
            }
        });
    }

    public final void P(Runnable runnable) {
        boolean z = !this.f5931j.isEmpty();
        this.f5931j.addLast(runnable);
        if (!z) {
            while (!this.f5931j.isEmpty()) {
                this.f5931j.peekFirst().run();
                this.f5931j.removeFirst();
            }
        }
    }

    public final long Q(e0.a aVar, long j2) {
        long b = q.b(j2);
        this.t.a.h(aVar.a, this.f5930i);
        return b + q.b(this.f5930i.f5797e);
    }

    public void R(boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.f5933l != z3) {
            this.f5933l = z3;
            c0 c0Var = this.f5927f.f5973g;
            int i2 = z3 ? 1 : 0;
            int i3 = z3 ? 1 : 0;
            int i4 = z3 ? 1 : 0;
            c0Var.a(1, i2, 0).sendToTarget();
        }
        if (this.f5932k != z) {
            this.f5932k = z;
            O(new o.b(z, this.t.f5214f) { // from class: f.i.a.a.c
                public final /* synthetic */ boolean a;
                public final /* synthetic */ int b;

                {
                    this.a = r1;
                    this.b = r2;
                }

                @Override // f.i.a.a.o.b
                public final void a(l0.b bVar) {
                    bVar.onPlayerStateChanged(this.a, this.b);
                }
            });
        }
    }

    public final boolean S() {
        return this.t.a.q() || this.o > 0;
    }

    public void T(boolean z) {
        if (z) {
            this.s = null;
        }
        i0 F = F(z, z, 1);
        this.o++;
        this.f5927f.f5973g.a(6, z ? 1 : 0, 0).sendToTarget();
        U(F, false, 4, 1, false);
    }

    public final void U(i0 i0Var, boolean z, int i2, int i3, boolean z2) {
        i0 i0Var2 = this.t;
        this.t = i0Var;
        P(new a(i0Var, i0Var2, this.f5929h, this.f5925d, z, i2, i3, z2, this.f5932k));
    }

    @Override // f.i.a.a.l0
    public j0 e() {
        return this.r;
    }

    @Override // f.i.a.a.l0
    public void f(boolean z) {
        R(z, false);
    }

    @Override // f.i.a.a.l0
    @Nullable
    public l0.d g() {
        return null;
    }

    @Override // f.i.a.a.l0
    public boolean h() {
        return !S() && this.t.f5211c.b();
    }

    @Override // f.i.a.a.l0
    public long i() {
        if (!h()) {
            return C();
        }
        i0 i0Var = this.t;
        i0Var.a.h(i0Var.f5211c.a, this.f5930i);
        i0 i0Var2 = this.t;
        if (i0Var2.f5213e == -9223372036854775807L) {
            return q.b(i0Var2.a.n(z(), this.a).f5804h);
        }
        return q.b(this.f5930i.f5797e) + q.b(this.t.f5213e);
    }

    @Override // f.i.a.a.l0
    public long j() {
        return q.b(this.t.f5220l);
    }

    @Override // f.i.a.a.l0
    public void k(int i2, long j2) {
        long j3;
        u0 u0Var = this.t.a;
        if (i2 < 0 || (!u0Var.q() && i2 >= u0Var.p())) {
            throw new d0(u0Var, i2, j2);
        }
        this.q = true;
        this.o++;
        if (h()) {
            this.f5926e.obtainMessage(0, 1, -1, this.t).sendToTarget();
            return;
        }
        this.u = i2;
        if (u0Var.q()) {
            this.w = j2 == -9223372036854775807L ? 0 : j2;
            this.v = 0;
        } else {
            if (j2 == -9223372036854775807L) {
                j3 = u0Var.n(i2, this.a).f5804h;
            } else {
                j3 = q.a(j2);
            }
            Pair<Object, Long> j4 = u0Var.j(this.a, this.f5930i, i2, j3);
            this.w = q.b(j3);
            this.v = u0Var.b(j4.first);
        }
        this.f5927f.f5973g.b(3, new z.e(u0Var, i2, q.a(j2))).sendToTarget();
        O(d.a);
    }

    @Override // f.i.a.a.l0
    public long l() {
        if (h()) {
            i0 i0Var = this.t;
            if (i0Var.f5218j.equals(i0Var.f5211c)) {
                return q.b(this.t.f5219k);
            }
            return v();
        } else if (S()) {
            return this.w;
        } else {
            i0 i0Var2 = this.t;
            if (i0Var2.f5218j.f4742d != i0Var2.f5211c.f4742d) {
                return i0Var2.a.n(z(), this.a).a();
            }
            long j2 = i0Var2.f5219k;
            if (this.t.f5218j.b()) {
                i0 i0Var3 = this.t;
                u0.b h2 = i0Var3.a.h(i0Var3.f5218j.a, this.f5930i);
                long d2 = h2.d(this.t.f5218j.b);
                j2 = d2 == Long.MIN_VALUE ? h2.f5796d : d2;
            }
            return Q(this.t.f5218j, j2);
        }
    }

    @Override // f.i.a.a.l0
    public boolean m() {
        return this.f5932k;
    }

    @Override // f.i.a.a.l0
    public void n(boolean z) {
        if (this.n != z) {
            this.n = z;
            this.f5927f.f5973g.a(13, z ? 1 : 0, 0).sendToTarget();
            O(new o.b(z) { // from class: f.i.a.a.k
                public final /* synthetic */ boolean a;

                {
                    this.a = r1;
                }

                @Override // f.i.a.a.o.b
                public final void a(l0.b bVar) {
                    bVar.onShuffleModeEnabledChanged(this.a);
                }
            });
        }
    }

    @Override // f.i.a.a.l0
    public int o() {
        return this.t.f5214f;
    }

    @Override // f.i.a.a.l0
    public int p() {
        if (h()) {
            return this.t.f5211c.b;
        }
        return -1;
    }

    @Override // f.i.a.a.l0
    public void q(int i2) {
        if (this.f5934m != i2) {
            this.f5934m = i2;
            this.f5927f.f5973g.a(12, i2, 0).sendToTarget();
            O(new o.b(i2) { // from class: f.i.a.a.m
                public final /* synthetic */ int a;

                {
                    this.a = r1;
                }

                @Override // f.i.a.a.o.b
                public final void a(l0.b bVar) {
                    bVar.onRepeatModeChanged(this.a);
                }
            });
        }
    }

    @Override // f.i.a.a.l0
    public void r(l0.b bVar) {
        this.f5929h.addIfAbsent(new o.a(bVar));
    }

    @Override // f.i.a.a.l0
    public int s() {
        if (h()) {
            return this.t.f5211c.f4741c;
        }
        return -1;
    }

    @Override // f.i.a.a.l0
    public p0 t() {
        return this.t.f5216h;
    }

    @Override // f.i.a.a.l0
    public int u() {
        return this.f5934m;
    }

    @Override // f.i.a.a.l0
    public long v() {
        if (h()) {
            i0 i0Var = this.t;
            e0.a aVar = i0Var.f5211c;
            i0Var.a.h(aVar.a, this.f5930i);
            return q.b(this.f5930i.a(aVar.b, aVar.f4741c));
        }
        u0 w = w();
        if (w.q()) {
            return -9223372036854775807L;
        }
        return w.n(z(), this.a).a();
    }

    @Override // f.i.a.a.l0
    public u0 w() {
        return this.t.a;
    }

    @Override // f.i.a.a.l0
    public boolean x() {
        return this.n;
    }

    @Override // f.i.a.a.l0
    public void y(l0.b bVar) {
        Iterator<o.a> it = this.f5929h.iterator();
        while (it.hasNext()) {
            o.a next = it.next();
            if (next.a.equals(bVar)) {
                next.b = true;
                this.f5929h.remove(next);
            }
        }
    }

    @Override // f.i.a.a.l0
    public int z() {
        if (S()) {
            return this.u;
        }
        i0 i0Var = this.t;
        return i0Var.a.h(i0Var.f5211c.a, this.f5930i).f5795c;
    }
}
