package f.i.a.a.h1.u0.t;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import f.i.a.a.h0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.n0;
import f.i.a.a.h1.u0.t.e;
import f.i.a.a.h1.u0.t.f;
import f.i.a.a.h1.u0.t.j;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.e0;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.p;
import f.i.a.a.l1.w;
import f.i.a.a.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: DefaultHlsPlaylistTracker.java */
/* loaded from: classes.dex */
public final class c implements j, c0.b<e0<g>> {
    public static final j.a q = f.i.a.a.h1.u0.t.a.a;
    public final f.i.a.a.h1.u0.h a;
    public final i b;

    /* renamed from: c  reason: collision with root package name */
    public final b0 f5155c;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public e0.a<g> f5159g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public f0.a f5160h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public c0 f5161i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public Handler f5162j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public j.e f5163k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public e f5164l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public Uri f5165m;
    @Nullable
    public f n;
    public boolean o;

    /* renamed from: f  reason: collision with root package name */
    public final double f5158f = 3.5d;

    /* renamed from: e  reason: collision with root package name */
    public final List<j.b> f5157e = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final HashMap<Uri, a> f5156d = new HashMap<>();
    public long p = -9223372036854775807L;

    /* compiled from: DefaultHlsPlaylistTracker.java */
    /* loaded from: classes.dex */
    public final class a implements c0.b<e0<g>>, Runnable {
        public final Uri a;
        public final c0 b = new c0("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: c  reason: collision with root package name */
        public final e0<g> f5166c;

        /* renamed from: d  reason: collision with root package name */
        public f f5167d;

        /* renamed from: e  reason: collision with root package name */
        public long f5168e;

        /* renamed from: f  reason: collision with root package name */
        public long f5169f;

        /* renamed from: g  reason: collision with root package name */
        public long f5170g;

        /* renamed from: h  reason: collision with root package name */
        public long f5171h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f5172i;

        /* renamed from: j  reason: collision with root package name */
        public IOException f5173j;

        public a(Uri uri) {
            this.a = uri;
            this.f5166c = new e0<>(c.this.a.a(4), uri, 4, c.this.f5159g);
        }

        public final boolean a(long j2) {
            boolean z;
            this.f5171h = SystemClock.elapsedRealtime() + j2;
            if (this.a.equals(c.this.f5165m)) {
                c cVar = c.this;
                List<e.b> list = cVar.f5164l.f5177e;
                int size = list.size();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    a aVar = cVar.f5156d.get(list.get(i2).a);
                    if (elapsedRealtime > aVar.f5171h) {
                        cVar.f5165m = aVar.a;
                        aVar.b();
                        z = true;
                        break;
                    }
                    i2++;
                }
                return !z;
            }
            return false;
        }

        public void b() {
            this.f5171h = 0L;
            if (this.f5172i || this.b.d()) {
                return;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.f5170g;
            if (elapsedRealtime < j2) {
                this.f5172i = true;
                c.this.f5162j.postDelayed(this, j2 - elapsedRealtime);
                return;
            }
            c();
        }

        public final void c() {
            c0 c0Var = this.b;
            e0<g> e0Var = this.f5166c;
            long g2 = c0Var.g(e0Var, this, ((w) c.this.f5155c).b(e0Var.b));
            f0.a aVar = c.this.f5160h;
            e0<g> e0Var2 = this.f5166c;
            aVar.x(e0Var2.a, e0Var2.b, g2);
        }

        public final void d(f fVar, long j2) {
            n0 n0Var;
            long j3;
            f fVar2 = this.f5167d;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f5168e = elapsedRealtime;
            f b = c.b(c.this, fVar2, fVar);
            this.f5167d = b;
            if (b != fVar2) {
                this.f5173j = null;
                this.f5169f = elapsedRealtime;
                c cVar = c.this;
                if (this.a.equals(cVar.f5165m)) {
                    if (cVar.n == null) {
                        cVar.o = !b.f5197l;
                        cVar.p = b.f5191f;
                    }
                    cVar.n = b;
                    HlsMediaSource hlsMediaSource = (HlsMediaSource) cVar.f5163k;
                    if (hlsMediaSource != null) {
                        long b2 = b.f5198m ? q.b(b.f5191f) : -9223372036854775807L;
                        int i2 = b.f5189d;
                        long j4 = (i2 == 2 || i2 == 1) ? b2 : -9223372036854775807L;
                        long j5 = b.f5190e;
                        c cVar2 = (c) hlsMediaSource.f2403m;
                        long j6 = 0;
                        if (cVar2.o) {
                            long j7 = b.f5191f - cVar2.p;
                            long j8 = b.f5197l ? j7 + b.p : -9223372036854775807L;
                            List<f.a> list = b.o;
                            if (j5 == -9223372036854775807L) {
                                if (!list.isEmpty()) {
                                    j6 = list.get(Math.max(0, list.size() - 3)).f5201e;
                                }
                                j3 = j6;
                            } else {
                                j3 = j5;
                            }
                            n0Var = new n0(j4, b2, j8, b.p, j7, j3, true, !b.f5197l, hlsMediaSource.n);
                        } else {
                            long j9 = j5 == -9223372036854775807L ? 0L : j5;
                            long j10 = b.p;
                            n0Var = new n0(j4, b2, j10, j10, 0L, j9, true, false, hlsMediaSource.n);
                        }
                        hlsMediaSource.m(n0Var, new f.i.a.a.h1.u0.j(((c) hlsMediaSource.f2403m).f5164l, b));
                    } else {
                        throw null;
                    }
                }
                int size = cVar.f5157e.size();
                for (int i3 = 0; i3 < size; i3++) {
                    cVar.f5157e.get(i3).a();
                }
            } else if (!b.f5197l) {
                f fVar3 = this.f5167d;
                if (fVar.f5194i + fVar.o.size() < fVar3.f5194i) {
                    this.f5173j = new j.c(this.a);
                    c.a(c.this, this.a, -9223372036854775807L);
                } else if (elapsedRealtime - this.f5169f > q.b(fVar3.f5196k) * c.this.f5158f) {
                    j.d dVar = new j.d(this.a);
                    this.f5173j = dVar;
                    long a = ((w) c.this.f5155c).a(4, j2, dVar, 1);
                    c.a(c.this, this.a, a);
                    if (a != -9223372036854775807L) {
                        a(a);
                    }
                }
            }
            f fVar4 = this.f5167d;
            this.f5170g = q.b(fVar4 != fVar2 ? fVar4.f5196k : fVar4.f5196k / 2) + elapsedRealtime;
            if (!this.a.equals(c.this.f5165m) || this.f5167d.f5197l) {
                return;
            }
            b();
        }

        @Override // f.i.a.a.l1.c0.b
        public void k(e0<g> e0Var, long j2, long j3, boolean z) {
            e0<g> e0Var2 = e0Var;
            f0.a aVar = c.this.f5160h;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5574c;
            aVar.o(pVar, g0Var.f5588c, g0Var.f5589d, 4, j2, j3, g0Var.b);
        }

        @Override // f.i.a.a.l1.c0.b
        public c0.c p(e0<g> e0Var, long j2, long j3, IOException iOException, int i2) {
            c0.c cVar;
            e0<g> e0Var2 = e0Var;
            long a = ((w) c.this.f5155c).a(e0Var2.b, j3, iOException, i2);
            boolean z = a != -9223372036854775807L;
            boolean z2 = c.a(c.this, this.a, a) || !z;
            if (z) {
                z2 |= a(a);
            }
            if (z2) {
                long c2 = ((w) c.this.f5155c).c(e0Var2.b, j3, iOException, i2);
                cVar = c2 != -9223372036854775807L ? c0.c(false, c2) : c0.f5564e;
            } else {
                cVar = c0.f5563d;
            }
            f0.a aVar = c.this.f5160h;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5574c;
            aVar.u(pVar, g0Var.f5588c, g0Var.f5589d, 4, j2, j3, g0Var.b, iOException, !cVar.a());
            return cVar;
        }

        @Override // f.i.a.a.l1.c0.b
        public void r(e0<g> e0Var, long j2, long j3) {
            e0<g> e0Var2 = e0Var;
            g gVar = e0Var2.f5576e;
            if (gVar instanceof f) {
                d((f) gVar, j3);
                f0.a aVar = c.this.f5160h;
                p pVar = e0Var2.a;
                g0 g0Var = e0Var2.f5574c;
                aVar.r(pVar, g0Var.f5588c, g0Var.f5589d, 4, j2, j3, g0Var.b);
                return;
            }
            this.f5173j = new h0("Loaded playlist has unexpected type.");
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5172i = false;
            c();
        }
    }

    public c(f.i.a.a.h1.u0.h hVar, b0 b0Var, i iVar) {
        this.a = hVar;
        this.b = iVar;
        this.f5155c = b0Var;
    }

    public static boolean a(c cVar, Uri uri, long j2) {
        int size = cVar.f5157e.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            z |= !cVar.f5157e.get(i2).d(uri, j2);
        }
        return z;
    }

    public static f b(c cVar, f fVar, f fVar2) {
        long j2;
        long j3;
        long j4;
        int i2;
        f.a c2;
        int i3;
        int size;
        int size2;
        if (cVar != null) {
            if (fVar2 != null) {
                boolean z = true;
                if (fVar != null && fVar2.f5194i <= fVar.f5194i && (i3 < 0 || ((size = fVar2.o.size()) <= (size2 = fVar.o.size()) && (size != size2 || !fVar2.f5197l || fVar.f5197l)))) {
                    z = false;
                }
                if (!z) {
                    return (!fVar2.f5197l || fVar.f5197l) ? fVar : new f(fVar.f5189d, fVar.a, fVar.b, fVar.f5190e, fVar.f5191f, fVar.f5192g, fVar.f5193h, fVar.f5194i, fVar.f5195j, fVar.f5196k, fVar.f5208c, true, fVar.f5198m, fVar.n, fVar.o);
                }
                if (fVar2.f5198m) {
                    j2 = fVar2.f5191f;
                } else {
                    f fVar3 = cVar.n;
                    j2 = fVar3 != null ? fVar3.f5191f : 0L;
                    if (fVar != null) {
                        int size3 = fVar.o.size();
                        f.a c3 = c(fVar, fVar2);
                        if (c3 != null) {
                            j3 = fVar.f5191f;
                            j4 = c3.f5201e;
                        } else if (size3 == fVar2.f5194i - fVar.f5194i) {
                            j3 = fVar.f5191f;
                            j4 = fVar.p;
                        }
                        j2 = j3 + j4;
                    }
                }
                long j5 = j2;
                if (fVar2.f5192g) {
                    i2 = fVar2.f5193h;
                } else {
                    f fVar4 = cVar.n;
                    i2 = fVar4 != null ? fVar4.f5193h : 0;
                    if (fVar != null && (c2 = c(fVar, fVar2)) != null) {
                        i2 = (fVar.f5193h + c2.f5200d) - fVar2.o.get(0).f5200d;
                    }
                }
                return new f(fVar2.f5189d, fVar2.a, fVar2.b, fVar2.f5190e, j5, true, i2, fVar2.f5194i, fVar2.f5195j, fVar2.f5196k, fVar2.f5208c, fVar2.f5197l, fVar2.f5198m, fVar2.n, fVar2.o);
            }
            throw null;
        }
        throw null;
    }

    public static f.a c(f fVar, f fVar2) {
        int i2 = (int) (fVar2.f5194i - fVar.f5194i);
        List<f.a> list = fVar.o;
        if (i2 < list.size()) {
            return list.get(i2);
        }
        return null;
    }

    public f d(Uri uri, boolean z) {
        f fVar;
        f fVar2 = this.f5156d.get(uri).f5167d;
        if (fVar2 != null && z && !uri.equals(this.f5165m)) {
            List<e.b> list = this.f5164l.f5177e;
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                } else if (uri.equals(list.get(i2).a)) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z2 && ((fVar = this.n) == null || !fVar.f5197l)) {
                this.f5165m = uri;
                this.f5156d.get(uri).b();
            }
        }
        return fVar2;
    }

    public boolean e(Uri uri) {
        int i2;
        a aVar = this.f5156d.get(uri);
        if (aVar.f5167d == null) {
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long max = Math.max((long) com.umeng.commonsdk.proguard.c.f3127d, q.b(aVar.f5167d.p));
        f fVar = aVar.f5167d;
        return fVar.f5197l || (i2 = fVar.f5189d) == 2 || i2 == 1 || aVar.f5168e + max > elapsedRealtime;
    }

    public void f(Uri uri) throws IOException {
        a aVar = this.f5156d.get(uri);
        aVar.b.e(Integer.MIN_VALUE);
        IOException iOException = aVar.f5173j;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // f.i.a.a.l1.c0.b
    public void k(e0<g> e0Var, long j2, long j3, boolean z) {
        e0<g> e0Var2 = e0Var;
        f0.a aVar = this.f5160h;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5574c;
        aVar.o(pVar, g0Var.f5588c, g0Var.f5589d, 4, j2, j3, g0Var.b);
    }

    @Override // f.i.a.a.l1.c0.b
    public c0.c p(e0<g> e0Var, long j2, long j3, IOException iOException, int i2) {
        e0<g> e0Var2 = e0Var;
        long c2 = ((w) this.f5155c).c(e0Var2.b, j3, iOException, i2);
        boolean z = c2 == -9223372036854775807L;
        f0.a aVar = this.f5160h;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5574c;
        aVar.u(pVar, g0Var.f5588c, g0Var.f5589d, 4, j2, j3, g0Var.b, iOException, z);
        if (z) {
            return c0.f5564e;
        }
        return c0.c(false, c2);
    }

    @Override // f.i.a.a.l1.c0.b
    public void r(e0<g> e0Var, long j2, long j3) {
        e eVar;
        e0<g> e0Var2 = e0Var;
        g gVar = e0Var2.f5576e;
        boolean z = gVar instanceof f;
        if (z) {
            eVar = e.d(gVar.a);
        } else {
            eVar = (e) gVar;
        }
        this.f5164l = eVar;
        this.f5159g = this.b.a(eVar);
        this.f5165m = eVar.f5177e.get(0).a;
        List<Uri> list = eVar.f5176d;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Uri uri = list.get(i2);
            this.f5156d.put(uri, new a(uri));
        }
        a aVar = this.f5156d.get(this.f5165m);
        if (z) {
            aVar.d((f) gVar, j3);
        } else {
            aVar.b();
        }
        f0.a aVar2 = this.f5160h;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5574c;
        aVar2.r(pVar, g0Var.f5588c, g0Var.f5589d, 4, j2, j3, g0Var.b);
    }
}
