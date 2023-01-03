package i;

/* compiled from: RequestBody.kt */
/* loaded from: classes.dex */
public final class f0 extends g0 {
    public final /* synthetic */ j.k b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ z f6439c;

    public f0(j.k kVar, z zVar) {
        this.b = kVar;
        this.f6439c = zVar;
    }

    @Override // i.g0
    public long a() {
        return this.b.b();
    }

    @Override // i.g0
    public z b() {
        return this.f6439c;
    }

    @Override // i.g0
    public void e(j.i iVar) {
        if (iVar != null) {
            iVar.s(this.b);
        } else {
            h.o.c.g.f("sink");
            throw null;
        }
    }
}
