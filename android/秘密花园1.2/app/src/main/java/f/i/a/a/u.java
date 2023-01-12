package f.i.a.a;

import androidx.annotation.Nullable;

/* compiled from: DefaultMediaClock.java */
/* loaded from: classes.dex */
public final class u implements f.i.a.a.m1.q {
    public final f.i.a.a.m1.a0 a;
    public final a b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public p0 f5868c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public f.i.a.a.m1.q f5869d;

    /* compiled from: DefaultMediaClock.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    public u(a aVar, f.i.a.a.m1.h hVar) {
        this.b = aVar;
        this.a = new f.i.a.a.m1.a0(hVar);
    }

    public final void a() {
        this.a.a(this.f5869d.v());
        j0 e2 = this.f5869d.e();
        if (e2.equals(this.a.f5733e)) {
            return;
        }
        f.i.a.a.m1.a0 a0Var = this.a;
        if (a0Var.b) {
            a0Var.a(a0Var.v());
        }
        a0Var.f5733e = e2;
        ((z) this.b).f6048g.b(17, e2).sendToTarget();
    }

    public final boolean b() {
        p0 p0Var = this.f5868c;
        return (p0Var == null || p0Var.a() || (!this.f5868c.d() && this.f5868c.g())) ? false : true;
    }

    @Override // f.i.a.a.m1.q
    public j0 e() {
        f.i.a.a.m1.q qVar = this.f5869d;
        return qVar != null ? qVar.e() : this.a.f5733e;
    }

    @Override // f.i.a.a.m1.q
    public j0 s(j0 j0Var) {
        f.i.a.a.m1.q qVar = this.f5869d;
        if (qVar != null) {
            j0Var = qVar.s(j0Var);
        }
        this.a.s(j0Var);
        ((z) this.b).f6048g.b(17, j0Var).sendToTarget();
        return j0Var;
    }

    @Override // f.i.a.a.m1.q
    public long v() {
        if (b()) {
            return this.f5869d.v();
        }
        return this.a.v();
    }
}
