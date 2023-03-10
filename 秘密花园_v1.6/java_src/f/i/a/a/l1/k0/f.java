package f.i.a.a.l1.k0;

import androidx.annotation.Nullable;
import f.i.a.a.l1.k;
import f.i.a.a.l1.k0.e;
import f.i.a.a.l1.m;
/* compiled from: CacheDataSourceFactory.java */
/* loaded from: classes.dex */
public final class f implements m.a {
    public final b a;
    public final m.a b;

    /* renamed from: c  reason: collision with root package name */
    public final m.a f5643c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5644d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final k.a f5645e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final e.a f5646f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final j f5647g;

    public f(b bVar, m.a aVar, m.a aVar2, @Nullable k.a aVar3, int i2, @Nullable e.a aVar4, @Nullable j jVar) {
        this.a = bVar;
        this.b = aVar;
        this.f5643c = aVar2;
        this.f5645e = aVar3;
        this.f5644d = i2;
        this.f5646f = aVar4;
        this.f5647g = jVar;
    }

    @Override // f.i.a.a.l1.m.a
    /* renamed from: a */
    public e createDataSource() {
        c cVar;
        b bVar = this.a;
        f.i.a.a.l1.m createDataSource = this.b.createDataSource();
        f.i.a.a.l1.m createDataSource2 = this.f5643c.createDataSource();
        k.a aVar = this.f5645e;
        if (aVar == null) {
            cVar = null;
        } else {
            d dVar = (d) aVar;
            cVar = new c(dVar.a, dVar.b, dVar.f5631c);
        }
        return new e(bVar, createDataSource, createDataSource2, cVar, this.f5644d, this.f5646f, this.f5647g);
    }
}
