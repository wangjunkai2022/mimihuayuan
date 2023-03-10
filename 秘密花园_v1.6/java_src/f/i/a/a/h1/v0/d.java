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
    public final f.i.a.a.l1.d0 f5236c;

    /* renamed from: d  reason: collision with root package name */
    public final b0 f5237d;

    /* renamed from: e  reason: collision with root package name */
    public final f0.a f5238e;

    /* renamed from: f  reason: collision with root package name */
    public final e f5239f;

    /* renamed from: g  reason: collision with root package name */
    public final p0 f5240g;

    /* renamed from: h  reason: collision with root package name */
    public final v f5241h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public d0.a f5242i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.h1.v0.e.a f5243j;

    /* renamed from: k  reason: collision with root package name */
    public g<c>[] f5244k;

    /* renamed from: l  reason: collision with root package name */
    public l0 f5245l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5246m;

    public d(f.i.a.a.h1.v0.e.a aVar, c.a aVar2, @Nullable i0 i0Var, v vVar, b0 b0Var, f0.a aVar3, f.i.a.a.l1.d0 d0Var, e eVar) {
        this.f5243j = aVar;
        this.a = aVar2;
        this.b = i0Var;
        this.f5236c = d0Var;
        this.f5237d = b0Var;
        this.f5238e = aVar3;
        this.f5239f = eVar;
        this.f5241h = vVar;
        o0[] o0VarArr = new o0[aVar.f5250f.length];
        int i2 = 0;
        while (true) {
            a.b[] bVarArr = aVar.f5250f;
            if (i2 >= bVarArr.length) {
                break;
            }
            o0VarArr[i2] = new o0(bVarArr[i2].f5261j);
            i2++;
        }
        this.f5240g = new p0(o0VarArr);
        g<c>[] gVarArr = new g[0];
        this.f5244k = gVarArr;
        if (vVar != null) {
            this.f5245l = new t(gVarArr);
            aVar3.y();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        g<c>[] gVarArr;
        for (g<c> gVar : this.f5244k) {
            if (gVar.a == 2) {
                return gVar.f4971e.b(j2, s0Var);
            }
        }
        return j2;
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        return this.f5245l.c();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        return this.f5245l.e();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        return this.f5245l.f(j2);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
        this.f5245l.g(j2);
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(g<c> gVar) {
        this.f5242i.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public long j(j[] jVarArr, boolean[] zArr, k0[] k0VarArr, boolean[] zArr2, long j2) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jVarArr.length; i2++) {
            if (k0VarArr[i2] != null) {
                g gVar = (g) k0VarArr[i2];
                if (jVarArr[i2] != null && zArr[i2]) {
                    ((c) gVar.f4971e).c(jVarArr[i2]);
                    arrayList.add(gVar);
                } else {
                    gVar.B(null);
                    k0VarArr[i2] = null;
                }
            }
            if (k0VarArr[i2] == null && jVarArr[i2] != null) {
                j jVar = jVarArr[i2];
                int a = this.f5240g.a(jVar.j());
                g gVar2 = new g(this.f5243j.f5250f[a].a, null, null, this.a.a(this.f5236c, this.f5243j, a, jVar, this.b), this, this.f5239f, j2, this.f5237d, this.f5238e);
                arrayList.add(gVar2);
                k0VarArr[i2] = gVar2;
                zArr2[i2] = true;
            }
        }
        g<c>[] gVarArr = new g[arrayList.size()];
        this.f5244k = gVarArr;
        arrayList.toArray(gVarArr);
        v vVar = this.f5241h;
        g<c>[] gVarArr2 = this.f5244k;
        if (vVar != null) {
            this.f5245l = new t(gVarArr2);
            return j2;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        if (this.f5246m) {
            return -9223372036854775807L;
        }
        this.f5238e.B();
        this.f5246m = true;
        return -9223372036854775807L;
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.f5242i = aVar;
        aVar.h(this);
    }

    @Override // f.i.a.a.h1.d0
    public List<c0> n(List<j> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            j jVar = list.get(i2);
            int a = this.f5240g.a(jVar.j());
            for (int i3 = 0; i3 < jVar.length(); i3++) {
                arrayList.add(new c0(0, a, jVar.e(i3)));
            }
        }
        return arrayList;
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return this.f5240g;
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        this.f5236c.a();
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        for (g<c> gVar : this.f5244k) {
            gVar.t(j2, z);
        }
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        for (g<c> gVar : this.f5244k) {
            gVar.C(j2);
        }
        return j2;
    }
}
