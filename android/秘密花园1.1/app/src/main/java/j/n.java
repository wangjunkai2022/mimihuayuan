package j;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout.kt */
/* loaded from: classes.dex */
public class n extends b0 {

    /* renamed from: e  reason: collision with root package name */
    public b0 f6981e;

    public n(b0 b0Var) {
        if (b0Var != null) {
            this.f6981e = b0Var;
        } else {
            h.o.c.g.f("delegate");
            throw null;
        }
    }

    @Override // j.b0
    public b0 a() {
        return this.f6981e.a();
    }

    @Override // j.b0
    public b0 b() {
        return this.f6981e.b();
    }

    @Override // j.b0
    public long c() {
        return this.f6981e.c();
    }

    @Override // j.b0
    public b0 d(long j2) {
        return this.f6981e.d(j2);
    }

    @Override // j.b0
    public boolean e() {
        return this.f6981e.e();
    }

    @Override // j.b0
    public void f() throws IOException {
        this.f6981e.f();
    }

    @Override // j.b0
    public b0 g(long j2, TimeUnit timeUnit) {
        if (timeUnit != null) {
            return this.f6981e.g(j2, timeUnit);
        }
        h.o.c.g.f("unit");
        throw null;
    }
}
