package i;

import androidx.appcompat.widget.ActivityChooserView;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import i.m0.c.e;
import i.m0.i.f;
import i.w;
import i.z;
import j.g;
import j.k;
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
    public final i.m0.c.e a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f6471c;

    /* renamed from: d  reason: collision with root package name */
    public int f6472d;

    /* renamed from: e  reason: collision with root package name */
    public int f6473e;

    /* renamed from: f  reason: collision with root package name */
    public int f6474f;

    /* compiled from: Cache.kt */
    /* loaded from: classes.dex */
    public static final class a extends i0 {

        /* renamed from: c  reason: collision with root package name */
        public final j.j f6475c;

        /* renamed from: d  reason: collision with root package name */
        public final e.c f6476d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6477e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6478f;

        /* compiled from: Cache.kt */
        /* renamed from: i.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0104a extends j.m {
            public C0104a(j.a0 a0Var, j.a0 a0Var2) {
                super(a0Var2);
            }

            @Override // j.m, j.a0, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                a.this.f6476d.close();
                this.a.close();
            }
        }

        public a(e.c cVar, String str, String str2) {
            this.f6476d = cVar;
            this.f6477e = str;
            this.f6478f = str2;
            j.a0 a0Var = cVar.f6601c.get(1);
            this.f6475c = j.b.h(new C0104a(a0Var, a0Var));
        }

        @Override // i.i0
        public z E() {
            String str = this.f6477e;
            if (str != null) {
                z.a aVar = z.f6864f;
                return z.a.b(str);
            }
            return null;
        }

        @Override // i.i0
        public j.j G() {
            return this.f6475c;
        }

        @Override // i.i0
        public long g() {
            String str = this.f6478f;
            if (str != null) {
                return i.m0.b.F(str, -1L);
            }
            return -1L;
        }
    }

    /* compiled from: Cache.kt */
    /* loaded from: classes.dex */
    public final class c implements i.m0.c.c {
        public final j.y a;
        public final j.y b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6489c;

        /* renamed from: d  reason: collision with root package name */
        public final e.a f6490d;

        /* compiled from: Cache.kt */
        /* loaded from: classes.dex */
        public static final class a extends j.l {
            public a(j.y yVar) {
                super(yVar);
            }

            @Override // j.l, j.y, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                synchronized (d.this) {
                    if (c.this.f6489c) {
                        return;
                    }
                    c.this.f6489c = true;
                    d.this.b++;
                    this.a.close();
                    c.this.f6490d.b();
                }
            }
        }

        public c(e.a aVar) {
            this.f6490d = aVar;
            j.y d2 = aVar.d(1);
            this.a = d2;
            this.b = new a(d2);
        }

        @Override // i.m0.c.c
        public j.y a() {
            return this.b;
        }

        @Override // i.m0.c.c
        public void b() {
            synchronized (d.this) {
                if (this.f6489c) {
                    return;
                }
                this.f6489c = true;
                d.this.f6471c++;
                i.m0.b.f(this.a);
                try {
                    this.f6490d.a();
                } catch (IOException unused) {
                }
            }
        }
    }

    public d(File file, long j2) {
        i.m0.h.b bVar = i.m0.h.b.a;
        i.m0.c.e eVar = i.m0.c.e.z;
        if (j2 > 0) {
            this.a = new i.m0.c.e(bVar, file, 201105, 2, j2, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.m0.b.A("OkHttp DiskLruCache", true)));
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
                    h.o.c.g.b(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
                    treeSet = new TreeSet(comparator);
                }
                for (String str : h.s.d.r(f2, new char[]{','}, false, 0, 6)) {
                    if (str == null) {
                        throw new h.f("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    treeSet.add(h.s.d.y(str).toString());
                }
                continue;
            }
        }
        return treeSet != null ? treeSet : h.k.k.a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    public final void d(e0 e0Var) throws IOException {
        if (e0Var != null) {
            i.m0.c.e eVar = this.a;
            x xVar = e0Var.b;
            if (xVar != null) {
                String j2 = j.c0.a.j(j.k.f7054e.b(xVar.f6854j).a("MD5"));
                synchronized (eVar) {
                    eVar.F();
                    eVar.d();
                    eVar.O(j2);
                    e.b bVar = eVar.f6586g.get(j2);
                    if (bVar != null) {
                        h.o.c.g.b(bVar, "lruEntries[key] ?: return false");
                        eVar.M(bVar);
                        if (eVar.f6584e <= eVar.a) {
                            eVar.f6591l = false;
                        }
                        return;
                    }
                    return;
                }
            }
            h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }
        h.o.c.g.f("request");
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
        public static final String f6479k;

        /* renamed from: l  reason: collision with root package name */
        public static final String f6480l;
        public final String a;
        public final w b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6481c;

        /* renamed from: d  reason: collision with root package name */
        public final c0 f6482d;

        /* renamed from: e  reason: collision with root package name */
        public final int f6483e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6484f;

        /* renamed from: g  reason: collision with root package name */
        public final w f6485g;

        /* renamed from: h  reason: collision with root package name */
        public final v f6486h;

        /* renamed from: i  reason: collision with root package name */
        public final long f6487i;

        /* renamed from: j  reason: collision with root package name */
        public final long f6488j;

        static {
            f.a aVar = i.m0.i.f.f6816c;
            if (i.m0.i.f.a != null) {
                f6479k = "OkHttp-Sent-Millis";
                f.a aVar2 = i.m0.i.f.f6816c;
                if (i.m0.i.f.a != null) {
                    f6480l = "OkHttp-Received-Millis";
                    return;
                }
                throw null;
            }
            throw null;
        }

        public b(j.a0 a0Var) throws IOException {
            l0 l0Var;
            if (a0Var != null) {
                try {
                    j.j h2 = j.b.h(a0Var);
                    j.u uVar = (j.u) h2;
                    this.a = uVar.n();
                    this.f6481c = uVar.n();
                    w.a aVar = new w.a();
                    try {
                        long u = uVar.u();
                        String n = uVar.n();
                        if (u >= 0) {
                            long j2 = (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                            if (u <= j2) {
                                if (!(n.length() > 0)) {
                                    int i2 = (int) u;
                                    for (int i3 = 0; i3 < i2; i3++) {
                                        aVar.b(uVar.n());
                                    }
                                    this.b = aVar.d();
                                    i.m0.e.j a = i.m0.e.j.a(uVar.n());
                                    this.f6482d = a.a;
                                    this.f6483e = a.b;
                                    this.f6484f = a.f6673c;
                                    w.a aVar2 = new w.a();
                                    try {
                                        long u2 = uVar.u();
                                        String n2 = uVar.n();
                                        if (u2 >= 0 && u2 <= j2) {
                                            if (!(n2.length() > 0)) {
                                                int i4 = (int) u2;
                                                for (int i5 = 0; i5 < i4; i5++) {
                                                    aVar2.b(uVar.n());
                                                }
                                                String e2 = aVar2.e(f6479k);
                                                String e3 = aVar2.e(f6480l);
                                                aVar2.f(f6479k);
                                                aVar2.f(f6480l);
                                                this.f6487i = e2 != null ? Long.parseLong(e2) : 0L;
                                                this.f6488j = e3 != null ? Long.parseLong(e3) : 0L;
                                                this.f6485g = aVar2.d();
                                                if (h.s.d.w(this.a, "https://", false, 2)) {
                                                    String n3 = uVar.n();
                                                    if (!(n3.length() > 0)) {
                                                        j b = j.t.b(uVar.n());
                                                        List<Certificate> a2 = a(h2);
                                                        List<Certificate> a3 = a(h2);
                                                        if (!uVar.p()) {
                                                            l0Var = l0.f6567h.a(uVar.n());
                                                        } else {
                                                            l0Var = l0.SSL_3_0;
                                                        }
                                                        this.f6486h = v.f6842f.b(l0Var, b, a2, a3);
                                                    } else {
                                                        throw new IOException("expected \"\" but was \"" + n3 + '\"');
                                                    }
                                                } else {
                                                    this.f6486h = null;
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
            }
            h.o.c.g.f("rawSource");
            throw null;
        }

        public final List<Certificate> a(j.j jVar) throws IOException {
            try {
                long u = jVar.u();
                String n = jVar.n();
                if (u >= 0 && u <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
                    if (!(n.length() > 0)) {
                        int i2 = (int) u;
                        if (i2 == -1) {
                            return h.k.i.a;
                        }
                        try {
                            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                            ArrayList arrayList = new ArrayList(i2);
                            for (int i3 = 0; i3 < i2; i3++) {
                                String n2 = jVar.n();
                                j.g gVar = new j.g();
                                k.a aVar = j.k.f7054e;
                                if (n2 != null) {
                                    j.k c2 = j.c0.a.c(n2);
                                    if (c2 != null) {
                                        gVar.M(c2);
                                        arrayList.add(certificateFactory.generateCertificate(new g.a()));
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
                iVar.z(list.size()).q(10);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    byte[] encoded = list.get(i2).getEncoded();
                    k.a aVar = j.k.f7054e;
                    h.o.c.g.b(encoded, "bytes");
                    iVar.y(j.c0.a.a(k.a.c(aVar, encoded, 0, 0, 3))).q(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final void c(e.a aVar) throws IOException {
            j.i g2 = j.b.g(aVar.d(0));
            j.t tVar = (j.t) g2;
            tVar.y(this.a).q(10);
            tVar.y(this.f6481c).q(10);
            tVar.z(this.b.size());
            tVar.q(10);
            int size = this.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                tVar.y(this.b.c(i2)).y(": ").y(this.b.f(i2)).q(10);
            }
            tVar.y(new i.m0.e.j(this.f6482d, this.f6483e, this.f6484f).toString()).q(10);
            tVar.z(this.f6485g.size() + 2);
            tVar.q(10);
            int size2 = this.f6485g.size();
            for (int i3 = 0; i3 < size2; i3++) {
                tVar.y(this.f6485g.c(i3)).y(": ").y(this.f6485g.f(i3)).q(10);
            }
            tVar.y(f6479k).y(": ").z(this.f6487i).q(10);
            tVar.y(f6480l).y(": ").z(this.f6488j).q(10);
            if (h.s.d.w(this.a, "https://", false, 2)) {
                tVar.q(10);
                v vVar = this.f6486h;
                if (vVar != null) {
                    tVar.y(vVar.f6843c.a).q(10);
                    b(g2, this.f6486h.b());
                    b(g2, this.f6486h.f6844d);
                    tVar.y(this.f6486h.b.a).q(10);
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
            tVar.close();
        }

        public b(h0 h0Var) {
            w d2;
            this.a = h0Var.b.b.f6854j;
            h0 h0Var2 = h0Var.f6528i;
            if (h0Var2 != null) {
                w wVar = h0Var2.b.f6508d;
                Set<String> e2 = d.e(h0Var.f6526g);
                if (e2.isEmpty()) {
                    d2 = i.m0.b.b;
                } else {
                    w.a aVar = new w.a();
                    int size = wVar.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String c2 = wVar.c(i2);
                        if (e2.contains(c2)) {
                            aVar.a(c2, wVar.f(i2));
                        }
                    }
                    d2 = aVar.d();
                }
                this.b = d2;
                this.f6481c = h0Var.b.f6507c;
                this.f6482d = h0Var.f6522c;
                this.f6483e = h0Var.f6524e;
                this.f6484f = h0Var.f6523d;
                this.f6485g = h0Var.f6526g;
                this.f6486h = h0Var.f6525f;
                this.f6487i = h0Var.f6531l;
                this.f6488j = h0Var.f6532m;
                return;
            }
            h.o.c.g.e();
            throw null;
        }
    }
}
