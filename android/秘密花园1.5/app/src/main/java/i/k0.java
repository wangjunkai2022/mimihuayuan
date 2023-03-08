package i;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: Route.kt */
/* loaded from: classes.dex */
public final class k0 {
    public final a a;
    public final Proxy b;

    /* renamed from: c  reason: collision with root package name */
    public final InetSocketAddress f6561c;

    public k0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            h.o.c.g.f("address");
            throw null;
        } else if (inetSocketAddress == null) {
            h.o.c.g.f("socketAddress");
            throw null;
        } else {
            this.a = aVar;
            this.b = proxy;
            this.f6561c = inetSocketAddress;
        }
    }

    public final boolean a() {
        return this.a.f6425f != null && this.b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(Object obj) {
        if (obj instanceof k0) {
            k0 k0Var = (k0) obj;
            if (h.o.c.g.a(k0Var.a, this.a) && h.o.c.g.a(k0Var.b, this.b) && h.o.c.g.a(k0Var.f6561c, this.f6561c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        return this.f6561c.hashCode() + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Route{");
        o.append(this.f6561c);
        o.append('}');
        return o.toString();
    }
}
