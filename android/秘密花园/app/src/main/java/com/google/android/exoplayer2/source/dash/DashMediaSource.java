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
    public final m.a f2299g;

    /* renamed from: h  reason: collision with root package name */
    public final c.a f2300h;

    /* renamed from: i  reason: collision with root package name */
    public final v f2301i;

    /* renamed from: j  reason: collision with root package name */
    public final b0 f2302j;

    /* renamed from: k  reason: collision with root package name */
    public final long f2303k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f2304l;
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
    public final boolean f2298f = false;

    /* renamed from: m  reason: collision with root package name */
    public final f0.a f2305m = j(null);
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
        public e0.a<? extends f.i.a.a.h1.t0.k.b> f2306c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public List<f.i.a.a.e1.c0> f2307d;

        /* renamed from: e  reason: collision with root package name */
        public v f2308e;

        /* renamed from: f  reason: collision with root package name */
        public b0 f2309f;

        /* renamed from: g  reason: collision with root package name */
        public long f2310g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f2311h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f2312i;

        public Factory(m.a aVar) {
            this(new h.a(aVar), aVar);
        }

        public DashMediaSource createMediaSource(Uri uri) {
            this.f2312i = true;
            if (this.f2306c == null) {
                this.f2306c = new f.i.a.a.h1.t0.k.c();
            }
            List<f.i.a.a.e1.c0> list = this.f2307d;
            if (list != null) {
                this.f2306c = new z(this.f2306c, list);
            }
            if (uri != null) {
                return new DashMediaSource(null, uri, this.b, this.f2306c, this.a, this.f2308e, this.f2309f, this.f2310g, this.f2311h, null, null);
            }
            throw null;
        }

        public Factory setStreamKeys(List<f.i.a.a.e1.c0> list) {
            c.a.a.b.g.h.v(!this.f2312i);
            this.f2307d = list;
            return this;
        }

        public Factory(c.a aVar, @Nullable m.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
            this.f2309f = new w();
            this.f2310g = com.umeng.commonsdk.proguard.c.f3052d;
            this.f2308e = new v();
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends u0 {
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2313c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2314d;

        /* renamed from: e  reason: collision with root package name */
        public final long f2315e;

        /* renamed from: f  reason: collision with root package name */
        public final long f2316f;

        /* renamed from: g  reason: collision with root package name */
        public final long f2317g;

        /* renamed from: h  reason: collision with root package name */
        public final f.i.a.a.h1.t0.k.b f2318h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public final Object f2319i;

        public b(long j2, long j3, int i2, long j4, long j5, long j6, f.i.a.a.h1.t0.k.b bVar, @Nullable Object obj) {
            this.b = j2;
            this.f2313c = j3;
            this.f2314d = i2;
            this.f2315e = j4;
            this.f2316f = j5;
            this.f2317g = j6;
            this.f2318h = bVar;
            this.f2319i = obj;
        }

        @Override // f.i.a.a.u0
        public int b(Object obj) {
            int intValue;
            if ((obj instanceof Integer) && (intValue = ((Integer) obj).intValue() - this.f2314d) >= 0 && intValue < i()) {
                return intValue;
            }
            return -1;
        }

        @Override // f.i.a.a.u0
        public u0.b g(int i2, u0.b bVar, boolean z) {
            c.a.a.b.g.h.q(i2, 0, i());
            Integer num = null;
            String str = z ? this.f2318h.f4965l.get(i2).a : null;
            if (z) {
                num = Integer.valueOf(this.f2314d + i2);
            }
            bVar.g(str, num, 0, q.a(this.f2318h.d(i2)), q.a(this.f2318h.f4965l.get(i2).b - this.f2318h.b(0).b) - this.f2315e);
            return bVar;
        }

        @Override // f.i.a.a.u0
        public int i() {
            return this.f2318h.c();
        }

        @Override // f.i.a.a.u0
        public Object m(int i2) {
            c.a.a.b.g.h.q(i2, 0, i());
            return Integer.valueOf(this.f2314d + i2);
        }

        /* JADX WARNING: Removed duplicated region for block: B:29:0x009f  */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x00a2  */
        @Override // f.i.a.a.u0
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public f.i.a.a.u0.c o(int r33, f.i.a.a.u0.c r34, boolean r35, long r36) {
            /*
            // Method dump skipped, instructions count: 221
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

        /* Return type fixed from 'java.lang.Object' to match base method */
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
                        long j2 = "+".equals(matcher.group(4)) ? 1 : -1;
                        long parseLong = Long.parseLong(matcher.group(5));
                        String group2 = matcher.group(7);
                        time -= ((((parseLong * 60) + (TextUtils.isEmpty(group2) ? 0 : Long.parseLong(group2))) * 60) * 1000) * j2;
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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, boolean] */
        @Override // f.i.a.a.l1.c0.b
        public void k(e0<f.i.a.a.h1.t0.k.b> e0Var, long j2, long j3, boolean z) {
            DashMediaSource.this.q(e0Var, j2, j3);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, java.io.IOException, int] */
        @Override // f.i.a.a.l1.c0.b
        public c0.c p(e0<f.i.a.a.h1.t0.k.b> e0Var, long j2, long j3, IOException iOException, int i2) {
            c0.c cVar;
            e0<f.i.a.a.h1.t0.k.b> e0Var2 = e0Var;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            long c2 = ((w) dashMediaSource.f2302j).c(4, j3, iOException, i2);
            if (c2 == -9223372036854775807L) {
                cVar = c0.f5489e;
            } else {
                cVar = c0.c(false, c2);
            }
            f0.a aVar = dashMediaSource.f2305m;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5499c;
            aVar.u(pVar, g0Var.f5513c, g0Var.f5514d, e0Var2.b, j2, j3, g0Var.b, iOException, !cVar.a());
            return cVar;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long] */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x0071  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x00a2  */
        @Override // f.i.a.a.l1.c0.b
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void r(f.i.a.a.l1.e0<f.i.a.a.h1.t0.k.b> r19, long r20, long r22) {
            /*
            // Method dump skipped, instructions count: 335
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
        public final long f2320c;

        public g(boolean z, long j2, long j3) {
            this.a = z;
            this.b = j2;
            this.f2320c = j3;
        }

        public static g a(f.i.a.a.h1.t0.k.f fVar, long j2) {
            boolean z;
            int i2;
            boolean z2;
            int size = fVar.f4976c.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int i5 = fVar.f4976c.get(i4).b;
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
                f.i.a.a.h1.t0.k.a aVar = fVar.f4976c.get(i6);
                if (!z || aVar.b != 3) {
                    f.i.a.a.h1.t0.f i7 = aVar.f4953c.get(i3).i();
                    if (i7 == null) {
                        return new g(true, 0, j2);
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
                            long j5 = (f2 + ((long) g2)) - 1;
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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, boolean] */
        @Override // f.i.a.a.l1.c0.b
        public void k(e0<Long> e0Var, long j2, long j3, boolean z) {
            DashMediaSource.this.q(e0Var, j2, j3);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long, java.io.IOException, int] */
        @Override // f.i.a.a.l1.c0.b
        public c0.c p(e0<Long> e0Var, long j2, long j3, IOException iOException, int i2) {
            e0<Long> e0Var2 = e0Var;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            f0.a aVar = dashMediaSource.f2305m;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5499c;
            aVar.u(pVar, g0Var.f5513c, g0Var.f5514d, e0Var2.b, j2, j3, g0Var.b, iOException, true);
            dashMediaSource.s(true);
            return c0.f5488d;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.c0$e, long, long] */
        @Override // f.i.a.a.l1.c0.b
        public void r(e0<Long> e0Var, long j2, long j3) {
            e0<Long> e0Var2 = e0Var;
            DashMediaSource dashMediaSource = DashMediaSource.this;
            f0.a aVar = dashMediaSource.f2305m;
            p pVar = e0Var2.a;
            g0 g0Var = e0Var2.f5499c;
            aVar.r(pVar, g0Var.f5513c, g0Var.f5514d, e0Var2.b, j2, j3, g0Var.b);
            dashMediaSource.H = e0Var2.f5501e.longValue() - j2;
            dashMediaSource.s(true);
        }
    }

    /* loaded from: classes.dex */
    public static final class i implements e0.a<Long> {
        public i(a aVar) {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
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
        this.f2299g = aVar;
        this.n = aVar2;
        this.f2300h = aVar3;
        this.f2302j = b0Var;
        this.f2303k = j2;
        this.f2304l = z;
        this.f2301i = vVar;
        if (!this.f2298f) {
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
        f.i.a.a.h1.t0.e eVar2 = new f.i.a.a.h1.t0.e(this.K + intValue, this.D, intValue, this.f2300h, this.y, this.f2302j, this.b.D(0, aVar, j3), this.H, this.u, eVar, this.f2301i, this.t);
        this.q.put(eVar2.a, eVar2);
        return eVar2;
    }

    @Override // f.i.a.a.h1.e0
    public void d(f.i.a.a.h1.d0 d0Var) {
        f.i.a.a.h1.t0.e eVar = (f.i.a.a.h1.t0.e) d0Var;
        j jVar = eVar.f4914k;
        jVar.f4950k = true;
        jVar.f4943d.removeCallbacksAndMessages(null);
        for (f.i.a.a.h1.s0.g<f.i.a.a.h1.t0.c> gVar : eVar.o) {
            gVar.B(eVar);
        }
        eVar.n = null;
        eVar.f4916m.z();
        this.q.remove(eVar.a);
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable i0 i0Var) {
        this.y = i0Var;
        if (this.f2298f) {
            s(false);
            return;
        }
        this.w = this.f2299g.createDataSource();
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
        this.F = 0;
        this.G = 0;
        this.D = this.f2298f ? this.D : null;
        this.C = this.B;
        this.z = null;
        Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.A = null;
        }
        this.H = 0;
        this.I = 0;
        this.J = -9223372036854775807L;
        this.K = 0;
        this.q.clear();
    }

    public /* synthetic */ void o() {
        s(false);
    }

    public void q(f.i.a.a.l1.e0<?> e0Var, long j2, long j3) {
        f0.a aVar = this.f2305m;
        p pVar = e0Var.a;
        g0 g0Var = e0Var.f5499c;
        aVar.o(pVar, g0Var.f5513c, g0Var.f5514d, e0Var.b, j2, j3, g0Var.b);
    }

    public final void s(boolean z) {
        long j2;
        boolean z2;
        long j3;
        long j4;
        long j5;
        for (int i2 = 0; i2 < this.q.size(); i2++) {
            int keyAt = this.q.keyAt(i2);
            if (keyAt >= this.K) {
                f.i.a.a.h1.t0.e valueAt = this.q.valueAt(i2);
                f.i.a.a.h1.t0.k.b bVar = this.D;
                int i3 = keyAt - this.K;
                valueAt.r = bVar;
                valueAt.s = i3;
                j jVar = valueAt.f4914k;
                jVar.f4949j = false;
                jVar.f4946g = -9223372036854775807L;
                jVar.f4945f = bVar;
                Iterator<Map.Entry<Long, Long>> it = jVar.f4944e.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getKey().longValue() < jVar.f4945f.f4961h) {
                        it.remove();
                    }
                }
                f.i.a.a.h1.s0.g<f.i.a.a.h1.t0.c>[] gVarArr = valueAt.o;
                if (gVarArr != null) {
                    for (f.i.a.a.h1.s0.g<f.i.a.a.h1.t0.c> gVar : gVarArr) {
                        gVar.f4887e.d(bVar, i3);
                    }
                    valueAt.n.i(valueAt);
                }
                valueAt.t = bVar.f4965l.get(i3).f4977d;
                f.i.a.a.h1.t0.i[] iVarArr = valueAt.p;
                for (f.i.a.a.h1.t0.i iVar : iVarArr) {
                    Iterator<f.i.a.a.h1.t0.k.e> it2 = valueAt.t.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            f.i.a.a.h1.t0.k.e next = it2.next();
                            if (next.a().equals(iVar.f4938e.a())) {
                                iVar.c(next, bVar.f4957d && i3 == bVar.c() - 1);
                            }
                        }
                    }
                }
            }
        }
        int c2 = this.D.c() - 1;
        g a2 = g.a(this.D.b(0), this.D.e(0));
        g a3 = g.a(this.D.b(c2), this.D.e(c2));
        long j6 = a2.b;
        long j7 = a3.f2320c;
        if (!this.D.f4957d || a3.a) {
            j2 = j6;
            z2 = false;
        } else {
            if (this.H != 0) {
                j4 = q.a(SystemClock.elapsedRealtime() + this.H);
            } else {
                j4 = q.a(System.currentTimeMillis());
            }
            j7 = Math.min((j4 - q.a(this.D.a)) - q.a(this.D.b(c2).b), j7);
            long j8 = this.D.f4959f;
            if (j8 != -9223372036854775807L) {
                long a4 = j7 - q.a(j8);
                while (a4 < 0 && c2 > 0) {
                    c2--;
                    a4 += this.D.e(c2);
                }
                if (c2 == 0) {
                    j5 = Math.max(j6, a4);
                } else {
                    j5 = this.D.e(0);
                }
                j6 = j5;
            }
            j2 = j6;
            z2 = true;
        }
        long j9 = j7 - j2;
        for (int i4 = 0; i4 < this.D.c() - 1; i4++) {
            j9 = this.D.e(i4) + j9;
        }
        f.i.a.a.h1.t0.k.b bVar2 = this.D;
        if (bVar2.f4957d) {
            long j10 = this.f2303k;
            if (!this.f2304l) {
                long j11 = bVar2.f4960g;
                if (j11 != -9223372036854775807L) {
                    j10 = j11;
                }
            }
            long a5 = j9 - q.a(j10);
            if (a5 < 5000000) {
                a5 = Math.min(5000000L, j9 / 2);
            }
            j3 = a5;
        } else {
            j3 = 0;
        }
        f.i.a.a.h1.t0.k.b bVar3 = this.D;
        long b2 = q.b(j2) + bVar3.a + bVar3.b(0).b;
        f.i.a.a.h1.t0.k.b bVar4 = this.D;
        m(new b(bVar4.a, b2, this.K, j2, j9, j3, bVar4, this.v), this.D);
        if (!this.f2298f) {
            this.A.removeCallbacks(this.s);
            long j12 = 5000;
            if (z2) {
                this.A.postDelayed(this.s, 5000);
            }
            if (this.E) {
                u();
            } else if (z) {
                f.i.a.a.h1.t0.k.b bVar5 = this.D;
                if (bVar5.f4957d) {
                    long j13 = bVar5.f4958e;
                    if (j13 != -9223372036854775807L) {
                        if (j13 != 0) {
                            j12 = j13;
                        }
                        this.A.postDelayed(this.r, Math.max(0L, (this.F + j12) - SystemClock.elapsedRealtime()));
                    }
                }
            }
        }
    }

    public final void t(f.i.a.a.h1.t0.k.m mVar, e0.a<Long> aVar) {
        f.i.a.a.l1.e0 e0Var = new f.i.a.a.l1.e0(this.w, Uri.parse(mVar.b), 5, aVar);
        this.f2305m.x(e0Var.a, e0Var.b, this.x.g(e0Var, new h(null), 1));
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
        this.f2305m.x(e0Var.a, e0Var.b, this.x.g(e0Var, this.o, ((w) this.f2302j).b(4)));
    }
}
