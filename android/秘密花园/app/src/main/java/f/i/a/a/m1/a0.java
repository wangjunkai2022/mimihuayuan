package f.i.a.a.m1;

import f.i.a.a.j0;
import f.i.a.a.q;

/* compiled from: StandaloneMediaClock.java */
/* loaded from: classes.dex */
public final class a0 implements q {
    public final h a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public long f5656c;

    /* renamed from: d  reason: collision with root package name */
    public long f5657d;

    /* renamed from: e  reason: collision with root package name */
    public j0 f5658e = j0.f5383e;

    public a0(h hVar) {
        this.a = hVar;
    }

    public void a(long j2) {
        this.f5656c = j2;
        if (this.b) {
            this.f5657d = this.a.c();
        }
    }

    @Override // f.i.a.a.m1.q
    public j0 e() {
        return this.f5658e;
    }

    @Override // f.i.a.a.m1.q
    public j0 s(j0 j0Var) {
        if (this.b) {
            a(v());
        }
        this.f5658e = j0Var;
        return j0Var;
    }

    @Override // f.i.a.a.m1.q
    public long v() {
        long j2 = this.f5656c;
        if (!this.b) {
            return j2;
        }
        long c2 = this.a.c() - this.f5657d;
        j0 j0Var = this.f5658e;
        if (j0Var.a == 1.0f) {
            return j2 + q.a(c2);
        }
        return j2 + (c2 * ((long) j0Var.f5385d));
    }
}
