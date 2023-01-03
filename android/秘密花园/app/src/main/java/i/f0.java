package i;

import h.o.c.g;
import j.i;
import j.k;

/* compiled from: RequestBody.kt */
/* loaded from: classes.dex */
public final class f0 extends g0 {
    public final /* synthetic */ k b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ z f6439c;

    public f0(k kVar, z zVar) {
        this.b = kVar;
        this.f6439c = zVar;
    }

    @Override // i.g0
    public long a() {
        return (long) this.b.b();
    }

    @Override // i.g0
    public z b() {
        return this.f6439c;
    }

    @Override // i.g0
    public void e(i iVar) {
        if (iVar != null) {
            iVar.s(this.b);
        } else {
            g.f("sink");
            throw null;
        }
    }
}
