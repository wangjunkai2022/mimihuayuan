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
    public final List<y> f6367c;

    /* renamed from: d  reason: collision with root package name */
    public final List<y> f6368d;

    /* renamed from: e  reason: collision with root package name */
    public final t.b f6369e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6370f;

    /* renamed from: g  reason: collision with root package name */
    public final c f6371g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6372h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6373i;

    /* renamed from: j  reason: collision with root package name */
    public final p f6374j;

    /* renamed from: k  reason: collision with root package name */
    public final d f6375k;

    /* renamed from: l  reason: collision with root package name */
    public final s f6376l;

    /* renamed from: m  reason: collision with root package name */
    public final Proxy f6377m;
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
    public static final List<m> D = i.m0.b.o(m.f6495g, m.f6496h);

    /* compiled from: OkHttpClient.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public int A;
        public int B;

        /* renamed from: k  reason: collision with root package name */
        public d f6386k;

        /* renamed from: m  reason: collision with root package name */
        public Proxy f6388m;
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
        public final List<y> f6378c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public final List<y> f6379d = new ArrayList();

        /* renamed from: e  reason: collision with root package name */
        public t.b f6380e = new i.m0.a(t.a);

        /* renamed from: f  reason: collision with root package name */
        public boolean f6381f = true;

        /* renamed from: g  reason: collision with root package name */
        public c f6382g = c.a;

        /* renamed from: h  reason: collision with root package name */
        public boolean f6383h = true;

        /* renamed from: i  reason: collision with root package name */
        public boolean f6384i = true;

        /* renamed from: j  reason: collision with root package name */
        public p f6385j = p.a;

        /* renamed from: l  reason: collision with root package name */
        public s f6387l = s.a;
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
            this.v = h.f6443c;
            this.y = 10000;
            this.z = 10000;
            this.A = 10000;
        }

        public final a a(y yVar) {
            this.f6378c.add(yVar);
            return this;
        }

        public final a b(y yVar) {
            this.f6379d.add(yVar);
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
                f.a aVar = i.m0.i.f.f6741c;
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
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b0(i.b0.a r7) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
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
        c.a.a.b.g.h.d(aVar.f6378c, this.f6367c);
        c.a.a.b.g.h.d(aVar.f6379d, this.f6368d);
        aVar.f6380e = this.f6369e;
        aVar.f6381f = this.f6370f;
        aVar.f6382g = this.f6371g;
        aVar.f6383h = this.f6372h;
        aVar.f6384i = this.f6373i;
        aVar.f6385j = this.f6374j;
        aVar.f6386k = this.f6375k;
        aVar.f6387l = this.f6376l;
        aVar.f6388m = this.f6377m;
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
