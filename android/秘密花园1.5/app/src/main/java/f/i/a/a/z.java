package f.i.a.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.j1.m;
import f.i.a.a.n0;
import f.i.a.a.u;
import f.i.a.a.u0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ExoPlayerImplInternal.java */
/* loaded from: classes.dex */
public final class z implements Handler.Callback, d0.a, m.a, e0.b, u.a, n0.a {
    public boolean A;
    public boolean B;
    public int C;
    public e D;
    public long E;
    public int F;
    public final p0[] a;
    public final p[] b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.j1.m f6044c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.j1.n f6045d;

    /* renamed from: e  reason: collision with root package name */
    public final t f6046e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.g f6047f;

    /* renamed from: g  reason: collision with root package name */
    public final f.i.a.a.m1.c0 f6048g;

    /* renamed from: h  reason: collision with root package name */
    public final HandlerThread f6049h;

    /* renamed from: i  reason: collision with root package name */
    public final Handler f6050i;

    /* renamed from: j  reason: collision with root package name */
    public final u0.c f6051j;

    /* renamed from: k  reason: collision with root package name */
    public final u0.b f6052k;

    /* renamed from: l  reason: collision with root package name */
    public final long f6053l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f6054m;
    public final u n;
    public final ArrayList<c> p;
    public final f.i.a.a.m1.h q;
    public i0 t;
    public f.i.a.a.h1.e0 u;
    public p0[] v;
    public boolean w;
    public boolean x;
    public boolean y;
    public int z;
    public final g0 r = new g0();
    public s0 s = s0.f5845d;
    public final d o = new d(null);

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final f.i.a.a.h1.e0 a;
        public final u0 b;

        /* renamed from: c  reason: collision with root package name */
        public final Object f6055c;

        public b(f.i.a.a.h1.e0 e0Var, u0 u0Var, Object obj) {
            this.a = e0Var;
            this.b = u0Var;
            this.f6055c = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class c implements Comparable<c> {
        public final n0 a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public long f6056c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f6057d;

        public c(n0 n0Var) {
            this.a = n0Var;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull c cVar) {
            c cVar2 = cVar;
            if ((this.f6057d == null) != (cVar2.f6057d == null)) {
                return this.f6057d != null ? -1 : 1;
            } else if (this.f6057d == null) {
                return 0;
            } else {
                int i2 = this.b - cVar2.b;
                return i2 != 0 ? i2 : f.i.a.a.m1.h0.m(this.f6056c, cVar2.f6056c);
            }
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class d {
        public i0 a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6058c;

        /* renamed from: d  reason: collision with root package name */
        public int f6059d;

        public d(a aVar) {
        }

        public void a(int i2) {
            this.b += i2;
        }

        public void b(int i2) {
            if (this.f6058c && this.f6059d != 4) {
                c.a.a.b.g.h.m(i2 == 4);
                return;
            }
            this.f6058c = true;
            this.f6059d = i2;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class e {
        public final u0 a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final long f6060c;

        public e(u0 u0Var, int i2, long j2) {
            this.a = u0Var;
            this.b = i2;
            this.f6060c = j2;
        }
    }

    public z(p0[] p0VarArr, f.i.a.a.j1.m mVar, f.i.a.a.j1.n nVar, t tVar, f.i.a.a.l1.g gVar, boolean z, int i2, boolean z2, Handler handler, f.i.a.a.m1.h hVar) {
        this.a = p0VarArr;
        this.f6044c = mVar;
        this.f6045d = nVar;
        this.f6046e = tVar;
        this.f6047f = gVar;
        this.x = z;
        this.z = i2;
        this.A = z2;
        this.f6050i = handler;
        this.q = hVar;
        this.f6053l = tVar.f5852i;
        this.f6054m = tVar.f5853j;
        this.t = i0.c(-9223372036854775807L, nVar);
        this.b = new p[p0VarArr.length];
        for (int i3 = 0; i3 < p0VarArr.length; i3++) {
            p0VarArr[i3].f(i3);
            this.b[i3] = p0VarArr[i3].u();
        }
        this.n = new u(this, hVar);
        this.p = new ArrayList<>();
        this.v = new p0[0];
        this.f6051j = new u0.c();
        this.f6052k = new u0.b();
        mVar.a = this;
        mVar.b = gVar;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f6049h = handlerThread;
        handlerThread.start();
        this.f6048g = hVar.b(this.f6049h.getLooper(), this);
    }

    public static b0[] g(f.i.a.a.j1.j jVar) {
        int length = jVar != null ? jVar.length() : 0;
        b0[] b0VarArr = new b0[length];
        for (int i2 = 0; i2 < length; i2++) {
            b0VarArr[i2] = jVar.c(i2);
        }
        return b0VarArr;
    }

    public final void A(long j2) throws w {
        f.i.a.a.j1.j[] a2;
        if (this.r.i()) {
            j2 += this.r.f4788g.n;
        }
        this.E = j2;
        this.n.a.a(j2);
        for (p0 p0Var : this.v) {
            p0Var.p(this.E);
        }
        for (e0 d2 = this.r.d(); d2 != null; d2 = d2.f4687k) {
            for (f.i.a.a.j1.j jVar : d2.f().f5527c.a()) {
                if (jVar != null) {
                    jVar.q();
                }
            }
        }
    }

    public final boolean B(c cVar) {
        Object obj = cVar.f6057d;
        if (obj == null) {
            n0 n0Var = cVar.a;
            u0 u0Var = n0Var.f5788c;
            int i2 = n0Var.f5792g;
            long a2 = q.a(n0Var.f5793h);
            u0 u0Var2 = this.t.a;
            Pair<Object, Long> pair = null;
            if (!u0Var2.q()) {
                if (u0Var.q()) {
                    u0Var = u0Var2;
                }
                try {
                    Pair<Object, Long> j2 = u0Var.j(this.f6051j, this.f6052k, i2, a2);
                    if (u0Var2 == u0Var || u0Var2.b(j2.first) != -1) {
                        pair = j2;
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (pair == null) {
                return false;
            }
            int b2 = this.t.a.b(pair.first);
            long longValue = ((Long) pair.second).longValue();
            Object obj2 = pair.first;
            cVar.b = b2;
            cVar.f6056c = longValue;
            cVar.f6057d = obj2;
            return true;
        }
        int b3 = this.t.a.b(obj);
        if (b3 == -1) {
            return false;
        }
        cVar.b = b3;
        return true;
    }

    public final Pair<Object, Long> C(e eVar, boolean z) {
        Pair<Object, Long> j2;
        int b2;
        u0 u0Var = this.t.a;
        u0 u0Var2 = eVar.a;
        if (u0Var.q()) {
            return null;
        }
        if (u0Var2.q()) {
            u0Var2 = u0Var;
        }
        try {
            j2 = u0Var2.j(this.f6051j, this.f6052k, eVar.b, eVar.f6060c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (u0Var != u0Var2 && (b2 = u0Var.b(j2.first)) == -1) {
            if (z && D(j2.first, u0Var2, u0Var) != null) {
                return j(u0Var, u0Var.f(b2, this.f6052k).f5870c, -9223372036854775807L);
            }
            return null;
        }
        return j2;
    }

    @Nullable
    public final Object D(Object obj, u0 u0Var, u0 u0Var2) {
        int b2 = u0Var.b(obj);
        int i2 = u0Var.i();
        int i3 = b2;
        int i4 = -1;
        for (int i5 = 0; i5 < i2 && i4 == -1; i5++) {
            i3 = u0Var.d(i3, this.f6052k, this.f6051j, this.z, this.A);
            if (i3 == -1) {
                break;
            }
            i4 = u0Var2.b(u0Var.m(i3));
        }
        if (i4 == -1) {
            return null;
        }
        return u0Var2.m(i4);
    }

    public final void E(long j2, long j3) {
        this.f6048g.a.removeMessages(2);
        this.f6048g.a.sendEmptyMessageAtTime(2, j2 + j3);
    }

    public final void F(boolean z) throws w {
        e0.a aVar = this.r.f4788g.f4682f.a;
        long H = H(aVar, this.t.f5296m, true);
        if (H != this.t.f5296m) {
            i0 i0Var = this.t;
            this.t = i0Var.a(aVar, H, i0Var.f5288e, k());
            if (z) {
                this.o.b(4);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(7:(1:3)(2:60|(1:62)(13:63|(1:65)(1:67)|66|5|6|7|8|9|(2:14|(3:16|17|(2:19|20)(1:22))(10:23|(4:25|(1:50)(1:29)|30|(3:32|33|(2:35|36)(1:37))(1:38))(1:51)|39|(1:41)(1:49)|42|(1:44)(1:48)|45|46|17|(0)(0)))|52|46|17|(0)(0)))|9|(3:11|14|(0)(0))|52|46|17|(0)(0))|4|5|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f5, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f6, code lost:
        r7 = 2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[Catch: all -> 0x00f5, TryCatch #1 {all -> 0x00f5, blocks: (B:16:0x005c, B:18:0x0060, B:23:0x006a, B:24:0x0074, B:26:0x007e, B:30:0x0088, B:32:0x0092, B:34:0x00a2), top: B:66:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0074 A[Catch: all -> 0x00f5, TryCatch #1 {all -> 0x00f5, blocks: (B:16:0x005c, B:18:0x0060, B:23:0x006a, B:24:0x0074, B:26:0x007e, B:30:0x0088, B:32:0x0092, B:34:0x00a2), top: B:66:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v5, types: [f.i.a.a.z$d] */
    /* JADX WARN: Type inference failed for: r2v11, types: [f.i.a.a.z$d] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void G(f.i.a.a.z.e r20) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.G(f.i.a.a.z$e):void");
    }

    public final long H(e0.a aVar, long j2, boolean z) throws w {
        T();
        this.y = false;
        Q(2);
        e0 e0Var = this.r.f4788g;
        e0 e0Var2 = e0Var;
        while (true) {
            if (e0Var2 == null) {
                break;
            }
            if (aVar.equals(e0Var2.f4682f.a) && e0Var2.f4680d) {
                this.r.l(e0Var2);
                break;
            }
            e0Var2 = this.r.a();
        }
        if (z || e0Var != e0Var2 || (e0Var2 != null && e0Var2.n + j2 < 0)) {
            for (p0 p0Var : this.v) {
                c(p0Var);
            }
            this.v = new p0[0];
            e0Var = null;
            if (e0Var2 != null) {
                e0Var2.n = 0L;
            }
        }
        if (e0Var2 != null) {
            W(e0Var);
            if (e0Var2.f4681e) {
                long u = e0Var2.a.u(j2);
                e0Var2.a.t(u - this.f6053l, this.f6054m);
                j2 = u;
            }
            A(j2);
            t();
        } else {
            this.r.b(true);
            this.t = this.t.b(f.i.a.a.h1.p0.f4911d, this.f6045d);
            A(j2);
        }
        n(false);
        this.f6048g.c(2);
        return j2;
    }

    public final void I(n0 n0Var) throws w {
        if (n0Var.f5793h == -9223372036854775807L) {
            J(n0Var);
        } else if (this.u != null && this.C <= 0) {
            c cVar = new c(n0Var);
            if (B(cVar)) {
                this.p.add(cVar);
                Collections.sort(this.p);
                return;
            }
            n0Var.b(false);
        } else {
            this.p.add(new c(n0Var));
        }
    }

    public final void J(n0 n0Var) throws w {
        if (n0Var.f5791f.getLooper() == this.f6048g.a.getLooper()) {
            b(n0Var);
            int i2 = this.t.f5289f;
            if (i2 == 3 || i2 == 2) {
                this.f6048g.c(2);
                return;
            }
            return;
        }
        this.f6048g.b(16, n0Var).sendToTarget();
    }

    public final void K(final n0 n0Var) {
        n0Var.f5791f.post(new Runnable() { // from class: f.i.a.a.n
            @Override // java.lang.Runnable
            public final void run() {
                z.this.s(n0Var);
            }
        });
    }

    public final void L(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        p0[] p0VarArr;
        if (this.B != z) {
            this.B = z;
            if (!z) {
                for (p0 p0Var : this.a) {
                    if (p0Var.c() == 0) {
                        p0Var.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    public final void M(boolean z) {
        i0 i0Var = this.t;
        if (i0Var.f5290g != z) {
            this.t = new i0(i0Var.a, i0Var.b, i0Var.f5286c, i0Var.f5287d, i0Var.f5288e, i0Var.f5289f, z, i0Var.f5291h, i0Var.f5292i, i0Var.f5293j, i0Var.f5294k, i0Var.f5295l, i0Var.f5296m);
        }
    }

    public final void N(boolean z) throws w {
        this.y = false;
        this.x = z;
        if (!z) {
            T();
            V();
            return;
        }
        int i2 = this.t.f5289f;
        if (i2 == 3) {
            R();
            this.f6048g.c(2);
        } else if (i2 == 2) {
            this.f6048g.c(2);
        }
    }

    public final void O(int i2) throws w {
        this.z = i2;
        g0 g0Var = this.r;
        g0Var.f4786e = i2;
        if (!g0Var.o()) {
            F(true);
        }
        n(false);
    }

    public final void P(boolean z) throws w {
        this.A = z;
        g0 g0Var = this.r;
        g0Var.f4787f = z;
        if (!g0Var.o()) {
            F(true);
        }
        n(false);
    }

    public final void Q(int i2) {
        i0 i0Var = this.t;
        if (i0Var.f5289f != i2) {
            this.t = new i0(i0Var.a, i0Var.b, i0Var.f5286c, i0Var.f5287d, i0Var.f5288e, i2, i0Var.f5290g, i0Var.f5291h, i0Var.f5292i, i0Var.f5293j, i0Var.f5294k, i0Var.f5295l, i0Var.f5296m);
        }
    }

    public final void R() throws w {
        this.y = false;
        f.i.a.a.m1.a0 a0Var = this.n.a;
        if (!a0Var.b) {
            a0Var.f5732d = a0Var.a.c();
            a0Var.b = true;
        }
        for (p0 p0Var : this.v) {
            p0Var.start();
        }
    }

    public final void S(boolean z, boolean z2, boolean z3) {
        z(z || !this.B, true, z2, z2);
        this.o.a(this.C + (z3 ? 1 : 0));
        this.C = 0;
        this.f6046e.b(true);
        Q(1);
    }

    public final void T() throws w {
        p0[] p0VarArr;
        f.i.a.a.m1.a0 a0Var = this.n.a;
        if (a0Var.b) {
            a0Var.a(a0Var.v());
            a0Var.b = false;
        }
        for (p0 p0Var : this.v) {
            if (p0Var.c() == 2) {
                p0Var.stop();
            }
        }
    }

    public final void U(f.i.a.a.h1.p0 p0Var, f.i.a.a.j1.n nVar) {
        boolean z;
        t tVar = this.f6046e;
        p0[] p0VarArr = this.a;
        f.i.a.a.j1.k kVar = nVar.f5527c;
        if (tVar != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= p0VarArr.length) {
                    z = false;
                    break;
                } else if (p0VarArr[i2].t() == 2 && kVar.b[i2] != null) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            tVar.f5856m = z;
            int i3 = tVar.f5850g;
            if (i3 == -1) {
                i3 = 0;
                for (int i4 = 0; i4 < p0VarArr.length; i4++) {
                    if (kVar.b[i4] != null) {
                        i3 = f.i.a.a.m1.h0.B(p0VarArr[i4].t()) + i3;
                    }
                }
            }
            tVar.f5854k = i3;
            tVar.a.b(i3);
            return;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fc A[LOOP:1: B:41:0x00dc->B:51:0x00fc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0126 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0130 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00db A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x009f -> B:27:0x00a2). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00db -> B:41:0x00dc). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void V() throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.V():void");
    }

    public final void W(@Nullable e0 e0Var) throws w {
        e0 e0Var2 = this.r.f4788g;
        if (e0Var2 == null || e0Var == e0Var2) {
            return;
        }
        boolean[] zArr = new boolean[this.a.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            p0[] p0VarArr = this.a;
            if (i2 < p0VarArr.length) {
                p0 p0Var = p0VarArr[i2];
                zArr[i2] = p0Var.c() != 0;
                if (e0Var2.f().b(i2)) {
                    i3++;
                }
                if (zArr[i2] && (!e0Var2.f().b(i2) || (p0Var.q() && p0Var.k() == e0Var.f4679c[i2]))) {
                    c(p0Var);
                }
                i2++;
            } else {
                this.t = this.t.b(e0Var2.e(), e0Var2.f());
                e(zArr, i3);
                return;
            }
        }
    }

    @Override // f.i.a.a.j1.m.a
    public void a() {
        this.f6048g.c(11);
    }

    public final void b(n0 n0Var) throws w {
        n0Var.a();
        try {
            n0Var.a.j(n0Var.f5789d, n0Var.f5790e);
        } finally {
            n0Var.b(true);
        }
    }

    public final void c(p0 p0Var) throws w {
        u uVar = this.n;
        if (p0Var == uVar.f5868c) {
            uVar.f5869d = null;
            uVar.f5868c = null;
        }
        if (p0Var.c() == 2) {
            p0Var.stop();
        }
        p0Var.b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:221:0x036f, code lost:
        if (r5 >= r0.f5854k) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0378, code lost:
        if (r0 == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
        if (r9 != (-9223372036854775807L)) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d() throws f.i.a.a.w, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.d():void");
    }

    public final void e(boolean[] zArr, int i2) throws w {
        int i3;
        f.i.a.a.m1.q qVar;
        this.v = new p0[i2];
        f.i.a.a.j1.n f2 = this.r.f4788g.f();
        for (int i4 = 0; i4 < this.a.length; i4++) {
            if (!f2.b(i4)) {
                this.a[i4].reset();
            }
        }
        int i5 = 0;
        int i6 = 0;
        while (i5 < this.a.length) {
            if (f2.b(i5)) {
                boolean z = zArr[i5];
                int i7 = i6 + 1;
                e0 e0Var = this.r.f4788g;
                p0 p0Var = this.a[i5];
                this.v[i6] = p0Var;
                if (p0Var.c() == 0) {
                    f.i.a.a.j1.n f3 = e0Var.f();
                    q0 q0Var = f3.b[i5];
                    b0[] g2 = g(f3.f5527c.b[i5]);
                    boolean z2 = this.x && this.t.f5289f == 3;
                    boolean z3 = !z && z2;
                    i3 = i5;
                    p0Var.h(q0Var, g2, e0Var.f4679c[i5], this.E, z3, e0Var.n);
                    u uVar = this.n;
                    if (uVar != null) {
                        f.i.a.a.m1.q r = p0Var.r();
                        if (r != null && r != (qVar = uVar.f5869d)) {
                            if (qVar == null) {
                                uVar.f5869d = r;
                                uVar.f5868c = p0Var;
                                r.s(uVar.a.f5733e);
                                uVar.a();
                            } else {
                                throw new w(2, new IllegalStateException("Multiple renderer media clocks enabled."), -1);
                            }
                        }
                        if (z2) {
                            p0Var.start();
                        }
                    } else {
                        throw null;
                    }
                } else {
                    i3 = i5;
                }
                i6 = i7;
            } else {
                i3 = i5;
            }
            i5 = i3 + 1;
        }
    }

    @Override // f.i.a.a.h1.e0.b
    public void f(f.i.a.a.h1.e0 e0Var, u0 u0Var, Object obj) {
        this.f6048g.b(8, new b(e0Var, u0Var, obj)).sendToTarget();
    }

    @Override // f.i.a.a.h1.d0.a
    public void h(f.i.a.a.h1.d0 d0Var) {
        this.f6048g.b(9, d0Var).sendToTarget();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c5  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean handleMessage(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.handleMessage(android.os.Message):boolean");
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(f.i.a.a.h1.d0 d0Var) {
        this.f6048g.b(10, d0Var).sendToTarget();
    }

    public final Pair<Object, Long> j(u0 u0Var, int i2, long j2) {
        return u0Var.j(this.f6051j, this.f6052k, i2, j2);
    }

    public final long k() {
        return l(this.t.f5294k);
    }

    public final long l(long j2) {
        e0 e0Var = this.r.f4790i;
        if (e0Var == null) {
            return 0L;
        }
        return Math.max(0L, j2 - (this.E - e0Var.n));
    }

    public final void m(f.i.a.a.h1.d0 d0Var) {
        e0 e0Var = this.r.f4790i;
        if (e0Var != null && e0Var.a == d0Var) {
            this.r.k(this.E);
            t();
        }
    }

    public final void n(boolean z) {
        e0 e0Var;
        boolean z2;
        z zVar = this;
        e0 e0Var2 = zVar.r.f4790i;
        e0.a aVar = e0Var2 == null ? zVar.t.f5286c : e0Var2.f4682f.a;
        boolean z3 = !zVar.t.f5293j.equals(aVar);
        if (z3) {
            i0 i0Var = zVar.t;
            z2 = z3;
            e0Var = e0Var2;
            zVar = this;
            zVar.t = new i0(i0Var.a, i0Var.b, i0Var.f5286c, i0Var.f5287d, i0Var.f5288e, i0Var.f5289f, i0Var.f5290g, i0Var.f5291h, i0Var.f5292i, aVar, i0Var.f5294k, i0Var.f5295l, i0Var.f5296m);
        } else {
            e0Var = e0Var2;
            z2 = z3;
        }
        i0 i0Var2 = zVar.t;
        i0Var2.f5294k = e0Var == null ? i0Var2.f5296m : e0Var.d();
        zVar.t.f5295l = k();
        if ((z2 || z) && e0Var != null) {
            e0 e0Var3 = e0Var;
            if (e0Var3.f4680d) {
                zVar.U(e0Var3.e(), e0Var3.f());
            }
        }
    }

    public final void o(f.i.a.a.h1.d0 d0Var) throws w {
        e0 e0Var = this.r.f4790i;
        if (e0Var != null && e0Var.a == d0Var) {
            e0 e0Var2 = this.r.f4790i;
            float f2 = this.n.e().a;
            u0 u0Var = this.t.a;
            e0Var2.f4680d = true;
            e0Var2.f4688l = e0Var2.a.o();
            f.i.a.a.j1.n j2 = e0Var2.j(f2, u0Var);
            c.a.a.b.g.h.t(j2);
            long a2 = e0Var2.a(j2, e0Var2.f4682f.b, false, new boolean[e0Var2.f4684h.length]);
            long j3 = e0Var2.n;
            f0 f0Var = e0Var2.f4682f;
            long j4 = f0Var.b;
            e0Var2.n = (j4 - a2) + j3;
            if (a2 != j4) {
                f0Var = new f0(f0Var.a, a2, f0Var.f4770c, f0Var.f4771d, f0Var.f4772e, f0Var.f4773f, f0Var.f4774g);
            }
            e0Var2.f4682f = f0Var;
            U(e0Var2.e(), e0Var2.f());
            if (!this.r.i()) {
                A(this.r.a().f4682f.b);
                W(null);
            }
            t();
        }
    }

    public final void p(j0 j0Var) throws w {
        int i2;
        this.f6050i.obtainMessage(1, j0Var).sendToTarget();
        float f2 = j0Var.a;
        e0 d2 = this.r.d();
        while (true) {
            i2 = 0;
            if (d2 == null || !d2.f4680d) {
                break;
            }
            f.i.a.a.j1.j[] a2 = d2.f().f5527c.a();
            int length = a2.length;
            while (i2 < length) {
                f.i.a.a.j1.j jVar = a2[i2];
                if (jVar != null) {
                    jVar.n(f2);
                }
                i2++;
            }
            d2 = d2.f4687k;
        }
        p0[] p0VarArr = this.a;
        int length2 = p0VarArr.length;
        while (i2 < length2) {
            p0 p0Var = p0VarArr[i2];
            if (p0Var != null) {
                p0Var.l(j0Var.a);
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0276 A[LOOP:3: B:118:0x0276->B:149:0x0276, LOOP_START, PHI: r1 
      PHI: (r1v35 f.i.a.a.e0) = (r1v30 f.i.a.a.e0), (r1v36 f.i.a.a.e0) binds: [B:117:0x0274, B:149:0x0276] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void q(f.i.a.a.z.b r38) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 696
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.q(f.i.a.a.z$b):void");
    }

    public final boolean r() {
        e0 e0Var = this.r.f4788g;
        e0 e0Var2 = e0Var.f4687k;
        long j2 = e0Var.f4682f.f4772e;
        return j2 == -9223372036854775807L || this.t.f5296m < j2 || (e0Var2 != null && (e0Var2.f4680d || e0Var2.f4682f.a.b()));
    }

    public /* synthetic */ void s(n0 n0Var) {
        try {
            b(n0Var);
        } catch (w e2) {
            f.i.a.a.m1.o.a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    public final void t() {
        int i2;
        e0 e0Var = this.r.f4790i;
        long c2 = !e0Var.f4680d ? 0L : e0Var.a.c();
        boolean z = false;
        if (c2 == Long.MIN_VALUE) {
            M(false);
            return;
        }
        long l2 = l(c2);
        t tVar = this.f6046e;
        float f2 = this.n.e().a;
        f.i.a.a.l1.q qVar = tVar.a;
        synchronized (qVar) {
            i2 = qVar.f5687f * qVar.b;
        }
        boolean z2 = i2 >= tVar.f5854k;
        long j2 = tVar.f5856m ? tVar.f5846c : tVar.b;
        if (f2 > 1.0f) {
            j2 = Math.min(f.i.a.a.m1.h0.E(j2, f2), tVar.f5847d);
        }
        if (l2 < j2) {
            tVar.f5855l = (tVar.f5851h || !z2) ? true : true;
        } else if (l2 >= tVar.f5847d || z2) {
            tVar.f5855l = false;
        }
        boolean z3 = tVar.f5855l;
        M(z3);
        if (z3) {
            long j3 = this.E;
            c.a.a.b.g.h.v(e0Var.h());
            e0Var.a.f(j3 - e0Var.n);
        }
    }

    public final void u() {
        d dVar = this.o;
        if (this.t != dVar.a || dVar.b > 0 || dVar.f6058c) {
            Handler handler = this.f6050i;
            d dVar2 = this.o;
            handler.obtainMessage(0, dVar2.b, dVar2.f6058c ? dVar2.f6059d : -1, this.t).sendToTarget();
            d dVar3 = this.o;
            dVar3.a = this.t;
            dVar3.b = 0;
            dVar3.f6058c = false;
        }
    }

    public final void v() throws IOException {
        g0 g0Var = this.r;
        e0 e0Var = g0Var.f4790i;
        e0 e0Var2 = g0Var.f4789h;
        if (e0Var == null || e0Var.f4680d) {
            return;
        }
        if (e0Var2 == null || e0Var2.f4687k == e0Var) {
            for (p0 p0Var : this.v) {
                if (!p0Var.g()) {
                    return;
                }
            }
            e0Var.a.s();
        }
    }

    public final void w(f.i.a.a.h1.e0 e0Var, boolean z, boolean z2) {
        this.C++;
        z(false, true, z, z2);
        this.f6046e.b(false);
        this.u = e0Var;
        Q(2);
        e0Var.e(this, this.f6047f.a());
        this.f6048g.c(2);
    }

    public final void x() {
        z(true, true, true, true);
        this.f6046e.b(true);
        Q(1);
        this.f6049h.quit();
        synchronized (this) {
            this.w = true;
            notifyAll();
        }
    }

    public final void y() throws w {
        if (this.r.i()) {
            float f2 = this.n.e().a;
            g0 g0Var = this.r;
            e0 e0Var = g0Var.f4788g;
            e0 e0Var2 = g0Var.f4789h;
            boolean z = true;
            for (e0 e0Var3 = e0Var; e0Var3 != null && e0Var3.f4680d; e0Var3 = e0Var3.f4687k) {
                f.i.a.a.j1.n j2 = e0Var3.j(f2, this.t.a);
                if (j2 != null) {
                    if (z) {
                        g0 g0Var2 = this.r;
                        e0 e0Var4 = g0Var2.f4788g;
                        boolean l2 = g0Var2.l(e0Var4);
                        boolean[] zArr = new boolean[this.a.length];
                        long a2 = e0Var4.a(j2, this.t.f5296m, l2, zArr);
                        i0 i0Var = this.t;
                        if (i0Var.f5289f != 4 && a2 != i0Var.f5296m) {
                            i0 i0Var2 = this.t;
                            this.t = i0Var2.a(i0Var2.f5286c, a2, i0Var2.f5288e, k());
                            this.o.b(4);
                            A(a2);
                        }
                        boolean[] zArr2 = new boolean[this.a.length];
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            p0[] p0VarArr = this.a;
                            if (i2 >= p0VarArr.length) {
                                break;
                            }
                            p0 p0Var = p0VarArr[i2];
                            zArr2[i2] = p0Var.c() != 0;
                            f.i.a.a.h1.k0 k0Var = e0Var4.f4679c[i2];
                            if (k0Var != null) {
                                i3++;
                            }
                            if (zArr2[i2]) {
                                if (k0Var != p0Var.k()) {
                                    c(p0Var);
                                } else if (zArr[i2]) {
                                    p0Var.p(this.E);
                                }
                            }
                            i2++;
                        }
                        this.t = this.t.b(e0Var4.e(), e0Var4.f());
                        e(zArr2, i3);
                    } else {
                        this.r.l(e0Var3);
                        if (e0Var3.f4680d) {
                            e0Var3.a(j2, Math.max(e0Var3.f4682f.b, this.E - e0Var3.n), false, new boolean[e0Var3.f4684h.length]);
                        }
                    }
                    n(true);
                    if (this.t.f5289f != 4) {
                        t();
                        V();
                        this.f6048g.c(2);
                        return;
                    }
                    return;
                }
                if (e0Var3 == e0Var2) {
                    z = false;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void z(boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.z(boolean, boolean, boolean, boolean):void");
    }
}
