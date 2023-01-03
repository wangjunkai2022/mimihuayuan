package i;

import androidx.appcompat.widget.ActivityChooserView;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import h.f;
import h.k.i;
import h.k.k;
import h.o.c.g;
import i.m0.c.e;
import i.m0.i.f;
import i.w;
import i.z;
import j.a0;
import j.g;
import j.j;
import j.k;
import j.l;
import j.m;
import j.t;
import j.u;
import j.y;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Cache.kt */
/* loaded from: classes.dex */
public final class d implements Closeable, Flushable {
    public final e a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f6396c;

    /* renamed from: d  reason: collision with root package name */
    public int f6397d;

    /* renamed from: e  reason: collision with root package name */
    public int f6398e;

    /* renamed from: f  reason: collision with root package name */
    public int f6399f;

    /* compiled from: Cache.kt */
    /* loaded from: classes.dex */
    public static final class a extends i0 {

        /* renamed from: c  reason: collision with root package name */
        public final j f6400c;

        /* renamed from: d  reason: collision with root package name */
        public final e.c f6401d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6402e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6403f;

        /* compiled from: Cache.kt */
        /* renamed from: i.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0097a extends m {
            public final /* synthetic */ a b;

            /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
            public C0097a(a aVar, a0 a0Var, a0 a0Var2) {
                super(a0Var2);
                this.b = aVar;
            }

            @Override // j.m, j.a0, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.b.f6401d.close();
                this.a.close();
            }
        }

        public a(e.c cVar, String str, String str2) {
            this.f6401d = cVar;
            this.f6402e = str;
            this.f6403f = str2;
            a0 a0Var = cVar.f6526c.get(1);
            this.f6400c = j.b.h(new C0097a(this, a0Var, a0Var));
        }

        @Override // i.i0
        public z E() {
            String str = this.f6402e;
            if (str == null) {
                return null;
            }
            z.a aVar = z.f6789f;
            return z.a.b(str);
        }

        @Override // i.i0
        public j G() {
            return this.f6400c;
        }

        @Override // i.i0
        public long g() {
            String str = this.f6403f;
            if (str != null) {
                return i.m0.b.F(str, -1);
            }
            return -1;
        }
    }

    /* compiled from: Cache.kt */
    /* loaded from: classes.dex */
    public final class c implements i.m0.c.c {
        public final y a;
        public final y b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6414c;

        /* renamed from: d  reason: collision with root package name */
        public final e.a f6415d;

        /* compiled from: Cache.kt */
        /* loaded from: classes.dex */
        public static final class a extends l {
            public final /* synthetic */ c b;

            /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, y yVar) {
                super(yVar);
                this.b = cVar;
            }

            @Override // j.l, j.y, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                synchronized (d.this) {
                    if (!this.b.f6414c) {
                        this.b.f6414c = true;
                        d.this.b++;
                        this.a.close();
                        this.b.f6415d.b();
                    }
                }
            }
        }

        public c(e.a aVar) {
            this.f6415d = aVar;
            y d2 = aVar.d(1);
            this.a = d2;
            this.b = new a(this, d2);
        }

        @Override // i.m0.c.c
        public y a() {
            return this.b;
        }

        @Override // i.m0.c.c
        public void b() {
            synchronized (d.this) {
                if (!this.f6414c) {
                    this.f6414c = true;
                    d.this.f6396c++;
                    i.m0.b.f(this.a);
                    try {
                        this.f6415d.a();
                    } catch (IOException unused) {
                    }
                }
            }
        }
    }

    public d(File file, long j2) {
        i.m0.h.b bVar = i.m0.h.b.a;
        e eVar = e.z;
        if (j2 > 0) {
            this.a = new e(bVar, file, 201105, 2, j2, new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.m0.b.A("OkHttp DiskLruCache", true)));
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0".toString());
    }

    public static final Set<String> e(w wVar) {
        int size = wVar.size();
        TreeSet treeSet = null;
        for (int i2 = 0; i2 < size; i2++) {
            if (h.s.d.d("Vary", wVar.c(i2), true)) {
                String f2 = wVar.f(i2);
                if (treeSet == null) {
                    Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                    g.b(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
                    treeSet = new TreeSet(comparator);
                }
                for (String str : h.s.d.r(f2, new char[]{','}, false, 0, 6)) {
                    if (str != null) {
                        treeSet.add(h.s.d.y(str).toString());
                    } else {
                        throw new f("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                }
                continue;
            }
        }
        return treeSet != null ? treeSet : k.a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    public final void d(e0 e0Var) throws IOException {
        if (e0Var != null) {
            e eVar = this.a;
            x xVar = e0Var.b;
            if (xVar != null) {
                String j2 = j.c0.a.j(j.k.f6979e.b(xVar.f6779j).a("MD5"));
                synchronized (eVar) {
                    eVar.F();
                    eVar.d();
                    eVar.O(j2);
                    e.b bVar = eVar.f6511g.get(j2);
                    if (bVar != null) {
                        g.b(bVar, "lruEntries[key] ?: return false");
                        eVar.M(bVar);
                        if (eVar.f6509e <= eVar.a) {
                            eVar.f6516l = false;
                        }
                        return;
                    }
                    return;
                }
            }
            g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }
        g.f("request");
        throw null;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.a.flush();
    }

    /* compiled from: Cache.kt */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: k  reason: collision with root package name */
        public static final String f6404k;

        /* renamed from: l  reason: collision with root package name */
        public static final String f6405l;
        public final String a;
        public final w b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6406c;

        /* renamed from: d  reason: collision with root package name */
        public final c0 f6407d;

        /* renamed from: e  reason: collision with root package name */
        public final int f6408e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6409f;

        /* renamed from: g  reason: collision with root package name */
        public final w f6410g;

        /* renamed from: h  reason: collision with root package name */
        public final v f6411h;

        /* renamed from: i  reason: collision with root package name */
        public final long f6412i;

        /* renamed from: j  reason: collision with root package name */
        public final long f6413j;

        static {
            f.a aVar = i.m0.i.f.f6741c;
            if (i.m0.i.f.a != null) {
                f6404k = "OkHttp-Sent-Millis";
                f.a aVar2 = i.m0.i.f.f6741c;
                if (i.m0.i.f.a != null) {
                    f6405l = "OkHttp-Received-Millis";
                    return;
                }
                throw null;
            }
            throw null;
        }

        public b(a0 a0Var) throws IOException {
            l0 l0Var;
            if (a0Var != null) {
                try {
                    j h2 = j.b.h(a0Var);
                    u uVar = (u) h2;
                    this.a = uVar.n();
                    this.f6406c = uVar.n();
                    w.a aVar = new w.a();
                    try {
                        long u = uVar.u();
                        String n = uVar.n();
                        long j2 = 0;
                        if (u >= 0) {
                            long j3 = (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                            if (u <= j3) {
                                boolean z = false;
                                if (!(n.length() > 0)) {
                                    int i2 = (int) u;
                                    for (int i3 = 0; i3 < i2; i3++) {
                                        aVar.b(uVar.n());
                                    }
                                    this.b = aVar.d();
                                    i.m0.e.j a = i.m0.e.j.a(uVar.n());
                                    this.f6407d = a.a;
                                    this.f6408e = a.b;
                                    this.f6409f = a.f6598c;
                                    w.a aVar2 = new w.a();
                                    try {
                                        long u2 = uVar.u();
                                        String n2 = uVar.n();
                                        if (u2 >= 0 && u2 <= j3) {
                                            if (!(n2.length() > 0)) {
                                                int i4 = (int) u2;
                                                for (int i5 = 0; i5 < i4; i5++) {
                                                    aVar2.b(uVar.n());
                                                }
                                                String e2 = aVar2.e(f6404k);
                                                String e3 = aVar2.e(f6405l);
                                                aVar2.f(f6404k);
                                                aVar2.f(f6405l);
                                                this.f6412i = e2 != null ? Long.parseLong(e2) : 0;
                                                this.f6413j = e3 != null ? Long.parseLong(e3) : j2;
                                                this.f6410g = aVar2.d();
                                                if (h.s.d.w(this.a, "https://", false, 2)) {
                                                    String n3 = uVar.n();
                                                    if (!(n3.length() > 0 ? true : z)) {
                                                        j b = j.t.b(uVar.n());
                                                        List<Certificate> a2 = a(h2);
                                                        List<Certificate> a3 = a(h2);
                                                        if (!uVar.p()) {
                                                            l0Var = l0.f6492h.a(uVar.n());
                                                        } else {
                                                            l0Var = l0.SSL_3_0;
                                                        }
                                                        this.f6411h = v.f6767f.b(l0Var, b, a2, a3);
                                                    } else {
                                                        throw new IOException("expected \"\" but was \"" + n3 + '\"');
                                                    }
                                                } else {
                                                    this.f6411h = null;
                                                }
                                                return;
                                            }
                                        }
                                        throw new IOException("expected an int but was \"" + u2 + n2 + '\"');
                                    } catch (NumberFormatException e4) {
                                        throw new IOException(e4.getMessage());
                                    }
                                }
                            }
                        }
                        throw new IOException("expected an int but was \"" + u + n + '\"');
                    } catch (NumberFormatException e5) {
                        throw new IOException(e5.getMessage());
                    }
                } finally {
                    a0Var.close();
                }
            } else {
                g.f("rawSource");
                throw null;
            }
        }

        public final List<Certificate> a(j jVar) throws IOException {
            try {
                long u = jVar.u();
                String n = jVar.n();
                if (u >= 0 && u <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
                    if (!(n.length() > 0)) {
                        int i2 = (int) u;
                        if (i2 == -1) {
                            return i.a;
                        }
                        try {
                            CertificateFactory instance = CertificateFactory.getInstance("X.509");
                            ArrayList arrayList = new ArrayList(i2);
                            for (int i3 = 0; i3 < i2; i3++) {
                                String n2 = jVar.n();
                                j.g gVar = new j.g();
                                k.a aVar = j.k.f6979e;
                                if (n2 != null) {
                                    j.k c2 = j.c0.a.c(n2);
                                    if (c2 != null) {
                                        gVar.M(c2);
                                        arrayList.add(instance.generateCertificate(new g.a(gVar)));
                                    } else {
                                        h.o.c.g.e();
                                        throw null;
                                    }
                                } else {
                                    h.o.c.g.f("$receiver");
                                    throw null;
                                }
                            }
                            return arrayList;
                        } catch (CertificateException e2) {
                            throw new IOException(e2.getMessage());
                        }
                    }
                }
                throw new IOException("expected an int but was \"" + u + n + '\"');
            } catch (NumberFormatException e3) {
                throw new IOException(e3.getMessage());
            }
        }

        public final void b(j.i iVar, List<? extends Certificate> list) throws IOException {
            try {
                iVar.z((long) list.size()).q(10);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    byte[] encoded = ((Certificate) list.get(i2)).getEncoded();
                    k.a aVar = j.k.f6979e;
                    h.o.c.g.b(encoded, "bytes");
                    iVar.y(j.c0.a.a(k.a.c(aVar, encoded, 0, 0, 3))).q(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final void c(e.a aVar) throws IOException {
            j.i g2 = j.b.g(aVar.d(0));
            t tVar = (t) g2;
            tVar.y(this.a).q(10);
            tVar.y(this.f6406c).q(10);
            tVar.z((long) this.b.size());
            tVar.q(10);
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                tVar.y(this.b.c(i2)).y(": ").y(this.b.f(i2)).q(10);
            }
            tVar.y(new i.m0.e.j(this.f6407d, this.f6408e, this.f6409f).toString()).q(10);
            tVar.z((long) (this.f6410g.size() + 2));
            tVar.q(10);
            int size2 = this.f6410g.size();
            for (int i3 = 0; i3 < size2; i3++) {
                tVar.y(this.f6410g.c(i3)).y(": ").y(this.f6410g.f(i3)).q(10);
            }
            tVar.y(f6404k).y(": ").z(this.f6412i).q(10);
            tVar.y(f6405l).y(": ").z(this.f6413j).q(10);
            if (h.s.d.w(this.a, "https://", false, 2)) {
                tVar.q(10);
                v vVar = this.f6411h;
                if (vVar != null) {
                    tVar.y(vVar.f6768c.a).q(10);
                    b(g2, this.f6411h.b());
                    b(g2, this.f6411h.f6769d);
                    tVar.y(this.f6411h.b.a).q(10);
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
            tVar.close();
        }

        public b(h0 h0Var) {
            w wVar;
            this.a = h0Var.b.b.f6779j;
            h0 h0Var2 = h0Var.f6453i;
            if (h0Var2 != null) {
                w wVar2 = h0Var2.b.f6433d;
                Set<String> e2 = d.e(h0Var.f6451g);
                if (e2.isEmpty()) {
                    wVar = i.m0.b.b;
                } else {
                    w.a aVar = new w.a();
                    int size = wVar2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String c2 = wVar2.c(i2);
                        if (e2.contains(c2)) {
                            aVar.a(c2, wVar2.f(i2));
                        }
                    }
                    wVar = aVar.d();
                }
                this.b = wVar;
                this.f6406c = h0Var.b.f6432c;
                this.f6407d = h0Var.f6447c;
                this.f6408e = h0Var.f6449e;
                this.f6409f = h0Var.f6448d;
                this.f6410g = h0Var.f6451g;
                this.f6411h = h0Var.f6450f;
                this.f6412i = h0Var.f6456l;
                this.f6413j = h0Var.f6457m;
                return;
            }
            h.o.c.g.e();
            throw null;
        }
    }
}
