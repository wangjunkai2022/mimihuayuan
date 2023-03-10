package i.m0.i;

import android.os.Build;
import c.a.a.b.g.h;
import h.o.c.g;
import i.c0;
import i.m0.i.b;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
/* compiled from: AndroidPlatform.kt */
/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: f  reason: collision with root package name */
    public static final boolean f6807f;

    /* renamed from: g  reason: collision with root package name */
    public static final b f6808g = new b(null);

    /* renamed from: d  reason: collision with root package name */
    public final List<i.m0.i.g.e> f6809d;

    /* renamed from: e  reason: collision with root package name */
    public final i.m0.i.g.b f6810e;

    /* compiled from: AndroidPlatform.kt */
    /* renamed from: i.m0.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0112a extends i.m0.k.c {
        public final Object a;
        public final Method b;

        public C0112a(Object obj, Method method) {
            this.a = obj;
            this.b = method;
        }

        @Override // i.m0.k.c
        public List<Certificate> a(List<? extends Certificate> list, String str) throws SSLPeerUnverifiedException {
            if (list == null) {
                g.f("chain");
                throw null;
            } else if (str != null) {
                try {
                    Object[] array = list.toArray(new X509Certificate[0]);
                    if (array != null) {
                        Object invoke = this.b.invoke(this.a, (X509Certificate[]) array, "RSA", str);
                        if (invoke != null) {
                            return (List) invoke;
                        }
                        throw new h.f("null cannot be cast to non-null type kotlin.collections.List<java.security.cert.Certificate>");
                    }
                    throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                } catch (InvocationTargetException e3) {
                    SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                    sSLPeerUnverifiedException.initCause(e3);
                    throw sSLPeerUnverifiedException;
                }
            } else {
                g.f("hostname");
                throw null;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0112a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* compiled from: AndroidPlatform.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(h.o.c.f fVar) {
        }
    }

    /* compiled from: AndroidPlatform.kt */
    /* loaded from: classes.dex */
    public static final class c implements i.m0.k.e {
        public final X509TrustManager a;
        public final Method b;

        public c(X509TrustManager x509TrustManager, Method method) {
            this.a = x509TrustManager;
            this.b = method;
        }

        @Override // i.m0.k.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                Object invoke = this.b.invoke(this.a, x509Certificate);
                if (invoke != null) {
                    return ((TrustAnchor) invoke).getTrustedCert();
                }
                throw new h.f("null cannot be cast to non-null type java.security.cert.TrustAnchor");
            } catch (IllegalAccessException e2) {
                throw new AssertionError("unable to get issues and signature", e2);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    return g.a(this.a, cVar.a) && g.a(this.b, cVar.b);
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            X509TrustManager x509TrustManager = this.a;
            int hashCode = (x509TrustManager != null ? x509TrustManager.hashCode() : 0) * 31;
            Method method = this.b;
            return hashCode + (method != null ? method.hashCode() : 0);
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("CustomTrustRootIndex(trustManager=");
            o.append(this.a);
            o.append(", findByIssuerAndSignatureMethod=");
            o.append(this.b);
            o.append(")");
            return o.toString();
        }
    }

    static {
        boolean z = true;
        try {
            Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        if (1 == 0) {
            throw new IllegalStateException(("Expected Android API level 21+ but was " + Build.VERSION.SDK_INT).toString());
        }
        f6807f = z;
    }

    public a() {
        i.m0.i.g.f fVar;
        Method method;
        Method method2;
        i.m0.i.g.e[] eVarArr = new i.m0.i.g.e[3];
        Method method3 = null;
        if ("com.android.org.conscrypt" != 0) {
            try {
                Class<?> cls = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
                Class<?> cls2 = Class.forName("com.android.org.conscrypt.OpenSSLSocketFactoryImpl");
                Class<?> cls3 = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
                g.b(cls3, "paramsClass");
                fVar = new i.m0.i.g.f(cls, cls2, cls3);
            } catch (Exception e2) {
                h.e(5, "unable to load android socket classes", e2);
                fVar = null;
            }
            eVarArr[0] = fVar;
            b.a aVar = i.m0.i.b.f6812f;
            eVarArr[1] = i.m0.i.b.f6811e ? i.m0.i.g.c.a : null;
            eVarArr[2] = new i.m0.i.g.d("com.google.android.gms.org.conscrypt");
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 3; i2++) {
                i.m0.i.g.e eVar = eVarArr[i2];
                if (eVar != null) {
                    arrayList.add(eVar);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((i.m0.i.g.e) obj).c()) {
                    arrayList2.add(obj);
                }
            }
            this.f6809d = arrayList2;
            try {
                Class<?> cls4 = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls4.getMethod("get", new Class[0]);
                method2 = cls4.getMethod("open", String.class);
                method = cls4.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            this.f6810e = new i.m0.i.g.b(method3, method2, method);
            return;
        }
        g.f("packageName");
        throw null;
    }

    @Override // i.m0.i.f
    public i.m0.k.c b(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            Object newInstance = cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager);
            Method method = cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class);
            g.b(newInstance, "extensions");
            g.b(method, "checkServerTrusted");
            return new C0112a(newInstance, method);
        } catch (Exception unused) {
            return new i.m0.k.a(c(x509TrustManager));
        }
    }

    @Override // i.m0.i.f
    public i.m0.k.e c(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            g.b(declaredMethod, "method");
            declaredMethod.setAccessible(true);
            return new c(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.c(x509TrustManager);
        }
    }

    @Override // i.m0.i.f
    public void e(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        Object obj = null;
        if (list != null) {
            Iterator<T> it = this.f6809d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((i.m0.i.g.e) next).b(sSLSocket)) {
                    obj = next;
                    break;
                }
            }
            i.m0.i.g.e eVar = (i.m0.i.g.e) obj;
            if (eVar != null) {
                eVar.d(sSLSocket, str, list);
                return;
            }
            return;
        }
        g.f("protocols");
        throw null;
    }

    @Override // i.m0.i.f
    public void g(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        if (socket == null) {
            g.f("socket");
            throw null;
        } else if (inetSocketAddress != null) {
            try {
                socket.connect(inetSocketAddress, i2);
            } catch (ClassCastException e2) {
                if (Build.VERSION.SDK_INT == 26) {
                    throw new IOException("Exception in connect", e2);
                }
                throw e2;
            }
        } else {
            g.f("address");
            throw null;
        }
    }

    @Override // i.m0.i.f
    public String h(SSLSocket sSLSocket) {
        Object obj;
        Iterator<T> it = this.f6809d.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((i.m0.i.g.e) obj).b(sSLSocket)) {
                break;
            }
        }
        i.m0.i.g.e eVar = (i.m0.i.g.e) obj;
        if (eVar != null) {
            return eVar.a(sSLSocket);
        }
        return null;
    }

    @Override // i.m0.i.f
    public Object i(String str) {
        i.m0.i.g.b bVar = this.f6810e;
        Method method = bVar.a;
        if (method != null) {
            try {
                Object invoke = method.invoke(null, new Object[0]);
                Method method2 = bVar.b;
                if (method2 != null) {
                    method2.invoke(invoke, str);
                    return invoke;
                }
                g.e();
                throw null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    @Override // i.m0.i.f
    public boolean j(String str) {
        if (str != null) {
            try {
                Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
                Object invoke = cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
                g.b(cls, "networkPolicyClass");
                g.b(invoke, "networkSecurityPolicy");
                return o(str, cls, invoke);
            } catch (ClassNotFoundException unused) {
                super.j(str);
                return true;
            } catch (IllegalAccessException e2) {
                throw new AssertionError("unable to determine cleartext support", e2);
            } catch (IllegalArgumentException e3) {
                throw new AssertionError("unable to determine cleartext support", e3);
            } catch (NoSuchMethodException unused2) {
                super.j(str);
                return true;
            } catch (InvocationTargetException e4) {
                throw new AssertionError("unable to determine cleartext support", e4);
            }
        }
        g.f("hostname");
        throw null;
    }

    @Override // i.m0.i.f
    public void k(int i2, String str, Throwable th) {
        if (str != null) {
            h.e(i2, str, th);
        } else {
            g.f("message");
            throw null;
        }
    }

    @Override // i.m0.i.f
    public void l(String str, Object obj) {
        if (str != null) {
            i.m0.i.g.b bVar = this.f6810e;
            if (bVar == null) {
                throw null;
            }
            boolean z = false;
            if (obj != null) {
                try {
                    Method method = bVar.f6829c;
                    if (method == null) {
                        g.e();
                        throw null;
                    } else {
                        method.invoke(obj, new Object[0]);
                        z = true;
                    }
                } catch (Exception unused) {
                }
            }
            if (z) {
                return;
            }
            k(5, str, null);
            return;
        }
        g.f("message");
        throw null;
    }

    public final boolean o(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        boolean z = true;
        try {
            try {
                Object invoke = cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                throw new h.f("null cannot be cast to non-null type kotlin.Boolean");
            } catch (NoSuchMethodException unused) {
                super.j(str);
                return z;
            }
        } catch (NoSuchMethodException unused2) {
            Object invoke2 = cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0]);
            if (invoke2 != null) {
                z = ((Boolean) invoke2).booleanValue();
                return z;
            }
            throw new h.f("null cannot be cast to non-null type kotlin.Boolean");
        }
    }
}
