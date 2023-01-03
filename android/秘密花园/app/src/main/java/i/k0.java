package i;

import f.b.a.a.a;
import h.o.c.g;
import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: Route.kt */
/* loaded from: classes.dex */
public final class k0 {
    public final a a;
    public final Proxy b;

    /* renamed from: c  reason: collision with root package name */
    public final InetSocketAddress f6486c;

    public k0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            g.f("address");
            throw null;
        } else if (inetSocketAddress != null) {
            this.a = aVar;
            this.b = proxy;
            this.f6486c = inetSocketAddress;
        } else {
            g.f("socketAddress");
            throw null;
        }
    }

    public final boolean a() {
        return this.a.f6350f != null && this.b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(Object obj) {
        if (obj instanceof k0) {
            k0 k0Var = (k0) obj;
            if (g.a(k0Var.a, this.a) && g.a(k0Var.b, this.b) && g.a(k0Var.f6486c, this.f6486c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        return this.f6486c.hashCode() + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder o = a.o("Route{");
        o.append(this.f6486c);
        o.append('}');
        return o.toString();
    }
}
