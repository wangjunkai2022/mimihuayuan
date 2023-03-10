package i.m0.i;

import c.a.a.b.g.h;
import h.o.c.g;
import i.c0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
/* compiled from: Jdk9Platform.kt */
/* loaded from: classes.dex */
public final class d extends f {

    /* renamed from: d  reason: collision with root package name */
    public final Method f6820d;

    /* renamed from: e  reason: collision with root package name */
    public final Method f6821e;

    public d(Method method, Method method2) {
        this.f6820d = method;
        this.f6821e = method2;
    }

    @Override // i.m0.i.f
    public void e(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        if (list != null) {
            try {
                SSLParameters sSLParameters = sSLSocket.getSSLParameters();
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = list.iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (((c0) next) == c0.HTTP_1_0) {
                        z = false;
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
                Method method = this.f6820d;
                Object[] objArr = new Object[1];
                Object[] array = arrayList2.toArray(new String[0]);
                if (array != null) {
                    objArr[0] = array;
                    method.invoke(sSLParameters, objArr);
                    sSLSocket.setSSLParameters(sSLParameters);
                    return;
                }
                throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
            } catch (IllegalAccessException e2) {
                throw new AssertionError("failed to set SSL parameters", e2);
            } catch (InvocationTargetException e3) {
                throw new AssertionError("failed to set SSL parameters", e3);
            }
        }
        g.f("protocols");
        throw null;
    }

    @Override // i.m0.i.f
    public String h(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f6821e.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!g.a(str, "")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException e2) {
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        } catch (InvocationTargetException e3) {
            throw new AssertionError("failed to get ALPN selected protocol", e3);
        }
    }
}
