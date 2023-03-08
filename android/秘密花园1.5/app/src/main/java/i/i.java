package i;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CertificatePinner.kt */
/* loaded from: classes.dex */
public final class i extends h.o.c.h implements h.o.b.a<List<? extends X509Certificate>> {
    public final /* synthetic */ h a;
    public final /* synthetic */ List b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f6544c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(h hVar, List list, String str) {
        super(0);
        this.a = hVar;
        this.b = list;
        this.f6544c = str;
    }

    @Override // h.o.b.a
    public List<? extends X509Certificate> a() {
        List<Certificate> list;
        i.m0.k.c cVar = this.a.b;
        if (cVar == null || (list = cVar.a(this.b, this.f6544c)) == null) {
            list = this.b;
        }
        ArrayList arrayList = new ArrayList(c.a.a.b.g.h.A(list, 10));
        for (Certificate certificate : list) {
            if (certificate == null) {
                throw new h.f("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
