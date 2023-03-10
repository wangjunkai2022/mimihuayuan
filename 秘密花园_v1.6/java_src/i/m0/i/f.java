package i.m0.i;

import c.a.a.b.g.h;
import i.c0;
import j.g;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* compiled from: Platform.kt */
/* loaded from: classes.dex */
public class f {
    public static volatile f a;
    public static final Logger b;

    /* renamed from: c  reason: collision with root package name */
    public static final a f6825c;

    /* compiled from: Platform.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final List<String> a(List<? extends c0> list) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((c0) obj) != c0.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(h.A(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((c0) it.next()).a);
            }
            return arrayList2;
        }

        public final byte[] b(List<? extends c0> list) {
            g gVar = new g();
            Iterator it = ((ArrayList) a(list)).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                gVar.Q(str.length());
                gVar.c0(str);
            }
            return gVar.o();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
        if (r0 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
        if (r0 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ac, code lost:
        if (java.lang.Integer.parseInt(r3) >= 9) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0114  */
    static {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.i.f.<clinit>():void");
    }

    public void a(SSLSocket sSLSocket) {
        if (sSLSocket != null) {
            return;
        }
        h.o.c.g.f("sslSocket");
        throw null;
    }

    public i.m0.k.c b(X509TrustManager x509TrustManager) {
        return new i.m0.k.a(c(x509TrustManager));
    }

    public i.m0.k.e c(X509TrustManager x509TrustManager) {
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        h.o.c.g.b(acceptedIssuers, "trustManager.acceptedIssuers");
        return new i.m0.k.b((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void d(SSLSocketFactory sSLSocketFactory) {
        if (sSLSocketFactory != null) {
            return;
        }
        h.o.c.g.f("socketFactory");
        throw null;
    }

    public void e(SSLSocket sSLSocket, String str, List<c0> list) {
        if (list != null) {
            return;
        }
        h.o.c.g.f("protocols");
        throw null;
    }

    public void f(X509TrustManager x509TrustManager) {
    }

    public void g(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        if (socket == null) {
            h.o.c.g.f("socket");
            throw null;
        } else if (inetSocketAddress != null) {
            socket.connect(inetSocketAddress, i2);
        } else {
            h.o.c.g.f("address");
            throw null;
        }
    }

    public String h(SSLSocket sSLSocket) {
        return null;
    }

    public Object i(String str) {
        if (b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean j(String str) {
        if (str != null) {
            return true;
        }
        h.o.c.g.f("hostname");
        throw null;
    }

    public void k(int i2, String str, Throwable th) {
        if (str != null) {
            b.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
        } else {
            h.o.c.g.f("message");
            throw null;
        }
    }

    public void l(String str, Object obj) {
        if (str != null) {
            if (obj == null) {
                str = f.b.a.a.a.f(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
            }
            k(5, str, (Throwable) obj);
            return;
        }
        h.o.c.g.f("message");
        throw null;
    }

    public SSLContext m() {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        h.o.c.g.b(sSLContext, "SSLContext.getInstance(\"TLS\")");
        return sSLContext;
    }

    public X509TrustManager n() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        h.o.c.g.b(trustManagerFactory, "factory");
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers != null) {
            boolean z = true;
            if ((trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) ? false : false) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager != null) {
                    return (X509TrustManager) trustManager;
                }
                throw new h.f("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            }
            StringBuilder o = f.b.a.a.a.o("Unexpected default trust managers: ");
            String arrays = Arrays.toString(trustManagers);
            h.o.c.g.b(arrays, "java.util.Arrays.toString(this)");
            o.append(arrays);
            throw new IllegalStateException(o.toString().toString());
        }
        h.o.c.g.e();
        throw null;
    }

    public String toString() {
        String simpleName = getClass().getSimpleName();
        h.o.c.g.b(simpleName, "javaClass.simpleName");
        return simpleName;
    }
}
