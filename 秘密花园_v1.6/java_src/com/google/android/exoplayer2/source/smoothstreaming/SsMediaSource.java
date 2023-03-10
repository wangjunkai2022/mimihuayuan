package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import f.i.a.a.a0;
import f.i.a.a.e1.z;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.n0;
import f.i.a.a.h1.o;
import f.i.a.a.h1.s0.g;
import f.i.a.a.h1.v;
import f.i.a.a.h1.v0.b;
import f.i.a.a.h1.v0.c;
import f.i.a.a.h1.v0.d;
import f.i.a.a.h1.v0.e.a;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.d0;
import f.i.a.a.l1.e;
import f.i.a.a.l1.e0;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import f.i.a.a.l1.w;
import f.i.a.a.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class SsMediaSource extends o implements c0.b<e0<f.i.a.a.h1.v0.e.a>> {

    /* renamed from: f  reason: collision with root package name */
    public final boolean f2415f;

    /* renamed from: g  reason: collision with root package name */
    public final Uri f2416g;

    /* renamed from: h  reason: collision with root package name */
    public final m.a f2417h;

    /* renamed from: i  reason: collision with root package name */
    public final c.a f2418i;

    /* renamed from: j  reason: collision with root package name */
    public final v f2419j;

    /* renamed from: k  reason: collision with root package name */
    public final b0 f2420k;

    /* renamed from: l  reason: collision with root package name */
    public final long f2421l;

    /* renamed from: m  reason: collision with root package name */
    public final f0.a f2422m;
    public final e0.a<? extends f.i.a.a.h1.v0.e.a> n;
    public final ArrayList<d> o;
    @Nullable
    public final Object p;
    public m q;
    public c0 r;
    public d0 s;
    @Nullable
    public i0 t;
    public long u;
    public f.i.a.a.h1.v0.e.a v;
    public Handler w;

    /* loaded from: classes.dex */
    public static final class Factory {
        public final c.a a;
        @Nullable
        public final m.a b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public e0.a<? extends f.i.a.a.h1.v0.e.a> f2423c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public List<f.i.a.a.e1.c0> f2424d;

        /* renamed from: e  reason: collision with root package name */
        public v f2425e;

        /* renamed from: f  reason: collision with root package name */
        public b0 f2426f;

        /* renamed from: g  reason: collision with root package name */
        public long f2427g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f2428h;

        public Factory(m.a aVar) {
            this(new b.a(aVar), aVar);
        }

        public SsMediaSource createMediaSource(Uri uri) {
            this.f2428h = true;
            if (this.f2423c == null) {
                this.f2423c = new f.i.a.a.h1.v0.e.b();
            }
            List<f.i.a.a.e1.c0> list = this.f2424d;
            if (list != null) {
                this.f2423c = new z(this.f2423c, list);
            }
            if (uri != null) {
                return new SsMediaSource(null, uri, this.b, this.f2423c, this.a, this.f2425e, this.f2426f, this.f2427g, null, null);
            }
            throw null;
        }

        public Factory setStreamKeys(List<f.i.a.a.e1.c0> list) {
            h.v(!this.f2428h);
            this.f2424d = list;
            return this;
        }

        public Factory(c.a aVar, @Nullable m.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
            this.f2426f = new w();
            this.f2427g = com.umeng.commonsdk.proguard.c.f3131d;
            this.f2425e = new v();
        }
    }

    static {
        a0.a("goog.exo.smoothstreaming");
    }

    public SsMediaSource(f.i.a.a.h1.v0.e.a aVar, Uri uri, m.a aVar2, e0.a aVar3, c.a aVar4, v vVar, b0 b0Var, long j2, Object obj, a aVar5) {
        h.v(true);
        this.v = null;
        this.f2416g = h.Q(uri);
        this.f2417h = aVar2;
        this.n = aVar3;
        this.f2418i = aVar4;
        this.f2419j = vVar;
        this.f2420k = b0Var;
        this.f2421l = j2;
        this.f2422m = j(null);
        this.p = null;
        this.f2415f = false;
        this.o = new ArrayList<>();
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.p;
    }

    @Override // f.i.a.a.h1.e0
    public void b() throws IOException {
        this.s.a();
    }

    @Override // f.i.a.a.h1.e0
    public f.i.a.a.h1.d0 c(e0.a aVar, e eVar, long j2) {
        d dVar = new d(this.v, this.f2418i, this.t, this.f2419j, this.f2420k, this.b.D(0, aVar, 0L), this.s, eVar);
        this.o.add(dVar);
        return dVar;
    }

    @Override // f.i.a.a.h1.e0
    public void d(f.i.a.a.h1.d0 d0Var) {
        d dVar = (d) d0Var;
        for (g<c> gVar : dVar.f5244k) {
            gVar.B(null);
        }
        dVar.f5242i = null;
        dVar.f5238e.z();
        this.o.remove(d0Var);
    }

    @Override // f.i.a.a.l1.c0.b
    public void k(f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var, long j2, long j3, boolean z) {
        f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var2 = e0Var;
        f0.a aVar = this.f2422m;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5583c;
        aVar.o(pVar, g0Var.f5597c, g0Var.f5598d, e0Var2.b, j2, j3, g0Var.b);
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable i0 i0Var) {
        this.t = i0Var;
        if (this.f2415f) {
            this.s = new d0.a();
            o();
            return;
        }
        this.q = this.f2417h.createDataSource();
        c0 c0Var = new c0("Loader:Manifest");
        this.r = c0Var;
        this.s = c0Var;
        this.w = new Handler();
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.q, this.f2416g, 4, this.n);
        this.f2422m.x(e0Var.a, e0Var.b, this.r.g(e0Var, this, ((w) this.f2420k).b(e0Var.b)));
    }

    @Override // f.i.a.a.h1.o
    public void n() {
        this.v = this.f2415f ? this.v : null;
        this.q = null;
        this.u = 0L;
        c0 c0Var = this.r;
        if (c0Var != null) {
            c0Var.f(null);
            this.r = null;
        }
        Handler handler = this.w;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.w = null;
        }
    }

    public final void o() {
        a.b[] bVarArr;
        n0 n0Var;
        for (int i2 = 0; i2 < this.o.size(); i2++) {
            d dVar = this.o.get(i2);
            f.i.a.a.h1.v0.e.a aVar = this.v;
            dVar.f5243j = aVar;
            for (g<c> gVar : dVar.f5244k) {
                gVar.f4971e.g(aVar);
            }
            dVar.f5242i.i(dVar);
        }
        long j2 = Long.MIN_VALUE;
        long j3 = Long.MAX_VALUE;
        for (a.b bVar : this.v.f5250f) {
            if (bVar.f5262k > 0) {
                j3 = Math.min(j3, bVar.o[0]);
                int i3 = bVar.f5262k;
                j2 = Math.max(j2, bVar.c(i3 - 1) + bVar.o[i3 - 1]);
            }
        }
        if (j3 == RecyclerView.FOREVER_NS) {
            n0Var = new n0(this.v.f5248d ? -9223372036854775807L : 0L, 0L, 0L, 0L, true, this.v.f5248d, this.p);
        } else {
            f.i.a.a.h1.v0.e.a aVar2 = this.v;
            if (aVar2.f5248d) {
                long j4 = aVar2.f5252h;
                if (j4 != -9223372036854775807L && j4 > 0) {
                    j3 = Math.max(j3, j2 - j4);
                }
                long j5 = j3;
                long j6 = j2 - j5;
                long a2 = j6 - q.a(this.f2421l);
                if (a2 < 5000000) {
                    a2 = Math.min(5000000L, j6 / 2);
                }
                n0Var = new n0(-9223372036854775807L, j6, j5, a2, true, true, this.p);
            } else {
                long j7 = aVar2.f5251g;
                long j8 = j7 != -9223372036854775807L ? j7 : j2 - j3;
                n0Var = new n0(j3 + j8, j8, j3, 0L, true, false, this.p);
            }
        }
        m(n0Var, this.v);
    }

    @Override // f.i.a.a.l1.c0.b
    public c0.c p(f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var, long j2, long j3, IOException iOException, int i2) {
        c0.c c2;
        f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var2 = e0Var;
        long c3 = ((w) this.f2420k).c(4, j3, iOException, i2);
        if (c3 == -9223372036854775807L) {
            c2 = c0.f5573e;
        } else {
            c2 = c0.c(false, c3);
        }
        f0.a aVar = this.f2422m;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5583c;
        aVar.u(pVar, g0Var.f5597c, g0Var.f5598d, e0Var2.b, j2, j3, g0Var.b, iOException, !c2.a());
        return c2;
    }

    public final void q() {
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.q, this.f2416g, 4, this.n);
        this.f2422m.x(e0Var.a, e0Var.b, this.r.g(e0Var, this, ((w) this.f2420k).b(e0Var.b)));
    }

    @Override // f.i.a.a.l1.c0.b
    public void r(f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var, long j2, long j3) {
        f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var2 = e0Var;
        f0.a aVar = this.f2422m;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5583c;
        aVar.r(pVar, g0Var.f5597c, g0Var.f5598d, e0Var2.b, j2, j3, g0Var.b);
        this.v = e0Var2.f5585e;
        this.u = j2 - j3;
        o();
        if (this.v.f5248d) {
            this.w.postDelayed(new Runnable() { // from class: f.i.a.a.h1.v0.a
                @Override // java.lang.Runnable
                public final void run() {
                    SsMediaSource.this.q();
                }
            }, Math.max(0L, (this.u + 5000) - SystemClock.elapsedRealtime()));
        }
    }
}
