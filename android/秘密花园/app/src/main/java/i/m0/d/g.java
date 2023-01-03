package i.m0.d;

import h.f;
import h.o.b.a;
import h.o.c.h;
import i.v;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RealConnection.kt */
/* loaded from: classes.dex */
public final class g extends h implements a<List<? extends X509Certificate>> {
    public final /* synthetic */ h a;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar) {
        super(0);
        this.a = hVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // h.o.b.a
    public List<? extends X509Certificate> a() {
        v vVar = this.a.f6553d;
        if (vVar != null) {
            List<Certificate> b = vVar.b();
            ArrayList arrayList = new ArrayList(c.a.a.b.g.h.A(b, 10));
            for (Certificate certificate : b) {
                if (certificate != null) {
                    arrayList.add((X509Certificate) certificate);
                } else {
                    throw new f("null cannot be cast to non-null type java.security.cert.X509Certificate");
                }
            }
            return arrayList;
        }
        h.o.c.g.e();
        throw null;
    }
}
