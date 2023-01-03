package i.m0.d;

import f.b.a.a.a;
import h.o.c.g;
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
    public boolean f6529c;

    /* renamed from: d  reason: collision with root package name */
    public final List<m> f6530d;

    public b(List<m> list) {
        if (list != null) {
            this.f6530d = list;
        } else {
            g.f("connectionSpecs");
            throw null;
        }
    }

    public final m a(SSLSocket sSLSocket) throws IOException {
        m mVar;
        boolean z;
        String[] strArr;
        String[] strArr2;
        int i2 = this.a;
        int size = this.f6530d.size();
        while (true) {
            if (i2 >= size) {
                mVar = null;
                break;
            }
            mVar = this.f6530d.get(i2);
            if (mVar.b(sSLSocket)) {
                this.a = i2 + 1;
                break;
            }
            i2++;
        }
        if (mVar == null) {
            StringBuilder o = a.o("Unable to find acceptable protocols. isFallback=");
            o.append(this.f6529c);
            o.append(',');
            o.append(" modes=");
            o.append(this.f6530d);
            o.append(',');
            o.append(" supported protocols=");
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            if (enabledProtocols == null) {
                g.e();
                throw null;
            }
            String arrays = Arrays.toString(enabledProtocols);
            g.b(arrays, "java.util.Arrays.toString(this)");
            o.append(arrays);
            throw new UnknownServiceException(o.toString());
        }
        int i3 = this.a;
        int size2 = this.f6530d.size();
        while (true) {
            if (i3 >= size2) {
                z = false;
                break;
            } else if (this.f6530d.get(i3).b(sSLSocket)) {
                z = true;
                break;
            } else {
                i3++;
            }
        }
        this.b = z;
        boolean z2 = this.f6529c;
        if (mVar.f6497c != null) {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            g.b(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            String[] strArr3 = mVar.f6497c;
            j.b bVar = j.t;
            strArr = i.m0.b.v(enabledCipherSuites, strArr3, j.b);
        } else {
            strArr = sSLSocket.getEnabledCipherSuites();
        }
        if (mVar.f6498d != null) {
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            g.b(enabledProtocols2, "sslSocket.enabledProtocols");
            strArr2 = i.m0.b.v(enabledProtocols2, mVar.f6498d, h.l.a.a);
        } else {
            strArr2 = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        g.b(supportedCipherSuites, "supportedCipherSuites");
        j.b bVar2 = j.t;
        int p = i.m0.b.p(supportedCipherSuites, "TLS_FALLBACK_SCSV", j.b);
        if (z2 && p != -1) {
            g.b(strArr, "cipherSuitesIntersection");
            String str = supportedCipherSuites[p];
            g.b(str, "supportedCipherSuites[indexOfFallbackScsv]");
            Object[] copyOf = Arrays.copyOf(strArr, strArr.length + 1);
            g.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            strArr = (String[]) copyOf;
            strArr[strArr.length - 1] = str;
        }
        m.a aVar = new m.a(mVar);
        g.b(strArr, "cipherSuitesIntersection");
        aVar.b((String[]) Arrays.copyOf(strArr, strArr.length));
        g.b(strArr2, "tlsVersionsIntersection");
        aVar.e((String[]) Arrays.copyOf(strArr2, strArr2.length));
        m a = aVar.a();
        if (a.c() != null) {
            sSLSocket.setEnabledProtocols(a.f6498d);
        }
        if (a.a() != null) {
            sSLSocket.setEnabledCipherSuites(a.f6497c);
        }
        return mVar;
    }
}
