package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import f.i.a.a.a0;
import f.i.a.a.e1.c0;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.o;
import f.i.a.a.h1.u0.e;
import f.i.a.a.h1.u0.h;
import f.i.a.a.h1.u0.i;
import f.i.a.a.h1.u0.l;
import f.i.a.a.h1.u0.n;
import f.i.a.a.h1.u0.t.b;
import f.i.a.a.h1.u0.t.c;
import f.i.a.a.h1.u0.t.d;
import f.i.a.a.h1.u0.t.j;
import f.i.a.a.h1.v;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.w;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class HlsMediaSource extends o implements j.e {

    /* renamed from: f  reason: collision with root package name */
    public final i f2396f;

    /* renamed from: g  reason: collision with root package name */
    public final Uri f2397g;

    /* renamed from: h  reason: collision with root package name */
    public final h f2398h;

    /* renamed from: i  reason: collision with root package name */
    public final v f2399i;

    /* renamed from: j  reason: collision with root package name */
    public final b0 f2400j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f2401k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f2402l;

    /* renamed from: m  reason: collision with root package name */
    public final j f2403m;
    @Nullable
    public final Object n = null;
    @Nullable
    public i0 o;

    /* loaded from: classes.dex */
    public static final class Factory {
        public final h a;
        public i b;

        /* renamed from: c  reason: collision with root package name */
        public f.i.a.a.h1.u0.t.i f2404c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public List<c0> f2405d;

        /* renamed from: e  reason: collision with root package name */
        public j.a f2406e;

        /* renamed from: f  reason: collision with root package name */
        public v f2407f;

        /* renamed from: g  reason: collision with root package name */
        public b0 f2408g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f2409h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f2410i;

        public Factory(m.a aVar) {
            this(new e(aVar));
        }

        public HlsMediaSource createMediaSource(Uri uri) {
            this.f2410i = true;
            List<c0> list = this.f2405d;
            if (list != null) {
                this.f2404c = new d(this.f2404c, list);
            }
            h hVar = this.a;
            i iVar = this.b;
            v vVar = this.f2407f;
            b0 b0Var = this.f2408g;
            return new HlsMediaSource(uri, hVar, iVar, vVar, b0Var, this.f2406e.a(hVar, b0Var, this.f2404c), this.f2409h, false, null, null);
        }

        public Factory setStreamKeys(List<c0> list) {
            c.a.a.b.g.h.v(!this.f2410i);
            this.f2405d = list;
            return this;
        }

        public Factory(h hVar) {
            this.a = hVar;
            this.f2404c = new b();
            this.f2406e = c.q;
            this.b = i.a;
            this.f2408g = new w();
            this.f2407f = new v();
        }
    }

    static {
        a0.a("goog.exo.hls");
    }

    public HlsMediaSource(Uri uri, h hVar, i iVar, v vVar, b0 b0Var, j jVar, boolean z, boolean z2, Object obj, a aVar) {
        this.f2397g = uri;
        this.f2398h = hVar;
        this.f2396f = iVar;
        this.f2399i = vVar;
        this.f2400j = b0Var;
        this.f2403m = jVar;
        this.f2401k = z;
        this.f2402l = z2;
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.n;
    }

    @Override // f.i.a.a.h1.e0
    public void b() throws IOException {
        c cVar = (c) this.f2403m;
        f.i.a.a.l1.c0 c0Var = cVar.f5161i;
        if (c0Var != null) {
            c0Var.e(Integer.MIN_VALUE);
        }
        Uri uri = cVar.f5165m;
        if (uri != null) {
            cVar.f(uri);
        }
    }

    @Override // f.i.a.a.h1.e0
    public d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        return new l(this.f2396f, this.f2403m, this.f2398h, this.o, this.f2400j, this.b.D(0, aVar, 0L), eVar, this.f2399i, this.f2401k, this.f2402l);
    }

    @Override // f.i.a.a.h1.e0
    public void d(d0 d0Var) {
        n[] nVarArr;
        l lVar = (l) d0Var;
        ((c) lVar.b).f5157e.remove(lVar);
        for (n nVar : lVar.p) {
            if (nVar.z) {
                for (j0 j0Var : nVar.q) {
                    j0Var.j();
                }
            }
            nVar.f5138g.f(nVar);
            nVar.n.removeCallbacksAndMessages(null);
            nVar.D = true;
            nVar.o.clear();
        }
        lVar.f5132m = null;
        lVar.f5125f.z();
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable i0 i0Var) {
        this.o = i0Var;
        f0.a j2 = j(null);
        j jVar = this.f2403m;
        Uri uri = this.f2397g;
        c cVar = (c) jVar;
        if (cVar != null) {
            cVar.f5162j = new Handler();
            cVar.f5160h = j2;
            cVar.f5163k = this;
            f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(cVar.a.a(4), uri, 4, cVar.b.b());
            c.a.a.b.g.h.v(cVar.f5161i == null);
            f.i.a.a.l1.c0 c0Var = new f.i.a.a.l1.c0("DefaultHlsPlaylistTracker:MasterPlaylist");
            cVar.f5161i = c0Var;
            j2.x(e0Var.a, e0Var.b, c0Var.g(e0Var, cVar, ((w) cVar.f5155c).b(e0Var.b)));
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.o
    public void n() {
        c cVar = (c) this.f2403m;
        cVar.f5165m = null;
        cVar.n = null;
        cVar.f5164l = null;
        cVar.p = -9223372036854775807L;
        cVar.f5161i.f(null);
        cVar.f5161i = null;
        for (c.a aVar : cVar.f5156d.values()) {
            aVar.b.f(null);
        }
        cVar.f5162j.removeCallbacksAndMessages(null);
        cVar.f5162j = null;
        cVar.f5156d.clear();
    }
}
