package f.d.a.o.n;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import f.d.a.o.n.i;
import f.d.a.o.n.q;
import f.d.a.u.j.a;
import f.d.a.u.j.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: EngineJob.java */
/* loaded from: classes.dex */
public class m<R> implements i.a<R>, a.d {
    public static final c y = new c();
    public final e a;
    public final f.d.a.u.j.d b;

    /* renamed from: c  reason: collision with root package name */
    public final q.a f3674c;

    /* renamed from: d  reason: collision with root package name */
    public final Pools.Pool<m<?>> f3675d;

    /* renamed from: e  reason: collision with root package name */
    public final c f3676e;

    /* renamed from: f  reason: collision with root package name */
    public final n f3677f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.o.n.d0.a f3678g;

    /* renamed from: h  reason: collision with root package name */
    public final f.d.a.o.n.d0.a f3679h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.n.d0.a f3680i;

    /* renamed from: j  reason: collision with root package name */
    public final f.d.a.o.n.d0.a f3681j;

    /* renamed from: k  reason: collision with root package name */
    public final AtomicInteger f3682k;

    /* renamed from: l  reason: collision with root package name */
    public f.d.a.o.f f3683l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3684m;
    public boolean n;
    public boolean o;
    public boolean p;
    public w<?> q;
    public f.d.a.o.a r;
    public boolean s;
    public r t;
    public boolean u;
    public q<?> v;
    public i<R> w;
    public volatile boolean x;

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final f.d.a.s.f a;

        public a(f.d.a.s.f fVar) {
            this.a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.d.a.s.g gVar = (f.d.a.s.g) this.a;
            gVar.b.a();
            synchronized (gVar.f3836c) {
                synchronized (m.this) {
                    if (m.this.a.a.contains(new d(this.a, f.d.a.u.d.b))) {
                        m mVar = m.this;
                        f.d.a.s.f fVar = this.a;
                        if (mVar != null) {
                            ((f.d.a.s.g) fVar).m(mVar.t, 5);
                        } else {
                            throw null;
                        }
                    }
                    m.this.d();
                }
            }
        }
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public final f.d.a.s.f a;

        public b(f.d.a.s.f fVar) {
            this.a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.d.a.s.g gVar = (f.d.a.s.g) this.a;
            gVar.b.a();
            synchronized (gVar.f3836c) {
                synchronized (m.this) {
                    if (m.this.a.a.contains(new d(this.a, f.d.a.u.d.b))) {
                        m.this.v.a();
                        m mVar = m.this;
                        f.d.a.s.f fVar = this.a;
                        if (mVar != null) {
                            ((f.d.a.s.g) fVar).n(mVar.v, mVar.r);
                            m.this.h(this.a);
                        } else {
                            throw null;
                        }
                    }
                    m.this.d();
                }
            }
        }
    }

    /* compiled from: EngineJob.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c {
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static final class d {
        public final f.d.a.s.f a;
        public final Executor b;

        public d(f.d.a.s.f fVar, Executor executor) {
            this.a = fVar;
            this.b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.a.equals(((d) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    /* compiled from: EngineJob.java */
    /* loaded from: classes.dex */
    public static final class e implements Iterable<d> {
        public final List<d> a = new ArrayList(2);

        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<d> iterator() {
            return this.a.iterator();
        }
    }

    public m(f.d.a.o.n.d0.a aVar, f.d.a.o.n.d0.a aVar2, f.d.a.o.n.d0.a aVar3, f.d.a.o.n.d0.a aVar4, n nVar, q.a aVar5, Pools.Pool<m<?>> pool) {
        c cVar = y;
        this.a = new e();
        this.b = new d.b();
        this.f3682k = new AtomicInteger();
        this.f3678g = aVar;
        this.f3679h = aVar2;
        this.f3680i = aVar3;
        this.f3681j = aVar4;
        this.f3677f = nVar;
        this.f3674c = aVar5;
        this.f3675d = pool;
        this.f3676e = cVar;
    }

    public synchronized void a(f.d.a.s.f fVar, Executor executor) {
        this.b.a();
        this.a.a.add(new d(fVar, executor));
        boolean z = true;
        if (this.s) {
            e(1);
            executor.execute(new b(fVar));
        } else if (this.u) {
            e(1);
            executor.execute(new a(fVar));
        } else {
            if (this.x) {
                z = false;
            }
            c.a.a.b.g.h.o(z, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    public void b() {
        if (f()) {
            return;
        }
        this.x = true;
        i<R> iVar = this.w;
        iVar.E = true;
        g gVar = iVar.C;
        if (gVar != null) {
            gVar.cancel();
        }
        n nVar = this.f3677f;
        f.d.a.o.f fVar = this.f3683l;
        l lVar = (l) nVar;
        synchronized (lVar) {
            t tVar = lVar.a;
            if (tVar != null) {
                Map<f.d.a.o.f, m<?>> a2 = tVar.a(this.p);
                if (equals(a2.get(fVar))) {
                    a2.remove(fVar);
                }
            } else {
                throw null;
            }
        }
    }

    @Override // f.d.a.u.j.a.d
    @NonNull
    public f.d.a.u.j.d c() {
        return this.b;
    }

    public void d() {
        q<?> qVar;
        synchronized (this) {
            this.b.a();
            c.a.a.b.g.h.o(f(), "Not yet complete!");
            int decrementAndGet = this.f3682k.decrementAndGet();
            c.a.a.b.g.h.o(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                qVar = this.v;
                g();
            } else {
                qVar = null;
            }
        }
        if (qVar != null) {
            qVar.c();
        }
    }

    public synchronized void e(int i2) {
        c.a.a.b.g.h.o(f(), "Not yet complete!");
        if (this.f3682k.getAndAdd(i2) == 0 && this.v != null) {
            this.v.a();
        }
    }

    public final boolean f() {
        return this.u || this.s || this.x;
    }

    public final synchronized void g() {
        boolean a2;
        if (this.f3683l != null) {
            this.a.a.clear();
            this.f3683l = null;
            this.v = null;
            this.q = null;
            this.u = false;
            this.x = false;
            this.s = false;
            i<R> iVar = this.w;
            i.e eVar = iVar.f3639g;
            synchronized (eVar) {
                eVar.a = true;
                a2 = eVar.a(false);
            }
            if (a2) {
                iVar.l();
            }
            this.w = null;
            this.t = null;
            this.r = null;
            this.f3675d.release(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void h(f.d.a.s.f fVar) {
        boolean z;
        this.b.a();
        this.a.a.remove(new d(fVar, f.d.a.u.d.b));
        if (this.a.isEmpty()) {
            b();
            if (!this.s && !this.u) {
                z = false;
                if (z && this.f3682k.get() == 0) {
                    g();
                }
            }
            z = true;
            if (z) {
                g();
            }
        }
    }

    public void i(i<?> iVar) {
        f.d.a.o.n.d0.a aVar;
        if (this.n) {
            aVar = this.f3680i;
        } else {
            aVar = this.o ? this.f3681j : this.f3679h;
        }
        aVar.a.execute(iVar);
    }
}
