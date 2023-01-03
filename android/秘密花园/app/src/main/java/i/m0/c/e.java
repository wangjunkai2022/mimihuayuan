package i.m0.c;

import androidx.core.app.Person;
import com.umeng.commonsdk.debug.UMRTLog;
import h.j;
import h.o.c.g;
import h.o.c.h;
import i.m0.i.f;
import j.a0;
import j.f;
import j.i;
import j.y;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: DiskLruCache.kt */
/* loaded from: classes.dex */
public final class e implements Closeable, Flushable {
    public static final e z = null;
    public long a;
    public final File b;

    /* renamed from: c  reason: collision with root package name */
    public final File f6507c;

    /* renamed from: d  reason: collision with root package name */
    public final File f6508d;

    /* renamed from: e  reason: collision with root package name */
    public long f6509e;

    /* renamed from: f  reason: collision with root package name */
    public i f6510f;

    /* renamed from: h  reason: collision with root package name */
    public int f6512h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6513i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f6514j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6515k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6516l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f6517m;
    public long n;
    public final i.m0.h.b p;
    public final File q;
    public final int r;
    public final int s;
    public final Executor t;
    public static final h.s.c u = new h.s.c("[a-z0-9_-]{1,120}");
    public static final String v = v;
    public static final String v = v;
    public static final String w = w;
    public static final String w = w;
    public static final String x = x;
    public static final String x = x;
    public static final String y = y;
    public static final String y = y;

    /* renamed from: g  reason: collision with root package name */
    public final LinkedHashMap<String, b> f6511g = new LinkedHashMap<>(0, 0.75f, true);
    public final Runnable o = new d(this);

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public final class a {
        public final boolean[] a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final b f6518c;

        /* compiled from: DiskLruCache.kt */
        /* renamed from: i.m0.c.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0100a extends h implements h.o.b.b<IOException, h.i> {
            public final /* synthetic */ a a;

            /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
            public C0100a(a aVar, int i2) {
                super(1);
                this.a = aVar;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // h.o.b.b
            public h.i d(IOException iOException) {
                if (iOException != null) {
                    synchronized (e.this) {
                        this.a.c();
                    }
                    return h.i.a;
                }
                g.f("it");
                throw null;
            }
        }

        public a(b bVar) {
            boolean[] zArr;
            this.f6518c = bVar;
            if (bVar.f6521d) {
                zArr = null;
            } else {
                zArr = new boolean[e.this.s];
            }
            this.a = zArr;
        }

        public final void a() throws IOException {
            synchronized (e.this) {
                if (!this.b) {
                    if (g.a(this.f6518c.f6522e, this)) {
                        e.this.e(this, false);
                    }
                    this.b = true;
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }

        public final void b() throws IOException {
            synchronized (e.this) {
                if (!this.b) {
                    if (g.a(this.f6518c.f6522e, this)) {
                        e.this.e(this, true);
                    }
                    this.b = true;
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }

        public final void c() {
            if (g.a(this.f6518c.f6522e, this)) {
                int i2 = e.this.s;
                for (int i3 = 0; i3 < i2; i3++) {
                    try {
                        e.this.p.a(this.f6518c.f6520c.get(i3));
                    } catch (IOException unused) {
                    }
                }
                this.f6518c.f6522e = null;
            }
        }

        public final y d(int i2) {
            synchronized (e.this) {
                if (!(!this.b)) {
                    throw new IllegalStateException("Check failed.".toString());
                } else if (!g.a(this.f6518c.f6522e, this)) {
                    return new f();
                } else {
                    if (!this.f6518c.f6521d) {
                        boolean[] zArr = this.a;
                        if (zArr != null) {
                            zArr[i2] = true;
                        } else {
                            g.e();
                            throw null;
                        }
                    }
                    try {
                        return new f(e.this.p.c(this.f6518c.f6520c.get(i2)), new C0100a(this, i2));
                    } catch (FileNotFoundException unused) {
                        return new f();
                    }
                }
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public final class b {
        public final long[] a;
        public final List<File> b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        public final List<File> f6520c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public boolean f6521d;

        /* renamed from: e  reason: collision with root package name */
        public a f6522e;

        /* renamed from: f  reason: collision with root package name */
        public long f6523f;

        /* renamed from: g  reason: collision with root package name */
        public final String f6524g;

        public b(String str) {
            this.f6524g = str;
            this.a = new long[e.this.s];
            StringBuilder sb = new StringBuilder(this.f6524g);
            sb.append('.');
            int length = sb.length();
            int i2 = e.this.s;
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(i3);
                this.b.add(new File(e.this.q, sb.toString()));
                sb.append(".tmp");
                this.f6520c.add(new File(e.this.q, sb.toString()));
                sb.setLength(length);
            }
        }

        public final c a() {
            boolean holdsLock = Thread.holdsLock(e.this);
            if (!j.a || holdsLock) {
                ArrayList<a0> arrayList = new ArrayList();
                long[] jArr = (long[]) this.a.clone();
                try {
                    int i2 = e.this.s;
                    for (int i3 = 0; i3 < i2; i3++) {
                        arrayList.add(e.this.p.b(this.b.get(i3)));
                    }
                    return new c(e.this, this.f6524g, this.f6523f, arrayList, jArr);
                } catch (FileNotFoundException unused) {
                    for (a0 a0Var : arrayList) {
                        i.m0.b.f(a0Var);
                    }
                    try {
                        e.this.M(this);
                        return null;
                    } catch (IOException unused2) {
                        return null;
                    }
                }
            } else {
                throw new AssertionError("Assertion failed");
            }
        }

        public final void b(i iVar) throws IOException {
            for (long j2 : this.a) {
                iVar.q(32).z(j2);
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public final class c implements Closeable {
        public final String a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a0> f6526c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ e f6527d;

        /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: java.util.List<? extends j.a0> */
        /* JADX WARN: Multi-variable type inference failed */
        public c(e eVar, String str, long j2, List<? extends a0> list, long[] jArr) {
            if (str == null) {
                g.f(Person.KEY_KEY);
                throw null;
            } else if (jArr != null) {
                this.f6527d = eVar;
                this.a = str;
                this.b = j2;
                this.f6526c = list;
            } else {
                g.f("lengths");
                throw null;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (a0 a0Var : this.f6526c) {
                i.m0.b.f(a0Var);
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public static final class d implements Runnable {
        public final /* synthetic */ e a;

        public d(e eVar) {
            this.a = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.a) {
                if (this.a.f6514j && !this.a.f6515k) {
                    try {
                        this.a.N();
                    } catch (IOException unused) {
                        this.a.f6516l = true;
                    }
                    try {
                        if (this.a.G()) {
                            this.a.L();
                            this.a.f6512h = 0;
                        }
                    } catch (IOException unused2) {
                        this.a.f6517m = true;
                        this.a.f6510f = j.b.g(new f());
                    }
                }
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* renamed from: i.m0.c.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0101e extends h implements h.o.b.b<IOException, h.i> {
        public final /* synthetic */ e a;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public C0101e(e eVar) {
            super(1);
            this.a = eVar;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // h.o.b.b
        public h.i d(IOException iOException) {
            if (iOException != null) {
                boolean holdsLock = Thread.holdsLock(this.a);
                if (!j.a || holdsLock) {
                    this.a.f6513i = true;
                    return h.i.a;
                }
                throw new AssertionError("Assertion failed");
            }
            g.f("it");
            throw null;
        }
    }

    public e(i.m0.h.b bVar, File file, int i2, int i3, long j2, Executor executor) {
        this.p = bVar;
        this.q = file;
        this.r = i2;
        this.s = i3;
        this.t = executor;
        this.a = j2;
        this.b = new File(this.q, "journal");
        this.f6507c = new File(this.q, "journal.tmp");
        this.f6508d = new File(this.q, "journal.bkp");
    }

    public static /* synthetic */ a g(e eVar, String str, long j2, int i2) throws IOException {
        if ((i2 & 2) != 0) {
            j2 = -1;
        }
        return eVar.f(str, j2);
    }

    public final synchronized c E(String str) throws IOException {
        F();
        d();
        O(str);
        b bVar = this.f6511g.get(str);
        if (bVar == null) {
            return null;
        }
        g.b(bVar, "lruEntries[key] ?: return null");
        if (!bVar.f6521d) {
            return null;
        }
        c a2 = bVar.a();
        if (a2 == null) {
            return null;
        }
        this.f6512h++;
        i iVar = this.f6510f;
        if (iVar != null) {
            iVar.y(y).q(32).y(str).q(10);
            if (G()) {
                this.t.execute(this.o);
            }
            return a2;
        }
        g.e();
        throw null;
    }

    public final synchronized void F() throws IOException {
        boolean holdsLock = Thread.holdsLock(this);
        if (j.a && !holdsLock) {
            throw new AssertionError("Assertion failed");
        }
        if (!this.f6514j) {
            if (this.p.f(this.f6508d)) {
                if (this.p.f(this.b)) {
                    this.p.a(this.f6508d);
                } else {
                    this.p.g(this.f6508d, this.b);
                }
            }
            if (this.p.f(this.b)) {
                try {
                    J();
                    I();
                    this.f6514j = true;
                    return;
                } catch (IOException e2) {
                    f.a aVar = i.m0.i.f.f6741c;
                    i.m0.i.f fVar = i.m0.i.f.a;
                    fVar.k(5, "DiskLruCache " + this.q + " is corrupt: " + e2.getMessage() + ", removing", e2);
                    close();
                    this.p.d(this.q);
                    this.f6515k = false;
                }
            }
            L();
            this.f6514j = true;
        }
    }

    public final boolean G() {
        int i2 = this.f6512h;
        return i2 >= 2000 && i2 >= this.f6511g.size();
    }

    public final i H() throws FileNotFoundException {
        return j.b.g(new f(this.p.e(this.b), new C0101e(this)));
    }

    public final void I() throws IOException {
        this.p.a(this.f6507c);
        Iterator<b> it = this.f6511g.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            g.b(next, "i.next()");
            b bVar = next;
            int i2 = 0;
            if (bVar.f6522e == null) {
                int i3 = this.s;
                while (i2 < i3) {
                    this.f6509e += bVar.a[i2];
                    i2++;
                }
            } else {
                bVar.f6522e = null;
                int i4 = this.s;
                while (i2 < i4) {
                    this.p.a(bVar.b.get(i2));
                    this.p.a(bVar.f6520c.get(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void J() throws IOException {
        j.j h2 = j.b.h(this.p.b(this.b));
        try {
            String n = h2.n();
            String n2 = h2.n();
            String n3 = h2.n();
            String n4 = h2.n();
            String n5 = h2.n();
            boolean z2 = true;
            if (!(!g.a("libcore.io.DiskLruCache", n)) && !(!g.a(UMRTLog.RTLOG_ENABLE, n2)) && !(!g.a(String.valueOf(this.r), n3)) && !(!g.a(String.valueOf(this.s), n4))) {
                int i2 = 0;
                if (n5.length() <= 0) {
                    z2 = false;
                }
                if (!z2) {
                    while (true) {
                        try {
                            K(h2.n());
                            i2++;
                        } catch (EOFException unused) {
                            this.f6512h = i2 - this.f6511g.size();
                            if (!h2.p()) {
                                L();
                            } else {
                                this.f6510f = H();
                            }
                            th = null;
                            return;
                        }
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + n + ", " + n2 + ", " + n4 + ", " + n5 + ']');
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public final void K(String str) throws IOException {
        String str2;
        int i2 = h.s.d.i(str, ' ', 0, false, 6);
        if (i2 != -1) {
            int i3 = i2 + 1;
            int i4 = h.s.d.i(str, ' ', i3, false, 4);
            if (i4 == -1) {
                str2 = str.substring(i3);
                g.b(str2, "(this as java.lang.String).substring(startIndex)");
                if (i2 == x.length() && h.s.d.w(str, x, false, 2)) {
                    this.f6511g.remove(str2);
                    return;
                }
            } else {
                str2 = str.substring(i3, i4);
                g.b(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            b bVar = this.f6511g.get(str2);
            if (bVar == null) {
                bVar = new b(str2);
                this.f6511g.put(str2, bVar);
            }
            if (i4 != -1 && i2 == v.length() && h.s.d.w(str, v, false, 2)) {
                String substring = str.substring(i4 + 1);
                g.b(substring, "(this as java.lang.String).substring(startIndex)");
                List r = h.s.d.r(substring, new char[]{' '}, false, 0, 6);
                bVar.f6521d = true;
                bVar.f6522e = null;
                if (r.size() == e.this.s) {
                    try {
                        int size = r.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            bVar.a[i5] = Long.parseLong((String) r.get(i5));
                        }
                    } catch (NumberFormatException unused) {
                        throw new IOException("unexpected journal line: " + r);
                    }
                } else {
                    throw new IOException("unexpected journal line: " + r);
                }
            } else if (i4 == -1 && i2 == w.length() && h.s.d.w(str, w, false, 2)) {
                bVar.f6522e = new a(bVar);
            } else if (i4 != -1 || i2 != y.length() || !h.s.d.w(str, y, false, 2)) {
                throw new IOException(f.b.a.a.a.f("unexpected journal line: ", str));
            }
        } else {
            throw new IOException(f.b.a.a.a.f("unexpected journal line: ", str));
        }
    }

    public final synchronized void L() throws IOException {
        i iVar = this.f6510f;
        if (iVar != null) {
            iVar.close();
        }
        i g2 = j.b.g(this.p.c(this.f6507c));
        g2.y("libcore.io.DiskLruCache").q(10);
        g2.y(UMRTLog.RTLOG_ENABLE).q(10);
        g2.z((long) this.r);
        g2.q(10);
        g2.z((long) this.s);
        g2.q(10);
        g2.q(10);
        for (b bVar : this.f6511g.values()) {
            if (bVar.f6522e != null) {
                g2.y(w).q(32);
                g2.y(bVar.f6524g);
                g2.q(10);
            } else {
                g2.y(v).q(32);
                g2.y(bVar.f6524g);
                bVar.b(g2);
                g2.q(10);
            }
        }
        c.a.a.b.g.h.z(g2, null);
        if (this.p.f(this.b)) {
            this.p.g(this.b, this.f6508d);
        }
        this.p.g(this.f6507c, this.b);
        this.p.a(this.f6508d);
        this.f6510f = H();
        this.f6513i = false;
        this.f6517m = false;
    }

    public final boolean M(b bVar) throws IOException {
        a aVar = bVar.f6522e;
        if (aVar != null) {
            aVar.c();
        }
        int i2 = this.s;
        for (int i3 = 0; i3 < i2; i3++) {
            this.p.a(bVar.b.get(i3));
            long j2 = this.f6509e;
            long[] jArr = bVar.a;
            this.f6509e = j2 - jArr[i3];
            jArr[i3] = 0;
        }
        this.f6512h++;
        i iVar = this.f6510f;
        if (iVar != null) {
            iVar.y(x).q(32).y(bVar.f6524g).q(10);
            this.f6511g.remove(bVar.f6524g);
            if (G()) {
                this.t.execute(this.o);
            }
            return true;
        }
        g.e();
        throw null;
    }

    public final void N() throws IOException {
        while (this.f6509e > this.a) {
            b next = this.f6511g.values().iterator().next();
            g.b(next, "lruEntries.values.iterator().next()");
            M(next);
        }
        this.f6516l = false;
    }

    public final void O(String str) {
        if (!u.a(str)) {
            throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f6514j && !this.f6515k) {
            Collection<b> values = this.f6511g.values();
            g.b(values, "lruEntries.values");
            Object[] array = values.toArray(new b[0]);
            if (array != null) {
                b[] bVarArr = (b[]) array;
                for (b bVar : bVarArr) {
                    if (bVar.f6522e != null) {
                        a aVar = bVar.f6522e;
                        if (aVar != null) {
                            aVar.a();
                        } else {
                            g.e();
                            throw null;
                        }
                    }
                }
                N();
                i iVar = this.f6510f;
                if (iVar != null) {
                    iVar.close();
                    this.f6510f = null;
                    this.f6515k = true;
                    return;
                }
                g.e();
                throw null;
            }
            throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
        }
        this.f6515k = true;
    }

    public final synchronized void d() {
        if (!(!this.f6515k)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    public final synchronized void e(a aVar, boolean z2) throws IOException {
        b bVar = aVar.f6518c;
        if (g.a(bVar.f6522e, aVar)) {
            if (z2 && !bVar.f6521d) {
                int i2 = this.s;
                for (int i3 = 0; i3 < i2; i3++) {
                    boolean[] zArr = aVar.a;
                    if (zArr == null) {
                        g.e();
                        throw null;
                    } else if (!zArr[i3]) {
                        aVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i3);
                    } else if (!this.p.f(bVar.f6520c.get(i3))) {
                        aVar.a();
                        return;
                    }
                }
            }
            int i4 = this.s;
            for (int i5 = 0; i5 < i4; i5++) {
                File file = bVar.f6520c.get(i5);
                if (!z2) {
                    this.p.a(file);
                } else if (this.p.f(file)) {
                    File file2 = bVar.b.get(i5);
                    this.p.g(file, file2);
                    long j2 = bVar.a[i5];
                    long h2 = this.p.h(file2);
                    bVar.a[i5] = h2;
                    this.f6509e = (this.f6509e - j2) + h2;
                }
            }
            this.f6512h++;
            bVar.f6522e = null;
            i iVar = this.f6510f;
            if (iVar != null) {
                if (!bVar.f6521d && !z2) {
                    this.f6511g.remove(bVar.f6524g);
                    iVar.y(x).q(32);
                    iVar.y(bVar.f6524g);
                    iVar.q(10);
                    iVar.flush();
                    if (this.f6509e <= this.a || G()) {
                        this.t.execute(this.o);
                    }
                    return;
                }
                bVar.f6521d = true;
                iVar.y(v).q(32);
                iVar.y(bVar.f6524g);
                bVar.b(iVar);
                iVar.q(10);
                if (z2) {
                    long j3 = this.n;
                    this.n = 1 + j3;
                    bVar.f6523f = j3;
                }
                iVar.flush();
                if (this.f6509e <= this.a) {
                }
                this.t.execute(this.o);
                return;
            }
            g.e();
            throw null;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final synchronized a f(String str, long j2) throws IOException {
        if (str != null) {
            F();
            d();
            O(str);
            b bVar = this.f6511g.get(str);
            if (j2 != -1 && (bVar == null || bVar.f6523f != j2)) {
                return null;
            }
            if ((bVar != null ? bVar.f6522e : null) != null) {
                return null;
            }
            if (!this.f6516l && !this.f6517m) {
                i iVar = this.f6510f;
                if (iVar != null) {
                    iVar.y(w).q(32).y(str).q(10);
                    iVar.flush();
                    if (this.f6513i) {
                        return null;
                    }
                    if (bVar == null) {
                        bVar = new b(str);
                        this.f6511g.put(str, bVar);
                    }
                    a aVar = new a(bVar);
                    bVar.f6522e = aVar;
                    return aVar;
                }
                g.e();
                throw null;
            }
            this.t.execute(this.o);
            return null;
        }
        g.f(Person.KEY_KEY);
        throw null;
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.f6514j) {
            d();
            N();
            i iVar = this.f6510f;
            if (iVar != null) {
                iVar.flush();
            } else {
                g.e();
                throw null;
            }
        }
    }
}
