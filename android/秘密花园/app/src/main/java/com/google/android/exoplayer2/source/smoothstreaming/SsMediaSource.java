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

    /* renamed from: g  reason: collision with root package name */
    public final Uri f2337g;

    /* renamed from: h  reason: collision with root package name */
    public final m.a f2338h;

    /* renamed from: i  reason: collision with root package name */
    public final c.a f2339i;

    /* renamed from: j  reason: collision with root package name */
    public final v f2340j;

    /* renamed from: k  reason: collision with root package name */
    public final b0 f2341k;

    /* renamed from: l  reason: collision with root package name */
    public final long f2342l;
    public final e0.a<? extends f.i.a.a.h1.v0.e.a> n;
    public m q;
    public c0 r;
    public d0 s;
    @Nullable
    public i0 t;
    public long u;
    public Handler w;
    public f.i.a.a.h1.v0.e.a v = null;

    /* renamed from: m  reason: collision with root package name */
    public final f0.a f2343m = j(null);
    @Nullable
    public final Object p = null;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f2336f = false;
    public final ArrayList<d> o = new ArrayList<>();

    /* loaded from: classes.dex */
    public static final class Factory {
        public final c.a a;
        @Nullable
        public final m.a b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public e0.a<? extends f.i.a.a.h1.v0.e.a> f2344c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public List<f.i.a.a.e1.c0> f2345d;

        /* renamed from: e  reason: collision with root package name */
        public v f2346e;

        /* renamed from: f  reason: collision with root package name */
        public b0 f2347f;

        /* renamed from: g  reason: collision with root package name */
        public long f2348g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f2349h;

        public Factory(m.a aVar) {
            this(new b.a(aVar), aVar);
        }

        public SsMediaSource createMediaSource(Uri uri) {
            this.f2349h = true;
            if (this.f2344c == null) {
                this.f2344c = new f.i.a.a.h1.v0.e.b();
            }
            List<f.i.a.a.e1.c0> list = this.f2345d;
            if (list != null) {
                this.f2344c = new z(this.f2344c, list);
            }
            if (uri != null) {
                return new SsMediaSource(null, uri, this.b, this.f2344c, this.a, this.f2346e, this.f2347f, this.f2348g, null, null);
            }
            throw null;
        }

        public Factory setStreamKeys(List<f.i.a.a.e1.c0> list) {
            h.v(!this.f2349h);
            this.f2345d = list;
            return this;
        }

        public Factory(c.a aVar, @Nullable m.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
            this.f2347f = new w();
            this.f2348g = com.umeng.commonsdk.proguard.c.f3052d;
            this.f2346e = new v();
        }
    }

    static {
        a0.a("goog.exo.smoothstreaming");
    }

    public SsMediaSource(f.i.a.a.h1.v0.e.a aVar, Uri uri, m.a aVar2, e0.a aVar3, c.a aVar4, v vVar, b0 b0Var, long j2, Object obj, a aVar5) {
        h.v(true);
        this.f2337g = h.Q(uri);
        this.f2338h = aVar2;
        this.n = aVar3;
        this.f2339i = aVar4;
        this.f2340j = vVar;
        this.f2341k = b0Var;
        this.f2342l = j2;
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
        d dVar = new d(this.v, this.f2339i, this.t, this.f2340j, this.f2341k, this.b.D(0, aVar, 0), this.s, eVar);
        this.o.add(dVar);
        return dVar;
    }

    @Override // f.i.a.a.h1.e0
    public void d(f.i.a.a.h1.d0 d0Var) {
        d dVar = (d) d0Var;
        for (g<c> gVar : dVar.f5160k) {
            gVar.B(null);
        }
        dVar.f5158i = null;
        dVar.f5154e.z();
        this.o.remove(d0Var);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, boolean] */
    @Override // f.i.a.a.l1.c0.b
    public void k(f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var, long j2, long j3, boolean z) {
        f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var2 = e0Var;
        f0.a aVar = this.f2343m;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5499c;
        aVar.o(pVar, g0Var.f5513c, g0Var.f5514d, e0Var2.b, j2, j3, g0Var.b);
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable i0 i0Var) {
        this.t = i0Var;
        if (this.f2336f) {
            this.s = new d0.a();
            o();
            return;
        }
        this.q = this.f2338h.createDataSource();
        c0 c0Var = new c0("Loader:Manifest");
        this.r = c0Var;
        this.s = c0Var;
        this.w = new Handler();
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.q, this.f2337g, 4, this.n);
        this.f2343m.x(e0Var.a, e0Var.b, this.r.g(e0Var, this, ((w) this.f2341k).b(e0Var.b)));
    }

    @Override // f.i.a.a.h1.o
    public void n() {
        this.v = this.f2336f ? this.v : null;
        this.q = null;
        this.u = 0;
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
        n0 n0Var;
        for (int i2 = 0; i2 < this.o.size(); i2++) {
            d dVar = this.o.get(i2);
            f.i.a.a.h1.v0.e.a aVar = this.v;
            dVar.f5159j = aVar;
            for (g<c> gVar : dVar.f5160k) {
                gVar.f4887e.g(aVar);
            }
            dVar.f5158i.i(dVar);
        }
        long j2 = Long.MIN_VALUE;
        a.b[] bVarArr = this.v.f5166f;
        long j3 = Long.MAX_VALUE;
        for (a.b bVar : bVarArr) {
            if (bVar.f5178k > 0) {
                j3 = Math.min(j3, bVar.o[0]);
                int i3 = bVar.f5178k;
                j2 = Math.max(j2, bVar.c(i3 - 1) + bVar.o[i3 - 1]);
            }
        }
        if (j3 == RecyclerView.FOREVER_NS) {
            n0Var = new n0(this.v.f5164d ? -9223372036854775807L : 0, 0, 0, 0, true, this.v.f5164d, this.p);
        } else {
            f.i.a.a.h1.v0.e.a aVar2 = this.v;
            if (aVar2.f5164d) {
                long j4 = aVar2.f5168h;
                if (j4 != -9223372036854775807L && j4 > 0) {
                    j3 = Math.max(j3, j2 - j4);
                }
                long j5 = j2 - j3;
                long a2 = j5 - q.a(this.f2342l);
                if (a2 < 5000000) {
                    a2 = Math.min(5000000L, j5 / 2);
                }
                n0Var = new n0(-9223372036854775807L, j5, j3, a2, true, true, this.p);
            } else {
                long j6 = aVar2.f5167g;
                long j7 = j6 != -9223372036854775807L ? j6 : j2 - j3;
                n0Var = new n0(j3 + j7, j7, j3, 0, true, false, this.p);
            }
        }
        m(n0Var, this.v);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, java.io.IOException, int] */
    @Override // f.i.a.a.l1.c0.b
    public c0.c p(f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var, long j2, long j3, IOException iOException, int i2) {
        c0.c cVar;
        f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var2 = e0Var;
        long c2 = ((w) this.f2341k).c(4, j3, iOException, i2);
        if (c2 == -9223372036854775807L) {
            cVar = c0.f5489e;
        } else {
            cVar = c0.c(false, c2);
        }
        f0.a aVar = this.f2343m;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5499c;
        aVar.u(pVar, g0Var.f5513c, g0Var.f5514d, e0Var2.b, j2, j3, g0Var.b, iOException, !cVar.a());
        return cVar;
    }

    public final void q() {
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.q, this.f2337g, 4, this.n);
        this.f2343m.x(e0Var.a, e0Var.b, this.r.g(e0Var, this, ((w) this.f2341k).b(e0Var.b)));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long] */
    @Override // f.i.a.a.l1.c0.b
    public void r(f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var, long j2, long j3) {
        f.i.a.a.l1.e0<f.i.a.a.h1.v0.e.a> e0Var2 = e0Var;
        f0.a aVar = this.f2343m;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5499c;
        aVar.r(pVar, g0Var.f5513c, g0Var.f5514d, e0Var2.b, j2, j3, g0Var.b);
        this.v = e0Var2.f5501e;
        this.u = j2 - j3;
        o();
        if (this.v.f5164d) {
            this.w.postDelayed(new Runnable() { // from class: f.i.a.a.h1.v0.a
                @Override // java.lang.Runnable
                public final void run() {
                    SsMediaSource.this.q();
                }
            }, Math.max(0L, (this.u + 5000) - SystemClock.elapsedRealtime()));
        }
    }
}
