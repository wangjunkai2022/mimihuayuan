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
    public final List<m> f6431c;

    /* renamed from: d  reason: collision with root package name */
    public final s f6432d;

    /* renamed from: e  reason: collision with root package name */
    public final SocketFactory f6433e;

    /* renamed from: f  reason: collision with root package name */
    public final SSLSocketFactory f6434f;

    /* renamed from: g  reason: collision with root package name */
    public final HostnameVerifier f6435g;

    /* renamed from: h  reason: collision with root package name */
    public final h f6436h;

    /* renamed from: i  reason: collision with root package name */
    public final c f6437i;

    /* renamed from: j  reason: collision with root package name */
    public final Proxy f6438j;

    /* renamed from: k  reason: collision with root package name */
    public final ProxySelector f6439k;

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
            this.f6432d = sVar;
            this.f6433e = socketFactory;
            this.f6434f = sSLSocketFactory;
            this.f6435g = hostnameVerifier;
            this.f6436h = hVar;
            this.f6437i = cVar;
            this.f6438j = proxy;
            this.f6439k = proxySelector;
            x.a aVar = new x.a();
            aVar.h(this.f6434f != null ? "https" : "http");
            aVar.e(str);
            boolean z = true;
            if ((1 > i2 || 65535 < i2) ? false : false) {
                aVar.f6867e = i2;
                this.a = aVar.b();
                this.b = b.D(list);
                this.f6431c = b.D(list2);
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
            return h.o.c.g.a(this.f6432d, aVar.f6432d) && h.o.c.g.a(this.f6437i, aVar.f6437i) && h.o.c.g.a(this.b, aVar.b) && h.o.c.g.a(this.f6431c, aVar.f6431c) && h.o.c.g.a(this.f6439k, aVar.f6439k) && h.o.c.g.a(this.f6438j, aVar.f6438j) && h.o.c.g.a(this.f6434f, aVar.f6434f) && h.o.c.g.a(this.f6435g, aVar.f6435g) && h.o.c.g.a(this.f6436h, aVar.f6436h) && this.a.f6859f == aVar.a.f6859f;
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
        int hashCode = this.f6432d.hashCode();
        int hashCode2 = this.f6437i.hashCode();
        int hashCode3 = this.b.hashCode();
        int hashCode4 = this.f6431c.hashCode();
        int hashCode5 = this.f6439k.hashCode();
        int hashCode6 = Objects.hashCode(this.f6438j);
        int hashCode7 = Objects.hashCode(this.f6434f);
        int hashCode8 = Objects.hashCode(this.f6435g);
        return Objects.hashCode(this.f6436h) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder o;
        Object obj;
        StringBuilder o2 = f.b.a.a.a.o("Address{");
        o2.append(this.a.f6858e);
        o2.append(':');
        o2.append(this.a.f6859f);
        o2.append(", ");
        if (this.f6438j != null) {
            o = f.b.a.a.a.o("proxy=");
            obj = this.f6438j;
        } else {
            o = f.b.a.a.a.o("proxySelector=");
            obj = this.f6439k;
        }
        o.append(obj);
        o2.append(o.toString());
        o2.append("}");
        return o2.toString();
    }
}
