package i;

import androidx.appcompat.widget.ActivityChooserView;
import j.k;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: CertificatePinner.kt */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: c  reason: collision with root package name */
    public static final h f6518c;

    /* renamed from: d  reason: collision with root package name */
    public static final a f6519d = new a(null);
    public final Set<b> a;
    public final i.m0.k.c b;

    /* compiled from: CertificatePinner.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final String a(Certificate certificate) {
            StringBuilder o = f.b.a.a.a.o("sha256/");
            o.append(j.c0.a.a(b((X509Certificate) certificate)));
            return o.toString();
        }

        public final j.k b(X509Certificate x509Certificate) {
            k.a aVar = j.k.f7054e;
            PublicKey publicKey = x509Certificate.getPublicKey();
            h.o.c.g.b(publicKey, "publicKey");
            byte[] encoded = publicKey.getEncoded();
            h.o.c.g.b(encoded, "publicKey.encoded");
            return k.a.c(aVar, encoded, 0, 0, 3).a("SHA-256");
        }
    }

    /* compiled from: CertificatePinner.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public final String a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6520c;

        /* renamed from: d  reason: collision with root package name */
        public final j.k f6521d;

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    return h.o.c.g.a(null, bVar.a) && h.o.c.g.a(null, bVar.b) && h.o.c.g.a(null, bVar.f6520c) && h.o.c.g.a(null, bVar.f6521d);
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 0;
        }

        public String toString() {
            new StringBuilder().append((String) null);
            throw null;
        }
    }

    static {
        Set set;
        int i2;
        ArrayList arrayList = new ArrayList();
        int size = arrayList.size();
        if (size == 0) {
            set = h.k.k.a;
        } else if (size != 1) {
            int size2 = arrayList.size();
            if (size2 < 3) {
                i2 = size2 + 1;
            } else {
                i2 = size2 < 1073741824 ? size2 + (size2 / 3) : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            set = new LinkedHashSet(i2);
            h.k.g.a(arrayList, set);
        } else {
            set = Collections.singleton(arrayList.get(0));
            h.o.c.g.b(set, "java.util.Collections.singleton(element)");
        }
        f6518c = new h(set, null);
    }

    public h(Set<b> set, i.m0.k.c cVar) {
        if (set == null) {
            h.o.c.g.f("pins");
            throw null;
        }
        this.a = set;
        this.b = cVar;
    }

    public final void a(String str, h.o.b.a<? extends List<? extends X509Certificate>> aVar) {
        if (str != null) {
            List<b> list = h.k.i.a;
            for (b bVar : this.a) {
                if (bVar != null) {
                    if (!h.s.d.w(null, "*.", false, 2)) {
                        if (h.o.c.g.a(str, null)) {
                            if (list.isEmpty()) {
                                list = new ArrayList();
                            }
                            if (!(list instanceof h.o.c.o.a)) {
                                list.add(bVar);
                            } else {
                                ClassCastException classCastException = new ClassCastException(f.b.a.a.a.g(list.getClass().getName(), " cannot be cast to ", "kotlin.collections.MutableList"));
                                h.o.c.g.d(classCastException, h.o.c.n.class.getName());
                                throw classCastException;
                            }
                        }
                    } else {
                        h.s.d.i(str, '.', 0, false, 6);
                        str.length();
                        throw null;
                    }
                } else {
                    throw null;
                }
            }
            if (list.isEmpty()) {
                return;
            }
            List<? extends X509Certificate> a2 = aVar.a();
            for (X509Certificate x509Certificate : a2) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    if (((b) it.next()) != null) {
                        throw null;
                    }
                    throw null;
                }
            }
            StringBuilder r = f.b.a.a.a.r("Certificate pinning failure!", "\n  Peer certificate chain:");
            for (X509Certificate x509Certificate2 : a2) {
                if (x509Certificate2 != null) {
                    r.append("\n    ");
                    r.append(f6519d.a(x509Certificate2));
                    r.append(": ");
                    Principal subjectDN = x509Certificate2.getSubjectDN();
                    h.o.c.g.b(subjectDN, "x509Certificate.subjectDN");
                    r.append(subjectDN.getName());
                } else {
                    throw new h.f("null cannot be cast to non-null type java.security.cert.X509Certificate");
                }
            }
            r.append("\n  Pinned certificates for ");
            r.append(str);
            r.append(":");
            for (b bVar2 : list) {
                r.append("\n    ");
                r.append(bVar2);
            }
            String sb = r.toString();
            h.o.c.g.b(sb, "StringBuilder().apply(builderAction).toString()");
            throw new SSLPeerUnverifiedException(sb);
        }
        h.o.c.g.f("hostname");
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (h.o.c.g.a(hVar.a, this.a) && h.o.c.g.a(hVar.b, this.b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() + 1517) * 41;
        i.m0.k.c cVar = this.b;
        return hashCode + (cVar != null ? cVar.hashCode() : 0);
    }
}
