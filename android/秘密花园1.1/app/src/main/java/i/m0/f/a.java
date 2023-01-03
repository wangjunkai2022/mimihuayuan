package i.m0.f;

import androidx.core.os.EnvironmentCompat;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import i.b0;
import i.e0;
import i.h0;
import i.k0;
import i.m0.d.h;
import i.p;
import i.w;
import i.x;
import j.a0;
import j.g;
import j.i;
import j.j;
import j.n;
import j.y;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.util.concurrent.TimeUnit;

/* compiled from: Http1ExchangeCodec.kt */
/* loaded from: classes.dex */
public final class a implements i.m0.e.d {
    public int a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public w f6599c;

    /* renamed from: d  reason: collision with root package name */
    public final b0 f6600d;

    /* renamed from: e  reason: collision with root package name */
    public final h f6601e;

    /* renamed from: f  reason: collision with root package name */
    public final j f6602f;

    /* renamed from: g  reason: collision with root package name */
    public final i f6603g;

    /* compiled from: Http1ExchangeCodec.kt */
    /* renamed from: i.m0.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public abstract class AbstractC0109a implements a0 {
        public final n a;
        public boolean b;

        public AbstractC0109a() {
            this.a = new n(a.this.f6602f.i());
        }

        @Override // j.a0
        public long c(g gVar, long j2) {
            if (gVar != null) {
                try {
                    return a.this.f6602f.c(gVar, j2);
                } catch (IOException e2) {
                    h hVar = a.this.f6601e;
                    if (hVar == null) {
                        h.o.c.g.e();
                        throw null;
                    }
                    hVar.i();
                    d();
                    throw e2;
                }
            }
            h.o.c.g.f("sink");
            throw null;
        }

        public final void d() {
            a aVar = a.this;
            int i2 = aVar.a;
            if (i2 == 6) {
                return;
            }
            if (i2 == 5) {
                a.i(aVar, this.a);
                a.this.a = 6;
                return;
            }
            StringBuilder o = f.b.a.a.a.o("state: ");
            o.append(a.this.a);
            throw new IllegalStateException(o.toString());
        }

        @Override // j.a0
        public j.b0 i() {
            return this.a;
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* loaded from: classes.dex */
    public final class b implements y {
        public final n a;
        public boolean b;

        public b() {
            this.a = new n(a.this.f6603g.i());
        }

        @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.b) {
                return;
            }
            this.b = true;
            a.this.f6603g.y("0\r\n\r\n");
            a.i(a.this, this.a);
            a.this.a = 3;
        }

        @Override // j.y, java.io.Flushable
        public synchronized void flush() {
            if (this.b) {
                return;
            }
            a.this.f6603g.flush();
        }

        @Override // j.y
        public j.b0 i() {
            return this.a;
        }

        @Override // j.y
        public void j(g gVar, long j2) {
            if (gVar != null) {
                if (!(!this.b)) {
                    throw new IllegalStateException("closed".toString());
                }
                if (j2 == 0) {
                    return;
                }
                a.this.f6603g.k(j2);
                a.this.f6603g.y("\r\n");
                a.this.f6603g.j(gVar, j2);
                a.this.f6603g.y("\r\n");
                return;
            }
            h.o.c.g.f("source");
            throw null;
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* loaded from: classes.dex */
    public final class c extends AbstractC0109a {

        /* renamed from: d  reason: collision with root package name */
        public long f6606d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f6607e;

        /* renamed from: f  reason: collision with root package name */
        public final x f6608f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ a f6609g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(a aVar, x xVar) {
            super();
            if (xVar != null) {
                this.f6609g = aVar;
                this.f6608f = xVar;
                this.f6606d = -1L;
                this.f6607e = true;
                return;
            }
            h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }

        @Override // i.m0.f.a.AbstractC0109a, j.a0
        public long c(g gVar, long j2) {
            if (gVar == null) {
                h.o.c.g.f("sink");
                throw null;
            }
            boolean z = true;
            if (j2 >= 0) {
                if (!this.b) {
                    if (this.f6607e) {
                        long j3 = this.f6606d;
                        if (j3 == 0 || j3 == -1) {
                            if (this.f6606d != -1) {
                                this.f6609g.f6602f.n();
                            }
                            try {
                                this.f6606d = this.f6609g.f6602f.A();
                                String n = this.f6609g.f6602f.n();
                                if (n != null) {
                                    String obj = h.s.d.y(n).toString();
                                    if (this.f6606d >= 0) {
                                        if (obj.length() <= 0) {
                                            z = false;
                                        }
                                        if (!z || h.s.d.w(obj, ";", false, 2)) {
                                            if (this.f6606d == 0) {
                                                this.f6607e = false;
                                                a aVar = this.f6609g;
                                                aVar.f6599c = aVar.l();
                                                a aVar2 = this.f6609g;
                                                b0 b0Var = aVar2.f6600d;
                                                if (b0Var == null) {
                                                    h.o.c.g.e();
                                                    throw null;
                                                }
                                                p pVar = b0Var.f6374j;
                                                x xVar = this.f6608f;
                                                w wVar = aVar2.f6599c;
                                                if (wVar != null) {
                                                    i.m0.e.e.b(pVar, xVar, wVar);
                                                    d();
                                                } else {
                                                    h.o.c.g.e();
                                                    throw null;
                                                }
                                            }
                                            if (!this.f6607e) {
                                                return -1L;
                                            }
                                        }
                                    }
                                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f6606d + obj + '\"');
                                }
                                throw new h.f("null cannot be cast to non-null type kotlin.CharSequence");
                            } catch (NumberFormatException e2) {
                                throw new ProtocolException(e2.getMessage());
                            }
                        }
                        long c2 = super.c(gVar, Math.min(j2, this.f6606d));
                        if (c2 == -1) {
                            h hVar = this.f6609g.f6601e;
                            if (hVar == null) {
                                h.o.c.g.e();
                                throw null;
                            }
                            hVar.i();
                            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                            d();
                            throw protocolException;
                        }
                        this.f6606d -= c2;
                        return c2;
                    }
                    return -1L;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
        }

        @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.b) {
                return;
            }
            if (this.f6607e && !i.m0.b.k(this, 100, TimeUnit.MILLISECONDS)) {
                h hVar = this.f6609g.f6601e;
                if (hVar != null) {
                    hVar.i();
                    d();
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
            this.b = true;
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* loaded from: classes.dex */
    public final class d extends AbstractC0109a {

        /* renamed from: d  reason: collision with root package name */
        public long f6610d;

        public d(long j2) {
            super();
            this.f6610d = j2;
            if (j2 == 0) {
                d();
            }
        }

        @Override // i.m0.f.a.AbstractC0109a, j.a0
        public long c(g gVar, long j2) {
            if (gVar == null) {
                h.o.c.g.f("sink");
                throw null;
            }
            if (j2 >= 0) {
                if (!this.b) {
                    long j3 = this.f6610d;
                    if (j3 == 0) {
                        return -1L;
                    }
                    long c2 = super.c(gVar, Math.min(j3, j2));
                    if (c2 == -1) {
                        h hVar = a.this.f6601e;
                        if (hVar == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        hVar.i();
                        ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                        d();
                        throw protocolException;
                    }
                    long j4 = this.f6610d - c2;
                    this.f6610d = j4;
                    if (j4 == 0) {
                        d();
                    }
                    return c2;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
        }

        @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.b) {
                return;
            }
            if (this.f6610d != 0 && !i.m0.b.k(this, 100, TimeUnit.MILLISECONDS)) {
                h hVar = a.this.f6601e;
                if (hVar != null) {
                    hVar.i();
                    d();
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
            this.b = true;
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* loaded from: classes.dex */
    public final class e implements y {
        public final n a;
        public boolean b;

        public e() {
            this.a = new n(a.this.f6603g.i());
        }

        @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.b) {
                return;
            }
            this.b = true;
            a.i(a.this, this.a);
            a.this.a = 3;
        }

        @Override // j.y, java.io.Flushable
        public void flush() {
            if (this.b) {
                return;
            }
            a.this.f6603g.flush();
        }

        @Override // j.y
        public j.b0 i() {
            return this.a;
        }

        @Override // j.y
        public void j(g gVar, long j2) {
            if (gVar != null) {
                if (!this.b) {
                    i.m0.b.e(gVar.b, 0L, j2);
                    a.this.f6603g.j(gVar, j2);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            }
            h.o.c.g.f("source");
            throw null;
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    /* loaded from: classes.dex */
    public final class f extends AbstractC0109a {

        /* renamed from: d  reason: collision with root package name */
        public boolean f6613d;

        public f(a aVar) {
            super();
        }

        @Override // i.m0.f.a.AbstractC0109a, j.a0
        public long c(g gVar, long j2) {
            if (gVar == null) {
                h.o.c.g.f("sink");
                throw null;
            }
            if (j2 >= 0) {
                if (!this.b) {
                    if (this.f6613d) {
                        return -1L;
                    }
                    long c2 = super.c(gVar, j2);
                    if (c2 == -1) {
                        this.f6613d = true;
                        d();
                        return -1L;
                    }
                    return c2;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
        }

        @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.b) {
                return;
            }
            if (!this.f6613d) {
                d();
            }
            this.b = true;
        }
    }

    public a(b0 b0Var, h hVar, j jVar, i iVar) {
        if (jVar == null) {
            h.o.c.g.f("source");
            throw null;
        } else if (iVar != null) {
            this.f6600d = b0Var;
            this.f6601e = hVar;
            this.f6602f = jVar;
            this.f6603g = iVar;
            this.b = 262144;
        } else {
            h.o.c.g.f("sink");
            throw null;
        }
    }

    public static final void i(a aVar, n nVar) {
        if (aVar != null) {
            j.b0 b0Var = nVar.f6981e;
            nVar.f6981e = j.b0.f6968d;
            b0Var.a();
            b0Var.b();
            return;
        }
        throw null;
    }

    @Override // i.m0.e.d
    public void a() {
        this.f6603g.flush();
    }

    @Override // i.m0.e.d
    public void b(e0 e0Var) {
        h hVar = this.f6601e;
        if (hVar != null) {
            Proxy.Type type = hVar.q.b.type();
            h.o.c.g.b(type, "realConnection!!.route().proxy.type()");
            StringBuilder sb = new StringBuilder();
            sb.append(e0Var.f6432c);
            sb.append(' ');
            if (!e0Var.b.a && type == Proxy.Type.HTTP) {
                sb.append(e0Var.b);
            } else {
                x xVar = e0Var.b;
                if (xVar != null) {
                    String b2 = xVar.b();
                    String d2 = xVar.d();
                    if (d2 != null) {
                        b2 = b2 + '?' + d2;
                    }
                    sb.append(b2);
                } else {
                    h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
                    throw null;
                }
            }
            sb.append(" HTTP/1.1");
            String sb2 = sb.toString();
            h.o.c.g.b(sb2, "StringBuilder().apply(builderAction).toString()");
            m(e0Var.f6433d, sb2);
            return;
        }
        h.o.c.g.e();
        throw null;
    }

    @Override // i.m0.e.d
    public void c() {
        this.f6603g.flush();
    }

    @Override // i.m0.e.d
    public void cancel() {
        Socket socket;
        h hVar = this.f6601e;
        if (hVar == null || (socket = hVar.b) == null) {
            return;
        }
        i.m0.b.g(socket);
    }

    @Override // i.m0.e.d
    public long d(h0 h0Var) {
        if (i.m0.e.e.a(h0Var)) {
            if (h.s.d.d("chunked", h0.f(h0Var, "Transfer-Encoding", null, 2), true)) {
                return -1L;
            }
            return i.m0.b.n(h0Var);
        }
        return 0L;
    }

    @Override // i.m0.e.d
    public a0 e(h0 h0Var) {
        if (i.m0.e.e.a(h0Var)) {
            if (h.s.d.d("chunked", h0.f(h0Var, "Transfer-Encoding", null, 2), true)) {
                x xVar = h0Var.b.b;
                if (this.a == 4) {
                    this.a = 5;
                    return new c(this, xVar);
                }
                StringBuilder o = f.b.a.a.a.o("state: ");
                o.append(this.a);
                throw new IllegalStateException(o.toString().toString());
            }
            long n = i.m0.b.n(h0Var);
            if (n != -1) {
                return j(n);
            }
            if (this.a == 4) {
                this.a = 5;
                h hVar = this.f6601e;
                if (hVar != null) {
                    hVar.i();
                    return new f(this);
                }
                h.o.c.g.e();
                throw null;
            }
            StringBuilder o2 = f.b.a.a.a.o("state: ");
            o2.append(this.a);
            throw new IllegalStateException(o2.toString().toString());
        }
        return j(0L);
    }

    @Override // i.m0.e.d
    public y f(e0 e0Var, long j2) {
        if (h.s.d.d("chunked", e0Var.b("Transfer-Encoding"), true)) {
            if (this.a == 1) {
                this.a = 2;
                return new b();
            }
            StringBuilder o = f.b.a.a.a.o("state: ");
            o.append(this.a);
            throw new IllegalStateException(o.toString().toString());
        } else if (j2 != -1) {
            if (this.a == 1) {
                this.a = 2;
                return new e();
            }
            StringBuilder o2 = f.b.a.a.a.o("state: ");
            o2.append(this.a);
            throw new IllegalStateException(o2.toString().toString());
        } else {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
    }

    @Override // i.m0.e.d
    public h0.a g(boolean z) {
        String str;
        k0 k0Var;
        i.a aVar;
        x xVar;
        int i2 = this.a;
        boolean z2 = true;
        if (i2 != 1 && i2 != 3) {
            z2 = false;
        }
        if (z2) {
            try {
                i.m0.e.j a = i.m0.e.j.a(k());
                h0.a aVar2 = new h0.a();
                aVar2.h(a.a);
                aVar2.f6458c = a.b;
                aVar2.g(a.f6598c);
                aVar2.f(l());
                if (z && a.b == 100) {
                    return null;
                }
                if (a.b == 100) {
                    this.a = 3;
                    return aVar2;
                }
                this.a = 4;
                return aVar2;
            } catch (EOFException e2) {
                h hVar = this.f6601e;
                if (hVar == null || (k0Var = hVar.q) == null || (aVar = k0Var.a) == null || (xVar = aVar.a) == null || (str = xVar.k()) == null) {
                    str = EnvironmentCompat.MEDIA_UNKNOWN;
                }
                throw new IOException(f.b.a.a.a.f("unexpected end of stream on ", str), e2);
            }
        }
        StringBuilder o = f.b.a.a.a.o("state: ");
        o.append(this.a);
        throw new IllegalStateException(o.toString().toString());
    }

    @Override // i.m0.e.d
    public h h() {
        return this.f6601e;
    }

    public final a0 j(long j2) {
        if (this.a == 4) {
            this.a = 5;
            return new d(j2);
        }
        StringBuilder o = f.b.a.a.a.o("state: ");
        o.append(this.a);
        throw new IllegalStateException(o.toString().toString());
    }

    public final String k() {
        String v = this.f6602f.v(this.b);
        this.b -= v.length();
        return v;
    }

    public final w l() {
        w.a aVar = new w.a();
        String k2 = k();
        while (true) {
            if (k2.length() > 0) {
                aVar.b(k2);
                k2 = k();
            } else {
                return aVar.d();
            }
        }
    }

    public final void m(w wVar, String str) {
        if (wVar == null) {
            h.o.c.g.f("headers");
            throw null;
        } else if (str != null) {
            if (this.a == 0) {
                this.f6603g.y(str).y("\r\n");
                int size = wVar.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f6603g.y(wVar.c(i2)).y(": ").y(wVar.f(i2)).y("\r\n");
                }
                this.f6603g.y("\r\n");
                this.a = 1;
                return;
            }
            StringBuilder o = f.b.a.a.a.o("state: ");
            o.append(this.a);
            throw new IllegalStateException(o.toString().toString());
        } else {
            h.o.c.g.f("requestLine");
            throw null;
        }
    }
}
