package i.m0.d;

import i.v;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RealConnection.kt */
/* loaded from: classes.dex */
public final class g extends h.o.c.h implements h.o.b.a<List<? extends X509Certificate>> {
    public final /* synthetic */ h a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar) {
        super(0);
        this.a = hVar;
    }

    @Override // h.o.b.a
    public List<? extends X509Certificate> a() {
        v vVar = this.a.f6637d;
        if (vVar == null) {
            h.o.c.g.e();
            throw null;
        }
        List<Certificate> b = vVar.b();
        ArrayList arrayList = new ArrayList(c.a.a.b.g.h.A(b, 10));
        for (Certificate certificate : b) {
            if (certificate == null) {
                throw new h.f("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
