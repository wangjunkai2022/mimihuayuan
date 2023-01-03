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
    public final b0 f5080c;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public e0.a<g> f5084g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public f0.a f5085h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public c0 f5086i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public Handler f5087j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public j.e f5088k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public e f5089l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public Uri f5090m;
    @Nullable
    public f n;
    public boolean o;

    /* renamed from: f  reason: collision with root package name */
    public final double f5083f = 3.5d;

    /* renamed from: e  reason: collision with root package name */
    public final List<j.b> f5082e = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final HashMap<Uri, a> f5081d = new HashMap<>();
    public long p = -9223372036854775807L;

    /* compiled from: DefaultHlsPlaylistTracker.java */
    /* loaded from: classes.dex */
    public final class a implements c0.b<e0<g>>, Runnable {
        public final Uri a;
        public final c0 b = new c0("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: c  reason: collision with root package name */
        public final e0<g> f5091c;

        /* renamed from: d  reason: collision with root package name */
        public f f5092d;

        /* renamed from: e  reason: collision with root package name */
        public long f5093e;

        /* renamed from: f  reason: collision with root package name */
        public long f5094f;

        /* renamed from: g  reason: collision with root package name */
        public long f5095g;

        /* renamed from: h  reason: collision with root package name */
        public long f5096h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f5097i;

        /* renamed from: j  reason: collision with root package name */
        public IOException f5098j;

        public a(Uri uri) {
            this.a = uri;
            this.f5091c = new e0<>(c.this.a.a(4), uri, 4, c.this.f5084g);
        }

        public final boolean a(long j2) {
            boolean z;
            this.f5096h = SystemClock.elapsedRealtime() + j2;
            if (this.a.equals(c.this.f5090m)) {
                c cVar = c.this;
                List<e.b> list = cVar.f5089l.f5102e;
                int size = list.size();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    a aVar = cVar.f5081d.get(list.get(i2).a);
                    if (elapsedRealtime > aVar.f5096h) {
                        cVar.f5090m = aVar.a;
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
            this.f5096h = 0L;
            if (this.f5097i || this.b.d()) {
                return;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.f5095g;
            if (elapsedRealtime < j2) {
                this.f5097i = true;
                c.this.f5087j.postDelayed(this, j2 - elapsedRealtime);
                return;
            }
            c();
        }

        public final void c() {
            c0 c0Var = this.b;
            e0<g> e0Var = this.f5091c;
            long g2 = c0Var.g(e0Var, this, ((w) c.this.f5080c).b(e0Var.b));
            f0.a aVar = c.this.f5085h;
            e0<g> e0Var2 = this.f5091c;
            aVar.x(e0Var2.a, e0Var2.b, g2);
        }

        public final void d(f fVar, long j2) {
            n0 n0Var;
            long j3;
            f fVar2 = this.f5092d;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f5093e = elapsedRealtime;
            f b = c.b(c.this, fVar2, fVar);
            this.f5092d = b;
            if (b != fVar2) {
                this.f5098j = null;
                this.f5094f = elapsedRealtime;
                c cVar = c.this;
                if (this.a.equals(cVar.f5090m)) {
                    if (cVar.n == null) {
                        cVar.o = !b.f5122l;
                        cVar.p = b.f5116f;
                    }
                    cVar.n = b;
                    HlsMediaSource hlsMediaSource = (HlsMediaSource) cVar.f5088k;
                    if (hlsMediaSource != null) {
                        long b2 = b.f5123m ? q.b(b.f5116f) : -9223372036854775807L;
                        int i2 = b.f5114d;
                        long j4 = (i2 == 2 || i2 == 1) ? b2 : -9223372036854775807L;
                        long j5 = b.f5115e;
                        c cVar2 = (c) hlsMediaSource.f2328m;
                        long j6 = 0;
                        if (cVar2.o) {
                            long j7 = b.f5116f - cVar2.p;
                            long j8 = b.f5122l ? j7 + b.p : -9223372036854775807L;
                            List<f.a> list = b.o;
                            if (j5 == -9223372036854775807L) {
                                if (!list.isEmpty()) {
                                    j6 = list.get(Math.max(0, list.size() - 3)).f5126e;
                                }
                                j3 = j6;
                            } else {
                                j3 = j5;
                            }
                            n0Var = new n0(j4, b2, j8, b.p, j7, j3, true, !b.f5122l, hlsMediaSource.n);
                        } else {
                            long j9 = j5 == -9223372036854775807L ? 0L : j5;
                            long j10 = b.p;
                            n0Var = new n0(j4, b2, j10, j10, 0L, j9, true, false, hlsMediaSource.n);
                        }
                        hlsMediaSource.m(n0Var, new f.i.a.a.h1.u0.j(((c) hlsMediaSource.f2328m).f5089l, b));
                    } else {
                        throw null;
                    }
                }
                int size = cVar.f5082e.size();
                for (int i3 = 0; i3 < size; i3++) {
                    cVar.f5082e.get(i3).a();
                }
            } else if (!b.f5122l) {
                f fVar3 = this.f5092d;
                if (fVar.f5119i + fVar.o.size() < fVar3.f5119i) {
                    this.f5098j = new j.c(this.a);
                    c.a(c.this, this.a, -9223372036854775807L);
                } else if (elapsedRealtime - this.f5094f > q.b(fVar3.f5121k) * c.this.f5083f) {
                    j.d dVar = new j.d(this.a);
                    this.f5098j = dVar;
                    long a = ((w) c.this.f5080c).a(4, j2, dVar, 1);
                    c.a(c.this, this.a, a);
                    if (a != -9223372036854775807L) {
                        a(a);
                    }
                }
            }
            f fVar4 = this.f5092d;
            this.f5095g = q.b(fVar4 != fVar2 ? fVar4.f5121k : fVar4.f5121k / 2) + elapsedRealtime;
            if (!this.a.equals(c.this.f5090m) || this.f5092d.f5122l) {
                return;
            }
            b();
        }

        @Override // f.i.a.a.l1.c0.b
        public void k(e0<g> e0Var, long j2, long j3, boolean z) {
            e0<g> e0Var2 = e0Var;
            f0.a aVar = c.this.f5085h;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5499c;
            aVar.o(pVar, g0Var.f5513c, g0Var.f5514d, 4, j2, j3, g0Var.b);
        }

        @Override // f.i.a.a.l1.c0.b
        public c0.c p(e0<g> e0Var, long j2, long j3, IOException iOException, int i2) {
            c0.c cVar;
            e0<g> e0Var2 = e0Var;
            long a = ((w) c.this.f5080c).a(e0Var2.b, j3, iOException, i2);
            boolean z = a != -9223372036854775807L;
            boolean z2 = c.a(c.this, this.a, a) || !z;
            if (z) {
                z2 |= a(a);
            }
            if (z2) {
                long c2 = ((w) c.this.f5080c).c(e0Var2.b, j3, iOException, i2);
                cVar = c2 != -9223372036854775807L ? c0.c(false, c2) : c0.f5489e;
            } else {
                cVar = c0.f5488d;
            }
            f0.a aVar = c.this.f5085h;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5499c;
            aVar.u(pVar, g0Var.f5513c, g0Var.f5514d, 4, j2, j3, g0Var.b, iOException, !cVar.a());
            return cVar;
        }

        @Override // f.i.a.a.l1.c0.b
        public void r(e0<g> e0Var, long j2, long j3) {
            e0<g> e0Var2 = e0Var;
            g gVar = e0Var2.f5501e;
            if (gVar instanceof f) {
                d((f) gVar, j3);
                f0.a aVar = c.this.f5085h;
                p pVar = e0Var2.a;
                g0 g0Var = e0Var2.f5499c;
                aVar.r(pVar, g0Var.f5513c, g0Var.f5514d, 4, j2, j3, g0Var.b);
                return;
            }
            this.f5098j = new h0("Loaded playlist has unexpected type.");
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5097i = false;
            c();
        }
    }

    public c(f.i.a.a.h1.u0.h hVar, b0 b0Var, i iVar) {
        this.a = hVar;
        this.b = iVar;
        this.f5080c = b0Var;
    }

    public static boolean a(c cVar, Uri uri, long j2) {
        int size = cVar.f5082e.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            z |= !cVar.f5082e.get(i2).d(uri, j2);
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
                if (fVar != null && fVar2.f5119i <= fVar.f5119i && (i3 < 0 || ((size = fVar2.o.size()) <= (size2 = fVar.o.size()) && (size != size2 || !fVar2.f5122l || fVar.f5122l)))) {
                    z = false;
                }
                if (!z) {
                    return (!fVar2.f5122l || fVar.f5122l) ? fVar : new f(fVar.f5114d, fVar.a, fVar.b, fVar.f5115e, fVar.f5116f, fVar.f5117g, fVar.f5118h, fVar.f5119i, fVar.f5120j, fVar.f5121k, fVar.f5133c, true, fVar.f5123m, fVar.n, fVar.o);
                }
                if (fVar2.f5123m) {
                    j2 = fVar2.f5116f;
                } else {
                    f fVar3 = cVar.n;
                    j2 = fVar3 != null ? fVar3.f5116f : 0L;
                    if (fVar != null) {
                        int size3 = fVar.o.size();
                        f.a c3 = c(fVar, fVar2);
                        if (c3 != null) {
                            j3 = fVar.f5116f;
                            j4 = c3.f5126e;
                        } else if (size3 == fVar2.f5119i - fVar.f5119i) {
                            j3 = fVar.f5116f;
                            j4 = fVar.p;
                        }
                        j2 = j3 + j4;
                    }
                }
                long j5 = j2;
                if (fVar2.f5117g) {
                    i2 = fVar2.f5118h;
                } else {
                    f fVar4 = cVar.n;
                    i2 = fVar4 != null ? fVar4.f5118h : 0;
                    if (fVar != null && (c2 = c(fVar, fVar2)) != null) {
                        i2 = (fVar.f5118h + c2.f5125d) - fVar2.o.get(0).f5125d;
                    }
                }
                return new f(fVar2.f5114d, fVar2.a, fVar2.b, fVar2.f5115e, j5, true, i2, fVar2.f5119i, fVar2.f5120j, fVar2.f5121k, fVar2.f5133c, fVar2.f5122l, fVar2.f5123m, fVar2.n, fVar2.o);
            }
            throw null;
        }
        throw null;
    }

    public static f.a c(f fVar, f fVar2) {
        int i2 = (int) (fVar2.f5119i - fVar.f5119i);
        List<f.a> list = fVar.o;
        if (i2 < list.size()) {
            return list.get(i2);
        }
        return null;
    }

    public f d(Uri uri, boolean z) {
        f fVar;
        f fVar2 = this.f5081d.get(uri).f5092d;
        if (fVar2 != null && z && !uri.equals(this.f5090m)) {
            List<e.b> list = this.f5089l.f5102e;
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
            if (z2 && ((fVar = this.n) == null || !fVar.f5122l)) {
                this.f5090m = uri;
                this.f5081d.get(uri).b();
            }
        }
        return fVar2;
    }

    public boolean e(Uri uri) {
        int i2;
        a aVar = this.f5081d.get(uri);
        if (aVar.f5092d == null) {
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long max = Math.max((long) com.umeng.commonsdk.proguard.c.f3052d, q.b(aVar.f5092d.p));
        f fVar = aVar.f5092d;
        return fVar.f5122l || (i2 = fVar.f5114d) == 2 || i2 == 1 || aVar.f5093e + max > elapsedRealtime;
    }

    public void f(Uri uri) throws IOException {
        a aVar = this.f5081d.get(uri);
        aVar.b.e(Integer.MIN_VALUE);
        IOException iOException = aVar.f5098j;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // f.i.a.a.l1.c0.b
    public void k(e0<g> e0Var, long j2, long j3, boolean z) {
        e0<g> e0Var2 = e0Var;
        f0.a aVar = this.f5085h;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5499c;
        aVar.o(pVar, g0Var.f5513c, g0Var.f5514d, 4, j2, j3, g0Var.b);
    }

    @Override // f.i.a.a.l1.c0.b
    public c0.c p(e0<g> e0Var, long j2, long j3, IOException iOException, int i2) {
        e0<g> e0Var2 = e0Var;
        long c2 = ((w) this.f5080c).c(e0Var2.b, j3, iOException, i2);
        boolean z = c2 == -9223372036854775807L;
        f0.a aVar = this.f5085h;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5499c;
        aVar.u(pVar, g0Var.f5513c, g0Var.f5514d, 4, j2, j3, g0Var.b, iOException, z);
        if (z) {
            return c0.f5489e;
        }
        return c0.c(false, c2);
    }

    @Override // f.i.a.a.l1.c0.b
    public void r(e0<g> e0Var, long j2, long j3) {
        e eVar;
        e0<g> e0Var2 = e0Var;
        g gVar = e0Var2.f5501e;
        boolean z = gVar instanceof f;
        if (z) {
            eVar = e.d(gVar.a);
        } else {
            eVar = (e) gVar;
        }
        this.f5089l = eVar;
        this.f5084g = this.b.a(eVar);
        this.f5090m = eVar.f5102e.get(0).a;
        List<Uri> list = eVar.f5101d;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Uri uri = list.get(i2);
            this.f5081d.put(uri, new a(uri));
        }
        a aVar = this.f5081d.get(this.f5090m);
        if (z) {
            aVar.d((f) gVar, j3);
        } else {
            aVar.b();
        }
        f0.a aVar2 = this.f5085h;
        p pVar = e0Var2.a;
        g0 g0Var = e0Var2.f5499c;
        aVar2.r(pVar, g0Var.f5513c, g0Var.f5514d, 4, j2, j3, g0Var.b);
    }
}
