package i.m0.d;

import i.j;
import i.m;
import java.io.IOException;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* compiled from: ConnectionSpecSelector.kt */
/* loaded from: classes.dex */
public final class b {
    public int a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6613c;

    /* renamed from: d  reason: collision with root package name */
    public final List<i.m> f6614d;

    public b(List<i.m> list) {
        if (list != null) {
            this.f6614d = list;
        } else {
            h.o.c.g.f("connectionSpecs");
            throw null;
        }
    }

    public final i.m a(SSLSocket sSLSocket) throws IOException {
        i.m mVar;
        boolean z;
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        int i2 = this.a;
        int size = this.f6614d.size();
        while (true) {
            if (i2 >= size) {
                mVar = null;
                break;
            }
            mVar = this.f6614d.get(i2);
            if (mVar.b(sSLSocket)) {
                this.a = i2 + 1;
                break;
            }
            i2++;
        }
        if (mVar == null) {
            StringBuilder o = f.b.a.a.a.o("Unable to find acceptable protocols. isFallback=");
            o.append(this.f6613c);
            o.append(',');
            o.append(" modes=");
            o.append(this.f6614d);
            o.append(',');
            o.append(" supported protocols=");
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            if (enabledProtocols2 == null) {
                h.o.c.g.e();
                throw null;
            }
            String arrays = Arrays.toString(enabledProtocols2);
            h.o.c.g.b(arrays, "java.util.Arrays.toString(this)");
            o.append(arrays);
            throw new UnknownServiceException(o.toString());
        }
        int i3 = this.a;
        int size2 = this.f6614d.size();
        while (true) {
            if (i3 >= size2) {
                z = false;
                break;
            } else if (this.f6614d.get(i3).b(sSLSocket)) {
                z = true;
                break;
            } else {
                i3++;
            }
        }
        this.b = z;
        boolean z2 = this.f6613c;
        if (mVar.f6581c != null) {
            String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
            h.o.c.g.b(enabledCipherSuites2, "sslSocket.enabledCipherSuites");
            String[] strArr = mVar.f6581c;
            j.b bVar = i.j.t;
            enabledCipherSuites = i.m0.b.v(enabledCipherSuites2, strArr, i.j.b);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (mVar.f6582d != null) {
            String[] enabledProtocols3 = sSLSocket.getEnabledProtocols();
            h.o.c.g.b(enabledProtocols3, "sslSocket.enabledProtocols");
            enabledProtocols = i.m0.b.v(enabledProtocols3, mVar.f6582d, h.l.a.a);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        h.o.c.g.b(supportedCipherSuites, "supportedCipherSuites");
        j.b bVar2 = i.j.t;
        int p = i.m0.b.p(supportedCipherSuites, "TLS_FALLBACK_SCSV", i.j.b);
        if (z2 && p != -1) {
            h.o.c.g.b(enabledCipherSuites, "cipherSuitesIntersection");
            String str = supportedCipherSuites[p];
            h.o.c.g.b(str, "supportedCipherSuites[indexOfFallbackScsv]");
            Object[] copyOf = Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            h.o.c.g.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            enabledCipherSuites = (String[]) copyOf;
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        m.a aVar = new m.a(mVar);
        h.o.c.g.b(enabledCipherSuites, "cipherSuitesIntersection");
        aVar.b((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
        h.o.c.g.b(enabledProtocols, "tlsVersionsIntersection");
        aVar.e((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
        i.m a = aVar.a();
        if (a.c() != null) {
            sSLSocket.setEnabledProtocols(a.f6582d);
        }
        if (a.a() != null) {
            sSLSocket.setEnabledCipherSuites(a.f6581c);
        }
        return mVar;
    }
}
