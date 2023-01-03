package i;

import h.b;
import h.k.i;
import h.o.c.d;
import h.o.c.f;
import h.o.c.g;
import h.o.c.h;
import h.o.c.j;
import h.o.c.l;
import h.q.e;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* compiled from: Handshake.kt */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ e[] f6766e;

    /* renamed from: f  reason: collision with root package name */
    public static final a f6767f;
    public final b a;
    public final l0 b;

    /* renamed from: c  reason: collision with root package name */
    public final j f6768c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Certificate> f6769d;

    /* compiled from: Handshake.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* compiled from: Handshake.kt */
        /* renamed from: i.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0107a extends h implements h.o.b.a<List<? extends Certificate>> {
            public final /* synthetic */ List a;

            /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
            public C0107a(List list) {
                super(0);
                this.a = list;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // h.o.b.a
            public List<? extends Certificate> a() {
                return this.a;
            }
        }

        /* compiled from: Handshake.kt */
        /* loaded from: classes.dex */
        public static final class b extends h implements h.o.b.a<List<? extends Certificate>> {
            public final /* synthetic */ List a;

            /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
            public b(List list) {
                super(0);
                this.a = list;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // h.o.b.a
            public List<? extends Certificate> a() {
                return this.a;
            }
        }

        public a(f fVar) {
        }

        /* JADX DEBUG: Failed to insert an additional move for type inference into block B:30:0x0028 */
        /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: javax.net.ssl.SSLSession */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v6, types: [java.security.cert.Certificate[], java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r6v12 */
        public final v a(SSLSession sSLSession) throws IOException {
            SSLSession sSLSession2;
            List list;
            List list2;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null".toString());
            } else if (!g.a("SSL_NULL_WITH_NULL_NULL", cipherSuite)) {
                j b2 = j.t.b(cipherSuite);
                String protocol = sSLSession.getProtocol();
                if (protocol == null) {
                    throw new IllegalStateException("tlsVersion == null".toString());
                } else if (!g.a("NONE", protocol)) {
                    l0 a = l0.f6492h.a(protocol);
                    try {
                        Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                        if (peerCertificates != null) {
                            list = i.m0.b.o((Certificate[]) Arrays.copyOf(peerCertificates, peerCertificates.length));
                            sSLSession2 = sSLSession;
                        } else {
                            list = i.a;
                            sSLSession2 = sSLSession;
                        }
                    } catch (SSLPeerUnverifiedException unused) {
                        list = i.a;
                        sSLSession2 = sSLSession;
                    }
                    sSLSession = sSLSession2.getLocalCertificates();
                    if (sSLSession != 0) {
                        list2 = i.m0.b.o((Certificate[]) Arrays.copyOf((Object[]) sSLSession, sSLSession.length));
                    } else {
                        list2 = i.a;
                    }
                    return new v(a, b2, list2, new b(list));
                } else {
                    throw new IOException("tlsVersion == NONE");
                }
            } else {
                throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
            }
        }

        public final v b(l0 l0Var, j jVar, List<? extends Certificate> list, List<? extends Certificate> list2) {
            return new v(l0Var, jVar, i.m0.b.D(list2), new C0107a(i.m0.b.D(list)));
        }
    }

    static {
        e[] eVarArr = new e[1];
        if (l.a != null) {
            j jVar = new j(new d(v.class), "peerCertificates", "peerCertificates()Ljava/util/List;");
            if (l.a != null) {
                eVarArr[0] = jVar;
                f6766e = eVarArr;
                f6767f = new a(null);
                return;
            }
            throw null;
        }
        throw null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<? extends java.security.cert.Certificate> */
    /* JADX WARN: Multi-variable type inference failed */
    public v(l0 l0Var, j jVar, List<? extends Certificate> list, h.o.b.a<? extends List<? extends Certificate>> aVar) {
        if (l0Var == null) {
            g.f("tlsVersion");
            throw null;
        } else if (jVar == null) {
            g.f("cipherSuite");
            throw null;
        } else if (list != 0) {
            this.b = l0Var;
            this.f6768c = jVar;
            this.f6769d = list;
            this.a = new h.e(aVar, null, 2);
        } else {
            g.f("localCertificates");
            throw null;
        }
    }

    public final String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        g.b(type, "type");
        return type;
    }

    public final List<Certificate> b() {
        b bVar = this.a;
        e eVar = f6766e[0];
        return (List) bVar.getValue();
    }

    public boolean equals(Object obj) {
        if (obj instanceof v) {
            v vVar = (v) obj;
            if (vVar.b == this.b && g.a(vVar.f6768c, this.f6768c) && g.a(vVar.b(), b()) && g.a(vVar.f6769d, this.f6769d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f6768c.hashCode();
        int hashCode2 = b().hashCode();
        return this.f6769d.hashCode() + ((hashCode2 + ((hashCode + ((this.b.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder r = f.b.a.a.a.r("Handshake{", "tlsVersion=");
        r.append(this.b);
        r.append(' ');
        r.append("cipherSuite=");
        r.append(this.f6768c);
        r.append(' ');
        r.append("peerCertificates=");
        List<Certificate> b = b();
        ArrayList arrayList = new ArrayList(c.a.a.b.g.h.A(b, 10));
        for (Certificate certificate : b) {
            arrayList.add(a(certificate));
        }
        r.append(arrayList);
        r.append(' ');
        r.append("localCertificates=");
        List<Certificate> list = this.f6769d;
        ArrayList arrayList2 = new ArrayList(c.a.a.b.g.h.A(list, 10));
        for (Certificate certificate2 : list) {
            arrayList2.add(a(certificate2));
        }
        r.append(arrayList2);
        r.append('}');
        return r.toString();
    }
}
