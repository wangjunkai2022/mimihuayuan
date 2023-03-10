package f.d.a.o.n;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.o.m.e;
import f.d.a.o.n.g;
import f.d.a.o.n.j;
import f.d.a.o.n.l;
import f.d.a.o.n.m;
import f.d.a.o.n.q;
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
    public volatile f.d.a.o.n.g C;
    public volatile boolean D;
    public volatile boolean E;

    /* renamed from: d  reason: collision with root package name */
    public final d f3640d;

    /* renamed from: e  reason: collision with root package name */
    public final Pools.Pool<i<?>> f3641e;

    /* renamed from: h  reason: collision with root package name */
    public f.d.a.e f3644h;

    /* renamed from: i  reason: collision with root package name */
    public f.d.a.o.f f3645i;

    /* renamed from: j  reason: collision with root package name */
    public f.d.a.f f3646j;

    /* renamed from: k  reason: collision with root package name */
    public o f3647k;

    /* renamed from: l  reason: collision with root package name */
    public int f3648l;

    /* renamed from: m  reason: collision with root package name */
    public int f3649m;
    public k n;
    public f.d.a.o.h o;
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
    public final f.d.a.u.j.d f3639c = new d.b();

    /* renamed from: f  reason: collision with root package name */
    public final c<?> f3642f = new c<>();

    /* renamed from: g  reason: collision with root package name */
    public final e f3643g = new e();

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
        public f.d.a.o.k<Z> b;

        /* renamed from: c  reason: collision with root package name */
        public v<Z> f3650c;
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
        public boolean f3651c;

        public final boolean a(boolean z) {
            return (this.f3651c || z || this.b) && this.a;
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
        this.f3640d = dVar;
        this.f3641e = pool;
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
        rVar.f3703c = aVar;
        rVar.f3704d = a2;
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
        return this.f3639c;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull i<?> iVar) {
        i<?> iVar2 = iVar;
        int ordinal = this.f3646j.ordinal() - iVar2.f3646j.ordinal();
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
        f.d.a.o.h hVar = this.o;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = aVar == f.d.a.o.a.RESOURCE_DISK_CACHE || this.a.r;
            Boolean bool = (Boolean) hVar.c(f.d.a.o.p.c.n.f3769i);
            if (bool == null || (bool.booleanValue() && !z)) {
                hVar = new f.d.a.o.h();
                hVar.d(this.o);
                hVar.b.put(f.d.a.o.p.c.n.f3769i, Boolean.valueOf(z));
            }
        }
        f.d.a.o.h hVar2 = hVar;
        f.d.a.o.m.f fVar = this.f3644h.b.f3468e;
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
            return d2.a(b2, hVar2, this.f3648l, this.f3649m, new b(aVar));
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

    /* JADX WARN: Multi-variable type inference failed */
    public final void g() {
        w wVar;
        v vVar;
        w wVar2;
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
            wVar = (w<R>) d(this.B, this.z, this.A);
        } catch (r e2) {
            f.d.a.o.f fVar = this.y;
            f.d.a.o.a aVar = this.A;
            e2.b = fVar;
            e2.f3703c = aVar;
            e2.f3704d = null;
            this.b.add(e2);
            wVar = null;
        }
        if (wVar != null) {
            f.d.a.o.a aVar2 = this.A;
            if (wVar instanceof s) {
                ((s) wVar).a();
            }
            if (this.f3642f.f3650c != null) {
                w a3 = v.a(wVar);
                vVar = a3;
                wVar2 = a3;
            } else {
                vVar = null;
                wVar2 = wVar;
            }
            o();
            m<?> mVar = (m) this.p;
            synchronized (mVar) {
                mVar.q = wVar2;
                mVar.r = aVar2;
            }
            synchronized (mVar) {
                mVar.b.a();
                if (mVar.x) {
                    mVar.q.d();
                    mVar.g();
                } else if (!mVar.a.isEmpty()) {
                    if (!mVar.s) {
                        m.c cVar = mVar.f3680e;
                        w<?> wVar3 = mVar.q;
                        boolean z = mVar.f3688m;
                        f.d.a.o.f fVar2 = mVar.f3687l;
                        q.a aVar3 = mVar.f3678c;
                        if (cVar != null) {
                            mVar.v = new q<>(wVar3, z, true, fVar2, aVar3);
                            mVar.s = true;
                            m.e eVar = mVar.a;
                            if (eVar != null) {
                                ArrayList arrayList = new ArrayList(eVar.a);
                                mVar.e(arrayList.size() + 1);
                                ((l) mVar.f3681f).e(mVar, mVar.f3687l, mVar.v);
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
                } else {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
            }
            this.r = g.ENCODE;
            try {
                if (this.f3642f.f3650c != null) {
                    c<?> cVar2 = this.f3642f;
                    d dVar2 = this.f3640d;
                    f.d.a.o.h hVar = this.o;
                    if (cVar2 != null) {
                        ((l.c) dVar2).a().a(cVar2.a, new f.d.a.o.n.f(cVar2.b, cVar2.f3650c, hVar));
                        cVar2.f3650c.e();
                    } else {
                        throw null;
                    }
                }
                e eVar2 = this.f3643g;
                synchronized (eVar2) {
                    eVar2.b = true;
                    a2 = eVar2.a(false);
                }
                if (a2) {
                    l();
                    return;
                }
                return;
            } finally {
                if (vVar != null) {
                    vVar.e();
                }
            }
        }
        m();
    }

    public final f.d.a.o.n.g h() {
        int ordinal = this.r.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 5) {
                        return null;
                    }
                    StringBuilder o = f.b.a.a.a.o("Unrecognized stage: ");
                    o.append(this.r);
                    throw new IllegalStateException(o.toString());
                }
                return new a0(this.a, this);
            }
            return new f.d.a.o.n.d(this.a, this);
        }
        return new x(this.a, this);
    }

    public final g i(g gVar) {
        g gVar2 = g.RESOURCE_CACHE;
        g gVar3 = g.DATA_CACHE;
        g gVar4 = g.FINISHED;
        int ordinal = gVar.ordinal();
        if (ordinal == 0) {
            return this.n.b() ? gVar2 : i(gVar2);
        } else if (ordinal == 1) {
            return this.n.a() ? gVar3 : i(gVar3);
        } else if (ordinal == 2) {
            return this.u ? gVar4 : g.SOURCE;
        } else if (ordinal == 3 || ordinal == 5) {
            return gVar4;
        } else {
            throw new IllegalArgumentException("Unrecognized stage: " + gVar);
        }
    }

    public final void j(String str, long j2, String str2) {
        StringBuilder r = f.b.a.a.a.r(str, " in ");
        r.append(f.d.a.u.e.a(j2));
        r.append(", load key: ");
        r.append(this.f3647k);
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
            } else if (!mVar.a.isEmpty()) {
                if (!mVar.u) {
                    mVar.u = true;
                    f.d.a.o.f fVar = mVar.f3687l;
                    m.e eVar = mVar.a;
                    if (eVar != null) {
                        ArrayList arrayList = new ArrayList(eVar.a);
                        mVar.e(arrayList.size() + 1);
                        ((l) mVar.f3681f).e(mVar, fVar, null);
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
            } else {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
        }
        e eVar2 = this.f3643g;
        synchronized (eVar2) {
            eVar2.f3651c = true;
            a2 = eVar2.a(false);
        }
        if (a2) {
            l();
        }
    }

    public final void l() {
        e eVar = this.f3643g;
        synchronized (eVar) {
            eVar.b = false;
            eVar.a = false;
            eVar.f3651c = false;
        }
        c<?> cVar = this.f3642f;
        cVar.a = null;
        cVar.b = null;
        cVar.f3650c = null;
        h<R> hVar = this.a;
        hVar.f3628c = null;
        hVar.f3629d = null;
        hVar.n = null;
        hVar.f3632g = null;
        hVar.f3636k = null;
        hVar.f3634i = null;
        hVar.o = null;
        hVar.f3635j = null;
        hVar.p = null;
        hVar.a.clear();
        hVar.f3637l = false;
        hVar.b.clear();
        hVar.f3638m = false;
        this.D = false;
        this.f3644h = null;
        this.f3645i = null;
        this.o = null;
        this.f3646j = null;
        this.f3647k = null;
        this.p = null;
        this.r = null;
        this.C = null;
        this.w = null;
        this.x = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.t = 0L;
        this.E = false;
        this.v = null;
        this.b.clear();
        this.f3641e.release(this);
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
        this.f3639c.a();
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
        f.d.a.o.m.d<?> dVar = this.B;
        try {
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
            } catch (f.d.a.o.n.c e2) {
                throw e2;
            }
        }
    }
}
