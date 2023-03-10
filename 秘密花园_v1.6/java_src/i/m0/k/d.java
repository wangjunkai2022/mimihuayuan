package i.m0.k;

import h.f;
import h.k.i;
import h.o.c.g;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* compiled from: OkHostnameVerifier.kt */
/* loaded from: classes.dex */
public final class d implements HostnameVerifier {
    public static final d a = new d();

    public final List<String> a(X509Certificate x509Certificate, int i2) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                ArrayList arrayList = new ArrayList();
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && !(!g.a(list.get(0), Integer.valueOf(i2))) && (obj = list.get(1)) != null) {
                        arrayList.add((String) obj);
                    }
                }
                return arrayList;
            }
            return i.a;
        } catch (CertificateParsingException unused) {
            return i.a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0120 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(java.lang.String r13, java.security.cert.X509Certificate r14) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.k.d.b(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        if (str == null) {
            g.f("host");
            throw null;
        } else if (sSLSession != null) {
            try {
                Certificate certificate = sSLSession.getPeerCertificates()[0];
                if (certificate != null) {
                    return b(str, (X509Certificate) certificate);
                }
                throw new f("null cannot be cast to non-null type java.security.cert.X509Certificate");
            } catch (SSLException unused) {
                return false;
            }
        } else {
            g.f(com.umeng.analytics.pro.b.at);
            throw null;
        }
    }
}
