package f.i.a.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.j;
import f.i.a.a.j1.k;
import f.i.a.a.j1.m;
import f.i.a.a.j1.n;
import f.i.a.a.l1.g;
import f.i.a.a.m1.a0;
import f.i.a.a.m1.c0;
import f.i.a.a.m1.h;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.o;
import f.i.a.a.m1.q;
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
    public final m f5969c;

    /* renamed from: d  reason: collision with root package name */
    public final n f5970d;

    /* renamed from: e  reason: collision with root package name */
    public final t f5971e;

    /* renamed from: f  reason: collision with root package name */
    public final g f5972f;

    /* renamed from: g  reason: collision with root package name */
    public final c0 f5973g;

    /* renamed from: h  reason: collision with root package name */
    public final HandlerThread f5974h;

    /* renamed from: i  reason: collision with root package name */
    public final Handler f5975i;

    /* renamed from: j  reason: collision with root package name */
    public final u0.c f5976j;

    /* renamed from: k  reason: collision with root package name */
    public final u0.b f5977k;

    /* renamed from: l  reason: collision with root package name */
    public final long f5978l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f5979m;
    public final u n;
    public final ArrayList<c> p;
    public final h q;
    public i0 t;
    public e0 u;
    public p0[] v;
    public boolean w;
    public boolean x;
    public boolean y;
    public int z;
    public final g0 r = new g0();
    public s0 s = s0.f5770d;
    public final d o = new d(null);

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final e0 a;
        public final u0 b;

        /* renamed from: c  reason: collision with root package name */
        public final Object f5980c;

        public b(e0 e0Var, u0 u0Var, Object obj) {
            this.a = e0Var;
            this.b = u0Var;
            this.f5980c = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class c implements Comparable<c> {
        public final n0 a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public long f5981c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f5982d;

        public c(n0 n0Var) {
            this.a = n0Var;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public int compareTo(@NonNull c cVar) {
            c cVar2 = cVar;
            if ((this.f5982d == null) != (cVar2.f5982d == null)) {
                return this.f5982d != null ? -1 : 1;
            }
            if (this.f5982d == null) {
                return 0;
            }
            int i2 = this.b - cVar2.b;
            return i2 != 0 ? i2 : h0.m(this.f5981c, cVar2.f5981c);
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class d {
        public i0 a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f5983c;

        /* renamed from: d  reason: collision with root package name */
        public int f5984d;

        public d(a aVar) {
        }

        public void a(int i2) {
            this.b += i2;
        }

        public void b(int i2) {
            boolean z = true;
            if (!this.f5983c || this.f5984d == 4) {
                this.f5983c = true;
                this.f5984d = i2;
                return;
            }
            if (i2 != 4) {
                z = false;
            }
            c.a.a.b.g.h.m(z);
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class e {
        public final u0 a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5985c;

        public e(u0 u0Var, int i2, long j2) {
            this.a = u0Var;
            this.b = i2;
            this.f5985c = j2;
        }
    }

    public z(p0[] p0VarArr, m mVar, n nVar, t tVar, g gVar, boolean z, int i2, boolean z2, Handler handler, h hVar) {
        this.a = p0VarArr;
        this.f5969c = mVar;
        this.f5970d = nVar;
        this.f5971e = tVar;
        this.f5972f = gVar;
        this.x = z;
        this.z = i2;
        this.A = z2;
        this.f5975i = handler;
        this.q = hVar;
        this.f5978l = tVar.f5777i;
        this.f5979m = tVar.f5778j;
        this.t = i0.c(-9223372036854775807L, nVar);
        this.b = new p[p0VarArr.length];
        for (int i3 = 0; i3 < p0VarArr.length; i3++) {
            p0VarArr[i3].f(i3);
            this.b[i3] = p0VarArr[i3].u();
        }
        this.n = new u(this, hVar);
        this.p = new ArrayList<>();
        this.v = new p0[0];
        this.f5976j = new u0.c();
        this.f5977k = new u0.b();
        mVar.a = this;
        mVar.b = gVar;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f5974h = handlerThread;
        handlerThread.start();
        this.f5973g = hVar.b(this.f5974h.getLooper(), this);
    }

    public static b0[] g(j jVar) {
        int length = jVar != null ? jVar.length() : 0;
        b0[] b0VarArr = new b0[length];
        for (int i2 = 0; i2 < length; i2++) {
            b0VarArr[i2] = jVar.c(i2);
        }
        return b0VarArr;
    }

    public final void A(long j2) throws w {
        if (this.r.i()) {
            j2 += this.r.f4713g.n;
        }
        this.E = j2;
        this.n.a.a(j2);
        for (p0 p0Var : this.v) {
            p0Var.p(this.E);
        }
        for (e0 d2 = this.r.d(); d2 != null; d2 = d2.f4612k) {
            j[] a2 = d2.f().f5452c.a();
            for (j jVar : a2) {
                if (jVar != null) {
                    jVar.q();
                }
            }
        }
    }

    public final boolean B(c cVar) {
        Object obj = cVar.f5982d;
        if (obj == null) {
            n0 n0Var = cVar.a;
            u0 u0Var = n0Var.f5713c;
            int i2 = n0Var.f5717g;
            long a2 = q.a(n0Var.f5718h);
            u0 u0Var2 = this.t.a;
            Pair<Object, Long> pair = null;
            if (!u0Var2.q()) {
                if (u0Var.q()) {
                    u0Var = u0Var2;
                }
                try {
                    Pair<Object, Long> j2 = u0Var.j(this.f5976j, this.f5977k, i2, a2);
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
            cVar.f5981c = longValue;
            cVar.f5982d = obj2;
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
        u0 u0Var = this.t.a;
        u0 u0Var2 = eVar.a;
        if (u0Var.q()) {
            return null;
        }
        if (u0Var2.q()) {
            u0Var2 = u0Var;
        }
        try {
            j2 = u0Var2.j(this.f5976j, this.f5977k, eVar.b, eVar.f5985c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (u0Var == u0Var2) {
            return j2;
        }
        int b2 = u0Var.b(j2.first);
        if (b2 != -1) {
            return j2;
        }
        if (z && D(j2.first, u0Var2, u0Var) != null) {
            return j(u0Var, u0Var.f(b2, this.f5977k).f5795c, -9223372036854775807L);
        }
        return null;
    }

    @Nullable
    public final Object D(Object obj, u0 u0Var, u0 u0Var2) {
        int b2 = u0Var.b(obj);
        int i2 = u0Var.i();
        int i3 = b2;
        int i4 = -1;
        for (int i5 = 0; i5 < i2 && i4 == -1; i5++) {
            i3 = u0Var.d(i3, this.f5977k, this.f5976j, this.z, this.A);
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
        this.f5973g.a.removeMessages(2);
        this.f5973g.a.sendEmptyMessageAtTime(2, j2 + j3);
    }

    public final void F(boolean z) throws w {
        e0.a aVar = this.r.f4713g.f4607f.a;
        long H = H(aVar, this.t.f5221m, true);
        if (H != this.t.f5221m) {
            i0 i0Var = this.t;
            this.t = i0Var.a(aVar, H, i0Var.f5213e, k());
            if (z) {
                this.o.b(4);
            }
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:62:0x005e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:55:0x00f3 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [f.i.a.a.z$d] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006a A[Catch: all -> 0x00f5, TryCatch #1 {all -> 0x00f5, blocks: (B:16:0x005c, B:18:0x0060, B:23:0x006a, B:24:0x0074, B:26:0x007e, B:30:0x0088, B:32:0x0092, B:34:0x00a2), top: B:64:0x005c }] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0074 A[Catch: all -> 0x00f5, TryCatch #1 {all -> 0x00f5, blocks: (B:16:0x005c, B:18:0x0060, B:23:0x006a, B:24:0x0074, B:26:0x007e, B:30:0x0088, B:32:0x0092, B:34:0x00a2), top: B:64:0x005c }] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00ed  */
    /* JADX WARNING: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void G(f.i.a.a.z.e r20) throws f.i.a.a.w {
        /*
        // Method dump skipped, instructions count: 267
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.G(f.i.a.a.z$e):void");
    }

    public final long H(e0.a aVar, long j2, boolean z) throws w {
        T();
        this.y = false;
        Q(2);
        e0 e0Var = this.r.f4713g;
        e0 e0Var2 = e0Var;
        while (true) {
            if (e0Var2 == null) {
                break;
            }
            if (aVar.equals(e0Var2.f4607f.a) && e0Var2.f4605d) {
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
                e0Var2.n = 0;
            }
        }
        if (e0Var2 != null) {
            W(e0Var);
            if (e0Var2.f4606e) {
                long u = e0Var2.a.u(j2);
                e0Var2.a.t(u - this.f5978l, this.f5979m);
                j2 = u;
            }
            A(j2);
            t();
        } else {
            this.r.b(true);
            this.t = this.t.b(p0.f4836d, this.f5970d);
            A(j2);
        }
        n(false);
        this.f5973g.c(2);
        return j2;
    }

    public final void I(n0 n0Var) throws w {
        if (n0Var.f5718h == -9223372036854775807L) {
            J(n0Var);
        } else if (this.u == null || this.C > 0) {
            this.p.add(new c(n0Var));
        } else {
            c cVar = new c(n0Var);
            if (B(cVar)) {
                this.p.add(cVar);
                Collections.sort(this.p);
                return;
            }
            n0Var.b(false);
        }
    }

    public final void J(n0 n0Var) throws w {
        if (n0Var.f5716f.getLooper() == this.f5973g.a.getLooper()) {
            b(n0Var);
            int i2 = this.t.f5214f;
            if (i2 == 3 || i2 == 2) {
                this.f5973g.c(2);
                return;
            }
            return;
        }
        this.f5973g.b(16, n0Var).sendToTarget();
    }

    public final void K(n0 n0Var) {
        n0Var.f5716f.post(new Runnable(n0Var) { // from class: f.i.a.a.n
            public final /* synthetic */ n0 b;

            {
                this.b = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                z.this.s(this.b);
            }
        });
    }

    public final void L(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        if (this.B != z) {
            this.B = z;
            if (!z) {
                p0[] p0VarArr = this.a;
                for (p0 p0Var : p0VarArr) {
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
        if (i0Var.f5215g != z) {
            this.t = new i0(i0Var.a, i0Var.b, i0Var.f5211c, i0Var.f5212d, i0Var.f5213e, i0Var.f5214f, z, i0Var.f5216h, i0Var.f5217i, i0Var.f5218j, i0Var.f5219k, i0Var.f5220l, i0Var.f5221m);
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
        int i2 = this.t.f5214f;
        if (i2 == 3) {
            R();
            this.f5973g.c(2);
        } else if (i2 == 2) {
            this.f5973g.c(2);
        }
    }

    public final void O(int i2) throws w {
        this.z = i2;
        g0 g0Var = this.r;
        g0Var.f4711e = i2;
        if (!g0Var.o()) {
            F(true);
        }
        n(false);
    }

    public final void P(boolean z) throws w {
        this.A = z;
        g0 g0Var = this.r;
        g0Var.f4712f = z;
        if (!g0Var.o()) {
            F(true);
        }
        n(false);
    }

    public final void Q(int i2) {
        i0 i0Var = this.t;
        if (i0Var.f5214f != i2) {
            this.t = new i0(i0Var.a, i0Var.b, i0Var.f5211c, i0Var.f5212d, i0Var.f5213e, i2, i0Var.f5215g, i0Var.f5216h, i0Var.f5217i, i0Var.f5218j, i0Var.f5219k, i0Var.f5220l, i0Var.f5221m);
        }
    }

    public final void R() throws w {
        this.y = false;
        a0 a0Var = this.n.a;
        if (!a0Var.b) {
            a0Var.f5657d = a0Var.a.c();
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
        this.f5971e.b(true);
        Q(1);
    }

    public final void T() throws w {
        a0 a0Var = this.n.a;
        if (a0Var.b) {
            a0Var.a(a0Var.v());
            a0Var.b = false;
        }
        p0[] p0VarArr = this.v;
        for (p0 p0Var : p0VarArr) {
            if (p0Var.c() == 2) {
                p0Var.stop();
            }
        }
    }

    public final void U(p0 p0Var, n nVar) {
        boolean z;
        t tVar = this.f5971e;
        p0[] p0VarArr = this.a;
        k kVar = nVar.f5452c;
        if (tVar != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= p0VarArr.length) {
                    z = false;
                    break;
                }
                if (p0VarArr[i2].t() == 2 && kVar.b[i2] != null) {
                    z = true;
                    break;
                }
                i2++;
            }
            tVar.f5781m = z;
            int i3 = tVar.f5775g;
            if (i3 == -1) {
                i3 = 0;
                for (int i4 = 0; i4 < p0VarArr.length; i4++) {
                    if (kVar.b[i4] != null) {
                        i3 = h0.B(p0VarArr[i4].t()) + i3;
                    }
                }
            }
            tVar.f5779k = i3;
            tVar.a.b(i3);
            return;
        }
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00d0  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00de  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00fc A[LOOP:1: B:40:0x00dc->B:50:0x00fc, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0109  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0126 A[DONT_GENERATE] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0130 A[DONT_GENERATE] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x00db A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x014c A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0141 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void V() throws f.i.a.a.w {
        /*
        // Method dump skipped, instructions count: 384
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.V():void");
    }

    public final void W(@Nullable e0 e0Var) throws w {
        e0 e0Var2 = this.r.f4713g;
        if (e0Var2 != null && e0Var != e0Var2) {
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
                    if (zArr[i2] && (!e0Var2.f().b(i2) || (p0Var.q() && p0Var.k() == e0Var.f4604c[i2]))) {
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
    }

    @Override // f.i.a.a.j1.m.a
    public void a() {
        this.f5973g.c(11);
    }

    public final void b(n0 n0Var) throws w {
        n0Var.a();
        try {
            n0Var.a.j(n0Var.f5714d, n0Var.f5715e);
        } finally {
            n0Var.b(true);
        }
    }

    public final void c(p0 p0Var) throws w {
        u uVar = this.n;
        if (p0Var == uVar.f5793c) {
            uVar.f5794d = null;
            uVar.f5793c = null;
        }
        if (p0Var.c() == 2) {
            p0Var.stop();
        }
        p0Var.b();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:208:0x036f, code lost:
        if (r5 >= r0.f5779k) goto L_0x0377;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:213:0x0378, code lost:
        if (r0 == false) goto L_0x037b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00a6, code lost:
        if (r9 != -9223372036854775807L) goto L_0x00b6;
     */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x02cf  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00cd  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d() throws f.i.a.a.w, java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1006
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.d():void");
    }

    public final void e(boolean[] zArr, int i2) throws w {
        int i3;
        q qVar;
        this.v = new p0[i2];
        n f2 = this.r.f4713g.f();
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
                e0 e0Var = this.r.f4713g;
                p0 p0Var = this.a[i5];
                this.v[i6] = p0Var;
                if (p0Var.c() == 0) {
                    n f3 = e0Var.f();
                    q0 q0Var = f3.b[i5];
                    b0[] g2 = g(f3.f5452c.b[i5]);
                    boolean z2 = this.x && this.t.f5214f == 3;
                    boolean z3 = !z && z2;
                    i3 = i5;
                    p0Var.h(q0Var, g2, e0Var.f4604c[i5], this.E, z3, e0Var.n);
                    u uVar = this.n;
                    if (uVar != null) {
                        q r = p0Var.r();
                        if (!(r == null || r == (qVar = uVar.f5794d))) {
                            if (qVar == null) {
                                uVar.f5794d = r;
                                uVar.f5793c = p0Var;
                                r.s(uVar.a.f5658e);
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
    public void f(e0 e0Var, u0 u0Var, Object obj) {
        this.f5973g.b(8, new b(e0Var, u0Var, obj)).sendToTarget();
    }

    @Override // f.i.a.a.h1.d0.a
    public void h(d0 d0Var) {
        this.f5973g.b(9, d0Var).sendToTarget();
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x00bc  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00c5  */
    @Override // android.os.Handler.Callback
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean handleMessage(android.os.Message r7) {
        /*
        // Method dump skipped, instructions count: 300
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.handleMessage(android.os.Message):boolean");
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.h1.l0] */
    @Override // f.i.a.a.h1.l0.a
    public void i(d0 d0Var) {
        this.f5973g.b(10, d0Var).sendToTarget();
    }

    public final Pair<Object, Long> j(u0 u0Var, int i2, long j2) {
        return u0Var.j(this.f5976j, this.f5977k, i2, j2);
    }

    public final long k() {
        return l(this.t.f5219k);
    }

    public final long l(long j2) {
        e0 e0Var = this.r.f4715i;
        if (e0Var == null) {
            return 0;
        }
        return Math.max(0L, j2 - (this.E - e0Var.n));
    }

    public final void m(d0 d0Var) {
        e0 e0Var = this.r.f4715i;
        if (e0Var != null && e0Var.a == d0Var) {
            this.r.k(this.E);
            t();
        }
    }

    public final void n(boolean z) {
        e0 e0Var;
        boolean z2;
        long j2;
        z zVar = this;
        e0 e0Var2 = zVar.r.f4715i;
        e0.a aVar = e0Var2 == null ? zVar.t.f5211c : e0Var2.f4607f.a;
        boolean z3 = !zVar.t.f5218j.equals(aVar);
        if (z3) {
            i0 i0Var = zVar.t;
            z2 = z3;
            e0Var = e0Var2;
            zVar = this;
            zVar.t = new i0(i0Var.a, i0Var.b, i0Var.f5211c, i0Var.f5212d, i0Var.f5213e, i0Var.f5214f, i0Var.f5215g, i0Var.f5216h, i0Var.f5217i, aVar, i0Var.f5219k, i0Var.f5220l, i0Var.f5221m);
        } else {
            e0Var = e0Var2;
            z2 = z3;
        }
        i0 i0Var2 = zVar.t;
        if (e0Var == null) {
            j2 = i0Var2.f5221m;
        } else {
            j2 = e0Var.d();
        }
        i0Var2.f5219k = j2;
        zVar.t.f5220l = k();
        if ((z2 || z) && e0Var != null && e0Var.f4605d) {
            zVar.U(e0Var.e(), e0Var.f());
        }
    }

    public final void o(d0 d0Var) throws w {
        e0 e0Var = this.r.f4715i;
        if (e0Var != null && e0Var.a == d0Var) {
            e0 e0Var2 = this.r.f4715i;
            float f2 = this.n.e().a;
            u0 u0Var = this.t.a;
            e0Var2.f4605d = true;
            e0Var2.f4613l = e0Var2.a.o();
            n j2 = e0Var2.j(f2, u0Var);
            c.a.a.b.g.h.t(j2);
            long a2 = e0Var2.a(j2, e0Var2.f4607f.b, false, new boolean[e0Var2.f4609h.length]);
            long j3 = e0Var2.n;
            f0 f0Var = e0Var2.f4607f;
            long j4 = f0Var.b;
            e0Var2.n = (j4 - a2) + j3;
            if (a2 != j4) {
                f0Var = new f0(f0Var.a, a2, f0Var.f4695c, f0Var.f4696d, f0Var.f4697e, f0Var.f4698f, f0Var.f4699g);
            }
            e0Var2.f4607f = f0Var;
            U(e0Var2.e(), e0Var2.f());
            if (!this.r.i()) {
                A(this.r.a().f4607f.b);
                W(null);
            }
            t();
        }
    }

    public final void p(j0 j0Var) throws w {
        int i2;
        this.f5975i.obtainMessage(1, j0Var).sendToTarget();
        float f2 = j0Var.a;
        e0 d2 = this.r.d();
        while (true) {
            i2 = 0;
            if (d2 == null || !d2.f4605d) {
                break;
            }
            j[] a2 = d2.f().f5452c.a();
            int length = a2.length;
            while (i2 < length) {
                j jVar = a2[i2];
                if (jVar != null) {
                    jVar.n(f2);
                }
                i2++;
            }
            d2 = d2.f4612k;
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

    /* JADX WARNING: Removed duplicated region for block: B:115:0x0276 A[LOOP:3: B:115:0x0276->B:145:0x0276, LOOP_START, PHI: r1 
      PHI: (r1v21 f.i.a.a.e0) = (r1v16 f.i.a.a.e0), (r1v22 f.i.a.a.e0) binds: [B:114:0x0274, B:145:0x0276] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x0296  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x02a0  */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x02a2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void q(f.i.a.a.z.b r38) throws f.i.a.a.w {
        /*
        // Method dump skipped, instructions count: 696
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.q(f.i.a.a.z$b):void");
    }

    public final boolean r() {
        e0 e0Var = this.r.f4713g;
        e0 e0Var2 = e0Var.f4612k;
        long j2 = e0Var.f4607f.f4697e;
        return j2 == -9223372036854775807L || this.t.f5221m < j2 || (e0Var2 != null && (e0Var2.f4605d || e0Var2.f4607f.a.b()));
    }

    public /* synthetic */ void s(n0 n0Var) {
        try {
            b(n0Var);
        } catch (w e2) {
            o.a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    public final void t() {
        int i2;
        e0 e0Var = this.r.f4715i;
        long c2 = !e0Var.f4605d ? 0 : e0Var.a.c();
        boolean z = false;
        if (c2 == Long.MIN_VALUE) {
            M(false);
            return;
        }
        long l2 = l(c2);
        t tVar = this.f5971e;
        float f2 = this.n.e().a;
        f.i.a.a.l1.q qVar = tVar.a;
        synchronized (qVar) {
            i2 = qVar.f5612f * qVar.b;
        }
        boolean z2 = i2 >= tVar.f5779k;
        long j2 = tVar.f5781m ? tVar.f5771c : tVar.b;
        if (f2 > 1.0f) {
            j2 = Math.min(h0.E(j2, f2), tVar.f5772d);
        }
        if (l2 < j2) {
            if (tVar.f5776h || !z2) {
                z = true;
            }
            tVar.f5780l = z;
        } else if (l2 >= tVar.f5772d || z2) {
            tVar.f5780l = false;
        }
        boolean z3 = tVar.f5780l;
        M(z3);
        if (z3) {
            long j3 = this.E;
            c.a.a.b.g.h.v(e0Var.h());
            e0Var.a.f(j3 - e0Var.n);
        }
    }

    public final void u() {
        d dVar = this.o;
        if (this.t != dVar.a || dVar.b > 0 || dVar.f5983c) {
            Handler handler = this.f5975i;
            d dVar2 = this.o;
            handler.obtainMessage(0, dVar2.b, dVar2.f5983c ? dVar2.f5984d : -1, this.t).sendToTarget();
            d dVar3 = this.o;
            dVar3.a = this.t;
            dVar3.b = 0;
            dVar3.f5983c = false;
        }
    }

    public final void v() throws IOException {
        g0 g0Var = this.r;
        e0 e0Var = g0Var.f4715i;
        e0 e0Var2 = g0Var.f4714h;
        if (!(e0Var == null || e0Var.f4605d)) {
            if (e0Var2 == null || e0Var2.f4612k == e0Var) {
                for (p0 p0Var : this.v) {
                    if (!p0Var.g()) {
                        return;
                    }
                }
                e0Var.a.s();
            }
        }
    }

    public final void w(e0 e0Var, boolean z, boolean z2) {
        this.C++;
        z(false, true, z, z2);
        this.f5971e.b(false);
        this.u = e0Var;
        Q(2);
        e0Var.e(this, this.f5972f.a());
        this.f5973g.c(2);
    }

    public final void x() {
        z(true, true, true, true);
        this.f5971e.b(true);
        Q(1);
        this.f5974h.quit();
        synchronized (this) {
            this.w = true;
            notifyAll();
        }
    }

    public final void y() throws w {
        if (this.r.i()) {
            float f2 = this.n.e().a;
            g0 g0Var = this.r;
            e0 e0Var = g0Var.f4713g;
            e0 e0Var2 = g0Var.f4714h;
            e0 e0Var3 = e0Var;
            boolean z = true;
            while (e0Var3 != null && e0Var3.f4605d) {
                n j2 = e0Var3.j(f2, this.t.a);
                if (j2 != null) {
                    if (z) {
                        g0 g0Var2 = this.r;
                        e0 e0Var4 = g0Var2.f4713g;
                        boolean l2 = g0Var2.l(e0Var4);
                        boolean[] zArr = new boolean[this.a.length];
                        long a2 = e0Var4.a(j2, this.t.f5221m, l2, zArr);
                        i0 i0Var = this.t;
                        if (!(i0Var.f5214f == 4 || a2 == i0Var.f5221m)) {
                            i0 i0Var2 = this.t;
                            this.t = i0Var2.a(i0Var2.f5211c, a2, i0Var2.f5213e, k());
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
                            k0 k0Var = e0Var4.f4604c[i2];
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
                        if (e0Var3.f4605d) {
                            e0Var3.a(j2, Math.max(e0Var3.f4607f.b, this.E - e0Var3.n), false, new boolean[e0Var3.f4609h.length]);
                        }
                    }
                    n(true);
                    if (this.t.f5214f != 4) {
                        t();
                        V();
                        this.f5973g.c(2);
                        return;
                    }
                    return;
                }
                if (e0Var3 == e0Var2) {
                    z = false;
                }
                e0Var3 = e0Var3.f4612k;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b2  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00ea  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0100  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0103  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void z(boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.z(boolean, boolean, boolean, boolean):void");
    }
}
