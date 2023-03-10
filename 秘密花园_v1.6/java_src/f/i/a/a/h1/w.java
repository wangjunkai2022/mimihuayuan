package f.i.a.a.h1;

import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.s0;
import java.io.IOException;
import java.util.List;
/* compiled from: DeferredMediaPeriod.java */
/* loaded from: classes.dex */
public final class w implements d0, d0.a {
    public final e0 a;
    public final e0.a b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.e f5289c;

    /* renamed from: d  reason: collision with root package name */
    public d0 f5290d;

    /* renamed from: e  reason: collision with root package name */
    public d0.a f5291e;

    /* renamed from: f  reason: collision with root package name */
    public long f5292f;

    /* renamed from: g  reason: collision with root package name */
    public long f5293g = -9223372036854775807L;

    public w(e0 e0Var, e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        this.b = aVar;
        this.f5289c = eVar;
        this.a = e0Var;
        this.f5292f = j2;
    }

    public void a(e0.a aVar) {
        long j2 = this.f5292f;
        long j3 = this.f5293g;
        if (j3 != -9223372036854775807L) {
            j2 = j3;
        }
        d0 c2 = this.a.c(aVar, this.f5289c, j2);
        this.f5290d = c2;
        if (this.f5291e != null) {
            c2.m(this, j2);
        }
    }

    @Override // f.i.a.a.h1.d0
    public long b(long j2, s0 s0Var) {
        return this.f5290d.b(j2, s0Var);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long c() {
        return this.f5290d.c();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public long e() {
        return this.f5290d.e();
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public boolean f(long j2) {
        d0 d0Var = this.f5290d;
        return d0Var != null && d0Var.f(j2);
    }

    @Override // f.i.a.a.h1.d0, f.i.a.a.h1.l0
    public void g(long j2) {
        this.f5290d.g(j2);
    }

    @Override // f.i.a.a.h1.d0.a
    public void h(d0 d0Var) {
        this.f5291e.h(this);
    }

    @Override // f.i.a.a.h1.l0.a
    public void i(d0 d0Var) {
        this.f5291e.i(this);
    }

    @Override // f.i.a.a.h1.d0
    public long j(f.i.a.a.j1.j[] jVarArr, boolean[] zArr, k0[] k0VarArr, boolean[] zArr2, long j2) {
        long j3;
        long j4 = this.f5293g;
        if (j4 == -9223372036854775807L || j2 != this.f5292f) {
            j3 = j2;
        } else {
            this.f5293g = -9223372036854775807L;
            j3 = j4;
        }
        return this.f5290d.j(jVarArr, zArr, k0VarArr, zArr2, j3);
    }

    @Override // f.i.a.a.h1.d0
    public long l() {
        return this.f5290d.l();
    }

    @Override // f.i.a.a.h1.d0
    public void m(d0.a aVar, long j2) {
        this.f5291e = aVar;
        d0 d0Var = this.f5290d;
        if (d0Var != null) {
            long j3 = this.f5292f;
            long j4 = this.f5293g;
            if (j4 != -9223372036854775807L) {
                j3 = j4;
            }
            d0Var.m(this, j3);
        }
    }

    @Override // f.i.a.a.h1.d0
    public /* synthetic */ List<f.i.a.a.e1.c0> n(List<f.i.a.a.j1.j> list) {
        return c0.a(this, list);
    }

    @Override // f.i.a.a.h1.d0
    public p0 o() {
        return this.f5290d.o();
    }

    @Override // f.i.a.a.h1.d0
    public void s() throws IOException {
        try {
            if (this.f5290d != null) {
                this.f5290d.s();
            } else {
                this.a.b();
            }
        } catch (IOException e2) {
            throw e2;
        }
    }

    @Override // f.i.a.a.h1.d0
    public void t(long j2, boolean z) {
        this.f5290d.t(j2, z);
    }

    @Override // f.i.a.a.h1.d0
    public long u(long j2) {
        return this.f5290d.u(j2);
    }
}
