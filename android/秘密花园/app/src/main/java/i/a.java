package i;

import h.o.c.g;
import i.m0.b;
import i.x;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Address.kt */
/* loaded from: classes.dex */
public final class a {
    public final x a;
    public final List<c0> b;

    /* renamed from: c  reason: collision with root package name */
    public final List<m> f6347c;

    /* renamed from: d  reason: collision with root package name */
    public final s f6348d;

    /* renamed from: e  reason: collision with root package name */
    public final SocketFactory f6349e;

    /* renamed from: f  reason: collision with root package name */
    public final SSLSocketFactory f6350f;

    /* renamed from: g  reason: collision with root package name */
    public final HostnameVerifier f6351g;

    /* renamed from: h  reason: collision with root package name */
    public final h f6352h;

    /* renamed from: i  reason: collision with root package name */
    public final c f6353i;

    /* renamed from: j  reason: collision with root package name */
    public final Proxy f6354j;

    /* renamed from: k  reason: collision with root package name */
    public final ProxySelector f6355k;

    public a(String str, int i2, s sVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, h hVar, c cVar, Proxy proxy, List<? extends c0> list, List<m> list2, ProxySelector proxySelector) {
        if (str == null) {
            g.f("uriHost");
            throw null;
        } else if (sVar == null) {
            g.f("dns");
            throw null;
        } else if (socketFactory == null) {
            g.f("socketFactory");
            throw null;
        } else if (cVar == null) {
            g.f("proxyAuthenticator");
            throw null;
        } else if (list == null) {
            g.f("protocols");
            throw null;
        } else if (list2 == null) {
            g.f("connectionSpecs");
            throw null;
        } else if (proxySelector != null) {
            this.f6348d = sVar;
            this.f6349e = socketFactory;
            this.f6350f = sSLSocketFactory;
            this.f6351g = hostnameVerifier;
            this.f6352h = hVar;
            this.f6353i = cVar;
            this.f6354j = proxy;
            this.f6355k = proxySelector;
            x.a aVar = new x.a();
            aVar.h(this.f6350f != null ? "https" : "http");
            aVar.e(str);
            boolean z = true;
            if ((1 > i2 || 65535 < i2) ? false : z) {
                aVar.f6783e = i2;
                this.a = aVar.b();
                this.b = b.D(list);
                this.f6347c = b.D(list2);
                return;
            }
            throw new IllegalArgumentException(f.b.a.a.a.J("unexpected port: ", i2).toString());
        } else {
            g.f("proxySelector");
            throw null;
        }
    }

    public final boolean a(a aVar) {
        if (aVar != null) {
            return g.a(this.f6348d, aVar.f6348d) && g.a(this.f6353i, aVar.f6353i) && g.a(this.b, aVar.b) && g.a(this.f6347c, aVar.f6347c) && g.a(this.f6355k, aVar.f6355k) && g.a(this.f6354j, aVar.f6354j) && g.a(this.f6350f, aVar.f6350f) && g.a(this.f6351g, aVar.f6351g) && g.a(this.f6352h, aVar.f6352h) && this.a.f6775f == aVar.a.f6775f;
        }
        g.f("that");
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (g.a(this.a, aVar.a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f6348d.hashCode();
        int hashCode2 = this.f6353i.hashCode();
        int hashCode3 = this.b.hashCode();
        int hashCode4 = this.f6347c.hashCode();
        int hashCode5 = this.f6355k.hashCode();
        int hashCode6 = Objects.hashCode(this.f6354j);
        int hashCode7 = Objects.hashCode(this.f6350f);
        int hashCode8 = Objects.hashCode(this.f6351g);
        return Objects.hashCode(this.f6352h) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        Object obj;
        StringBuilder sb;
        StringBuilder o = f.b.a.a.a.o("Address{");
        o.append(this.a.f6774e);
        o.append(':');
        o.append(this.a.f6775f);
        o.append(", ");
        if (this.f6354j != null) {
            sb = f.b.a.a.a.o("proxy=");
            obj = this.f6354j;
        } else {
            sb = f.b.a.a.a.o("proxySelector=");
            obj = this.f6355k;
        }
        sb.append(obj);
        o.append(sb.toString());
        o.append("}");
        return o.toString();
    }
}
