package i;

import i.f;
import i.m0.i.f;
import i.t;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
/* compiled from: OkHttpClient.kt */
/* loaded from: classes.dex */
public class b0 implements Cloneable, f.a {
    public final int A;
    public final int B;
    public final q a;
    public final l b;

    /* renamed from: c  reason: collision with root package name */
    public final List<y> f6451c;

    /* renamed from: d  reason: collision with root package name */
    public final List<y> f6452d;

    /* renamed from: e  reason: collision with root package name */
    public final t.b f6453e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6454f;

    /* renamed from: g  reason: collision with root package name */
    public final c f6455g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6456h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6457i;

    /* renamed from: j  reason: collision with root package name */
    public final p f6458j;

    /* renamed from: k  reason: collision with root package name */
    public final d f6459k;

    /* renamed from: l  reason: collision with root package name */
    public final s f6460l;

    /* renamed from: m  reason: collision with root package name */
    public final Proxy f6461m;
    public final ProxySelector n;
    public final c o;
    public final SocketFactory p;
    public final SSLSocketFactory q;
    public final X509TrustManager r;
    public final List<m> s;
    public final List<c0> t;
    public final HostnameVerifier u;
    public final h v;
    public final i.m0.k.c w;
    public final int x;
    public final int y;
    public final int z;
    public static final b E = new b(null);
    public static final List<c0> C = i.m0.b.o(c0.HTTP_2, c0.HTTP_1_1);
    public static final List<m> D = i.m0.b.o(m.f6579g, m.f6580h);

    /* compiled from: OkHttpClient.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public int A;
        public int B;

        /* renamed from: k  reason: collision with root package name */
        public d f6470k;

        /* renamed from: m  reason: collision with root package name */
        public Proxy f6472m;
        public ProxySelector n;
        public SocketFactory p;
        public SSLSocketFactory q;
        public X509TrustManager r;
        public List<m> s;
        public List<? extends c0> t;
        public HostnameVerifier u;
        public h v;
        public i.m0.k.c w;
        public int x;
        public int y;
        public int z;
        public q a = new q();
        public l b = new l();

        /* renamed from: c  reason: collision with root package name */
        public final List<y> f6462c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public final List<y> f6463d = new ArrayList();

        /* renamed from: e  reason: collision with root package name */
        public t.b f6464e = new i.m0.a(t.a);

        /* renamed from: f  reason: collision with root package name */
        public boolean f6465f = true;

        /* renamed from: g  reason: collision with root package name */
        public c f6466g = c.a;

        /* renamed from: h  reason: collision with root package name */
        public boolean f6467h = true;

        /* renamed from: i  reason: collision with root package name */
        public boolean f6468i = true;

        /* renamed from: j  reason: collision with root package name */
        public p f6469j = p.a;

        /* renamed from: l  reason: collision with root package name */
        public s f6471l = s.a;
        public c o = c.a;

        public a() {
            SocketFactory socketFactory = SocketFactory.getDefault();
            h.o.c.g.b(socketFactory, "SocketFactory.getDefault()");
            this.p = socketFactory;
            b bVar = b0.E;
            this.s = b0.D;
            b bVar2 = b0.E;
            this.t = b0.C;
            this.u = i.m0.k.d.a;
            this.v = h.f6527c;
            this.y = 10000;
            this.z = 10000;
            this.A = 10000;
        }

        public final a a(y yVar) {
            this.f6462c.add(yVar);
            return this;
        }

        public final a b(y yVar) {
            this.f6463d.add(yVar);
            return this;
        }

        public final a c(long j2, TimeUnit timeUnit) {
            if (timeUnit != null) {
                this.y = i.m0.b.d("timeout", j2, timeUnit);
                return this;
            }
            h.o.c.g.f("unit");
            throw null;
        }

        public final a d(long j2, TimeUnit timeUnit) {
            if (timeUnit != null) {
                this.z = i.m0.b.d("timeout", j2, timeUnit);
                return this;
            }
            h.o.c.g.f("unit");
            throw null;
        }

        public final a e(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (sSLSocketFactory == null) {
                h.o.c.g.f("sslSocketFactory");
                throw null;
            } else if (x509TrustManager != null) {
                this.q = sSLSocketFactory;
                f.a aVar = i.m0.i.f.f6825c;
                this.w = i.m0.i.f.a.b(x509TrustManager);
                this.r = x509TrustManager;
                return this;
            } else {
                h.o.c.g.f("trustManager");
                throw null;
            }
        }
    }

    /* compiled from: OkHttpClient.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(h.o.c.f fVar) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b0(i.b0.a r7) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.b0.<init>(i.b0$a):void");
    }

    @Override // i.f.a
    public f a(e0 e0Var) {
        d0 d0Var = new d0(this, e0Var, false, null);
        d0Var.a = new i.m0.d.m(this, d0Var);
        return d0Var;
    }

    public a b() {
        a aVar = new a();
        aVar.a = this.a;
        aVar.b = this.b;
        c.a.a.b.g.h.d(aVar.f6462c, this.f6451c);
        c.a.a.b.g.h.d(aVar.f6463d, this.f6452d);
        aVar.f6464e = this.f6453e;
        aVar.f6465f = this.f6454f;
        aVar.f6466g = this.f6455g;
        aVar.f6467h = this.f6456h;
        aVar.f6468i = this.f6457i;
        aVar.f6469j = this.f6458j;
        aVar.f6470k = this.f6459k;
        aVar.f6471l = this.f6460l;
        aVar.f6472m = this.f6461m;
        aVar.n = this.n;
        aVar.o = this.o;
        aVar.p = this.p;
        aVar.q = this.q;
        aVar.r = this.r;
        aVar.s = this.s;
        aVar.t = this.t;
        aVar.u = this.u;
        aVar.v = this.v;
        aVar.w = this.w;
        aVar.x = this.x;
        aVar.y = this.y;
        aVar.z = this.z;
        aVar.A = this.A;
        aVar.B = this.B;
        return aVar;
    }

    public Object clone() {
        return super.clone();
    }

    public b0() {
        this(new a());
    }
}
