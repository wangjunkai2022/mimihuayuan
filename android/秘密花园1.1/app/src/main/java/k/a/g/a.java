package k.a.g;

import k.a.e.l;

/* compiled from: Collector.java */
/* loaded from: classes.dex */
public class a implements f {
    public final k.a.e.h a;
    public final c b;

    /* renamed from: c  reason: collision with root package name */
    public final d f7127c;

    public a(k.a.e.h hVar, c cVar, d dVar) {
        this.a = hVar;
        this.b = cVar;
        this.f7127c = dVar;
    }

    @Override // k.a.g.f
    public void a(l lVar, int i2) {
        if (lVar instanceof k.a.e.h) {
            k.a.e.h hVar = (k.a.e.h) lVar;
            if (this.f7127c.a(this.a, hVar)) {
                this.b.add(hVar);
            }
        }
    }

    @Override // k.a.g.f
    public void b(l lVar, int i2) {
    }
}
