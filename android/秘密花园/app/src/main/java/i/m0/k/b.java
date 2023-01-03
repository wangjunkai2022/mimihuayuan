package i.m0.k;

import h.o.c.g;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* compiled from: BasicTrustRootIndex.kt */
/* loaded from: classes.dex */
public final class b implements e {
    public final Map<X500Principal, Set<X509Certificate>> a;

    public b(X509Certificate... x509CertificateArr) {
        if (x509CertificateArr != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (X509Certificate x509Certificate : x509CertificateArr) {
                X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                g.b(subjectX500Principal, "caCert.subjectX500Principal");
                Object obj = linkedHashMap.get(subjectX500Principal);
                if (obj == null) {
                    obj = new LinkedHashSet();
                    linkedHashMap.put(subjectX500Principal, obj);
                }
                ((Set) obj).add(x509Certificate);
            }
            this.a = linkedHashMap;
            return;
        }
        g.f("caCerts");
        throw null;
    }

    @Override // i.m0.k.e
    public X509Certificate a(X509Certificate x509Certificate) {
        boolean z;
        Set<X509Certificate> set = this.a.get(x509Certificate.getIssuerX500Principal());
        Object obj = null;
        if (set == null) {
            return null;
        }
        Iterator<T> it = set.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            try {
                x509Certificate.verify(((X509Certificate) next).getPublicKey());
                z = true;
                continue;
            } catch (Exception unused) {
                z = false;
                continue;
            }
            if (z) {
                obj = next;
                break;
            }
        }
        return (X509Certificate) obj;
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof b) && g.a(((b) obj).a, this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
