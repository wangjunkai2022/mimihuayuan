package f.i.a.a;

import androidx.annotation.Nullable;
import f.i.a.a.m1.a0;
import f.i.a.a.m1.h;
import f.i.a.a.m1.q;

/* compiled from: DefaultMediaClock.java */
/* loaded from: classes.dex */
public final class u implements q {
    public final a0 a;
    public final a b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public p0 f5793c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public q f5794d;

    /* compiled from: DefaultMediaClock.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    public u(a aVar, h hVar) {
        this.b = aVar;
        this.a = new a0(hVar);
    }

    public final void a() {
        this.a.a(this.f5794d.v());
        j0 e2 = this.f5794d.e();
        if (!e2.equals(this.a.f5658e)) {
            a0 a0Var = this.a;
            if (a0Var.b) {
                a0Var.a(a0Var.v());
            }
            a0Var.f5658e = e2;
            ((z) this.b).f5973g.b(17, e2).sendToTarget();
        }
    }

    public final boolean b() {
        p0 p0Var = this.f5793c;
        return p0Var != null && !p0Var.a() && (this.f5793c.d() || !this.f5793c.g());
    }

    @Override // f.i.a.a.m1.q
    public j0 e() {
        q qVar = this.f5794d;
        if (qVar != null) {
            return qVar.e();
        }
        return this.a.f5658e;
    }

    @Override // f.i.a.a.m1.q
    public j0 s(j0 j0Var) {
        q qVar = this.f5794d;
        if (qVar != null) {
            j0Var = qVar.s(j0Var);
        }
        this.a.s(j0Var);
        ((z) this.b).f5973g.b(17, j0Var).sendToTarget();
        return j0Var;
    }

    @Override // f.i.a.a.m1.q
    public long v() {
        if (b()) {
            return this.f5794d.v();
        }
        return this.a.v();
    }
}
