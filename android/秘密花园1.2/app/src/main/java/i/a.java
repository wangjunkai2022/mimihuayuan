package i;

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
    public final List<m> f6422c;

    /* renamed from: d  reason: collision with root package name */
    public final s f6423d;

    /* renamed from: e  reason: collision with root package name */
    public final SocketFactory f6424e;

    /* renamed from: f  reason: collision with root package name */
    public final SSLSocketFactory f6425f;

    /* renamed from: g  reason: collision with root package name */
    public final HostnameVerifier f6426g;

    /* renamed from: h  reason: collision with root package name */
    public final h f6427h;

    /* renamed from: i  reason: collision with root package name */
    public final c f6428i;

    /* renamed from: j  reason: collision with root package name */
    public final Proxy f6429j;

    /* renamed from: k  reason: collision with root package name */
    public final ProxySelector f6430k;

    public a(String str, int i2, s sVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, h hVar, c cVar, Proxy proxy, List<? extends c0> list, List<m> list2, ProxySelector proxySelector) {
        if (str == null) {
            h.o.c.g.f("uriHost");
            throw null;
        } else if (sVar == null) {
            h.o.c.g.f("dns");
            throw null;
        } else if (socketFactory == null) {
            h.o.c.g.f("socketFactory");
            throw null;
        } else if (cVar == null) {
            h.o.c.g.f("proxyAuthenticator");
            throw null;
        } else if (list == null) {
            h.o.c.g.f("protocols");
            throw null;
        } else if (list2 == null) {
            h.o.c.g.f("connectionSpecs");
            throw null;
        } else if (proxySelector != null) {
            this.f6423d = sVar;
            this.f6424e = socketFactory;
            this.f6425f = sSLSocketFactory;
            this.f6426g = hostnameVerifier;
            this.f6427h = hVar;
            this.f6428i = cVar;
            this.f6429j = proxy;
            this.f6430k = proxySelector;
            x.a aVar = new x.a();
            aVar.h(this.f6425f != null ? "https" : "http");
            aVar.e(str);
            boolean z = true;
            if ((1 > i2 || 65535 < i2) ? false : false) {
                aVar.f6858e = i2;
                this.a = aVar.b();
                this.b = b.D(list);
                this.f6422c = b.D(list2);
                return;
            }
            throw new IllegalArgumentException(f.b.a.a.a.J("unexpected port: ", i2).toString());
        } else {
            h.o.c.g.f("proxySelector");
            throw null;
        }
    }

    public final boolean a(a aVar) {
        if (aVar != null) {
            return h.o.c.g.a(this.f6423d, aVar.f6423d) && h.o.c.g.a(this.f6428i, aVar.f6428i) && h.o.c.g.a(this.b, aVar.b) && h.o.c.g.a(this.f6422c, aVar.f6422c) && h.o.c.g.a(this.f6430k, aVar.f6430k) && h.o.c.g.a(this.f6429j, aVar.f6429j) && h.o.c.g.a(this.f6425f, aVar.f6425f) && h.o.c.g.a(this.f6426g, aVar.f6426g) && h.o.c.g.a(this.f6427h, aVar.f6427h) && this.a.f6850f == aVar.a.f6850f;
        }
        h.o.c.g.f("that");
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (h.o.c.g.a(this.a, aVar.a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f6423d.hashCode();
        int hashCode2 = this.f6428i.hashCode();
        int hashCode3 = this.b.hashCode();
        int hashCode4 = this.f6422c.hashCode();
        int hashCode5 = this.f6430k.hashCode();
        int hashCode6 = Objects.hashCode(this.f6429j);
        int hashCode7 = Objects.hashCode(this.f6425f);
        int hashCode8 = Objects.hashCode(this.f6426g);
        return Objects.hashCode(this.f6427h) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder o;
        Object obj;
        StringBuilder o2 = f.b.a.a.a.o("Address{");
        o2.append(this.a.f6849e);
        o2.append(':');
        o2.append(this.a.f6850f);
        o2.append(", ");
        if (this.f6429j != null) {
            o = f.b.a.a.a.o("proxy=");
            obj = this.f6429j;
        } else {
            o = f.b.a.a.a.o("proxySelector=");
            obj = this.f6430k;
        }
        o.append(obj);
        o2.append(o.toString());
        o2.append("}");
        return o2.toString();
    }
}
