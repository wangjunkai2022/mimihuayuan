package i.m0.d;

import h.o.b.a;
import h.o.c.g;
import h.o.c.h;
import i.m0.k.c;
import i.v;
import java.security.cert.Certificate;
import java.util.List;

/* compiled from: RealConnection.kt */
/* loaded from: classes.dex */
public final class f extends h implements a<List<? extends Certificate>> {
    public final /* synthetic */ i.h a;
    public final /* synthetic */ v b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ i.a f6551c;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public f(i.h hVar, v vVar, i.a aVar) {
        super(0);
        this.a = hVar;
        this.b = vVar;
        this.f6551c = aVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // h.o.b.a
    public List<? extends Certificate> a() {
        c cVar = this.a.b;
        if (cVar != null) {
            return cVar.a(this.b.b(), this.f6551c.a.f6774e);
        }
        g.e();
        throw null;
    }
}
