package f.d.a.o.n;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.o.h;
import f.d.a.o.k;
import f.d.a.o.m.e;
import f.d.a.o.n.g;
import f.d.a.o.n.j;
import f.d.a.o.n.l;
import f.d.a.o.n.m;
import f.d.a.o.n.q;
import f.d.a.o.p.c.n;
import f.d.a.u.j.a;
import f.d.a.u.j.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: DecodeJob.java */
/* loaded from: classes.dex */
public class i<R> implements g.a, Runnable, Comparable<i<?>>, a.d {
    public f.d.a.o.a A;
    public f.d.a.o.m.d<?> B;
    public volatile g C;
    public volatile boolean D;
    public volatile boolean E;

    /* renamed from: d  reason: collision with root package name */
    public final d f3561d;

    /* renamed from: e  reason: collision with root package name */
    public final Pools.Pool<i<?>> f3562e;

    /* renamed from: h  reason: collision with root package name */
    public f.d.a.e f3565h;

    /* renamed from: i  reason: collision with root package name */
    public f.d.a.o.f f3566i;

    /* renamed from: j  reason: collision with root package name */
    public f.d.a.f f3567j;

    /* renamed from: k  reason: collision with root package name */
    public o f3568k;

    /* renamed from: l  reason: collision with root package name */
    public int f3569l;

    /* renamed from: m  reason: collision with root package name */
    public int f3570m;
    public k n;
    public h o;
    public a<R> p;
    public int q;
    public g r;
    public f s;
    public long t;
    public boolean u;
    public Object v;
    public Thread w;
    public f.d.a.o.f x;
    public f.d.a.o.f y;
    public Object z;
    public final h<R> a = new h<>();
    public final List<Throwable> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.u.j.d f3560c = new d.b();

    /* renamed from: f  reason: collision with root package name */
    public final c<?> f3563f = new c<>();

    /* renamed from: g  reason: collision with root package name */
    public final e f3564g = new e();

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public interface a<R> {
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public final class b<Z> implements j.a<Z> {
        public final f.d.a.o.a a;

        public b(f.d.a.o.a aVar) {
            this.a = aVar;
        }
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static class c<Z> {
        public f.d.a.o.f a;
        public k<Z> b;

        /* renamed from: c  reason: collision with root package name */
        public v<Z> f3571c;
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public interface d {
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static class e {
        public boolean a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3572c;

        public final boolean a(boolean z) {
            return (this.f3572c || z || this.b) && this.a;
        }
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public enum f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public enum g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public i(d dVar, Pools.Pool<i<?>> pool) {
        this.f3561d = dVar;
        this.f3562e = pool;
    }

    @Override // f.d.a.o.n.g.a
    public void a() {
        this.s = f.SWITCH_TO_SOURCE_SERVICE;
        ((m) this.p).i(this);
    }

    @Override // f.d.a.o.n.g.a
    public void b(f.d.a.o.f fVar, Exception exc, f.d.a.o.m.d<?> dVar, f.d.a.o.a aVar) {
        dVar.b();
        r rVar = new r("Fetching data failed", exc);
        Class<?> a2 = dVar.a();
        rVar.b = fVar;
        rVar.f3624c = aVar;
        rVar.f3625d = a2;
        this.b.add(rVar);
        if (Thread.currentThread() != this.w) {
            this.s = f.SWITCH_TO_SOURCE_SERVICE;
            ((m) this.p).i(this);
            return;
        }
        m();
    }

    @Override // f.d.a.u.j.a.d
    @NonNull
    public f.d.a.u.j.d c() {
        return this.f3560c;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public int compareTo(@NonNull i<?> iVar) {
        i<?> iVar2 = iVar;
        int ordinal = this.f3567j.ordinal() - iVar2.f3567j.ordinal();
        return ordinal == 0 ? this.q - iVar2.q : ordinal;
    }

    public final <Data> w<R> d(f.d.a.o.m.d<?> dVar, Data data, f.d.a.o.a aVar) throws r {
        if (data == null) {
            return null;
        }
        try {
            long b2 = f.d.a.u.e.b();
            w<R> e2 = e(data, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                j("Decoded result " + e2, b2, null);
            }
            return e2;
        } finally {
            dVar.b();
        }
    }

    public final <Data> w<R> e(Data data, f.d.a.o.a aVar) throws r {
        f.d.a.o.m.e<Data> b2;
        u<Data, ?, R> d2 = this.a.d(data.getClass());
        h hVar = this.o;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = aVar == f.d.a.o.a.RESOURCE_DISK_CACHE || this.a.r;
            Boolean bool = (Boolean) hVar.c(n.f3690i);
            if (bool == null || (bool.booleanValue() && !z)) {
                hVar = new h();
                hVar.d(this.o);
                hVar.b.put(n.f3690i, Boolean.valueOf(z));
            }
        }
        f.d.a.o.m.f fVar = this.f3565h.b.f3389e;
        synchronized (fVar) {
            c.a.a.b.g.h.s(data, "Argument must not be null");
            e.a<?> aVar2 = fVar.a.get(data.getClass());
            if (aVar2 == null) {
                Iterator<e.a<?>> it = fVar.a.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    e.a<?> next = it.next();
                    if (next.a().isAssignableFrom(data.getClass())) {
                        aVar2 = next;
                        break;
                    }
                }
            }
            if (aVar2 == null) {
                aVar2 = f.d.a.o.m.f.b;
            }
            b2 = aVar2.b(data);
        }
        try {
            return d2.a(b2, hVar, this.f3569l, this.f3570m, new b(aVar));
        } finally {
            b2.b();
        }
    }

    @Override // f.d.a.o.n.g.a
    public void f(f.d.a.o.f fVar, Object obj, f.d.a.o.m.d<?> dVar, f.d.a.o.a aVar, f.d.a.o.f fVar2) {
        this.x = fVar;
        this.z = obj;
        this.B = dVar;
        this.A = aVar;
        this.y = fVar2;
        if (Thread.currentThread() != this.w) {
            this.s = f.DECODE_DATA;
            ((m) this.p).i(this);
            return;
        }
        g();
    }

    public final void g() {
        w<R> wVar;
        v vVar;
        v vVar2;
        boolean a2;
        if (Log.isLoggable("DecodeJob", 2)) {
            long j2 = this.t;
            StringBuilder o = f.b.a.a.a.o("data: ");
            o.append(this.z);
            o.append(", cache key: ");
            o.append(this.x);
            o.append(", fetcher: ");
            o.append(this.B);
            j("Retrieved data", j2, o.toString());
        }
        try {
            wVar = d(this.B, this.z, this.A);
        } catch (r e2) {
            f.d.a.o.f fVar = this.y;
            f.d.a.o.a aVar = this.A;
            e2.b = fVar;
            e2.f3624c = aVar;
            e2.f3625d = null;
            this.b.add(e2);
            wVar = null;
        }
        if (wVar != null) {
            f.d.a.o.a aVar2 = this.A;
            if (wVar instanceof s) {
                ((s) wVar).a();
            }
            if (this.f3563f.f3571c != null) {
                v a3 = v.a(wVar);
                vVar = a3;
                vVar2 = a3;
            } else {
                vVar = null;
                vVar2 = wVar;
            }
            o();
            m<?> mVar = (m) this.p;
            synchronized (mVar) {
                mVar.q = vVar2;
                mVar.r = aVar2;
            }
            synchronized (mVar) {
                mVar.b.a();
                if (mVar.x) {
                    mVar.q.d();
                    mVar.g();
                } else if (mVar.a.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                } else if (!mVar.s) {
                    m.c cVar = mVar.f3601e;
                    w<?> wVar2 = mVar.q;
                    boolean z = mVar.f3609m;
                    f.d.a.o.f fVar2 = mVar.f3608l;
                    q.a aVar3 = mVar.f3599c;
                    if (cVar != null) {
                        mVar.v = new q<>(wVar2, z, true, fVar2, aVar3);
                        mVar.s = true;
                        m.e eVar = mVar.a;
                        if (eVar != null) {
                            ArrayList arrayList = new ArrayList(eVar.a);
                            mVar.e(arrayList.size() + 1);
                            ((l) mVar.f3602f).e(mVar, mVar.f3608l, mVar.v);
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                m.d dVar = (m.d) it.next();
                                dVar.b.execute(new m.b(dVar.a));
                            }
                            mVar.d();
                        } else {
                            throw null;
                        }
                    } else {
                        throw null;
                    }
                } else {
                    throw new IllegalStateException("Already have resource");
                }
            }
            this.r = g.ENCODE;
            try {
                if (this.f3563f.f3571c != null) {
                    c<?> cVar2 = this.f3563f;
                    d dVar2 = this.f3561d;
                    h hVar = this.o;
                    if (cVar2 != null) {
                        ((l.c) dVar2).a().a(cVar2.a, new f(cVar2.b, cVar2.f3571c, hVar));
                        cVar2.f3571c.e();
                    } else {
                        throw null;
                    }
                }
                e eVar2 = this.f3564g;
                synchronized (eVar2) {
                    eVar2.b = true;
                    a2 = eVar2.a(false);
                }
                if (a2) {
                    l();
                }
            } finally {
                if (vVar != null) {
                    vVar.e();
                }
            }
        } else {
            m();
        }
    }

    public final g h() {
        int ordinal = this.r.ordinal();
        if (ordinal == 1) {
            return new x(this.a, this);
        }
        if (ordinal == 2) {
            return new d(this.a, this);
        }
        if (ordinal == 3) {
            return new a0(this.a, this);
        }
        if (ordinal == 5) {
            return null;
        }
        StringBuilder o = f.b.a.a.a.o("Unrecognized stage: ");
        o.append(this.r);
        throw new IllegalStateException(o.toString());
    }

    public final g i(g gVar) {
        g gVar2 = g.RESOURCE_CACHE;
        g gVar3 = g.DATA_CACHE;
        g gVar4 = g.FINISHED;
        int ordinal = gVar.ordinal();
        if (ordinal == 0) {
            return this.n.b() ? gVar2 : i(gVar2);
        }
        if (ordinal == 1) {
            return this.n.a() ? gVar3 : i(gVar3);
        }
        if (ordinal == 2) {
            return this.u ? gVar4 : g.SOURCE;
        }
        if (ordinal == 3 || ordinal == 5) {
            return gVar4;
        }
        throw new IllegalArgumentException("Unrecognized stage: " + gVar);
    }

    public final void j(String str, long j2, String str2) {
        StringBuilder r = f.b.a.a.a.r(str, " in ");
        r.append(f.d.a.u.e.a(j2));
        r.append(", load key: ");
        r.append(this.f3568k);
        r.append(str2 != null ? f.b.a.a.a.f(", ", str2) : "");
        r.append(", thread: ");
        r.append(Thread.currentThread().getName());
        r.toString();
    }

    public final void k() {
        boolean a2;
        o();
        r rVar = new r("Failed to load resource", new ArrayList(this.b));
        m<?> mVar = (m) this.p;
        synchronized (mVar) {
            mVar.t = rVar;
        }
        synchronized (mVar) {
            mVar.b.a();
            if (mVar.x) {
                mVar.g();
            } else if (mVar.a.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            } else if (!mVar.u) {
                mVar.u = true;
                f.d.a.o.f fVar = mVar.f3608l;
                m.e eVar = mVar.a;
                if (eVar != null) {
                    ArrayList arrayList = new ArrayList(eVar.a);
                    mVar.e(arrayList.size() + 1);
                    ((l) mVar.f3602f).e(mVar, fVar, null);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        m.d dVar = (m.d) it.next();
                        dVar.b.execute(new m.a(dVar.a));
                    }
                    mVar.d();
                } else {
                    throw null;
                }
            } else {
                throw new IllegalStateException("Already failed once");
            }
        }
        e eVar2 = this.f3564g;
        synchronized (eVar2) {
            eVar2.f3572c = true;
            a2 = eVar2.a(false);
        }
        if (a2) {
            l();
        }
    }

    public final void l() {
        e eVar = this.f3564g;
        synchronized (eVar) {
            eVar.b = false;
            eVar.a = false;
            eVar.f3572c = false;
        }
        c<?> cVar = this.f3563f;
        cVar.a = null;
        cVar.b = null;
        cVar.f3571c = null;
        h<R> hVar = this.a;
        hVar.f3549c = null;
        hVar.f3550d = null;
        hVar.n = null;
        hVar.f3553g = null;
        hVar.f3557k = null;
        hVar.f3555i = null;
        hVar.o = null;
        hVar.f3556j = null;
        hVar.p = null;
        hVar.a.clear();
        hVar.f3558l = false;
        hVar.b.clear();
        hVar.f3559m = false;
        this.D = false;
        this.f3565h = null;
        this.f3566i = null;
        this.o = null;
        this.f3567j = null;
        this.f3568k = null;
        this.p = null;
        this.r = null;
        this.C = null;
        this.w = null;
        this.x = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.t = 0;
        this.E = false;
        this.v = null;
        this.b.clear();
        this.f3562e.release(this);
    }

    public final void m() {
        this.w = Thread.currentThread();
        this.t = f.d.a.u.e.b();
        boolean z = false;
        while (!this.E && this.C != null && !(z = this.C.e())) {
            this.r = i(this.r);
            this.C = h();
            if (this.r == g.SOURCE) {
                this.s = f.SWITCH_TO_SOURCE_SERVICE;
                ((m) this.p).i(this);
                return;
            }
        }
        if ((this.r == g.FINISHED || this.E) && !z) {
            k();
        }
    }

    public final void n() {
        int ordinal = this.s.ordinal();
        if (ordinal == 0) {
            this.r = i(g.INITIALIZE);
            this.C = h();
            m();
        } else if (ordinal == 1) {
            m();
        } else if (ordinal == 2) {
            g();
        } else {
            StringBuilder o = f.b.a.a.a.o("Unrecognized run reason: ");
            o.append(this.s);
            throw new IllegalStateException(o.toString());
        }
    }

    public final void o() {
        Throwable th;
        this.f3560c.a();
        if (this.D) {
            if (this.b.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.b;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.D = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            f.d.a.o.m.d<?> dVar = this.B;
            try {
                if (this.E) {
                    k();
                    if (dVar != null) {
                        dVar.b();
                        return;
                    }
                    return;
                }
                n();
                if (dVar != null) {
                    dVar.b();
                }
            } catch (c e2) {
                throw e2;
            }
        }
    }
}
