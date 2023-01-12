package i.m0.d;

import i.v;
import java.security.cert.Certificate;
import java.util.List;

/* compiled from: RealConnection.kt */
/* loaded from: classes.dex */
public final class f extends h.o.c.h implements h.o.b.a<List<? extends Certificate>> {
    public final /* synthetic */ i.h a;
    public final /* synthetic */ v b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ i.a f6626c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i.h hVar, v vVar, i.a aVar) {
        super(0);
        this.a = hVar;
        this.b = vVar;
        this.f6626c = aVar;
    }

    @Override // h.o.b.a
    public List<? extends Certificate> a() {
        i.m0.k.c cVar = this.a.b;
        if (cVar != null) {
            return cVar.a(this.b.b(), this.f6626c.a.f6849e);
        }
        h.o.c.g.e();
        throw null;
    }
}
