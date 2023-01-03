package i;

import h.f;
import h.o.b.a;
import h.o.c.h;
import i.m0.k.c;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CertificatePinner.kt */
/* loaded from: classes.dex */
public final class i extends h implements a<List<? extends X509Certificate>> {
    public final /* synthetic */ h a;
    public final /* synthetic */ List b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f6469c;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public i(h hVar, List list, String str) {
        super(0);
        this.a = hVar;
        this.b = list;
        this.f6469c = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // h.o.b.a
    public List<? extends X509Certificate> a() {
        List<Certificate> list;
        c cVar = this.a.b;
        if (cVar == null || (list = cVar.a(this.b, this.f6469c)) == null) {
            list = this.b;
        }
        ArrayList arrayList = new ArrayList(c.a.a.b.g.h.A(list, 10));
        for (Certificate certificate : list) {
            if (certificate != null) {
                arrayList.add((X509Certificate) certificate);
            } else {
                throw new f("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
        }
        return arrayList;
    }
}
