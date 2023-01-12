package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import f.i.a.a.a0;
import f.i.a.a.e1.z;
import f.i.a.a.h0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.o;
import f.i.a.a.h1.t0.c;
import f.i.a.a.h1.t0.h;
import f.i.a.a.h1.t0.j;
import f.i.a.a.h1.v;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.d0;
import f.i.a.a.l1.e0;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import f.i.a.a.l1.w;
import f.i.a.a.q;
import f.i.a.a.u0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class DashMediaSource extends o {
    public Handler A;
    public Uri B;
    public Uri C;
    public boolean E;
    public long F;
    public long G;
    public long H;
    public int I;
    public int K;

    /* renamed from: g  reason: collision with root package name */
    public final m.a f2374g;

    /* renamed from: h  reason: collision with root package name */
    public final c.a f2375h;

    /* renamed from: i  reason: collision with root package name */
    public final v f2376i;

    /* renamed from: j  reason: collision with root package name */
    public final b0 f2377j;

    /* renamed from: k  reason: collision with root package name */
    public final long f2378k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f2379l;
    public final e0.a<? extends f.i.a.a.h1.t0.k.b> n;
    public final e o;
    public final Runnable r;
    public final Runnable s;
    public final d0 u;
    public m w;
    public c0 x;
    @Nullable
    public i0 y;
    public IOException z;
    public f.i.a.a.h1.t0.k.b D = null;
    @Nullable
    public final Object v = null;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f2373f = false;

    /* renamed from: m  reason: collision with root package name */
    public final f0.a f2380m = j(null);
    public final Object p = new Object();
    public final SparseArray<f.i.a.a.h1.t0.e> q = new SparseArray<>();
    public final j.b t = new c(null);
    public long J = -9223372036854775807L;

    /* loaded from: classes.dex */
    public static final class Factory {
        public final c.a a;
        @Nullable
        public final m.a b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public e0.a<? extends f.i.a.a.h1.t0.k.b> f2381c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public List<f.i.a.a.e1.c0> f2382d;

        /* renamed from: e  reason: collision with root package name */
        public v f2383e;

        /* renamed from: f  reason: collision with root package name */
        public b0 f2384f;

        /* renamed from: g  reason: collision with root package name */
        public long f2385g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f2386h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f2387i;

        public Factory(m.a aVar) {
            this(new h.a(aVar), aVar);
        }

        public DashMediaSource createMediaSource(Uri uri) {
            this.f2387i = true;
            if (this.f2381c == null) {
                this.f2381c = new f.i.a.a.h1.t0.k.c();
            }
            List<f.i.a.a.e1.c0> list = this.f2382d;
            if (list != null) {
                this.f2381c = new z(this.f2381c, list);
            }
            if (uri != null) {
                return new DashMediaSource(null, uri, this.b, this.f2381c, this.a, this.f2383e, this.f2384f, this.f2385g, this.f2386h, null, null);
            }
            throw null;
        }

        public Factory setStreamKeys(List<f.i.a.a.e1.c0> list) {
            c.a.a.b.g.h.v(!this.f2387i);
            this.f2382d = list;
            return this;
        }

        public Factory(c.a aVar, @Nullable m.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
            this.f2384f = new w();
            this.f2385g = com.umeng.commonsdk.proguard.c.f3127d;
            this.f2383e = new v();
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends u0 {
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2388c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2389d;

        /* renamed from: e  reason: collision with root package name */
        public final long f2390e;

        /* renamed from: f  reason: collision with root package name */
        public final long f2391f;

        /* renamed from: g  reason: collision with root package name */
        public final long f2392g;

        /* renamed from: h  reason: collision with root package name */
        public final f.i.a.a.h1.t0.k.b f2393h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public final Object f2394i;

        public b(long j2, long j3, int i2, long j4, long j5, long j6, f.i.a.a.h1.t0.k.b bVar, @Nullable Object obj) {
            this.b = j2;
            this.f2388c = j3;
            this.f2389d = i2;
            this.f2390e = j4;
            this.f2391f = j5;
            this.f2392g = j6;
            this.f2393h = bVar;
            this.f2394i = obj;
        }

        @Override // f.i.a.a.u0
        public int b(Object obj) {
            int intValue;
            if ((obj instanceof Integer) && (intValue = ((Integer) obj).intValue() - this.f2389d) >= 0 && intValue < i()) {
                return intValue;
            }
            return -1;
        }

        @Override // f.i.a.a.u0
        public u0.b g(int i2, u0.b bVar, boolean z) {
            c.a.a.b.g.h.q(i2, 0, i());
            bVar.g(z ? this.f2393h.f5040l.get(i2).a : null, z ? Integer.valueOf(this.f2389d + i2) : null, 0, q.a(this.f2393h.d(i2)), q.a(this.f2393h.f5040l.get(i2).b - this.f2393h.b(0).b) - this.f2390e);
            return bVar;
        }

        @Override // f.i.a.a.u0
        public int i() {
            return this.f2393h.c();
        }

        @Override // f.i.a.a.u0
        public Object m(int i2) {
            c.a.a.b.g.h.q(i2, 0, i());
            return Integer.valueOf(this.f2389d + i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00a2  */
        @Override // f.i.a.a.u0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public f.i.a.a.u0.c o(int r33, f.i.a.a.u0.c r34, boolean r35, long r36) {
            /*
                Method dump skipped, instructions count: 221
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.b.o(int, f.i.a.a.u0$c, boolean, long):f.i.a.a.u0$c");
        }

        @Override // f.i.a.a.u0
        public int p() {
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public final class c implements j.b {
        public c(a aVar) {
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements e0.a<Long> {
        public static final Pattern a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        @Override // f.i.a.a.l1.e0.a
        public Long a(Uri uri, InputStream inputStream) throws IOException {
            String readLine = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8"))).readLine();
            try {
                Matcher matcher = a.matcher(readLine);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    long time = simpleDateFormat.parse(group).getTime();
                    if (!"Z".equals(matcher.group(2))) {
                        long j2 = "+".equals(matcher.group(4)) ? 1L : -1L;
                        long parseLong = Long.parseLong(matcher.group(5));
                        String group2 = matcher.group(7);
                        time -= ((((parseLong * 60) + (TextUtils.isEmpty(group2) ? 0L : Long.parseLong(group2))) * 60) * 1000) * j2;
                    }
                    return Long.valueOf(time);
                }
                throw new h0("Couldn't parse timestamp: " + readLine);
            } catch (ParseException e2) {
                throw new h0(e2);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class e implements c0.b<e0<f.i.a.a.h1.t0.k.b>> {
        public e(a aVar) {
        }

        @Override // f.i.a.a.l1.c0.b
        public void k(e0<f.i.a.a.h1.t0.k.b> e0Var, long j2, long j3, boolean z) {
            DashMediaSource.this.q(e0Var, j2, j3);
        }

        @Override // f.i.a.a.l1.c0.b
        public c0.c p(e0<f.i.a.a.h1.t0.k.b> e0Var, long j2, long j3, IOException iOException, int i2) {
            c0.c c2;
            e0<f.i.a.a.h1.t0.k.b> e0Var2 = e0Var;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            long c3 = ((w) dashMediaSource.f2377j).c(4, j3, iOException, i2);
            if (c3 == -9223372036854775807L) {
                c2 = c0.f5564e;
            } else {
                c2 = c0.c(false, c3);
            }
            f0.a aVar = dashMediaSource.f2380m;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5574c;
            aVar.u(pVar, g0Var.f5588c, g0Var.f5589d, e0Var2.b, j2, j3, g0Var.b, iOException, !c2.a());
            return c2;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a2  */
        @Override // f.i.a.a.l1.c0.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void r(f.i.a.a.l1.e0<f.i.a.a.h1.t0.k.b> r19, long r20, long r22) {
            /*
                Method dump skipped, instructions count: 335
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.e.r(f.i.a.a.l1.c0$e, long, long):void");
        }
    }

    /* loaded from: classes.dex */
    public final class f implements d0 {
        public f() {
        }

        @Override // f.i.a.a.l1.d0
        public void a() throws IOException {
            DashMediaSource.this.x.e(Integer.MIN_VALUE);
            IOException iOException = DashMediaSource.this.z;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class g {
        public final boolean a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2395c;

        public g(boolean z, long j2, long j3) {
            this.a = z;
            this.b = j2;
            this.f2395c = j3;
        }

        public static g a(f.i.a.a.h1.t0.k.f fVar, long j2) {
            boolean z;
            boolean z2;
            int i2;
            int size = fVar.f5051c.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int i5 = fVar.f5051c.get(i4).b;
                if (i5 == 1 || i5 == 2) {
                    z = true;
                    break;
                }
            }
            z = false;
            long j3 = RecyclerView.FOREVER_NS;
            int i6 = 0;
            boolean z3 = false;
            long j4 = 0;
            boolean z4 = false;
            while (i6 < size) {
                f.i.a.a.h1.t0.k.a aVar = fVar.f5051c.get(i6);
                if (!z || aVar.b != 3) {
                    f.i.a.a.h1.t0.f i7 = aVar.f5028c.get(i3).i();
                    if (i7 == null) {
                        return new g(true, 0L, j2);
                    }
                    z3 |= i7.e();
                    int g2 = i7.g(j2);
                    if (g2 == 0) {
                        z2 = z;
                        i2 = i6;
                        j3 = 0;
                        j4 = 0;
                        z4 = true;
                    } else if (!z4) {
                        z2 = z;
                        long f2 = i7.f();
                        i2 = i6;
                        j4 = Math.max(j4, i7.b(f2));
                        if (g2 != -1) {
                            long j5 = (f2 + g2) - 1;
                            j3 = Math.min(j3, i7.c(j5, j2) + i7.b(j5));
                        }
                    }
                    i6 = i2 + 1;
                    z = z2;
                    i3 = 0;
                }
                z2 = z;
                i2 = i6;
                i6 = i2 + 1;
                z = z2;
                i3 = 0;
            }
            return new g(z3, j4, j3);
        }
    }

    /* loaded from: classes.dex */
    public final class h implements c0.b<e0<Long>> {
        public h(a aVar) {
        }

        @Override // f.i.a.a.l1.c0.b
        public void k(e0<Long> e0Var, long j2, long j3, boolean z) {
            DashMediaSource.this.q(e0Var, j2, j3);
        }

        @Override // f.i.a.a.l1.c0.b
        public c0.c p(e0<Long> e0Var, long j2, long j3, IOException iOException, int i2) {
            e0<Long> e0Var2 = e0Var;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            f0.a aVar = dashMediaSource.f2380m;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5574c;
            aVar.u(pVar, g0Var.f5588c, g0Var.f5589d, e0Var2.b, j2, j3, g0Var.b, iOException, true);
            dashMediaSource.s(true);
            return c0.f5563d;
        }

        @Override // f.i.a.a.l1.c0.b
        public void r(e0<Long> e0Var, long j2, long j3) {
            e0<Long> e0Var2 = e0Var;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            f0.a aVar = dashMediaSource.f2380m;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5574c;
            aVar.r(pVar, g0Var.f5588c, g0Var.f5589d, e0Var2.b, j2, j3, g0Var.b);
            dashMediaSource.H = e0Var2.f5576e.longValue() - j2;
            dashMediaSource.s(true);
        }
    }

    /* loaded from: classes.dex */
    public static final class i implements e0.a<Long> {
        public i(a aVar) {
        }

        @Override // f.i.a.a.l1.e0.a
        public Long a(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(f.i.a.a.m1.h0.d0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        a0.a("goog.exo.dash");
    }

    public DashMediaSource(f.i.a.a.h1.t0.k.b bVar, Uri uri, m.a aVar, e0.a aVar2, c.a aVar3, v vVar, b0 b0Var, long j2, boolean z, Object obj, a aVar4) {
        this.B = uri;
        this.C = uri;
        this.f2374g = aVar;
        this.n = aVar2;
        this.f2375h = aVar3;
        this.f2377j = b0Var;
        this.f2378k = j2;
        this.f2379l = z;
        this.f2376i = vVar;
        if (!this.f2373f) {
            this.o = new e(null);
            this.u = new f();
            this.r = new Runnable() { // from class: f.i.a.a.h1.t0.b
                @Override // java.lang.Runnable
                public final void run() {
                    DashMediaSource.this.u();
                }
            };
            this.s = new Runnable() { // from class: f.i.a.a.h1.t0.a
                @Override // java.lang.Runnable
                public final void run() {
                    DashMediaSource.this.o();
                }
            };
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.v;
    }

    @Override // f.i.a.a.h1.e0
    public void b() throws IOException {
        this.u.a();
    }

    @Override // f.i.a.a.h1.e0
    public f.i.a.a.h1.d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        int intValue = ((Integer) aVar.a).intValue() - this.K;
        long j3 = this.D.b(intValue).b;
        c.a.a.b.g.h.m(true);
        f.i.a.a.h1.t0.e eVar2 = new f.i.a.a.h1.t0.e(this.K + intValue, this.D, intValue, this.f2375h, this.y, this.f2377j, this.b.D(0, aVar, j3), this.H, this.u, eVar, this.f2376i, this.t);
        this.q.put(eVar2.a, eVar2);
        return eVar2;
    }

    @Override // f.i.a.a.h1.e0
    public void d(f.i.a.a.h1.d0 d0Var) {
        f.i.a.a.h1.t0.e eVar = (f.i.a.a.h1.t0.e) d0Var;
        j jVar = eVar.f4989k;
        jVar.f5025k = true;
        jVar.f5018d.removeCallbacksAndMessages(null);
        for (f.i.a.a.h1.s0.g<f.i.a.a.h1.t0.c> gVar : eVar.o) {
            gVar.B(eVar);
        }
        eVar.n = null;
        eVar.f4991m.z();
        this.q.remove(eVar.a);
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable i0 i0Var) {
        this.y = i0Var;
        if (this.f2373f) {
            s(false);
            return;
        }
        this.w = this.f2374g.createDataSource();
        this.x = new c0("Loader:DashMediaSource");
        this.A = new Handler();
        u();
    }

    @Override // f.i.a.a.h1.o
    public void n() {
        this.E = false;
        this.w = null;
        c0 c0Var = this.x;
        if (c0Var != null) {
            c0Var.f(null);
            this.x = null;
        }
        this.F = 0L;
        this.G = 0L;
        this.D = this.f2373f ? this.D : null;
        this.C = this.B;
        this.z = null;
        Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.A = null;
        }
        this.H = 0L;
        this.I = 0;
        this.J = -9223372036854775807L;
        this.K = 0;
        this.q.clear();
    }

    public /* synthetic */ void o() {
        s(false);
    }

    public void q(f.i.a.a.l1.e0<?> e0Var, long j2, long j3) {
        f0.a aVar = this.f2380m;
        p pVar = e0Var.a;
        g0 g0Var = e0Var.f5574c;
        aVar.o(pVar, g0Var.f5588c, g0Var.f5589d, e0Var.b, j2, j3, g0Var.b);
    }

    public final void s(boolean z) {
        long j2;
        boolean z2;
        long j3;
        long a2;
        long e2;
        f.i.a.a.h1.t0.i[] iVarArr;
        for (int i2 = 0; i2 < this.q.size(); i2++) {
            int keyAt = this.q.keyAt(i2);
            if (keyAt >= this.K) {
                f.i.a.a.h1.t0.e valueAt = this.q.valueAt(i2);
                f.i.a.a.h1.t0.k.b bVar = this.D;
                int i3 = keyAt - this.K;
                valueAt.r = bVar;
                valueAt.s = i3;
                j jVar = valueAt.f4989k;
                jVar.f5024j = false;
                jVar.f5021g = -9223372036854775807L;
                jVar.f5020f = bVar;
                Iterator<Map.Entry<Long, Long>> it = jVar.f5019e.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getKey().longValue() < jVar.f5020f.f5036h) {
                        it.remove();
                    }
                }
                f.i.a.a.h1.s0.g<f.i.a.a.h1.t0.c>[] gVarArr = valueAt.o;
                if (gVarArr != null) {
                    for (f.i.a.a.h1.s0.g<f.i.a.a.h1.t0.c> gVar : gVarArr) {
                        gVar.f4962e.d(bVar, i3);
                    }
                    valueAt.n.i(valueAt);
                }
                valueAt.t = bVar.f5040l.get(i3).f5052d;
                for (f.i.a.a.h1.t0.i iVar : valueAt.p) {
                    Iterator<f.i.a.a.h1.t0.k.e> it2 = valueAt.t.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            f.i.a.a.h1.t0.k.e next = it2.next();
                            if (next.a().equals(iVar.f5013e.a())) {
                                iVar.c(next, bVar.f5032d && i3 == bVar.c() - 1);
                            }
                        }
                    }
                }
            }
        }
        int c2 = this.D.c() - 1;
        g a3 = g.a(this.D.b(0), this.D.e(0));
        g a4 = g.a(this.D.b(c2), this.D.e(c2));
        long j4 = a3.b;
        long j5 = a4.f2395c;
        if (!this.D.f5032d || a4.a) {
            j2 = j4;
            z2 = false;
        } else {
            if (this.H != 0) {
                a2 = q.a(SystemClock.elapsedRealtime() + this.H);
            } else {
                a2 = q.a(System.currentTimeMillis());
            }
            j5 = Math.min((a2 - q.a(this.D.a)) - q.a(this.D.b(c2).b), j5);
            long j6 = this.D.f5034f;
            if (j6 != -9223372036854775807L) {
                long a5 = j5 - q.a(j6);
                while (a5 < 0 && c2 > 0) {
                    c2--;
                    a5 += this.D.e(c2);
                }
                if (c2 == 0) {
                    e2 = Math.max(j4, a5);
                } else {
                    e2 = this.D.e(0);
                }
                j4 = e2;
            }
            j2 = j4;
            z2 = true;
        }
        long j7 = j5 - j2;
        for (int i4 = 0; i4 < this.D.c() - 1; i4++) {
            j7 = this.D.e(i4) + j7;
        }
        f.i.a.a.h1.t0.k.b bVar2 = this.D;
        if (bVar2.f5032d) {
            long j8 = this.f2378k;
            if (!this.f2379l) {
                long j9 = bVar2.f5035g;
                if (j9 != -9223372036854775807L) {
                    j8 = j9;
                }
            }
            long a6 = j7 - q.a(j8);
            if (a6 < 5000000) {
                a6 = Math.min(5000000L, j7 / 2);
            }
            j3 = a6;
        } else {
            j3 = 0;
        }
        f.i.a.a.h1.t0.k.b bVar3 = this.D;
        long b2 = q.b(j2) + bVar3.a + bVar3.b(0).b;
        f.i.a.a.h1.t0.k.b bVar4 = this.D;
        m(new b(bVar4.a, b2, this.K, j2, j7, j3, bVar4, this.v), this.D);
        if (this.f2373f) {
            return;
        }
        this.A.removeCallbacks(this.s);
        if (z2) {
            this.A.postDelayed(this.s, 5000L);
        }
        if (this.E) {
            u();
        } else if (z) {
            f.i.a.a.h1.t0.k.b bVar5 = this.D;
            if (bVar5.f5032d) {
                long j10 = bVar5.f5033e;
                if (j10 != -9223372036854775807L) {
                    this.A.postDelayed(this.r, Math.max(0L, (this.F + (j10 != 0 ? j10 : 5000L)) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    public final void t(f.i.a.a.h1.t0.k.m mVar, e0.a<Long> aVar) {
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.w, Uri.parse(mVar.b), 5, aVar);
        this.f2380m.x(e0Var.a, e0Var.b, this.x.g(e0Var, new h(null), 1));
    }

    public final void u() {
        Uri uri;
        this.A.removeCallbacks(this.r);
        if (this.x.d()) {
            this.E = true;
            return;
        }
        synchronized (this.p) {
            uri = this.C;
        }
        this.E = false;
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.w, uri, 4, this.n);
        this.f2380m.x(e0Var.a, e0Var.b, this.x.g(e0Var, this.o, ((w) this.f2377j).b(4)));
    }
}
