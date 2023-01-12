package h.m.e.a;

import h.o.c.g;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public abstract class c extends a {
    public transient h.m.a<Object> b;

    /* renamed from: c  reason: collision with root package name */
    public final h.m.c f6402c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(h.m.a<Object> aVar) {
        super(aVar);
        h.m.c context = aVar != null ? aVar.getContext() : null;
        this.f6402c = context;
    }

    @Override // h.m.a
    public h.m.c getContext() {
        h.m.c cVar = this.f6402c;
        if (cVar != null) {
            return cVar;
        }
        g.e();
        throw null;
    }
}
