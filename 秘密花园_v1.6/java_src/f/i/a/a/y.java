package f.i.a.a;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.j1.f;
import f.i.a.a.l0;
import f.i.a.a.n0;
import f.i.a.a.o;
import f.i.a.a.u0;
import f.i.a.a.y;
import f.i.a.a.z;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes.dex */
public final class y extends o implements l0 {
    public final f.i.a.a.j1.n b;

    /* renamed from: c  reason: collision with root package name */
    public final p0[] f6008c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.j1.m f6009d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f6010e;

    /* renamed from: f  reason: collision with root package name */
    public final z f6011f;

    /* renamed from: g  reason: collision with root package name */
    public final Handler f6012g;

    /* renamed from: h  reason: collision with root package name */
    public final CopyOnWriteArrayList<o.a> f6013h;

    /* renamed from: i  reason: collision with root package name */
    public final u0.b f6014i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayDeque<Runnable> f6015j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6016k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6017l;

    /* renamed from: m  reason: collision with root package name */
    public int f6018m;
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
        public final f.i.a.a.j1.m f6019c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f6020d;

        /* renamed from: e  reason: collision with root package name */
        public final int f6021e;

        /* renamed from: f  reason: collision with root package name */
        public final int f6022f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6023g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6024h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f6025i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f6026j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f6027k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f6028l;

        public a(i0 i0Var, i0 i0Var2, CopyOnWriteArrayList<o.a> copyOnWriteArrayList, f.i.a.a.j1.m mVar, boolean z, int i2, int i3, boolean z2, boolean z3) {
            this.a = i0Var;
            this.b = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f6019c = mVar;
            this.f6020d = z;
            this.f6021e = i2;
            this.f6022f = i3;
            this.f6023g = z2;
            this.f6028l = z3;
            this.f6024h = i0Var2.f5298f != i0Var.f5298f;
            this.f6025i = (i0Var2.a == i0Var.a && i0Var2.b == i0Var.b) ? false : true;
            this.f6026j = i0Var2.f5299g != i0Var.f5299g;
            this.f6027k = i0Var2.f5301i != i0Var.f5301i;
        }

        public /* synthetic */ void a(l0.b bVar) {
            i0 i0Var = this.a;
            bVar.onTimelineChanged(i0Var.a, i0Var.b, this.f6022f);
        }

        public /* synthetic */ void b(l0.b bVar) {
            bVar.onPositionDiscontinuity(this.f6021e);
        }

        public /* synthetic */ void c(l0.b bVar) {
            i0 i0Var = this.a;
            bVar.onTracksChanged(i0Var.f5300h, i0Var.f5301i.f5536c);
        }

        public /* synthetic */ void d(l0.b bVar) {
            bVar.onLoadingChanged(this.a.f5299g);
        }

        public /* synthetic */ void e(l0.b bVar) {
            bVar.onPlayerStateChanged(this.f6028l, this.a.f5298f);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6025i || this.f6022f == 0) {
                y.G(this.b, new o.b() { // from class: f.i.a.a.g
                    @Override // f.i.a.a.o.b
                    public final void a(l0.b bVar) {
                        y.a.this.a(bVar);
                    }
                });
            }
            if (this.f6020d) {
                y.G(this.b, new o.b() { // from class: f.i.a.a.f
                    @Override // f.i.a.a.o.b
                    public final void a(l0.b bVar) {
                        y.a.this.b(bVar);
                    }
                });
            }
            if (this.f6027k) {
                f.i.a.a.j1.m mVar = this.f6019c;
                Object obj = this.a.f5301i.f5537d;
                f.i.a.a.j1.f fVar = (f.i.a.a.j1.f) mVar;
                if (fVar != null) {
                    fVar.f5524c = (f.a) obj;
                    y.G(this.b, new o.b() { // from class: f.i.a.a.i
                        @Override // f.i.a.a.o.b
                        public final void a(l0.b bVar) {
                            y.a.this.c(bVar);
                        }
                    });
                } else {
                    throw null;
                }
            }
            if (this.f6026j) {
                y.G(this.b, new o.b() { // from class: f.i.a.a.h
                    @Override // f.i.a.a.o.b
                    public final void a(l0.b bVar) {
                        y.a.this.d(bVar);
                    }
                });
            }
            if (this.f6024h) {
                y.G(this.b, new o.b() { // from class: f.i.a.a.j
                    @Override // f.i.a.a.o.b
                    public final void a(l0.b bVar) {
                        y.a.this.e(bVar);
                    }
                });
            }
            if (this.f6023g) {
                y.G(this.b, f.i.a.a.a.a);
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    public y(p0[] p0VarArr, f.i.a.a.j1.m mVar, t tVar, f.i.a.a.l1.g gVar, f.i.a.a.m1.h hVar, Looper looper) {
        Integer.toHexString(System.identityHashCode(this));
        String str = f.i.a.a.m1.h0.f5748e;
        c.a.a.b.g.h.v(p0VarArr.length > 0);
        this.f6008c = p0VarArr;
        if (mVar != null) {
            this.f6009d = mVar;
            this.f6016k = false;
            this.f6018m = 0;
            this.n = false;
            this.f6013h = new CopyOnWriteArrayList<>();
            this.b = new f.i.a.a.j1.n(new q0[p0VarArr.length], new f.i.a.a.j1.j[p0VarArr.length], null);
            this.f6014i = new u0.b();
            this.r = j0.f5467e;
            s0 s0Var = s0.f5854d;
            this.f6010e = new x(this, looper);
            this.t = i0.c(0L, this.b);
            this.f6015j = new ArrayDeque<>();
            this.f6011f = new z(p0VarArr, mVar, this.b, tVar, gVar, this.f6016k, this.f6018m, this.n, this.f6010e, hVar);
            this.f6012g = new Handler(this.f6011f.f6058h.getLooper());
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
    public f.i.a.a.j1.k A() {
        return this.t.f5301i.f5536c;
    }

    @Override // f.i.a.a.l0
    public int B(int i2) {
        return this.f6008c[i2].t();
    }

    @Override // f.i.a.a.l0
    public long C() {
        if (S()) {
            return this.w;
        }
        if (this.t.f5295c.b()) {
            return q.b(this.t.f5305m);
        }
        i0 i0Var = this.t;
        return Q(i0Var.f5295c, i0Var.f5305m);
    }

    @Override // f.i.a.a.l0
    @Nullable
    public l0.c D() {
        return null;
    }

    public n0 E(n0.b bVar) {
        return new n0(this.f6011f, bVar, this.t.a, z(), this.f6012g);
    }

    public final i0 F(boolean z, boolean z2, int i2) {
        int b;
        boolean z3 = false;
        if (z) {
            this.u = 0;
            this.v = 0;
            this.w = 0L;
        } else {
            this.u = z();
            if (S()) {
                b = this.v;
            } else {
                i0 i0Var = this.t;
                b = i0Var.a.b(i0Var.f5295c.a);
            }
            this.v = b;
            this.w = C();
        }
        z3 = (z || z2) ? true : true;
        e0.a d2 = z3 ? this.t.d(this.n, this.a) : this.t.f5295c;
        long j2 = z3 ? 0L : this.t.f5305m;
        return new i0(z2 ? u0.a : this.t.a, z2 ? null : this.t.b, d2, j2, z3 ? -9223372036854775807L : this.t.f5297e, i2, false, z2 ? f.i.a.a.h1.p0.f4920d : this.t.f5300h, z2 ? this.b : this.t.f5301i, d2, j2, 0L, j2);
    }

    public final void O(final o.b bVar) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f6013h);
        P(new Runnable() { // from class: f.i.a.a.b
            @Override // java.lang.Runnable
            public final void run() {
                y.G(copyOnWriteArrayList, bVar);
            }
        });
    }

    public final void P(Runnable runnable) {
        boolean z = !this.f6015j.isEmpty();
        this.f6015j.addLast(runnable);
        if (z) {
            return;
        }
        while (!this.f6015j.isEmpty()) {
            this.f6015j.peekFirst().run();
            this.f6015j.removeFirst();
        }
    }

    public final long Q(e0.a aVar, long j2) {
        long b = q.b(j2);
        this.t.a.h(aVar.a, this.f6014i);
        return b + q.b(this.f6014i.f5881e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r5v7 */
    public void R(final boolean z, boolean z2) {
        ?? r5 = (!z || z2) ? 0 : 1;
        if (this.f6017l != r5) {
            this.f6017l = r5;
            this.f6011f.f6057g.a(1, r5, 0).sendToTarget();
        }
        if (this.f6016k != z) {
            this.f6016k = z;
            final int i2 = this.t.f5298f;
            O(new o.b() { // from class: f.i.a.a.c
                @Override // f.i.a.a.o.b
                public final void a(l0.b bVar) {
                    bVar.onPlayerStateChanged(z, i2);
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
        this.f6011f.f6057g.a(6, z ? 1 : 0, 0).sendToTarget();
        U(F, false, 4, 1, false);
    }

    public final void U(i0 i0Var, boolean z, int i2, int i3, boolean z2) {
        i0 i0Var2 = this.t;
        this.t = i0Var;
        P(new a(i0Var, i0Var2, this.f6013h, this.f6009d, z, i2, i3, z2, this.f6016k));
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
        return !S() && this.t.f5295c.b();
    }

    @Override // f.i.a.a.l0
    public long i() {
        if (h()) {
            i0 i0Var = this.t;
            i0Var.a.h(i0Var.f5295c.a, this.f6014i);
            i0 i0Var2 = this.t;
            if (i0Var2.f5297e == -9223372036854775807L) {
                return q.b(i0Var2.a.n(z(), this.a).f5888h);
            }
            return q.b(this.f6014i.f5881e) + q.b(this.t.f5297e);
        }
        return C();
    }

    @Override // f.i.a.a.l0
    public long j() {
        return q.b(this.t.f5304l);
    }

    @Override // f.i.a.a.l0
    public void k(int i2, long j2) {
        long a2;
        u0 u0Var = this.t.a;
        if (i2 >= 0 && (u0Var.q() || i2 < u0Var.p())) {
            this.q = true;
            this.o++;
            if (h()) {
                this.f6010e.obtainMessage(0, 1, -1, this.t).sendToTarget();
                return;
            }
            this.u = i2;
            if (u0Var.q()) {
                this.w = j2 == -9223372036854775807L ? 0L : j2;
                this.v = 0;
            } else {
                if (j2 == -9223372036854775807L) {
                    a2 = u0Var.n(i2, this.a).f5888h;
                } else {
                    a2 = q.a(j2);
                }
                long j3 = a2;
                Pair<Object, Long> j4 = u0Var.j(this.a, this.f6014i, i2, j3);
                this.w = q.b(j3);
                this.v = u0Var.b(j4.first);
            }
            this.f6011f.f6057g.b(3, new z.e(u0Var, i2, q.a(j2))).sendToTarget();
            O(d.a);
            return;
        }
        throw new d0(u0Var, i2, j2);
    }

    @Override // f.i.a.a.l0
    public long l() {
        if (h()) {
            i0 i0Var = this.t;
            if (i0Var.f5302j.equals(i0Var.f5295c)) {
                return q.b(this.t.f5303k);
            }
            return v();
        } else if (S()) {
            return this.w;
        } else {
            i0 i0Var2 = this.t;
            if (i0Var2.f5302j.f4826d != i0Var2.f5295c.f4826d) {
                return i0Var2.a.n(z(), this.a).a();
            }
            long j2 = i0Var2.f5303k;
            if (this.t.f5302j.b()) {
                i0 i0Var3 = this.t;
                u0.b h2 = i0Var3.a.h(i0Var3.f5302j.a, this.f6014i);
                long d2 = h2.d(this.t.f5302j.b);
                j2 = d2 == Long.MIN_VALUE ? h2.f5880d : d2;
            }
            return Q(this.t.f5302j, j2);
        }
    }

    @Override // f.i.a.a.l0
    public boolean m() {
        return this.f6016k;
    }

    @Override // f.i.a.a.l0
    public void n(final boolean z) {
        if (this.n != z) {
            this.n = z;
            this.f6011f.f6057g.a(13, z ? 1 : 0, 0).sendToTarget();
            O(new o.b() { // from class: f.i.a.a.k
                @Override // f.i.a.a.o.b
                public final void a(l0.b bVar) {
                    bVar.onShuffleModeEnabledChanged(z);
                }
            });
        }
    }

    @Override // f.i.a.a.l0
    public int o() {
        return this.t.f5298f;
    }

    @Override // f.i.a.a.l0
    public int p() {
        if (h()) {
            return this.t.f5295c.b;
        }
        return -1;
    }

    @Override // f.i.a.a.l0
    public void q(final int i2) {
        if (this.f6018m != i2) {
            this.f6018m = i2;
            this.f6011f.f6057g.a(12, i2, 0).sendToTarget();
            O(new o.b() { // from class: f.i.a.a.m
                @Override // f.i.a.a.o.b
                public final void a(l0.b bVar) {
                    bVar.onRepeatModeChanged(i2);
                }
            });
        }
    }

    @Override // f.i.a.a.l0
    public void r(l0.b bVar) {
        this.f6013h.addIfAbsent(new o.a(bVar));
    }

    @Override // f.i.a.a.l0
    public int s() {
        if (h()) {
            return this.t.f5295c.f4825c;
        }
        return -1;
    }

    @Override // f.i.a.a.l0
    public f.i.a.a.h1.p0 t() {
        return this.t.f5300h;
    }

    @Override // f.i.a.a.l0
    public int u() {
        return this.f6018m;
    }

    @Override // f.i.a.a.l0
    public long v() {
        if (h()) {
            i0 i0Var = this.t;
            e0.a aVar = i0Var.f5295c;
            i0Var.a.h(aVar.a, this.f6014i);
            return q.b(this.f6014i.a(aVar.b, aVar.f4825c));
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
        Iterator<o.a> it = this.f6013h.iterator();
        while (it.hasNext()) {
            o.a next = it.next();
            if (next.a.equals(bVar)) {
                next.b = true;
                this.f6013h.remove(next);
            }
        }
    }

    @Override // f.i.a.a.l0
    public int z() {
        if (S()) {
            return this.u;
        }
        i0 i0Var = this.t;
        return i0Var.a.h(i0Var.f5295c.a, this.f6014i).f5879c;
    }
}
