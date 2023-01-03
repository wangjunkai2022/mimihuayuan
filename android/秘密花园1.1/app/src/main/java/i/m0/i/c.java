package i.m0.i;

import c.a.a.b.g.h;
import h.o.c.g;
import i.c0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* compiled from: Jdk8WithJettyBootPlatform.kt */
/* loaded from: classes.dex */
public final class c extends f {

    /* renamed from: d  reason: collision with root package name */
    public final Method f6730d;

    /* renamed from: e  reason: collision with root package name */
    public final Method f6731e;

    /* renamed from: f  reason: collision with root package name */
    public final Method f6732f;

    /* renamed from: g  reason: collision with root package name */
    public final Class<?> f6733g;

    /* renamed from: h  reason: collision with root package name */
    public final Class<?> f6734h;

    /* compiled from: Jdk8WithJettyBootPlatform.kt */
    /* loaded from: classes.dex */
    public static final class a implements InvocationHandler {
        public boolean a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public final List<String> f6735c;

        public a(List<String> list) {
            this.f6735c = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (obj == null) {
                g.f("proxy");
                throw null;
            } else if (method != null) {
                if (objArr == null) {
                    objArr = new Object[0];
                }
                String name = method.getName();
                Class<?> returnType = method.getReturnType();
                if (g.a(name, "supports") && g.a(Boolean.TYPE, returnType)) {
                    return Boolean.TRUE;
                }
                if (g.a(name, "unsupported") && g.a(Void.TYPE, returnType)) {
                    this.a = true;
                    return null;
                }
                if (g.a(name, "protocols")) {
                    if (objArr.length == 0) {
                        return this.f6735c;
                    }
                }
                if ((g.a(name, "selectProtocol") || g.a(name, "select")) && g.a(String.class, returnType) && objArr.length == 1 && (objArr[0] instanceof List)) {
                    Object obj2 = objArr[0];
                    if (obj2 != null) {
                        List list = (List) obj2;
                        int size = list.size();
                        if (size >= 0) {
                            int i2 = 0;
                            while (true) {
                                Object obj3 = list.get(i2);
                                if (obj3 != null) {
                                    String str = (String) obj3;
                                    if (!this.f6735c.contains(str)) {
                                        if (i2 == size) {
                                            break;
                                        }
                                        i2++;
                                    } else {
                                        this.b = str;
                                        return str;
                                    }
                                } else {
                                    throw new h.f("null cannot be cast to non-null type kotlin.String");
                                }
                            }
                        }
                        String str2 = this.f6735c.get(0);
                        this.b = str2;
                        return str2;
                    }
                    throw new h.f("null cannot be cast to non-null type kotlin.collections.List<*>");
                } else if ((g.a(name, "protocolSelected") || g.a(name, "selected")) && objArr.length == 1) {
                    Object obj4 = objArr[0];
                    if (obj4 != null) {
                        this.b = (String) obj4;
                        return null;
                    }
                    throw new h.f("null cannot be cast to non-null type kotlin.String");
                } else {
                    return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
                }
            } else {
                g.f("method");
                throw null;
            }
        }
    }

    public c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f6730d = method;
        this.f6731e = method2;
        this.f6732f = method3;
        this.f6733g = cls;
        this.f6734h = cls2;
    }

    @Override // i.m0.i.f
    public void a(SSLSocket sSLSocket) {
        if (sSLSocket != null) {
            try {
                this.f6732f.invoke(null, sSLSocket);
                return;
            } catch (IllegalAccessException e2) {
                throw new AssertionError("failed to remove ALPN", e2);
            } catch (InvocationTargetException e3) {
                throw new AssertionError("failed to remove ALPN", e3);
            }
        }
        g.f("sslSocket");
        throw null;
    }

    @Override // i.m0.i.f
    public void e(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        if (list != null) {
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
            try {
                this.f6730d.invoke(null, sSLSocket, Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.f6733g, this.f6734h}, new a(arrayList2)));
                return;
            } catch (IllegalAccessException e2) {
                throw new AssertionError("failed to set ALPN", e2);
            } catch (InvocationTargetException e3) {
                throw new AssertionError("failed to set ALPN", e3);
            }
        }
        g.f("protocols");
        throw null;
    }

    @Override // i.m0.i.f
    public String h(SSLSocket sSLSocket) {
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f6731e.invoke(null, sSLSocket));
            if (invocationHandler != null) {
                a aVar = (a) invocationHandler;
                if (!aVar.a && aVar.b == null) {
                    f.a.k(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                    return null;
                } else if (aVar.a) {
                    return null;
                } else {
                    return aVar.b;
                }
            }
            throw new h.f("null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
        } catch (IllegalAccessException e2) {
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        } catch (InvocationTargetException e3) {
            throw new AssertionError("failed to get ALPN selected protocol", e3);
        }
    }
}
