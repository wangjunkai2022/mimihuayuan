package i;

import h.b;
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
    public static final /* synthetic */ h.q.e[] f6841e;

    /* renamed from: f  reason: collision with root package name */
    public static final a f6842f;
    public final b a;
    public final l0 b;

    /* renamed from: c  reason: collision with root package name */
    public final j f6843c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Certificate> f6844d;

    /* compiled from: Handshake.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* compiled from: Handshake.kt */
        /* renamed from: i.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0114a extends h.o.c.h implements h.o.b.a<List<? extends Certificate>> {
            public final /* synthetic */ List a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0114a(List list) {
                super(0);
                this.a = list;
            }

            @Override // h.o.b.a
            public List<? extends Certificate> a() {
                return this.a;
            }
        }

        /* compiled from: Handshake.kt */
        /* loaded from: classes.dex */
        public static final class b extends h.o.c.h implements h.o.b.a<List<? extends Certificate>> {
            public final /* synthetic */ List a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(List list) {
                super(0);
                this.a = list;
            }

            @Override // h.o.b.a
            public List<? extends Certificate> a() {
                return this.a;
            }
        }

        public a(h.o.c.f fVar) {
        }

        public final v a(SSLSession sSLSession) throws IOException {
            List list;
            List list2;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite != null) {
                if (!h.o.c.g.a("SSL_NULL_WITH_NULL_NULL", cipherSuite)) {
                    j b2 = j.t.b(cipherSuite);
                    String protocol = sSLSession.getProtocol();
                    if (protocol != null) {
                        if (!h.o.c.g.a("NONE", protocol)) {
                            l0 a = l0.f6567h.a(protocol);
                            try {
                                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                                if (peerCertificates != null) {
                                    list = i.m0.b.o((Certificate[]) Arrays.copyOf(peerCertificates, peerCertificates.length));
                                } else {
                                    list = h.k.i.a;
                                }
                            } catch (SSLPeerUnverifiedException unused) {
                                list = h.k.i.a;
                            }
                            Certificate[] localCertificates = sSLSession.getLocalCertificates();
                            if (localCertificates != null) {
                                list2 = i.m0.b.o((Certificate[]) Arrays.copyOf(localCertificates, localCertificates.length));
                            } else {
                                list2 = h.k.i.a;
                            }
                            return new v(a, b2, list2, new b(list));
                        }
                        throw new IOException("tlsVersion == NONE");
                    }
                    throw new IllegalStateException("tlsVersion == null".toString());
                }
                throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
            }
            throw new IllegalStateException("cipherSuite == null".toString());
        }

        public final v b(l0 l0Var, j jVar, List<? extends Certificate> list, List<? extends Certificate> list2) {
            return new v(l0Var, jVar, i.m0.b.D(list2), new C0114a(i.m0.b.D(list)));
        }
    }

    static {
        h.q.e[] eVarArr = new h.q.e[1];
        if (h.o.c.l.a != null) {
            h.o.c.j jVar = new h.o.c.j(new h.o.c.d(v.class), "peerCertificates", "peerCertificates()Ljava/util/List;");
            if (h.o.c.l.a != null) {
                eVarArr[0] = jVar;
                f6841e = eVarArr;
                f6842f = new a(null);
                return;
            }
            throw null;
        }
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v(l0 l0Var, j jVar, List<? extends Certificate> list, h.o.b.a<? extends List<? extends Certificate>> aVar) {
        if (l0Var == null) {
            h.o.c.g.f("tlsVersion");
            throw null;
        } else if (jVar == null) {
            h.o.c.g.f("cipherSuite");
            throw null;
        } else if (list != 0) {
            this.b = l0Var;
            this.f6843c = jVar;
            this.f6844d = list;
            this.a = new h.e(aVar, null, 2);
        } else {
            h.o.c.g.f("localCertificates");
            throw null;
        }
    }

    public final String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        h.o.c.g.b(type, "type");
        return type;
    }

    public final List<Certificate> b() {
        b bVar = this.a;
        h.q.e eVar = f6841e[0];
        return (List) bVar.getValue();
    }

    public boolean equals(Object obj) {
        if (obj instanceof v) {
            v vVar = (v) obj;
            if (vVar.b == this.b && h.o.c.g.a(vVar.f6843c, this.f6843c) && h.o.c.g.a(vVar.b(), b()) && h.o.c.g.a(vVar.f6844d, this.f6844d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f6843c.hashCode();
        int hashCode2 = b().hashCode();
        return this.f6844d.hashCode() + ((hashCode2 + ((hashCode + ((this.b.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder r = f.b.a.a.a.r("Handshake{", "tlsVersion=");
        r.append(this.b);
        r.append(' ');
        r.append("cipherSuite=");
        r.append(this.f6843c);
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
        List<Certificate> list = this.f6844d;
        ArrayList arrayList2 = new ArrayList(c.a.a.b.g.h.A(list, 10));
        for (Certificate certificate2 : list) {
            arrayList2.add(a(certificate2));
        }
        r.append(arrayList2);
        r.append('}');
        return r.toString();
    }
}
