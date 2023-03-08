package i.m0.i.g;

import h.o.c.g;
import i.c0;
import i.m0.i.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* compiled from: AndroidSocketAdapter.kt */
/* loaded from: classes.dex */
public class a implements e {
    public final Method a;
    public final Method b;

    /* renamed from: c  reason: collision with root package name */
    public final Method f6817c;

    /* renamed from: d  reason: collision with root package name */
    public final Method f6818d;

    /* renamed from: e  reason: collision with root package name */
    public final Class<? super SSLSocket> f6819e;

    public a(Class<? super SSLSocket> cls) {
        if (cls != null) {
            this.f6819e = cls;
            Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
            g.b(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
            this.a = declaredMethod;
            this.b = this.f6819e.getMethod("setHostname", String.class);
            this.f6817c = this.f6819e.getMethod("getAlpnSelectedProtocol", new Class[0]);
            this.f6818d = this.f6819e.getMethod("setAlpnProtocols", byte[].class);
            return;
        }
        g.f("sslSocketClass");
        throw null;
    }

    @Override // i.m0.i.g.e
    public String a(SSLSocket sSLSocket) {
        if (b(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.f6817c.invoke(sSLSocket, new Object[0]);
                if (bArr != null) {
                    Charset charset = StandardCharsets.UTF_8;
                    g.b(charset, "StandardCharsets.UTF_8");
                    return new String(bArr, charset);
                }
                return null;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                throw new AssertionError(e3);
            }
        }
        return null;
    }

    @Override // i.m0.i.g.e
    public boolean b(SSLSocket sSLSocket) {
        return this.f6819e.isInstance(sSLSocket);
    }

    @Override // i.m0.i.g.e
    public boolean c() {
        a.b bVar = i.m0.i.a.f6799g;
        return i.m0.i.a.f6798f;
    }

    @Override // i.m0.i.g.e
    public void d(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        if (b(sSLSocket)) {
            if (str != null) {
                try {
                    this.a.invoke(sSLSocket, Boolean.TRUE);
                    this.b.invoke(sSLSocket, str);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                } catch (InvocationTargetException e3) {
                    throw new AssertionError(e3);
                }
            }
            this.f6818d.invoke(sSLSocket, i.m0.i.f.f6816c.b(list));
        }
    }
}
