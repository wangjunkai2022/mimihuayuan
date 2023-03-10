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
    public final f.i.a.a.j1.m f6053c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.j1.n f6054d;

    /* renamed from: e  reason: collision with root package name */
    public final t f6055e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.l1.g f6056f;

    /* renamed from: g  reason: collision with root package name */
    public final f.i.a.a.m1.c0 f6057g;

    /* renamed from: h  reason: collision with root package name */
    public final HandlerThread f6058h;

    /* renamed from: i  reason: collision with root package name */
    public final Handler f6059i;

    /* renamed from: j  reason: collision with root package name */
    public final u0.c f6060j;

    /* renamed from: k  reason: collision with root package name */
    public final u0.b f6061k;

    /* renamed from: l  reason: collision with root package name */
    public final long f6062l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f6063m;
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
    public s0 s = s0.f5854d;
    public final d o = new d(null);

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final f.i.a.a.h1.e0 a;
        public final u0 b;

        /* renamed from: c  reason: collision with root package name */
        public final Object f6064c;

        public b(f.i.a.a.h1.e0 e0Var, u0 u0Var, Object obj) {
            this.a = e0Var;
            this.b = u0Var;
            this.f6064c = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class c implements Comparable<c> {
        public final n0 a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public long f6065c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f6066d;

        public c(n0 n0Var) {
            this.a = n0Var;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull c cVar) {
            c cVar2 = cVar;
            if ((this.f6066d == null) != (cVar2.f6066d == null)) {
                return this.f6066d != null ? -1 : 1;
            } else if (this.f6066d == null) {
                return 0;
            } else {
                int i2 = this.b - cVar2.b;
                return i2 != 0 ? i2 : f.i.a.a.m1.h0.m(this.f6065c, cVar2.f6065c);
            }
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class d {
        public i0 a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6067c;

        /* renamed from: d  reason: collision with root package name */
        public int f6068d;

        public d(a aVar) {
        }

        public void a(int i2) {
            this.b += i2;
        }

        public void b(int i2) {
            if (this.f6067c && this.f6068d != 4) {
                c.a.a.b.g.h.m(i2 == 4);
                return;
            }
            this.f6067c = true;
            this.f6068d = i2;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes.dex */
    public static final class e {
        public final u0 a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final long f6069c;

        public e(u0 u0Var, int i2, long j2) {
            this.a = u0Var;
            this.b = i2;
            this.f6069c = j2;
        }
    }

    public z(p0[] p0VarArr, f.i.a.a.j1.m mVar, f.i.a.a.j1.n nVar, t tVar, f.i.a.a.l1.g gVar, boolean z, int i2, boolean z2, Handler handler, f.i.a.a.m1.h hVar) {
        this.a = p0VarArr;
        this.f6053c = mVar;
        this.f6054d = nVar;
        this.f6055e = tVar;
        this.f6056f = gVar;
        this.x = z;
        this.z = i2;
        this.A = z2;
        this.f6059i = handler;
        this.q = hVar;
        this.f6062l = tVar.f5861i;
        this.f6063m = tVar.f5862j;
        this.t = i0.c(-9223372036854775807L, nVar);
        this.b = new p[p0VarArr.length];
        for (int i3 = 0; i3 < p0VarArr.length; i3++) {
            p0VarArr[i3].f(i3);
            this.b[i3] = p0VarArr[i3].u();
        }
        this.n = new u(this, hVar);
        this.p = new ArrayList<>();
        this.v = new p0[0];
        this.f6060j = new u0.c();
        this.f6061k = new u0.b();
        mVar.a = this;
        mVar.b = gVar;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f6058h = handlerThread;
        handlerThread.start();
        this.f6057g = hVar.b(this.f6058h.getLooper(), this);
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
            j2 += this.r.f4797g.n;
        }
        this.E = j2;
        this.n.a.a(j2);
        for (p0 p0Var : this.v) {
            p0Var.p(this.E);
        }
        for (e0 d2 = this.r.d(); d2 != null; d2 = d2.f4696k) {
            for (f.i.a.a.j1.j jVar : d2.f().f5536c.a()) {
                if (jVar != null) {
                    jVar.q();
                }
            }
        }
    }

    public final boolean B(c cVar) {
        Object obj = cVar.f6066d;
        if (obj == null) {
            n0 n0Var = cVar.a;
            u0 u0Var = n0Var.f5797c;
            int i2 = n0Var.f5801g;
            long a2 = q.a(n0Var.f5802h);
            u0 u0Var2 = this.t.a;
            Pair<Object, Long> pair = null;
            if (!u0Var2.q()) {
                if (u0Var.q()) {
                    u0Var = u0Var2;
                }
                try {
                    Pair<Object, Long> j2 = u0Var.j(this.f6060j, this.f6061k, i2, a2);
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
            cVar.f6065c = longValue;
            cVar.f6066d = obj2;
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
            j2 = u0Var2.j(this.f6060j, this.f6061k, eVar.b, eVar.f6069c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (u0Var != u0Var2 && (b2 = u0Var.b(j2.first)) == -1) {
            if (z && D(j2.first, u0Var2, u0Var) != null) {
                return j(u0Var, u0Var.f(b2, this.f6061k).f5879c, -9223372036854775807L);
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
            i3 = u0Var.d(i3, this.f6061k, this.f6060j, this.z, this.A);
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
        this.f6057g.a.removeMessages(2);
        this.f6057g.a.sendEmptyMessageAtTime(2, j2 + j3);
    }

    public final void F(boolean z) throws w {
        e0.a aVar = this.r.f4797g.f4691f.a;
        long H = H(aVar, this.t.f5305m, true);
        if (H != this.t.f5305m) {
            i0 i0Var = this.t;
            this.t = i0Var.a(aVar, H, i0Var.f5297e, k());
            if (z) {
                this.o.b(4);
            }
        }
    }

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
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(f.i.a.a.z.e r20) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.G(f.i.a.a.z$e):void");
    }

    public final long H(e0.a aVar, long j2, boolean z) throws w {
        T();
        this.y = false;
        Q(2);
        e0 e0Var = this.r.f4797g;
        e0 e0Var2 = e0Var;
        while (true) {
            if (e0Var2 == null) {
                break;
            }
            if (aVar.equals(e0Var2.f4691f.a) && e0Var2.f4689d) {
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
            if (e0Var2.f4690e) {
                long u = e0Var2.a.u(j2);
                e0Var2.a.t(u - this.f6062l, this.f6063m);
                j2 = u;
            }
            A(j2);
            t();
        } else {
            this.r.b(true);
            this.t = this.t.b(f.i.a.a.h1.p0.f4920d, this.f6054d);
            A(j2);
        }
        n(false);
        this.f6057g.c(2);
        return j2;
    }

    public final void I(n0 n0Var) throws w {
        if (n0Var.f5802h == -9223372036854775807L) {
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
        if (n0Var.f5800f.getLooper() == this.f6057g.a.getLooper()) {
            b(n0Var);
            int i2 = this.t.f5298f;
            if (i2 == 3 || i2 == 2) {
                this.f6057g.c(2);
                return;
            }
            return;
        }
        this.f6057g.b(16, n0Var).sendToTarget();
    }

    public final void K(final n0 n0Var) {
        n0Var.f5800f.post(new Runnable() { // from class: f.i.a.a.n
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
        if (i0Var.f5299g != z) {
            this.t = new i0(i0Var.a, i0Var.b, i0Var.f5295c, i0Var.f5296d, i0Var.f5297e, i0Var.f5298f, z, i0Var.f5300h, i0Var.f5301i, i0Var.f5302j, i0Var.f5303k, i0Var.f5304l, i0Var.f5305m);
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
        int i2 = this.t.f5298f;
        if (i2 == 3) {
            R();
            this.f6057g.c(2);
        } else if (i2 == 2) {
            this.f6057g.c(2);
        }
    }

    public final void O(int i2) throws w {
        this.z = i2;
        g0 g0Var = this.r;
        g0Var.f4795e = i2;
        if (!g0Var.o()) {
            F(true);
        }
        n(false);
    }

    public final void P(boolean z) throws w {
        this.A = z;
        g0 g0Var = this.r;
        g0Var.f4796f = z;
        if (!g0Var.o()) {
            F(true);
        }
        n(false);
    }

    public final void Q(int i2) {
        i0 i0Var = this.t;
        if (i0Var.f5298f != i2) {
            this.t = new i0(i0Var.a, i0Var.b, i0Var.f5295c, i0Var.f5296d, i0Var.f5297e, i2, i0Var.f5299g, i0Var.f5300h, i0Var.f5301i, i0Var.f5302j, i0Var.f5303k, i0Var.f5304l, i0Var.f5305m);
        }
    }

    public final void R() throws w {
        this.y = false;
        f.i.a.a.m1.a0 a0Var = this.n.a;
        if (!a0Var.b) {
            a0Var.f5741d = a0Var.a.c();
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
        this.f6055e.b(true);
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
        t tVar = this.f6055e;
        p0[] p0VarArr = this.a;
        f.i.a.a.j1.k kVar = nVar.f5536c;
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
            tVar.f5865m = z;
            int i3 = tVar.f5859g;
            if (i3 == -1) {
                i3 = 0;
                for (int i4 = 0; i4 < p0VarArr.length; i4++) {
                    if (kVar.b[i4] != null) {
                        i3 = f.i.a.a.m1.h0.B(p0VarArr[i4].t()) + i3;
                    }
                }
            }
            tVar.f5863k = i3;
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
        To view partially-correct add '--show-bad-code' argument
    */
    public final void V() throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.V():void");
    }

    public final void W(@Nullable e0 e0Var) throws w {
        e0 e0Var2 = this.r.f4797g;
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
                if (zArr[i2] && (!e0Var2.f().b(i2) || (p0Var.q() && p0Var.k() == e0Var.f4688c[i2]))) {
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
        this.f6057g.c(11);
    }

    public final void b(n0 n0Var) throws w {
        n0Var.a();
        try {
            n0Var.a.j(n0Var.f5798d, n0Var.f5799e);
        } finally {
            n0Var.b(true);
        }
    }

    public final void c(p0 p0Var) throws w {
        u uVar = this.n;
        if (p0Var == uVar.f5877c) {
            uVar.f5878d = null;
            uVar.f5877c = null;
        }
        if (p0Var.c() == 2) {
            p0Var.stop();
        }
        p0Var.b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:221:0x036f, code lost:
        if (r5 >= r0.f5863k) goto L263;
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
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() throws f.i.a.a.w, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.d():void");
    }

    public final void e(boolean[] zArr, int i2) throws w {
        int i3;
        f.i.a.a.m1.q qVar;
        this.v = new p0[i2];
        f.i.a.a.j1.n f2 = this.r.f4797g.f();
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
                e0 e0Var = this.r.f4797g;
                p0 p0Var = this.a[i5];
                this.v[i6] = p0Var;
                if (p0Var.c() == 0) {
                    f.i.a.a.j1.n f3 = e0Var.f();
                    q0 q0Var = f3.b[i5];
                    b0[] g2 = g(f3.f5536c.b[i5]);
                    boolean z2 = this.x && this.t.f5298f == 3;
                    boolean z3 = !z && z2;
                    i3 = i5;
                    p0Var.h(q0Var, g2, e0Var.f4688c[i5], this.E, z3, e0Var.n);
                    u uVar = this.n;
                    if (uVar != null) {
                        f.i.a.a.m1.q r = p0Var.r();
                        if (r != null && r != (qVar = uVar.f5878d)) {
                            if (qVar == null) {
                                uVar.f5878d = r;
                                uVar.f5877c = p0Var;
                                r.s(uVar.a.f5742e);
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
        this.f6057g.b(8, new b(e0Var, u0Var, obj)).sendToTarget();
    }

    @Override // f.i.a.a.h1.d0.a
    public void h(f.i.a.a.h1.d0 d0Var) {
        this.f6057g.b(9, d0Var).sendToTarget();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c5  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.handleMessage(android.os.Message):boolean");
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(f.i.a.a.h1.d0 d0Var) {
        this.f6057g.b(10, d0Var).sendToTarget();
    }

    public final Pair<Object, Long> j(u0 u0Var, int i2, long j2) {
        return u0Var.j(this.f6060j, this.f6061k, i2, j2);
    }

    public final long k() {
        return l(this.t.f5303k);
    }

    public final long l(long j2) {
        e0 e0Var = this.r.f4799i;
        if (e0Var == null) {
            return 0L;
        }
        return Math.max(0L, j2 - (this.E - e0Var.n));
    }

    public final void m(f.i.a.a.h1.d0 d0Var) {
        e0 e0Var = this.r.f4799i;
        if (e0Var != null && e0Var.a == d0Var) {
            this.r.k(this.E);
            t();
        }
    }

    public final void n(boolean z) {
        e0 e0Var;
        boolean z2;
        z zVar = this;
        e0 e0Var2 = zVar.r.f4799i;
        e0.a aVar = e0Var2 == null ? zVar.t.f5295c : e0Var2.f4691f.a;
        boolean z3 = !zVar.t.f5302j.equals(aVar);
        if (z3) {
            i0 i0Var = zVar.t;
            z2 = z3;
            e0Var = e0Var2;
            zVar = this;
            zVar.t = new i0(i0Var.a, i0Var.b, i0Var.f5295c, i0Var.f5296d, i0Var.f5297e, i0Var.f5298f, i0Var.f5299g, i0Var.f5300h, i0Var.f5301i, aVar, i0Var.f5303k, i0Var.f5304l, i0Var.f5305m);
        } else {
            e0Var = e0Var2;
            z2 = z3;
        }
        i0 i0Var2 = zVar.t;
        i0Var2.f5303k = e0Var == null ? i0Var2.f5305m : e0Var.d();
        zVar.t.f5304l = k();
        if ((z2 || z) && e0Var != null) {
            e0 e0Var3 = e0Var;
            if (e0Var3.f4689d) {
                zVar.U(e0Var3.e(), e0Var3.f());
            }
        }
    }

    public final void o(f.i.a.a.h1.d0 d0Var) throws w {
        e0 e0Var = this.r.f4799i;
        if (e0Var != null && e0Var.a == d0Var) {
            e0 e0Var2 = this.r.f4799i;
            float f2 = this.n.e().a;
            u0 u0Var = this.t.a;
            e0Var2.f4689d = true;
            e0Var2.f4697l = e0Var2.a.o();
            f.i.a.a.j1.n j2 = e0Var2.j(f2, u0Var);
            c.a.a.b.g.h.t(j2);
            long a2 = e0Var2.a(j2, e0Var2.f4691f.b, false, new boolean[e0Var2.f4693h.length]);
            long j3 = e0Var2.n;
            f0 f0Var = e0Var2.f4691f;
            long j4 = f0Var.b;
            e0Var2.n = (j4 - a2) + j3;
            if (a2 != j4) {
                f0Var = new f0(f0Var.a, a2, f0Var.f4779c, f0Var.f4780d, f0Var.f4781e, f0Var.f4782f, f0Var.f4783g);
            }
            e0Var2.f4691f = f0Var;
            U(e0Var2.e(), e0Var2.f());
            if (!this.r.i()) {
                A(this.r.a().f4691f.b);
                W(null);
            }
            t();
        }
    }

    public final void p(j0 j0Var) throws w {
        int i2;
        this.f6059i.obtainMessage(1, j0Var).sendToTarget();
        float f2 = j0Var.a;
        e0 d2 = this.r.d();
        while (true) {
            i2 = 0;
            if (d2 == null || !d2.f4689d) {
                break;
            }
            f.i.a.a.j1.j[] a2 = d2.f().f5536c.a();
            int length = a2.length;
            while (i2 < length) {
                f.i.a.a.j1.j jVar = a2[i2];
                if (jVar != null) {
                    jVar.n(f2);
                }
                i2++;
            }
            d2 = d2.f4696k;
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
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(f.i.a.a.z.b r38) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.q(f.i.a.a.z$b):void");
    }

    public final boolean r() {
        e0 e0Var = this.r.f4797g;
        e0 e0Var2 = e0Var.f4696k;
        long j2 = e0Var.f4691f.f4781e;
        return j2 == -9223372036854775807L || this.t.f5305m < j2 || (e0Var2 != null && (e0Var2.f4689d || e0Var2.f4691f.a.b()));
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
        e0 e0Var = this.r.f4799i;
        long c2 = !e0Var.f4689d ? 0L : e0Var.a.c();
        boolean z = false;
        if (c2 == Long.MIN_VALUE) {
            M(false);
            return;
        }
        long l2 = l(c2);
        t tVar = this.f6055e;
        float f2 = this.n.e().a;
        f.i.a.a.l1.q qVar = tVar.a;
        synchronized (qVar) {
            i2 = qVar.f5696f * qVar.b;
        }
        boolean z2 = i2 >= tVar.f5863k;
        long j2 = tVar.f5865m ? tVar.f5855c : tVar.b;
        if (f2 > 1.0f) {
            j2 = Math.min(f.i.a.a.m1.h0.E(j2, f2), tVar.f5856d);
        }
        if (l2 < j2) {
            tVar.f5864l = (tVar.f5860h || !z2) ? true : true;
        } else if (l2 >= tVar.f5856d || z2) {
            tVar.f5864l = false;
        }
        boolean z3 = tVar.f5864l;
        M(z3);
        if (z3) {
            long j3 = this.E;
            c.a.a.b.g.h.v(e0Var.h());
            e0Var.a.f(j3 - e0Var.n);
        }
    }

    public final void u() {
        d dVar = this.o;
        if (this.t != dVar.a || dVar.b > 0 || dVar.f6067c) {
            Handler handler = this.f6059i;
            d dVar2 = this.o;
            handler.obtainMessage(0, dVar2.b, dVar2.f6067c ? dVar2.f6068d : -1, this.t).sendToTarget();
            d dVar3 = this.o;
            dVar3.a = this.t;
            dVar3.b = 0;
            dVar3.f6067c = false;
        }
    }

    public final void v() throws IOException {
        g0 g0Var = this.r;
        e0 e0Var = g0Var.f4799i;
        e0 e0Var2 = g0Var.f4798h;
        if (e0Var == null || e0Var.f4689d) {
            return;
        }
        if (e0Var2 == null || e0Var2.f4696k == e0Var) {
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
        this.f6055e.b(false);
        this.u = e0Var;
        Q(2);
        e0Var.e(this, this.f6056f.a());
        this.f6057g.c(2);
    }

    public final void x() {
        z(true, true, true, true);
        this.f6055e.b(true);
        Q(1);
        this.f6058h.quit();
        synchronized (this) {
            this.w = true;
            notifyAll();
        }
    }

    public final void y() throws w {
        if (this.r.i()) {
            float f2 = this.n.e().a;
            g0 g0Var = this.r;
            e0 e0Var = g0Var.f4797g;
            e0 e0Var2 = g0Var.f4798h;
            boolean z = true;
            for (e0 e0Var3 = e0Var; e0Var3 != null && e0Var3.f4689d; e0Var3 = e0Var3.f4696k) {
                f.i.a.a.j1.n j2 = e0Var3.j(f2, this.t.a);
                if (j2 != null) {
                    if (z) {
                        g0 g0Var2 = this.r;
                        e0 e0Var4 = g0Var2.f4797g;
                        boolean l2 = g0Var2.l(e0Var4);
                        boolean[] zArr = new boolean[this.a.length];
                        long a2 = e0Var4.a(j2, this.t.f5305m, l2, zArr);
                        i0 i0Var = this.t;
                        if (i0Var.f5298f != 4 && a2 != i0Var.f5305m) {
                            i0 i0Var2 = this.t;
                            this.t = i0Var2.a(i0Var2.f5295c, a2, i0Var2.f5297e, k());
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
                            f.i.a.a.h1.k0 k0Var = e0Var4.f4688c[i2];
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
                        if (e0Var3.f4689d) {
                            e0Var3.a(j2, Math.max(e0Var3.f4691f.b, this.E - e0Var3.n), false, new boolean[e0Var3.f4693h.length]);
                        }
                    }
                    n(true);
                    if (this.t.f5298f != 4) {
                        t();
                        V();
                        this.f6057g.c(2);
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
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.z.z(boolean, boolean, boolean, boolean):void");
    }
}
