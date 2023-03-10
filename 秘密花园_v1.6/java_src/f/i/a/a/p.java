package f.i.a.a;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: BaseRenderer.java */
/* loaded from: classes.dex */
public abstract class p implements p0 {
    public final int a;
    public q0 b;

    /* renamed from: c  reason: collision with root package name */
    public int f5843c;

    /* renamed from: d  reason: collision with root package name */
    public int f5844d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.h1.k0 f5845e;

    /* renamed from: f  reason: collision with root package name */
    public b0[] f5846f;

    /* renamed from: g  reason: collision with root package name */
    public long f5847g;

    /* renamed from: h  reason: collision with root package name */
    public long f5848h = Long.MIN_VALUE;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5849i;

    public p(int i2) {
        this.a = i2;
    }

    public static boolean G(@Nullable f.i.a.a.z0.g<?> gVar, @Nullable f.i.a.a.z0.e eVar) {
        if (eVar == null) {
            return true;
        }
        if (gVar == null) {
            return false;
        }
        if (!((ArrayList) f.i.a.a.z0.d.a(eVar, null, true)).isEmpty() || (eVar.f6081d == 1 && eVar.a[0].b(q.b))) {
            String str = eVar.f6080c;
            if (str == null || "cenc".equals(str)) {
                return true;
            }
            if ((!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) || f.i.a.a.m1.h0.a >= 25) {
                return true;
            }
        }
        return false;
    }

    public void A() {
    }

    public void B() throws w {
    }

    public void C() throws w {
    }

    public abstract void D(b0[] b0VarArr, long j2) throws w;

    public final int E(c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
        int i2 = this.f5845e.i(c0Var, eVar, z);
        if (i2 == -4) {
            if (eVar.h()) {
                this.f5848h = Long.MIN_VALUE;
                return this.f5849i ? -4 : -3;
            }
            long j2 = eVar.f6040d + this.f5847g;
            eVar.f6040d = j2;
            this.f5848h = Math.max(this.f5848h, j2);
        } else if (i2 == -5) {
            b0 b0Var = c0Var.a;
            long j3 = b0Var.f4101m;
            if (j3 != RecyclerView.FOREVER_NS) {
                c0Var.a = b0Var.f(j3 + this.f5847g);
            }
        }
        return i2;
    }

    public abstract int F(b0 b0Var) throws w;

    public int H() throws w {
        return 0;
    }

    @Override // f.i.a.a.p0
    public final void b() {
        c.a.a.b.g.h.v(this.f5844d == 1);
        this.f5844d = 0;
        this.f5845e = null;
        this.f5846f = null;
        this.f5849i = false;
        x();
    }

    @Override // f.i.a.a.p0
    public final int c() {
        return this.f5844d;
    }

    @Override // f.i.a.a.p0
    public final void f(int i2) {
        this.f5843c = i2;
    }

    @Override // f.i.a.a.p0
    public final boolean g() {
        return this.f5848h == Long.MIN_VALUE;
    }

    @Override // f.i.a.a.p0
    public final void h(q0 q0Var, b0[] b0VarArr, f.i.a.a.h1.k0 k0Var, long j2, boolean z, long j3) throws w {
        c.a.a.b.g.h.v(this.f5844d == 0);
        this.b = q0Var;
        this.f5844d = 1;
        y(z);
        c.a.a.b.g.h.v(!this.f5849i);
        this.f5845e = k0Var;
        this.f5848h = j3;
        this.f5846f = b0VarArr;
        this.f5847g = j3;
        D(b0VarArr, j3);
        z(j2, z);
    }

    @Override // f.i.a.a.n0.b
    public void j(int i2, @Nullable Object obj) throws w {
    }

    @Override // f.i.a.a.p0
    public final f.i.a.a.h1.k0 k() {
        return this.f5845e;
    }

    @Override // f.i.a.a.p0
    public /* synthetic */ void l(float f2) throws w {
        o0.a(this, f2);
    }

    @Override // f.i.a.a.p0
    public final void m() {
        this.f5849i = true;
    }

    @Override // f.i.a.a.p0
    public final void n() throws IOException {
        this.f5845e.a();
    }

    @Override // f.i.a.a.p0
    public final long o() {
        return this.f5848h;
    }

    @Override // f.i.a.a.p0
    public final void p(long j2) throws w {
        this.f5849i = false;
        this.f5848h = j2;
        z(j2, false);
    }

    @Override // f.i.a.a.p0
    public final boolean q() {
        return this.f5849i;
    }

    @Override // f.i.a.a.p0
    public f.i.a.a.m1.q r() {
        return null;
    }

    @Override // f.i.a.a.p0
    public final void reset() {
        c.a.a.b.g.h.v(this.f5844d == 0);
        A();
    }

    @Override // f.i.a.a.p0
    public final void start() throws w {
        c.a.a.b.g.h.v(this.f5844d == 1);
        this.f5844d = 2;
        B();
    }

    @Override // f.i.a.a.p0
    public final void stop() throws w {
        c.a.a.b.g.h.v(this.f5844d == 2);
        this.f5844d = 1;
        C();
    }

    @Override // f.i.a.a.p0
    public final int t() {
        return this.a;
    }

    @Override // f.i.a.a.p0
    public final p u() {
        return this;
    }

    @Override // f.i.a.a.p0
    public final void w(b0[] b0VarArr, f.i.a.a.h1.k0 k0Var, long j2) throws w {
        c.a.a.b.g.h.v(!this.f5849i);
        this.f5845e = k0Var;
        this.f5848h = j2;
        this.f5846f = b0VarArr;
        this.f5847g = j2;
        D(b0VarArr, j2);
    }

    public abstract void x();

    public void y(boolean z) throws w {
    }

    public abstract void z(long j2, boolean z) throws w;
}
