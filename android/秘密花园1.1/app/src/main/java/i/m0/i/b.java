package i.m0.i;

import c.a.a.b.g.h;
import h.o.c.g;
import i.c0;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;

/* compiled from: ConscryptPlatform.kt */
/* loaded from: classes.dex */
public final class b extends f {

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f6727e;

    /* renamed from: f  reason: collision with root package name */
    public static final a f6728f = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public final Provider f6729d;

    /* compiled from: ConscryptPlatform.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final boolean a(int i2, int i3, int i4) {
            Conscrypt.Version version = Conscrypt.version();
            return version.major() != i2 ? version.major() > i2 : version.minor() != i3 ? version.minor() > i3 : version.patch() >= i4;
        }
    }

    /* compiled from: ConscryptPlatform.kt */
    /* renamed from: i.m0.i.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0113b implements ConscryptHostnameVerifier {
        public static final C0113b a = new C0113b();
    }

    static {
        boolean z = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version");
            if (Conscrypt.isAvailable()) {
                if (f6728f.a(2, 1, 0)) {
                    z = true;
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        f6727e = z;
    }

    public b() {
        Provider build = Conscrypt.newProviderBuilder().provideTrustManager(true).build();
        g.b(build, "Conscrypt.newProviderBui…rustManager(true).build()");
        this.f6729d = build;
    }

    @Override // i.m0.i.f
    public void d(SSLSocketFactory sSLSocketFactory) {
        if (sSLSocketFactory != null) {
            if (Conscrypt.isConscrypt(sSLSocketFactory)) {
                Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
                return;
            }
            return;
        }
        g.f("socketFactory");
        throw null;
    }

    @Override // i.m0.i.f
    public void e(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        if (list != null) {
            if (Conscrypt.isConscrypt(sSLSocket)) {
                if (str != null) {
                    Conscrypt.setUseSessionTickets(sSLSocket, true);
                    Conscrypt.setHostname(sSLSocket, str);
                }
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (((c0) next) != c0.HTTP_1_0) {
                        arrayList.add(next);
                    }
                }
                ArrayList arrayList2 = new ArrayList(h.A(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((c0) it2.next()).a);
                }
                Object[] array = arrayList2.toArray(new String[0]);
                if (array != null) {
                    Conscrypt.setApplicationProtocols(sSLSocket, (String[]) array);
                    return;
                }
                throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
            }
            super.e(sSLSocket, str, list);
            return;
        }
        g.f("protocols");
        throw null;
    }

    @Override // i.m0.i.f
    public void f(X509TrustManager x509TrustManager) {
        if (Conscrypt.isConscrypt(x509TrustManager)) {
            Conscrypt.setHostnameVerifier(x509TrustManager, C0113b.a);
        }
    }

    @Override // i.m0.i.f
    public String h(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        super.h(sSLSocket);
        return null;
    }

    @Override // i.m0.i.f
    public SSLContext m() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f6729d);
        g.b(sSLContext, "SSLContext.getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // i.m0.i.f
    public X509TrustManager n() {
        X509TrustManager defaultX509TrustManager = Conscrypt.getDefaultX509TrustManager();
        g.b(defaultX509TrustManager, "Conscrypt.getDefaultX509TrustManager()");
        return defaultX509TrustManager;
    }
}
