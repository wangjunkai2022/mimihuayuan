package i.m0.k;

import h.f;
import h.o.c.g;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
/* compiled from: BasicCertificateChainCleaner.kt */
/* loaded from: classes.dex */
public final class a extends c {
    public final e a;

    public a(e eVar) {
        if (eVar != null) {
            this.a = eVar;
        } else {
            g.f("trustRootIndex");
            throw null;
        }
    }

    @Override // i.m0.k.c
    public List<Certificate> a(List<? extends Certificate> list, String str) throws SSLPeerUnverifiedException {
        if (list == null) {
            g.f("chain");
            throw null;
        } else if (str != null) {
            ArrayDeque arrayDeque = new ArrayDeque(list);
            ArrayList arrayList = new ArrayList();
            Object removeFirst = arrayDeque.removeFirst();
            g.b(removeFirst, "queue.removeFirst()");
            arrayList.add(removeFirst);
            boolean z = false;
            for (int i2 = 0; i2 < 9; i2++) {
                Object obj = arrayList.get(arrayList.size() - 1);
                if (obj != null) {
                    X509Certificate x509Certificate = (X509Certificate) obj;
                    X509Certificate a = this.a.a(x509Certificate);
                    if (a != null) {
                        if (arrayList.size() > 1 || (!g.a(x509Certificate, a))) {
                            arrayList.add(a);
                        }
                        if (b(a, a)) {
                            return arrayList;
                        }
                        z = true;
                    } else {
                        Iterator it = arrayDeque.iterator();
                        g.b(it, "queue.iterator()");
                        while (it.hasNext()) {
                            Object next = it.next();
                            if (next != null) {
                                X509Certificate x509Certificate2 = (X509Certificate) next;
                                if (b(x509Certificate, x509Certificate2)) {
                                    it.remove();
                                    arrayList.add(x509Certificate2);
                                }
                            } else {
                                throw new f("null cannot be cast to non-null type java.security.cert.X509Certificate");
                            }
                        }
                        if (z) {
                            return arrayList;
                        }
                        throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                    }
                } else {
                    throw new f("null cannot be cast to non-null type java.security.cert.X509Certificate");
                }
            }
            throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
        } else {
            g.f("hostname");
            throw null;
        }
    }

    public final boolean b(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!g.a(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof a) && g.a(((a) obj).a, this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
