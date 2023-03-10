package f.i.a.a.h1.s0;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.i0;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.l0;
import f.i.a.a.h1.s0.h;
import f.i.a.a.h1.t0.j;
import f.i.a.a.l1.c0;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.p;
import f.i.a.a.l1.w;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: ChunkSampleStream.java */
/* loaded from: classes.dex */
public class g<T extends h> implements k0, l0, c0.b<d>, c0.f {
    public final int a;
    public final int[] b;

    /* renamed from: c  reason: collision with root package name */
    public final b0[] f4969c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean[] f4970d;

    /* renamed from: e  reason: collision with root package name */
    public final T f4971e;

    /* renamed from: f  reason: collision with root package name */
    public final l0.a<g<T>> f4972f;

    /* renamed from: g  reason: collision with root package name */
    public final f0.a f4973g;

    /* renamed from: h  reason: collision with root package name */
    public final f.i.a.a.l1.b0 f4974h;

    /* renamed from: i  reason: collision with root package name */
    public final c0 f4975i = new c0("Loader:ChunkSampleStream");

    /* renamed from: j  reason: collision with root package name */
    public final f f4976j = new f();

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList<f.i.a.a.h1.s0.a> f4977k;

    /* renamed from: l  reason: collision with root package name */
    public final List<f.i.a.a.h1.s0.a> f4978l;

    /* renamed from: m  reason: collision with root package name */
    public final j0 f4979m;
    public final j0[] n;
    public final c o;
    public b0 p;
    @Nullable
    public b<T> q;
    public long r;
    public long s;
    public int t;
    public long u;
    public boolean v;

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes.dex */
    public final class a implements k0 {
        public final g<T> a;
        public final j0 b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4980c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f4981d;

        public a(g<T> gVar, j0 j0Var, int i2) {
            this.a = gVar;
            this.b = j0Var;
            this.f4980c = i2;
        }

        @Override // f.i.a.a.h1.k0
        public void a() throws IOException {
        }

        public final void b() {
            if (this.f4981d) {
                return;
            }
            g gVar = g.this;
            f0.a aVar = gVar.f4973g;
            int[] iArr = gVar.b;
            int i2 = this.f4980c;
            aVar.b(iArr[i2], gVar.f4969c[i2], 0, null, gVar.s);
            this.f4981d = true;
        }

        public void c() {
            c.a.a.b.g.h.v(g.this.f4970d[this.f4980c]);
            g.this.f4970d[this.f4980c] = false;
        }

        @Override // f.i.a.a.h1.k0
        public boolean d() {
            g gVar = g.this;
            return gVar.v || (!gVar.y() && this.b.o());
        }

        @Override // f.i.a.a.h1.k0
        public int i(f.i.a.a.c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
            if (g.this.y()) {
                return -3;
            }
            b();
            j0 j0Var = this.b;
            g gVar = g.this;
            return j0Var.s(c0Var, eVar, z, gVar.v, gVar.u);
        }

        @Override // f.i.a.a.h1.k0
        public int q(long j2) {
            if (g.this.y()) {
                return 0;
            }
            b();
            if (g.this.v && j2 > this.b.l()) {
                return this.b.f();
            }
            int e2 = this.b.e(j2, true, true);
            if (e2 == -1) {
                return 0;
            }
            return e2;
        }
    }

    /* compiled from: ChunkSampleStream.java */
    /* loaded from: classes.dex */
    public interface b<T extends h> {
    }

    public g(int i2, int[] iArr, b0[] b0VarArr, T t, l0.a<g<T>> aVar, f.i.a.a.l1.e eVar, long j2, f.i.a.a.l1.b0 b0Var, f0.a aVar2) {
        this.a = i2;
        this.b = iArr;
        this.f4969c = b0VarArr;
        this.f4971e = t;
        this.f4972f = aVar;
        this.f4973g = aVar2;
        this.f4974h = b0Var;
        ArrayList<f.i.a.a.h1.s0.a> arrayList = new ArrayList<>();
        this.f4977k = arrayList;
        this.f4978l = Collections.unmodifiableList(arrayList);
        int i3 = 0;
        int length = iArr == null ? 0 : iArr.length;
        this.n = new j0[length];
        this.f4970d = new boolean[length];
        int i4 = length + 1;
        int[] iArr2 = new int[i4];
        j0[] j0VarArr = new j0[i4];
        j0 j0Var = new j0(eVar);
        this.f4979m = j0Var;
        iArr2[0] = i2;
        j0VarArr[0] = j0Var;
        while (i3 < length) {
            j0 j0Var2 = new j0(eVar);
            this.n[i3] = j0Var2;
            int i5 = i3 + 1;
            j0VarArr[i5] = j0Var2;
            iArr2[i5] = iArr[i3];
            i3 = i5;
        }
        this.o = new c(iArr2, j0VarArr);
        this.r = j2;
        this.s = j2;
    }

    public final int A(int i2, int i3) {
        do {
            i3++;
            if (i3 >= this.f4977k.size()) {
                return this.f4977k.size() - 1;
            }
        } while (this.f4977k.get(i3).f4950m[0] <= i2);
        return i3 - 1;
    }

    public void B(@Nullable b<T> bVar) {
        this.q = bVar;
        this.f4979m.j();
        for (j0 j0Var : this.n) {
            j0Var.j();
        }
        this.f4975i.f(this);
    }

    public void C(long j2) {
        boolean z;
        j0[] j0VarArr;
        this.s = j2;
        if (y()) {
            this.r = j2;
            return;
        }
        f.i.a.a.h1.s0.a aVar = null;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f4977k.size()) {
                break;
            }
            f.i.a.a.h1.s0.a aVar2 = this.f4977k.get(i2);
            int i3 = (aVar2.f4954f > j2 ? 1 : (aVar2.f4954f == j2 ? 0 : -1));
            if (i3 == 0 && aVar2.f4947j == -9223372036854775807L) {
                aVar = aVar2;
                break;
            } else if (i3 > 0) {
                break;
            } else {
                i2++;
            }
        }
        this.f4979m.v();
        if (aVar != null) {
            j0 j0Var = this.f4979m;
            int i4 = aVar.f4950m[0];
            i0 i0Var = j0Var.f4887c;
            synchronized (i0Var) {
                if (i0Var.f4881j > i4 || i4 > i0Var.f4881j + i0Var.f4880i) {
                    z = false;
                } else {
                    i0Var.f4883l = i4 - i0Var.f4881j;
                    z = true;
                }
            }
            this.u = 0L;
        } else {
            z = this.f4979m.e(j2, true, (j2 > c() ? 1 : (j2 == c() ? 0 : -1)) < 0) != -1;
            this.u = this.s;
        }
        if (z) {
            this.t = A(this.f4979m.m(), 0);
            for (j0 j0Var2 : this.n) {
                j0Var2.v();
                j0Var2.e(j2, true, false);
            }
            return;
        }
        this.r = j2;
        this.v = false;
        this.f4977k.clear();
        this.t = 0;
        if (this.f4975i.d()) {
            this.f4975i.b();
            return;
        }
        this.f4979m.u(false);
        for (j0 j0Var3 : this.n) {
            j0Var3.u(false);
        }
    }

    @Override // f.i.a.a.h1.k0
    public void a() throws IOException {
        this.f4975i.e(Integer.MIN_VALUE);
        if (this.f4975i.d()) {
            return;
        }
        this.f4971e.a();
    }

    @Override // f.i.a.a.h1.l0
    public long c() {
        if (y()) {
            return this.r;
        }
        if (this.v) {
            return Long.MIN_VALUE;
        }
        return w().f4955g;
    }

    @Override // f.i.a.a.h1.k0
    public boolean d() {
        return this.v || (!y() && this.f4979m.o());
    }

    @Override // f.i.a.a.h1.l0
    public long e() {
        if (this.v) {
            return Long.MIN_VALUE;
        }
        if (y()) {
            return this.r;
        }
        long j2 = this.s;
        f.i.a.a.h1.s0.a w = w();
        if (!w.d()) {
            if (this.f4977k.size() > 1) {
                ArrayList<f.i.a.a.h1.s0.a> arrayList = this.f4977k;
                w = arrayList.get(arrayList.size() - 2);
            } else {
                w = null;
            }
        }
        if (w != null) {
            j2 = Math.max(j2, w.f4955g);
        }
        return Math.max(j2, this.f4979m.l());
    }

    @Override // f.i.a.a.h1.l0
    public boolean f(long j2) {
        List<f.i.a.a.h1.s0.a> list;
        long j3;
        int i2 = 0;
        if (this.v || this.f4975i.d()) {
            return false;
        }
        boolean y = y();
        if (y) {
            list = Collections.emptyList();
            j3 = this.r;
        } else {
            list = this.f4978l;
            j3 = w().f4955g;
        }
        this.f4971e.h(j2, j3, list, this.f4976j);
        f fVar = this.f4976j;
        boolean z = fVar.b;
        d dVar = fVar.a;
        fVar.a = null;
        fVar.b = false;
        if (z) {
            this.r = -9223372036854775807L;
            this.v = true;
            return true;
        } else if (dVar == null) {
            return false;
        } else {
            if (dVar instanceof f.i.a.a.h1.s0.a) {
                f.i.a.a.h1.s0.a aVar = (f.i.a.a.h1.s0.a) dVar;
                if (y) {
                    this.u = (aVar.f4954f > this.r ? 1 : (aVar.f4954f == this.r ? 0 : -1)) == 0 ? 0L : this.r;
                    this.r = -9223372036854775807L;
                }
                c cVar = this.o;
                aVar.f4949l = cVar;
                int[] iArr = new int[cVar.b.length];
                while (true) {
                    j0[] j0VarArr = cVar.b;
                    if (i2 >= j0VarArr.length) {
                        break;
                    }
                    if (j0VarArr[i2] != null) {
                        i0 i0Var = j0VarArr[i2].f4887c;
                        iArr[i2] = i0Var.f4881j + i0Var.f4880i;
                    }
                    i2++;
                }
                aVar.f4950m = iArr;
                this.f4977k.add(aVar);
            }
            this.f4973g.w(dVar.a, dVar.b, this.a, dVar.f4951c, dVar.f4952d, dVar.f4953e, dVar.f4954f, dVar.f4955g, this.f4975i.g(dVar, this, ((w) this.f4974h).b(dVar.b)));
            return true;
        }
    }

    @Override // f.i.a.a.h1.l0
    public void g(long j2) {
        int size;
        int e2;
        if (this.f4975i.d() || y() || (size = this.f4977k.size()) <= (e2 = this.f4971e.e(j2, this.f4978l))) {
            return;
        }
        while (true) {
            if (e2 >= size) {
                e2 = size;
                break;
            } else if (!x(e2)) {
                break;
            } else {
                e2++;
            }
        }
        if (e2 == size) {
            return;
        }
        long j3 = w().f4955g;
        f.i.a.a.h1.s0.a v = v(e2);
        if (this.f4977k.isEmpty()) {
            this.r = this.s;
        }
        this.v = false;
        f0.a aVar = this.f4973g;
        aVar.C(new f0.c(1, this.a, null, 3, null, aVar.a(v.f4954f), aVar.a(j3)));
    }

    @Override // f.i.a.a.l1.c0.f
    public void h() {
        this.f4979m.u(false);
        for (j0 j0Var : this.n) {
            j0Var.u(false);
        }
        b<T> bVar = this.q;
        if (bVar != null) {
            f.i.a.a.h1.t0.e eVar = (f.i.a.a.h1.t0.e) bVar;
            synchronized (eVar) {
                j.c remove = eVar.f4999l.remove(this);
                if (remove != null) {
                    remove.a.u(false);
                }
            }
        }
    }

    @Override // f.i.a.a.h1.k0
    public int i(f.i.a.a.c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
        if (y()) {
            return -3;
        }
        z();
        return this.f4979m.s(c0Var, eVar, z, this.v, this.u);
    }

    @Override // f.i.a.a.l1.c0.b
    public void k(d dVar, long j2, long j3, boolean z) {
        d dVar2 = dVar;
        f0.a aVar = this.f4973g;
        p pVar = dVar2.a;
        g0 g0Var = dVar2.f4956h;
        aVar.n(pVar, g0Var.f5597c, g0Var.f5598d, dVar2.b, this.a, dVar2.f4951c, dVar2.f4952d, dVar2.f4953e, dVar2.f4954f, dVar2.f4955g, j2, j3, g0Var.b);
        if (z) {
            return;
        }
        this.f4979m.u(false);
        for (j0 j0Var : this.n) {
            j0Var.u(false);
        }
        this.f4972f.i(this);
    }

    @Override // f.i.a.a.l1.c0.b
    public c0.c p(d dVar, long j2, long j3, IOException iOException, int i2) {
        d dVar2 = dVar;
        long j4 = dVar2.f4956h.b;
        boolean z = dVar2 instanceof f.i.a.a.h1.s0.a;
        int size = this.f4977k.size() - 1;
        boolean z2 = (j4 != 0 && z && x(size)) ? false : true;
        c0.c cVar = null;
        if (this.f4971e.i(dVar2, z2, iOException, z2 ? ((w) this.f4974h).a(dVar2.b, j3, iOException, i2) : -9223372036854775807L) && z2) {
            cVar = c0.f5572d;
            if (z) {
                c.a.a.b.g.h.v(v(size) == dVar2);
                if (this.f4977k.isEmpty()) {
                    this.r = this.s;
                }
            }
        }
        if (cVar == null) {
            long c2 = ((w) this.f4974h).c(dVar2.b, j3, iOException, i2);
            cVar = c2 != -9223372036854775807L ? c0.c(false, c2) : c0.f5573e;
        }
        c0.c cVar2 = cVar;
        boolean z3 = !cVar2.a();
        f0.a aVar = this.f4973g;
        p pVar = dVar2.a;
        g0 g0Var = dVar2.f4956h;
        aVar.t(pVar, g0Var.f5597c, g0Var.f5598d, dVar2.b, this.a, dVar2.f4951c, dVar2.f4952d, dVar2.f4953e, dVar2.f4954f, dVar2.f4955g, j2, j3, j4, iOException, z3);
        if (z3) {
            this.f4972f.i(this);
        }
        return cVar2;
    }

    @Override // f.i.a.a.h1.k0
    public int q(long j2) {
        int i2 = 0;
        if (y()) {
            return 0;
        }
        if (this.v && j2 > this.f4979m.l()) {
            i2 = this.f4979m.f();
        } else {
            int e2 = this.f4979m.e(j2, true, true);
            if (e2 != -1) {
                i2 = e2;
            }
        }
        z();
        return i2;
    }

    @Override // f.i.a.a.l1.c0.b
    public void r(d dVar, long j2, long j3) {
        d dVar2 = dVar;
        this.f4971e.f(dVar2);
        f0.a aVar = this.f4973g;
        p pVar = dVar2.a;
        g0 g0Var = dVar2.f4956h;
        aVar.q(pVar, g0Var.f5597c, g0Var.f5598d, dVar2.b, this.a, dVar2.f4951c, dVar2.f4952d, dVar2.f4953e, dVar2.f4954f, dVar2.f4955g, j2, j3, g0Var.b);
        this.f4972f.i(this);
    }

    public void t(long j2, boolean z) {
        long j3;
        if (y()) {
            return;
        }
        j0 j0Var = this.f4979m;
        int i2 = j0Var.f4887c.f4881j;
        j0Var.i(j2, z, true);
        i0 i0Var = this.f4979m.f4887c;
        int i3 = i0Var.f4881j;
        if (i3 > i2) {
            synchronized (i0Var) {
                j3 = i0Var.f4880i == 0 ? Long.MIN_VALUE : i0Var.f4877f[i0Var.f4882k];
            }
            int i4 = 0;
            while (true) {
                j0[] j0VarArr = this.n;
                if (i4 >= j0VarArr.length) {
                    break;
                }
                j0VarArr[i4].i(j3, z, this.f4970d[i4]);
                i4++;
            }
        }
        int min = Math.min(A(i3, 0), this.t);
        if (min > 0) {
            h0.f0(this.f4977k, 0, min);
            this.t -= min;
        }
    }

    public final f.i.a.a.h1.s0.a v(int i2) {
        f.i.a.a.h1.s0.a aVar = this.f4977k.get(i2);
        ArrayList<f.i.a.a.h1.s0.a> arrayList = this.f4977k;
        h0.f0(arrayList, i2, arrayList.size());
        this.t = Math.max(this.t, this.f4977k.size());
        int i3 = 0;
        this.f4979m.k(aVar.f4950m[0]);
        while (true) {
            j0[] j0VarArr = this.n;
            if (i3 >= j0VarArr.length) {
                return aVar;
            }
            j0 j0Var = j0VarArr[i3];
            i3++;
            j0Var.k(aVar.f4950m[i3]);
        }
    }

    public final f.i.a.a.h1.s0.a w() {
        ArrayList<f.i.a.a.h1.s0.a> arrayList = this.f4977k;
        return arrayList.get(arrayList.size() - 1);
    }

    public final boolean x(int i2) {
        int m2;
        f.i.a.a.h1.s0.a aVar = this.f4977k.get(i2);
        if (this.f4979m.m() > aVar.f4950m[0]) {
            return true;
        }
        int i3 = 0;
        do {
            j0[] j0VarArr = this.n;
            if (i3 >= j0VarArr.length) {
                return false;
            }
            m2 = j0VarArr[i3].m();
            i3++;
        } while (m2 <= aVar.f4950m[i3]);
        return true;
    }

    public boolean y() {
        return this.r != -9223372036854775807L;
    }

    public final void z() {
        int A = A(this.f4979m.m(), this.t - 1);
        while (true) {
            int i2 = this.t;
            if (i2 > A) {
                return;
            }
            this.t = i2 + 1;
            f.i.a.a.h1.s0.a aVar = this.f4977k.get(i2);
            b0 b0Var = aVar.f4951c;
            if (!b0Var.equals(this.p)) {
                this.f4973g.b(this.a, b0Var, aVar.f4952d, aVar.f4953e, aVar.f4954f);
            }
            this.p = b0Var;
        }
    }
}
