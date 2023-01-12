package i.m0.c;

import androidx.core.app.Person;
import com.umeng.commonsdk.debug.UMRTLog;
import h.j;
import h.o.c.g;
import h.o.c.h;
import i.m0.i.f;
import j.a0;
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

    /* renamed from: c */
    public final File f6582c;

    /* renamed from: d */
    public final File f6583d;

    /* renamed from: e */
    public long f6584e;

    /* renamed from: f */
    public i f6585f;

    /* renamed from: h */
    public int f6587h;

    /* renamed from: i */
    public boolean f6588i;

    /* renamed from: j */
    public boolean f6589j;

    /* renamed from: k */
    public boolean f6590k;

    /* renamed from: l */
    public boolean f6591l;

    /* renamed from: m */
    public boolean f6592m;
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

    /* renamed from: g */
    public final LinkedHashMap<String, b> f6586g = new LinkedHashMap<>(0, 0.75f, true);
    public final Runnable o = new d();

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public final class a {
        public final boolean[] a;
        public boolean b;

        /* renamed from: c */
        public final b f6593c;

        /* compiled from: DiskLruCache.kt */
        /* renamed from: i.m0.c.e$a$a */
        /* loaded from: classes.dex */
        public static final class C0107a extends h implements h.o.b.b<IOException, h.i> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0107a(int i2) {
                super(1);
                a.this = r1;
            }

            @Override // h.o.b.b
            public h.i d(IOException iOException) {
                if (iOException != null) {
                    synchronized (e.this) {
                        a.this.c();
                    }
                    return h.i.a;
                }
                g.f("it");
                throw null;
            }
        }

        public a(b bVar) {
            e.this = r1;
            this.f6593c = bVar;
            this.a = bVar.f6596d ? null : new boolean[r1.s];
        }

        public final void a() throws IOException {
            synchronized (e.this) {
                if (!this.b) {
                    if (g.a(this.f6593c.f6597e, this)) {
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
                    if (g.a(this.f6593c.f6597e, this)) {
                        e.this.e(this, true);
                    }
                    this.b = true;
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }

        public final void c() {
            if (g.a(this.f6593c.f6597e, this)) {
                int i2 = e.this.s;
                for (int i3 = 0; i3 < i2; i3++) {
                    try {
                        e.this.p.a(this.f6593c.f6595c.get(i3));
                    } catch (IOException unused) {
                    }
                }
                this.f6593c.f6597e = null;
            }
        }

        public final y d(int i2) {
            synchronized (e.this) {
                if (!this.b) {
                    if (!g.a(this.f6593c.f6597e, this)) {
                        return new j.f();
                    }
                    if (!this.f6593c.f6596d) {
                        boolean[] zArr = this.a;
                        if (zArr == null) {
                            g.e();
                            throw null;
                        }
                        zArr[i2] = true;
                    }
                    try {
                        return new f(e.this.p.c(this.f6593c.f6595c.get(i2)), new C0107a(i2));
                    } catch (FileNotFoundException unused) {
                        return new j.f();
                    }
                }
                throw new IllegalStateException("Check failed.".toString());
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public final class b {
        public final long[] a;
        public final List<File> b = new ArrayList();

        /* renamed from: c */
        public final List<File> f6595c = new ArrayList();

        /* renamed from: d */
        public boolean f6596d;

        /* renamed from: e */
        public a f6597e;

        /* renamed from: f */
        public long f6598f;

        /* renamed from: g */
        public final String f6599g;

        public b(String str) {
            e.this = r8;
            this.f6599g = str;
            this.a = new long[r8.s];
            StringBuilder sb = new StringBuilder(this.f6599g);
            sb.append('.');
            int length = sb.length();
            int i2 = r8.s;
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(i3);
                this.b.add(new File(r8.q, sb.toString()));
                sb.append(".tmp");
                this.f6595c.add(new File(r8.q, sb.toString()));
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
                    return new c(e.this, this.f6599g, this.f6598f, arrayList, jArr);
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
            }
            throw new AssertionError("Assertion failed");
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

        /* renamed from: c */
        public final List<a0> f6601c;

        /* renamed from: d */
        public final /* synthetic */ e f6602d;

        /* JADX WARN: Multi-variable type inference failed */
        public c(e eVar, String str, long j2, List<? extends a0> list, long[] jArr) {
            if (str == null) {
                g.f(Person.KEY_KEY);
                throw null;
            } else if (jArr != null) {
                this.f6602d = eVar;
                this.a = str;
                this.b = j2;
                this.f6601c = list;
            } else {
                g.f("lengths");
                throw null;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (a0 a0Var : this.f6601c) {
                i.m0.b.f(a0Var);
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* loaded from: classes.dex */
    public static final class d implements Runnable {
        public d() {
            e.this = r1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (e.this) {
                if (!e.this.f6589j || e.this.f6590k) {
                    return;
                }
                try {
                    e.this.N();
                } catch (IOException unused) {
                    e.this.f6591l = true;
                }
                try {
                    if (e.this.G()) {
                        e.this.L();
                        e.this.f6587h = 0;
                    }
                } catch (IOException unused2) {
                    e.this.f6592m = true;
                    e.this.f6585f = j.b.g(new j.f());
                }
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    /* renamed from: i.m0.c.e$e */
    /* loaded from: classes.dex */
    public static final class C0108e extends h implements h.o.b.b<IOException, h.i> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0108e() {
            super(1);
            e.this = r1;
        }

        @Override // h.o.b.b
        public h.i d(IOException iOException) {
            if (iOException != null) {
                boolean holdsLock = Thread.holdsLock(e.this);
                if (!j.a || holdsLock) {
                    e.this.f6588i = true;
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
        this.f6582c = new File(this.q, "journal.tmp");
        this.f6583d = new File(this.q, "journal.bkp");
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
        b bVar = this.f6586g.get(str);
        if (bVar != null) {
            g.b(bVar, "lruEntries[key] ?: return null");
            if (bVar.f6596d) {
                c a2 = bVar.a();
                if (a2 != null) {
                    this.f6587h++;
                    i iVar = this.f6585f;
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
                return null;
            }
            return null;
        }
        return null;
    }

    public final synchronized void F() throws IOException {
        boolean holdsLock = Thread.holdsLock(this);
        if (j.a && !holdsLock) {
            throw new AssertionError("Assertion failed");
        }
        if (this.f6589j) {
            return;
        }
        if (this.p.f(this.f6583d)) {
            if (this.p.f(this.b)) {
                this.p.a(this.f6583d);
            } else {
                this.p.g(this.f6583d, this.b);
            }
        }
        if (this.p.f(this.b)) {
            try {
                J();
                I();
                this.f6589j = true;
                return;
            } catch (IOException e2) {
                f.a aVar = i.m0.i.f.f6816c;
                i.m0.i.f fVar = i.m0.i.f.a;
                fVar.k(5, "DiskLruCache " + this.q + " is corrupt: " + e2.getMessage() + ", removing", e2);
                close();
                this.p.d(this.q);
                this.f6590k = false;
            }
        }
        L();
        this.f6589j = true;
    }

    public final boolean G() {
        int i2 = this.f6587h;
        return i2 >= 2000 && i2 >= this.f6586g.size();
    }

    public final i H() throws FileNotFoundException {
        return j.b.g(new f(this.p.e(this.b), new C0108e()));
    }

    public final void I() throws IOException {
        this.p.a(this.f6582c);
        Iterator<b> it = this.f6586g.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            g.b(next, "i.next()");
            b bVar = next;
            int i2 = 0;
            if (bVar.f6597e == null) {
                int i3 = this.s;
                while (i2 < i3) {
                    this.f6584e += bVar.a[i2];
                    i2++;
                }
            } else {
                bVar.f6597e = null;
                int i4 = this.s;
                while (i2 < i4) {
                    this.p.a(bVar.b.get(i2));
                    this.p.a(bVar.f6595c.get(i2));
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
            if (!(!g.a("libcore.io.DiskLruCache", n)) && !(!g.a(UMRTLog.RTLOG_ENABLE, n2)) && !(!g.a(String.valueOf(this.r), n3)) && !(!g.a(String.valueOf(this.s), n4))) {
                int i2 = 0;
                if (!(n5.length() > 0)) {
                    while (true) {
                        try {
                            K(h2.n());
                            i2++;
                        } catch (EOFException unused) {
                            this.f6587h = i2 - this.f6586g.size();
                            if (!h2.p()) {
                                L();
                            } else {
                                this.f6585f = H();
                            }
                            c.a.a.b.g.h.z(h2, null);
                            return;
                        }
                    }
                }
            }
            throw new IOException("unexpected journal header: [" + n + ", " + n2 + ", " + n4 + ", " + n5 + ']');
        } finally {
        }
    }

    public final void K(String str) throws IOException {
        String substring;
        int i2 = h.s.d.i(str, ' ', 0, false, 6);
        if (i2 != -1) {
            int i3 = i2 + 1;
            int i4 = h.s.d.i(str, ' ', i3, false, 4);
            if (i4 == -1) {
                substring = str.substring(i3);
                g.b(substring, "(this as java.lang.String).substring(startIndex)");
                if (i2 == x.length() && h.s.d.w(str, x, false, 2)) {
                    this.f6586g.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i3, i4);
                g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            b bVar = this.f6586g.get(substring);
            if (bVar == null) {
                bVar = new b(substring);
                this.f6586g.put(substring, bVar);
            }
            if (i4 != -1 && i2 == v.length() && h.s.d.w(str, v, false, 2)) {
                String substring2 = str.substring(i4 + 1);
                g.b(substring2, "(this as java.lang.String).substring(startIndex)");
                List r = h.s.d.r(substring2, new char[]{' '}, false, 0, 6);
                bVar.f6596d = true;
                bVar.f6597e = null;
                if (r.size() == e.this.s) {
                    try {
                        int size = r.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            bVar.a[i5] = Long.parseLong((String) r.get(i5));
                        }
                        return;
                    } catch (NumberFormatException unused) {
                        throw new IOException("unexpected journal line: " + r);
                    }
                }
                throw new IOException("unexpected journal line: " + r);
            } else if (i4 == -1 && i2 == w.length() && h.s.d.w(str, w, false, 2)) {
                bVar.f6597e = new a(bVar);
                return;
            } else if (i4 != -1 || i2 != y.length() || !h.s.d.w(str, y, false, 2)) {
                throw new IOException(f.b.a.a.a.f("unexpected journal line: ", str));
            } else {
                return;
            }
        }
        throw new IOException(f.b.a.a.a.f("unexpected journal line: ", str));
    }

    public final synchronized void L() throws IOException {
        i iVar = this.f6585f;
        if (iVar != null) {
            iVar.close();
        }
        i g2 = j.b.g(this.p.c(this.f6582c));
        g2.y("libcore.io.DiskLruCache").q(10);
        g2.y(UMRTLog.RTLOG_ENABLE).q(10);
        g2.z(this.r);
        g2.q(10);
        g2.z(this.s);
        g2.q(10);
        g2.q(10);
        for (b bVar : this.f6586g.values()) {
            if (bVar.f6597e != null) {
                g2.y(w).q(32);
                g2.y(bVar.f6599g);
                g2.q(10);
            } else {
                g2.y(v).q(32);
                g2.y(bVar.f6599g);
                bVar.b(g2);
                g2.q(10);
            }
        }
        c.a.a.b.g.h.z(g2, null);
        if (this.p.f(this.b)) {
            this.p.g(this.b, this.f6583d);
        }
        this.p.g(this.f6582c, this.b);
        this.p.a(this.f6583d);
        this.f6585f = H();
        this.f6588i = false;
        this.f6592m = false;
    }

    public final boolean M(b bVar) throws IOException {
        a aVar = bVar.f6597e;
        if (aVar != null) {
            aVar.c();
        }
        int i2 = this.s;
        for (int i3 = 0; i3 < i2; i3++) {
            this.p.a(bVar.b.get(i3));
            long j2 = this.f6584e;
            long[] jArr = bVar.a;
            this.f6584e = j2 - jArr[i3];
            jArr[i3] = 0;
        }
        this.f6587h++;
        i iVar = this.f6585f;
        if (iVar != null) {
            iVar.y(x).q(32).y(bVar.f6599g).q(10);
            this.f6586g.remove(bVar.f6599g);
            if (G()) {
                this.t.execute(this.o);
            }
            return true;
        }
        g.e();
        throw null;
    }

    public final void N() throws IOException {
        while (this.f6584e > this.a) {
            b next = this.f6586g.values().iterator().next();
            g.b(next, "lruEntries.values.iterator().next()");
            M(next);
        }
        this.f6591l = false;
    }

    public final void O(String str) {
        if (u.a(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        b[] bVarArr;
        if (this.f6589j && !this.f6590k) {
            Collection<b> values = this.f6586g.values();
            g.b(values, "lruEntries.values");
            Object[] array = values.toArray(new b[0]);
            if (array != null) {
                for (b bVar : (b[]) array) {
                    if (bVar.f6597e != null) {
                        a aVar = bVar.f6597e;
                        if (aVar == null) {
                            g.e();
                            throw null;
                        }
                        aVar.a();
                    }
                }
                N();
                i iVar = this.f6585f;
                if (iVar != null) {
                    iVar.close();
                    this.f6585f = null;
                    this.f6590k = true;
                    return;
                }
                g.e();
                throw null;
            }
            throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
        }
        this.f6590k = true;
    }

    public final synchronized void d() {
        if (!(!this.f6590k)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    public final synchronized void e(a aVar, boolean z2) throws IOException {
        b bVar = aVar.f6593c;
        if (g.a(bVar.f6597e, aVar)) {
            if (z2 && !bVar.f6596d) {
                int i2 = this.s;
                for (int i3 = 0; i3 < i2; i3++) {
                    boolean[] zArr = aVar.a;
                    if (zArr != null) {
                        if (zArr[i3]) {
                            if (!this.p.f(bVar.f6595c.get(i3))) {
                                aVar.a();
                                return;
                            }
                        } else {
                            aVar.a();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i3);
                        }
                    } else {
                        g.e();
                        throw null;
                    }
                }
            }
            int i4 = this.s;
            for (int i5 = 0; i5 < i4; i5++) {
                File file = bVar.f6595c.get(i5);
                if (z2) {
                    if (this.p.f(file)) {
                        File file2 = bVar.b.get(i5);
                        this.p.g(file, file2);
                        long j2 = bVar.a[i5];
                        long h2 = this.p.h(file2);
                        bVar.a[i5] = h2;
                        this.f6584e = (this.f6584e - j2) + h2;
                    }
                } else {
                    this.p.a(file);
                }
            }
            this.f6587h++;
            bVar.f6597e = null;
            i iVar = this.f6585f;
            if (iVar != null) {
                if (!bVar.f6596d && !z2) {
                    this.f6586g.remove(bVar.f6599g);
                    iVar.y(x).q(32);
                    iVar.y(bVar.f6599g);
                    iVar.q(10);
                    iVar.flush();
                    if (this.f6584e <= this.a || G()) {
                        this.t.execute(this.o);
                    }
                    return;
                }
                bVar.f6596d = true;
                iVar.y(v).q(32);
                iVar.y(bVar.f6599g);
                bVar.b(iVar);
                iVar.q(10);
                if (z2) {
                    long j3 = this.n;
                    this.n = 1 + j3;
                    bVar.f6598f = j3;
                }
                iVar.flush();
                if (this.f6584e <= this.a) {
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
            b bVar = this.f6586g.get(str);
            if (j2 == -1 || (bVar != null && bVar.f6598f == j2)) {
                if ((bVar != null ? bVar.f6597e : null) != null) {
                    return null;
                }
                if (!this.f6591l && !this.f6592m) {
                    i iVar = this.f6585f;
                    if (iVar != null) {
                        iVar.y(w).q(32).y(str).q(10);
                        iVar.flush();
                        if (this.f6588i) {
                            return null;
                        }
                        if (bVar == null) {
                            bVar = new b(str);
                            this.f6586g.put(str, bVar);
                        }
                        a aVar = new a(bVar);
                        bVar.f6597e = aVar;
                        return aVar;
                    }
                    g.e();
                    throw null;
                }
                this.t.execute(this.o);
                return null;
            }
            return null;
        }
        g.f(Person.KEY_KEY);
        throw null;
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.f6589j) {
            d();
            N();
            i iVar = this.f6585f;
            if (iVar != null) {
                iVar.flush();
            } else {
                g.e();
                throw null;
            }
        }
    }
}
