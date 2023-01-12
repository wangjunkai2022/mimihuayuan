package f.i.a.a.h1.v0;

import androidx.annotation.Nullable;
import f.i.a.a.e1.c0;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.f0;
import f.i.a.a.h1.k0;
import f.i.a.a.h1.l0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.s0.g;
import f.i.a.a.h1.t;
import f.i.a.a.h1.v;
import f.i.a.a.h1.v0.c;
import f.i.a.a.h1.v0.e.a;
import f.i.a.a.j1.j;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.e;
import f.i.a.a.l1.i0;
import f.i.a.a.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SsMediaPeriod.java */
/* loaded from: classes.dex */
public final class d implements d0, l0.a<g<c>> {
    public final c.a a;
    @Nullable
    public final i0 b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.d0 f5227c;

    /* renamed from: d  reason: collision with root package name */
    public final b0 f5228d;

    /* renamed from: e  reason: collision with root package name */
    public final f0.a f5229e;

    /* renamed from: f  reason: collision with root package name */
    public final e f5230f;

    /* renamed from: g  reason: collision with root package name */
    public final p0 f5231g;

    /* renamed from: h  reason: collision with root package name */
    public final v f5232h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public d0.a f5233i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.h1.v0.e.a f5234j;

    /* renamed from: k  reason: collision with root package name */
    public g<c>[] f5235k;

    /* renamed from: l  reason: collision with root package name */
    public l0 f5236l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5237m;

    public d(f.i.a.a.h1.v0.e.a aVar, c.a aVar2, @Nullable i0 i0Var, v vVar, b0 b0Var, f0.a aVar3, f.i.a.a.l1.d0 d0Var, e eVar) {
        this.f5234j = aVar;
        this.a = aVar2;
        this.b = i0Var;
        this.f5227c = d0Var;
        this.f5228d = b0Var;
        this.f5229e = aVar3;
        this.f5230f = eVar;
        this.f5232h = vVar;
        o0[] o0VarArr = new o0[aVar.f5241f.length];
        int i2 = 0;
        while (true) {
            a.b[] bVarArr = aVar.f5241f;
            if (i2 >= bVarArr.length) {
                break;
            }
            o0VarArr[i2] = new o0(bVarArr[i2].f5252j);
            i2++;
        }
        this.f5231g = new p0(o0VarArr);
        g<c>[] gVarArr = new g[0];
        this.f5235k = gVarArr;
        if (vVar != null) {
            this.f5236l = new t(gVarArr);
            aVar3.y();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        g<c>[] gVarArr;
        for (g<c> gVar : this.f5235k) {
            if (gVar.a == 2) {
                return gVar.f4962e.b(j2, s0Var);
            }
        }
        return j2;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        return this.f5236l.c();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        return this.f5236l.e();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        return this.f5236l.f(j2);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
        this.f5236l.g(j2);
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(g<c> gVar) {
        this.f5233i.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public long j(j[] jVarArr, boolean[] zArr, k0[] k0VarArr, boolean[] zArr2, long j2) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jVarArr.length; i2++) {
            if (k0VarArr[i2] != null) {
                g gVar = (g) k0VarArr[i2];
                if (jVarArr[i2] != null && zArr[i2]) {
                    ((c) gVar.f4962e).c(jVarArr[i2]);
                    arrayList.add(gVar);
                } else {
                    gVar.B(null);
                    k0VarArr[i2] = null;
                }
            }
            if (k0VarArr[i2] == null && jVarArr[i2] != null) {
                j jVar = jVarArr[i2];
                int a = this.f5231g.a(jVar.j());
                g gVar2 = new g(this.f5234j.f5241f[a].a, null, null, this.a.a(this.f5227c, this.f5234j, a, jVar, this.b), this, this.f5230f, j2, this.f5228d, this.f5229e);
                arrayList.add(gVar2);
                k0VarArr[i2] = gVar2;
                zArr2[i2] = true;
            }
        }
        g<c>[] gVarArr = new g[arrayList.size()];
        this.f5235k = gVarArr;
        arrayList.toArray(gVarArr);
        v vVar = this.f5232h;
        g<c>[] gVarArr2 = this.f5235k;
        if (vVar != null) {
            this.f5236l = new t(gVarArr2);
            return j2;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (this.f5237m) {
            return -9223372036854775807L;
        }
        this.f5229e.B();
        this.f5237m = true;
        return -9223372036854775807L;
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.f5233i = aVar;
        aVar.h(this);
    }

    @Override // f.i.a.a.h1.d0
    public List<c0> n(List<j> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            j jVar = list.get(i2);
            int a = this.f5231g.a(jVar.j());
            for (int i3 = 0; i3 < jVar.length(); i3++) {
                arrayList.add(new c0(0, a, jVar.e(i3)));
            }
        }
        return arrayList;
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return this.f5231g;
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        this.f5227c.a();
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        for (g<c> gVar : this.f5235k) {
            gVar.t(j2, z);
        }
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        for (g<c> gVar : this.f5235k) {
            gVar.C(j2);
        }
        return j2;
    }
}
