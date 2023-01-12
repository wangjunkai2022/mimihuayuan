package i.m0.i.g;

import h.o.c.g;
import i.c0;
import i.m0.i.f;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* compiled from: DeferredSocketAdapter.kt */
/* loaded from: classes.dex */
public final class d implements e {
    public boolean a;
    public e b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6821c;

    public d(String str) {
        this.f6821c = str;
    }

    @Override // i.m0.i.g.e
    public String a(SSLSocket sSLSocket) {
        e e2 = e(sSLSocket);
        if (e2 != null) {
            return e2.a(sSLSocket);
        }
        return null;
    }

    @Override // i.m0.i.g.e
    public boolean b(SSLSocket sSLSocket) {
        String name = sSLSocket.getClass().getName();
        g.b(name, "sslSocket.javaClass.name");
        return h.s.d.w(name, this.f6821c, false, 2);
    }

    @Override // i.m0.i.g.e
    public boolean c() {
        return true;
    }

    @Override // i.m0.i.g.e
    public void d(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        e e2 = e(sSLSocket);
        if (e2 != null) {
            e2.d(sSLSocket, str, list);
        }
    }

    public final synchronized e e(SSLSocket sSLSocket) {
        if (!this.a) {
            try {
                Class<?> cls = sSLSocket.getClass();
                while (true) {
                    String name = cls.getName();
                    if (!(!g.a(name, this.f6821c + ".OpenSSLSocketImpl"))) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    g.b(cls, "possibleClass.superclass");
                }
                this.b = new a(cls);
            } catch (Exception e2) {
                f.a aVar = i.m0.i.f.f6816c;
                i.m0.i.f fVar = i.m0.i.f.a;
                fVar.k(5, "Failed to initialize DeferredSocketAdapter " + this.f6821c, e2);
            }
            this.a = true;
        }
        return this.b;
    }
}
