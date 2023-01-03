package i.m0.d;

import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import i.b0;
import i.c0;
import i.k0;
import i.m0.g.f;
import i.m0.g.n;
import i.m0.g.r;
import i.m0.i.f;
import i.t;
import i.v;
import i.x;
import i.y;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: RealConnection.kt */
/* loaded from: classes.dex */
public final class h extends f.c implements i.k {
    public Socket b;

    /* renamed from: c  reason: collision with root package name */
    public Socket f6552c;

    /* renamed from: d  reason: collision with root package name */
    public v f6553d;

    /* renamed from: e  reason: collision with root package name */
    public c0 f6554e;

    /* renamed from: f  reason: collision with root package name */
    public i.m0.g.f f6555f;

    /* renamed from: g  reason: collision with root package name */
    public j.j f6556g;

    /* renamed from: h  reason: collision with root package name */
    public j.i f6557h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6558i;

    /* renamed from: j  reason: collision with root package name */
    public int f6559j;

    /* renamed from: k  reason: collision with root package name */
    public int f6560k;

    /* renamed from: l  reason: collision with root package name */
    public int f6561l;

    /* renamed from: m  reason: collision with root package name */
    public int f6562m;
    public final List<Reference<m>> n;
    public long o;
    public final i p;
    public final k0 q;

    public h(i iVar, k0 k0Var) {
        if (iVar == null) {
            h.o.c.g.f("connectionPool");
            throw null;
        } else if (k0Var != null) {
            this.p = iVar;
            this.q = k0Var;
            this.f6562m = 1;
            this.n = new ArrayList();
            this.o = RecyclerView.FOREVER_NS;
        } else {
            h.o.c.g.f("route");
            throw null;
        }
    }

    @Override // i.m0.g.f.c
    public void a(i.m0.g.f fVar) {
        if (fVar != null) {
            synchronized (this.p) {
                this.f6562m = fVar.f();
            }
            return;
        }
        h.o.c.g.f("connection");
        throw null;
    }

    @Override // i.m0.g.f.c
    public void b(i.m0.g.m mVar) throws IOException {
        if (mVar != null) {
            mVar.c(i.m0.g.b.REFUSED_STREAM, null);
        } else {
            h.o.c.g.f("stream");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d1 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(int r15, int r16, int r17, int r18, boolean r19, i.f r20, i.t r21) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.d.h.c(int, int, int, int, boolean, i.f, i.t):void");
    }

    public final void d(int i2, int i3, i.f fVar, t tVar) throws IOException {
        Socket socket;
        int i4;
        k0 k0Var = this.q;
        Proxy proxy = k0Var.b;
        i.a aVar = k0Var.a;
        Proxy.Type type = proxy.type();
        if (type == null || ((i4 = e.a[type.ordinal()]) != 1 && i4 != 2)) {
            socket = new Socket(proxy);
        } else {
            socket = aVar.f6349e.createSocket();
            if (socket == null) {
                h.o.c.g.e();
                throw null;
            }
        }
        this.b = socket;
        InetSocketAddress inetSocketAddress = this.q.f6486c;
        if (tVar == null) {
            throw null;
        }
        if (fVar == null) {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (inetSocketAddress != null) {
            socket.setSoTimeout(i3);
            try {
                f.a aVar2 = i.m0.i.f.f6741c;
                i.m0.i.f.a.g(socket, this.q.f6486c, i2);
                try {
                    this.f6556g = j.b.h(j.b.y(socket));
                    this.f6557h = j.b.g(j.b.w(socket));
                } catch (NullPointerException e2) {
                    if (h.o.c.g.a(e2.getMessage(), "throw with null exception")) {
                        throw new IOException(e2);
                    }
                }
            } catch (ConnectException e3) {
                StringBuilder o = f.b.a.a.a.o("Failed to connect to ");
                o.append(this.q.f6486c);
                ConnectException connectException = new ConnectException(o.toString());
                connectException.initCause(e3);
                throw connectException;
            }
        } else {
            h.o.c.g.f("inetSocketAddress");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x014f, code lost:
        if (r4 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0151, code lost:
        r1 = r18.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0153, code lost:
        if (r1 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0155, code lost:
        i.m0.b.g(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0158, code lost:
        r18.b = null;
        r18.f6557h = null;
        r18.f6556g = null;
        r1 = r18.q;
        r23.a(r22, r1.f6486c, r1.b);
        r8 = r8 + 1;
        r6 = false;
        r7 = true;
        r1 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0185, code lost:
        return;
     */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Throwable, i.b0, i.m0.d.h] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(int r19, int r20, int r21, i.f r22, i.t r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.d.h.e(int, int, int, i.f, i.t):void");
    }

    public final void f(b bVar, int i2, i.f fVar, t tVar) throws IOException {
        c0 c0Var = c0.H2_PRIOR_KNOWLEDGE;
        c0 c0Var2 = c0.HTTP_1_1;
        i.a aVar = this.q.a;
        SSLSocketFactory sSLSocketFactory = aVar.f6350f;
        if (sSLSocketFactory == null) {
            if (aVar.b.contains(c0Var)) {
                this.f6552c = this.b;
                this.f6554e = c0Var;
                k(i2);
                return;
            }
            this.f6552c = this.b;
            this.f6554e = c0Var2;
            return;
        }
        SSLSocket sSLSocket = null;
        String str = null;
        try {
            Socket createSocket = sSLSocketFactory.createSocket(this.b, aVar.a.f6774e, aVar.a.f6775f, true);
            if (createSocket != null) {
                SSLSocket sSLSocket2 = (SSLSocket) createSocket;
                try {
                    i.m a = bVar.a(sSLSocket2);
                    if (a.b) {
                        f.a aVar2 = i.m0.i.f.f6741c;
                        i.m0.i.f.a.e(sSLSocket2, aVar.a.f6774e, aVar.b);
                    }
                    sSLSocket2.startHandshake();
                    SSLSession session = sSLSocket2.getSession();
                    v.a aVar3 = v.f6767f;
                    h.o.c.g.b(session, "sslSocketSession");
                    v a2 = aVar3.a(session);
                    HostnameVerifier hostnameVerifier = aVar.f6351g;
                    if (hostnameVerifier != null) {
                        if (!hostnameVerifier.verify(aVar.a.f6774e, session)) {
                            List<Certificate> b = a2.b();
                            if (!b.isEmpty()) {
                                Certificate certificate = b.get(0);
                                if (certificate != null) {
                                    X509Certificate x509Certificate = (X509Certificate) certificate;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("\n              |Hostname ");
                                    sb.append(aVar.a.f6774e);
                                    sb.append(" not verified:\n              |    certificate: ");
                                    sb.append(i.h.f6444d.a(x509Certificate));
                                    sb.append("\n              |    DN: ");
                                    Principal subjectDN = x509Certificate.getSubjectDN();
                                    h.o.c.g.b(subjectDN, "cert.subjectDN");
                                    sb.append(subjectDN.getName());
                                    sb.append("\n              |    subjectAltNames: ");
                                    i.m0.k.d dVar = i.m0.k.d.a;
                                    List<String> a3 = dVar.a(x509Certificate, 7);
                                    List<String> a4 = dVar.a(x509Certificate, 2);
                                    ArrayList arrayList = new ArrayList(a4.size() + a3.size());
                                    arrayList.addAll(a3);
                                    arrayList.addAll(a4);
                                    sb.append(arrayList);
                                    sb.append("\n              ");
                                    throw new SSLPeerUnverifiedException(h.s.d.z(sb.toString(), null, 1));
                                }
                                throw new h.f("null cannot be cast to non-null type java.security.cert.X509Certificate");
                            }
                            throw new SSLPeerUnverifiedException("Hostname " + aVar.a.f6774e + " not verified (no certificates)");
                        }
                        i.h hVar = aVar.f6352h;
                        if (hVar != null) {
                            this.f6553d = new v(a2.b, a2.f6768c, a2.f6769d, new f(hVar, a2, aVar));
                            hVar.a(aVar.a.f6774e, new g(this));
                            if (a.b) {
                                f.a aVar4 = i.m0.i.f.f6741c;
                                str = i.m0.i.f.a.h(sSLSocket2);
                            }
                            this.f6552c = sSLSocket2;
                            this.f6556g = j.b.h(j.b.y(sSLSocket2));
                            this.f6557h = j.b.g(j.b.w(sSLSocket2));
                            if (str != null) {
                                c0Var2 = c0.f6395i.a(str);
                            }
                            this.f6554e = c0Var2;
                            f.a aVar5 = i.m0.i.f.f6741c;
                            i.m0.i.f.a.a(sSLSocket2);
                            if (this.f6554e == c0.HTTP_2) {
                                k(i2);
                                return;
                            }
                            return;
                        }
                        h.o.c.g.e();
                        throw null;
                    }
                    h.o.c.g.e();
                    throw null;
                } catch (Throwable th) {
                    th = th;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        f.a aVar6 = i.m0.i.f.f6741c;
                        i.m0.i.f.a.a(sSLSocket);
                    }
                    if (sSLSocket != null) {
                        i.m0.b.g(sSLSocket);
                    }
                    throw th;
                }
            }
            throw new h.f("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean g() {
        return this.f6555f != null;
    }

    public final i.m0.e.d h(b0 b0Var, y.a aVar) throws SocketException {
        Socket socket = this.f6552c;
        if (socket != null) {
            j.j jVar = this.f6556g;
            if (jVar != null) {
                j.i iVar = this.f6557h;
                if (iVar != null) {
                    i.m0.g.f fVar = this.f6555f;
                    if (fVar != null) {
                        return new i.m0.g.k(b0Var, this, aVar, fVar);
                    }
                    socket.setSoTimeout(aVar.b());
                    jVar.i().g(aVar.b(), TimeUnit.MILLISECONDS);
                    iVar.i().g(aVar.c(), TimeUnit.MILLISECONDS);
                    return new i.m0.f.a(b0Var, this, jVar, iVar);
                }
                h.o.c.g.e();
                throw null;
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public final void i() {
        boolean z = !Thread.holdsLock(this.p);
        if (h.j.a && !z) {
            throw new AssertionError("Assertion failed");
        }
        synchronized (this.p) {
            this.f6558i = true;
        }
    }

    public Socket j() {
        Socket socket = this.f6552c;
        if (socket != null) {
            return socket;
        }
        h.o.c.g.e();
        throw null;
    }

    public final void k(int i2) throws IOException {
        Socket socket = this.f6552c;
        if (socket != null) {
            j.j jVar = this.f6556g;
            if (jVar != null) {
                j.i iVar = this.f6557h;
                if (iVar != null) {
                    socket.setSoTimeout(0);
                    f.b bVar = new f.b(true);
                    String str = this.q.a.a.f6774e;
                    if (str == null) {
                        h.o.c.g.f("connectionName");
                        throw null;
                    } else if (jVar == null) {
                        h.o.c.g.f("source");
                        throw null;
                    } else if (iVar != null) {
                        bVar.a = socket;
                        bVar.b = str;
                        bVar.f6657c = jVar;
                        bVar.f6658d = iVar;
                        bVar.f6659e = this;
                        bVar.f6661g = i2;
                        i.m0.g.f fVar = new i.m0.g.f(bVar);
                        this.f6555f = fVar;
                        n nVar = fVar.s;
                        synchronized (nVar) {
                            if (!nVar.f6716c) {
                                if (nVar.f6719f) {
                                    if (n.f6715g.isLoggable(Level.FINE)) {
                                        Logger logger = n.f6715g;
                                        logger.fine(i.m0.b.l(">> CONNECTION " + i.m0.g.e.a.c(), new Object[0]));
                                    }
                                    nVar.f6718e.s(i.m0.g.e.a);
                                    nVar.f6718e.flush();
                                }
                            } else {
                                throw new IOException("closed");
                            }
                        }
                        n nVar2 = fVar.s;
                        r rVar = fVar.f6655l;
                        synchronized (nVar2) {
                            if (rVar != null) {
                                if (!nVar2.f6716c) {
                                    nVar2.f(0, Integer.bitCount(rVar.a) * 6, 4, 0);
                                    int i3 = 0;
                                    while (i3 < 10) {
                                        if (((1 << i3) & rVar.a) != 0) {
                                            nVar2.f6718e.l(i3 != 4 ? i3 != 7 ? i3 : 4 : 3);
                                            nVar2.f6718e.m(rVar.b[i3]);
                                        }
                                        i3++;
                                    }
                                    nVar2.f6718e.flush();
                                } else {
                                    throw new IOException("closed");
                                }
                            } else {
                                h.o.c.g.f("settings");
                                throw null;
                            }
                        }
                        int a = fVar.f6655l.a();
                        if (a != 65535) {
                            fVar.s.H(0, a - SupportMenu.USER_MASK);
                        }
                        f.d dVar = fVar.t;
                        StringBuilder o = f.b.a.a.a.o("OkHttp ");
                        o.append(fVar.f6647d);
                        new Thread(dVar, o.toString()).start();
                        return;
                    } else {
                        h.o.c.g.f("sink");
                        throw null;
                    }
                }
                h.o.c.g.e();
                throw null;
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public final boolean l(x xVar) {
        if (xVar != null) {
            x xVar2 = this.q.a.a;
            if (xVar.f6775f != xVar2.f6775f) {
                return false;
            }
            if (h.o.c.g.a(xVar.f6774e, xVar2.f6774e)) {
                return true;
            }
            v vVar = this.f6553d;
            if (vVar != null) {
                i.m0.k.d dVar = i.m0.k.d.a;
                String str = xVar.f6774e;
                if (vVar == null) {
                    h.o.c.g.e();
                    throw null;
                }
                Certificate certificate = vVar.b().get(0);
                if (certificate != null) {
                    return dVar.b(str, (X509Certificate) certificate);
                }
                throw new h.f("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            return false;
        }
        h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
        throw null;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Connection{");
        o.append(this.q.a.a.f6774e);
        o.append(':');
        o.append(this.q.a.a.f6775f);
        o.append(',');
        o.append(" proxy=");
        o.append(this.q.b);
        o.append(" hostAddress=");
        o.append(this.q.f6486c);
        o.append(" cipherSuite=");
        v vVar = this.f6553d;
        o.append((vVar == null || (r1 = vVar.f6768c) == null) ? "none" : "none");
        o.append(" protocol=");
        o.append(this.f6554e);
        o.append('}');
        return o.toString();
    }
}
