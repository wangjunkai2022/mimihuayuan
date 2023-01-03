package i.m0.i;

import c.a.a.b.g.h;
import f.b.a.a.a;
import h.f;
import h.o.c.g;
import i.c0;
import java.security.KeyStore;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.openjsse.javax.net.ssl.SSLParameters;
import org.openjsse.net.ssl.OpenJSSE;

/* compiled from: OpenJSSEPlatform.kt */
/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f6738e;

    /* renamed from: f  reason: collision with root package name */
    public static final e f6739f = null;

    /* renamed from: d  reason: collision with root package name */
    public final Provider f6740d = new OpenJSSE();

    static {
        boolean z;
        try {
            Class.forName("org.openjsse.net.ssl.OpenJSSE");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f6738e = z;
    }

    @Override // i.m0.i.f
    public void e(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        if (list == null) {
            g.f("protocols");
            throw null;
        } else if (sSLSocket instanceof org.openjsse.javax.net.ssl.SSLSocket) {
            org.openjsse.javax.net.ssl.SSLSocket sSLSocket2 = (org.openjsse.javax.net.ssl.SSLSocket) sSLSocket;
            SSLParameters sSLParameters = sSLSocket2.getSSLParameters();
            if (sSLParameters instanceof SSLParameters) {
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = list.iterator();
                while (true) {
                    boolean z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (((c0) next) != c0.HTTP_1_0) {
                        z = true;
                    }
                    if (z) {
                        arrayList.add(next);
                    }
                }
                ArrayList arrayList2 = new ArrayList(h.A(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((c0) it2.next()).a);
                }
                SSLParameters sSLParameters2 = sSLParameters;
                Object[] array = arrayList2.toArray(new String[0]);
                if (array != null) {
                    sSLParameters2.setApplicationProtocols((String[]) array);
                    sSLSocket2.setSSLParameters(sSLParameters);
                    return;
                }
                throw new f("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else {
            super.e(sSLSocket, str, list);
        }
    }

    @Override // i.m0.i.f
    public String h(SSLSocket sSLSocket) {
        if (sSLSocket instanceof org.openjsse.javax.net.ssl.SSLSocket) {
            String applicationProtocol = ((org.openjsse.javax.net.ssl.SSLSocket) sSLSocket).getApplicationProtocol();
            if (applicationProtocol != null && !g.a(applicationProtocol, "")) {
                return applicationProtocol;
            }
        } else {
            super.h(sSLSocket);
        }
        return null;
    }

    @Override // i.m0.i.f
    public SSLContext m() {
        SSLContext instance = SSLContext.getInstance("TLSv1.3", this.f6740d);
        g.b(instance, "SSLContext.getInstance(\"TLSv1.3\", provider)");
        return instance;
    }

    @Override // i.m0.i.f
    public X509TrustManager n() {
        TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm(), this.f6740d);
        instance.init((KeyStore) null);
        g.b(instance, "factory");
        TrustManager[] trustManagers = instance.getTrustManagers();
        if (trustManagers != null) {
            boolean z = true;
            if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                z = false;
            }
            if (z) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager != null) {
                    return (X509TrustManager) trustManager;
                }
                throw new f("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            }
            StringBuilder o = a.o("Unexpected default trust managers: ");
            String arrays = Arrays.toString(trustManagers);
            g.b(arrays, "java.util.Arrays.toString(this)");
            o.append(arrays);
            throw new IllegalStateException(o.toString().toString());
        }
        g.e();
        throw null;
    }
}
