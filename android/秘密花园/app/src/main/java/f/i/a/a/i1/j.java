package f.i.a.a.i1;

import c.a.a.b.g.h;
import f.i.a.a.y0.f;
import java.util.List;

/* compiled from: SubtitleOutputBuffer.java */
/* loaded from: classes.dex */
public abstract class j extends f implements e {

    /* renamed from: c  reason: collision with root package name */
    public e f5240c;

    /* renamed from: d  reason: collision with root package name */
    public long f5241d;

    @Override // f.i.a.a.i1.e
    public int a(long j2) {
        e eVar = this.f5240c;
        h.t(eVar);
        return eVar.a(j2 - this.f5241d);
    }

    @Override // f.i.a.a.i1.e
    public long b(int i2) {
        e eVar = this.f5240c;
        h.t(eVar);
        return eVar.b(i2) + this.f5241d;
    }

    @Override // f.i.a.a.i1.e
    public List<b> c(long j2) {
        e eVar = this.f5240c;
        h.t(eVar);
        return eVar.c(j2 - this.f5241d);
    }

    @Override // f.i.a.a.i1.e
    public int d() {
        e eVar = this.f5240c;
        h.t(eVar);
        return eVar.d();
    }
}
