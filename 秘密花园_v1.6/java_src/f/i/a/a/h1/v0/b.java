package f.i.a.a.h1.v0;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.h1.p;
import f.i.a.a.h1.s0.e;
import f.i.a.a.h1.s0.f;
import f.i.a.a.h1.s0.i;
import f.i.a.a.h1.s0.l;
import f.i.a.a.h1.v0.c;
import f.i.a.a.h1.v0.e.a;
import f.i.a.a.j1.j;
import f.i.a.a.l1.d0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.m1.h0;
import f.i.a.a.s0;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* compiled from: DefaultSsChunkSource.java */
/* loaded from: classes.dex */
public class b implements c {
    public final d0 a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final e[] f5230c;

    /* renamed from: d  reason: collision with root package name */
    public final m f5231d;

    /* renamed from: e  reason: collision with root package name */
    public j f5232e;

    /* renamed from: f  reason: collision with root package name */
    public f.i.a.a.h1.v0.e.a f5233f;

    /* renamed from: g  reason: collision with root package name */
    public int f5234g;

    /* renamed from: h  reason: collision with root package name */
    public IOException f5235h;

    /* compiled from: DefaultSsChunkSource.java */
    /* loaded from: classes.dex */
    public static final class a implements c.a {
        public final m.a a;

        public a(m.a aVar) {
            this.a = aVar;
        }

        @Override // f.i.a.a.h1.v0.c.a
        public c a(d0 d0Var, f.i.a.a.h1.v0.e.a aVar, int i2, j jVar, @Nullable i0 i0Var) {
            m createDataSource = this.a.createDataSource();
            if (i0Var != null) {
                createDataSource.c(i0Var);
            }
            return new b(d0Var, aVar, i2, jVar, createDataSource);
        }
    }

    /* compiled from: DefaultSsChunkSource.java */
    /* renamed from: f.i.a.a.h1.v0.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0076b extends f.i.a.a.h1.s0.b {
        public C0076b(a.b bVar, int i2, int i3) {
            super(i3, bVar.f5262k - 1);
        }
    }

    public b(d0 d0Var, f.i.a.a.h1.v0.e.a aVar, int i2, j jVar, m mVar) {
        this.a = d0Var;
        this.f5233f = aVar;
        this.b = i2;
        this.f5232e = jVar;
        this.f5231d = mVar;
        a.b bVar = aVar.f5250f[i2];
        this.f5230c = new e[jVar.length()];
        for (int i3 = 0; i3 < this.f5230c.length; i3++) {
            int e2 = jVar.e(i3);
            b0 b0Var = bVar.f5261j[e2];
            this.f5230c[i3] = new e(new f.i.a.a.b1.u.d(3, null, new f.i.a.a.b1.u.j(e2, bVar.a, bVar.f5254c, -9223372036854775807L, aVar.f5251g, b0Var, 0, b0Var.f4100l != null ? aVar.f5249e.f5253c : null, bVar.a == 2 ? 4 : 0, null, null), null, Collections.emptyList(), null), bVar.a, b0Var);
        }
    }

    @Override // f.i.a.a.h1.s0.h
    public void a() throws IOException {
        IOException iOException = this.f5235h;
        if (iOException == null) {
            this.a.a();
            return;
        }
        throw iOException;
    }

    @Override // f.i.a.a.h1.s0.h
    public long b(long j2, s0 s0Var) {
        a.b bVar = this.f5233f.f5250f[this.b];
        int f2 = h0.f(bVar.o, j2, true, true);
        long[] jArr = bVar.o;
        long j3 = jArr[f2];
        return h0.g0(j2, s0Var, j3, (j3 >= j2 || f2 >= bVar.f5262k - 1) ? j3 : jArr[f2 + 1]);
    }

    @Override // f.i.a.a.h1.v0.c
    public void c(j jVar) {
        this.f5232e = jVar;
    }

    @Override // f.i.a.a.h1.s0.h
    public int e(long j2, List<? extends l> list) {
        if (this.f5235h == null && this.f5232e.length() >= 2) {
            return this.f5232e.f(j2, list);
        }
        return list.size();
    }

    @Override // f.i.a.a.h1.s0.h
    public void f(f.i.a.a.h1.s0.d dVar) {
    }

    @Override // f.i.a.a.h1.v0.c
    public void g(f.i.a.a.h1.v0.e.a aVar) {
        a.b[] bVarArr = this.f5233f.f5250f;
        int i2 = this.b;
        a.b bVar = bVarArr[i2];
        int i3 = bVar.f5262k;
        a.b bVar2 = aVar.f5250f[i2];
        if (i3 != 0 && bVar2.f5262k != 0) {
            int i4 = i3 - 1;
            long c2 = bVar.c(i4) + bVar.o[i4];
            long j2 = bVar2.o[0];
            if (c2 <= j2) {
                this.f5234g += i3;
            } else {
                this.f5234g = bVar.d(j2) + this.f5234g;
            }
        } else {
            this.f5234g += i3;
        }
        this.f5233f = aVar;
    }

    @Override // f.i.a.a.h1.s0.h
    public final void h(long j2, long j3, List<? extends l> list, f fVar) {
        f.i.a.a.h1.v0.e.a aVar;
        int c2;
        long c3;
        if (this.f5235h != null) {
            return;
        }
        a.b bVar = this.f5233f.f5250f[this.b];
        if (bVar.f5262k == 0) {
            fVar.b = !aVar.f5248d;
            return;
        }
        if (list.isEmpty()) {
            c2 = h0.f(bVar.o, j3, true, true);
        } else {
            c2 = (int) (list.get(list.size() - 1).c() - this.f5234g);
            if (c2 < 0) {
                this.f5235h = new p();
                return;
            }
        }
        int i2 = c2;
        if (i2 >= bVar.f5262k) {
            fVar.b = !this.f5233f.f5248d;
            return;
        }
        long j4 = j3 - j2;
        f.i.a.a.h1.v0.e.a aVar2 = this.f5233f;
        if (aVar2.f5248d) {
            a.b bVar2 = aVar2.f5250f[this.b];
            int i3 = bVar2.f5262k - 1;
            c3 = (bVar2.c(i3) + bVar2.o[i3]) - j2;
        } else {
            c3 = -9223372036854775807L;
        }
        int length = this.f5232e.length();
        f.i.a.a.h1.s0.m[] mVarArr = new f.i.a.a.h1.s0.m[length];
        for (int i4 = 0; i4 < length; i4++) {
            mVarArr[i4] = new C0076b(bVar, this.f5232e.e(i4), i2);
        }
        this.f5232e.h(j2, j4, c3, list, mVarArr);
        long j5 = bVar.o[i2];
        long c4 = bVar.c(i2) + j5;
        long j6 = list.isEmpty() ? j3 : -9223372036854775807L;
        int m2 = this.f5232e.m();
        fVar.a = new i(this.f5231d, new f.i.a.a.l1.p(bVar.a(this.f5232e.e(m2), i2), 0L, -1L, null), this.f5232e.k(), this.f5232e.l(), this.f5232e.p(), j5, c4, j6, -9223372036854775807L, this.f5234g + i2, 1, j5, this.f5230c[m2]);
    }

    @Override // f.i.a.a.h1.s0.h
    public boolean i(f.i.a.a.h1.s0.d dVar, boolean z, Exception exc, long j2) {
        if (z && j2 != -9223372036854775807L) {
            j jVar = this.f5232e;
            if (jVar.a(jVar.g(dVar.f4951c), j2)) {
                return true;
            }
        }
        return false;
    }
}
