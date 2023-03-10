package f.d.a.o.n;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import f.d.a.o.n.a;
import f.d.a.o.n.c0.a;
import f.d.a.o.n.c0.i;
import f.d.a.o.n.i;
import f.d.a.o.n.q;
import f.d.a.u.j.a;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Engine.java */
/* loaded from: classes.dex */
public class l implements n, i.a, q.a {

    /* renamed from: i  reason: collision with root package name */
    public static final boolean f3664i = Log.isLoggable("Engine", 2);
    public final t a;
    public final p b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.n.c0.i f3665c;

    /* renamed from: d  reason: collision with root package name */
    public final b f3666d;

    /* renamed from: e  reason: collision with root package name */
    public final z f3667e;

    /* renamed from: f  reason: collision with root package name */
    public final c f3668f;

    /* renamed from: g  reason: collision with root package name */
    public final a f3669g;

    /* renamed from: h  reason: collision with root package name */
    public final f.d.a.o.n.a f3670h;

    /* compiled from: Engine.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {
        public final i.d a;
        public final Pools.Pool<i<?>> b = f.d.a.u.j.a.a(SwipeRefreshLayout.SCALE_DOWN_DURATION, new C0041a());

        /* renamed from: c  reason: collision with root package name */
        public int f3671c;

        /* compiled from: Engine.java */
        /* renamed from: f.d.a.o.n.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0041a implements a.b<i<?>> {
            public C0041a() {
            }

            @Override // f.d.a.u.j.a.b
            public i<?> a() {
                a aVar = a.this;
                return new i<>(aVar.a, aVar.b);
            }
        }

        public a(i.d dVar) {
            this.a = dVar;
        }
    }

    /* compiled from: Engine.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {
        public final f.d.a.o.n.d0.a a;
        public final f.d.a.o.n.d0.a b;

        /* renamed from: c  reason: collision with root package name */
        public final f.d.a.o.n.d0.a f3672c;

        /* renamed from: d  reason: collision with root package name */
        public final f.d.a.o.n.d0.a f3673d;

        /* renamed from: e  reason: collision with root package name */
        public final n f3674e;

        /* renamed from: f  reason: collision with root package name */
        public final q.a f3675f;

        /* renamed from: g  reason: collision with root package name */
        public final Pools.Pool<m<?>> f3676g = f.d.a.u.j.a.a(SwipeRefreshLayout.SCALE_DOWN_DURATION, new a());

        /* compiled from: Engine.java */
        /* loaded from: classes.dex */
        public class a implements a.b<m<?>> {
            public a() {
            }

            @Override // f.d.a.u.j.a.b
            public m<?> a() {
                b bVar = b.this;
                return new m<>(bVar.a, bVar.b, bVar.f3672c, bVar.f3673d, bVar.f3674e, bVar.f3675f, bVar.f3676g);
            }
        }

        public b(f.d.a.o.n.d0.a aVar, f.d.a.o.n.d0.a aVar2, f.d.a.o.n.d0.a aVar3, f.d.a.o.n.d0.a aVar4, n nVar, q.a aVar5) {
            this.a = aVar;
            this.b = aVar2;
            this.f3672c = aVar3;
            this.f3673d = aVar4;
            this.f3674e = nVar;
            this.f3675f = aVar5;
        }
    }

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public static class c implements i.d {
        public final a.InterfaceC0037a a;
        public volatile f.d.a.o.n.c0.a b;

        public c(a.InterfaceC0037a interfaceC0037a) {
            this.a = interfaceC0037a;
        }

        public f.d.a.o.n.c0.a a() {
            if (this.b == null) {
                synchronized (this) {
                    if (this.b == null) {
                        f.d.a.o.n.c0.d dVar = (f.d.a.o.n.c0.d) this.a;
                        f.d.a.o.n.c0.f fVar = (f.d.a.o.n.c0.f) dVar.b;
                        File cacheDir = fVar.a.getCacheDir();
                        f.d.a.o.n.c0.e eVar = null;
                        if (cacheDir == null) {
                            cacheDir = null;
                        } else if (fVar.b != null) {
                            cacheDir = new File(cacheDir, fVar.b);
                        }
                        if (cacheDir != null && (cacheDir.mkdirs() || (cacheDir.exists() && cacheDir.isDirectory()))) {
                            eVar = new f.d.a.o.n.c0.e(cacheDir, dVar.a);
                        }
                        this.b = eVar;
                    }
                    if (this.b == null) {
                        this.b = new f.d.a.o.n.c0.b();
                    }
                }
            }
            return this.b;
        }
    }

    /* compiled from: Engine.java */
    /* loaded from: classes.dex */
    public class d {
        public final m<?> a;
        public final f.d.a.s.f b;

        public d(f.d.a.s.f fVar, m<?> mVar) {
            this.b = fVar;
            this.a = mVar;
        }
    }

    public l(f.d.a.o.n.c0.i iVar, a.InterfaceC0037a interfaceC0037a, f.d.a.o.n.d0.a aVar, f.d.a.o.n.d0.a aVar2, f.d.a.o.n.d0.a aVar3, f.d.a.o.n.d0.a aVar4, boolean z) {
        this.f3665c = iVar;
        this.f3668f = new c(interfaceC0037a);
        f.d.a.o.n.a aVar5 = new f.d.a.o.n.a(z);
        this.f3670h = aVar5;
        synchronized (this) {
            synchronized (aVar5) {
                aVar5.f3574d = this;
            }
        }
        this.b = new p();
        this.a = new t();
        this.f3666d = new b(aVar, aVar2, aVar3, aVar4, this, this);
        this.f3669g = new a(this.f3668f);
        this.f3667e = new z();
        ((f.d.a.o.n.c0.h) iVar).f3606d = this;
    }

    public static void d(String str, long j2, f.d.a.o.f fVar) {
        StringBuilder r = f.b.a.a.a.r(str, " in ");
        r.append(f.d.a.u.e.a(j2));
        r.append("ms, key: ");
        r.append(fVar);
        r.toString();
    }

    @Override // f.d.a.o.n.q.a
    public void a(f.d.a.o.f fVar, q<?> qVar) {
        f.d.a.o.n.a aVar = this.f3670h;
        synchronized (aVar) {
            a.b remove = aVar.b.remove(fVar);
            if (remove != null) {
                remove.f3575c = null;
                remove.clear();
            }
        }
        if (qVar.a) {
            ((f.d.a.o.n.c0.h) this.f3665c).f(fVar, qVar);
        } else {
            this.f3667e.a(qVar);
        }
    }

    public <R> d b(f.d.a.e eVar, Object obj, f.d.a.o.f fVar, int i2, int i3, Class<?> cls, Class<R> cls2, f.d.a.f fVar2, k kVar, Map<Class<?>, f.d.a.o.l<?>> map, boolean z, boolean z2, f.d.a.o.h hVar, boolean z3, boolean z4, boolean z5, boolean z6, f.d.a.s.f fVar3, Executor executor) {
        long b2 = f3664i ? f.d.a.u.e.b() : 0L;
        if (this.b != null) {
            o oVar = new o(obj, fVar, i2, i3, map, cls, cls2, hVar);
            synchronized (this) {
                q<?> c2 = c(oVar, z3, b2);
                if (c2 == null) {
                    return g(eVar, obj, fVar, i2, i3, cls, cls2, fVar2, kVar, map, z, z2, hVar, z3, z4, z5, z6, fVar3, executor, oVar, b2);
                }
                ((f.d.a.s.g) fVar3).n(c2, f.d.a.o.a.MEMORY_CACHE);
                return null;
            }
        }
        throw null;
    }

    @Nullable
    public final q<?> c(o oVar, boolean z, long j2) {
        q<?> qVar;
        Object remove;
        q<?> qVar2;
        if (z) {
            f.d.a.o.n.a aVar = this.f3670h;
            synchronized (aVar) {
                a.b bVar = aVar.b.get(oVar);
                if (bVar == null) {
                    qVar = null;
                } else {
                    qVar = bVar.get();
                    if (qVar == null) {
                        aVar.b(bVar);
                    }
                }
            }
            if (qVar != null) {
                qVar.a();
            }
            if (qVar != null) {
                if (f3664i) {
                    d("Loaded resource from active resources", j2, oVar);
                }
                return qVar;
            }
            f.d.a.o.n.c0.h hVar = (f.d.a.o.n.c0.h) this.f3665c;
            synchronized (hVar) {
                remove = hVar.a.remove(oVar);
                if (remove != null) {
                    hVar.f3864c -= hVar.b(remove);
                }
            }
            w wVar = (w) remove;
            if (wVar == null) {
                qVar2 = null;
            } else if (wVar instanceof q) {
                qVar2 = (q) wVar;
            } else {
                qVar2 = new q<>(wVar, true, true, oVar, this);
            }
            if (qVar2 != null) {
                qVar2.a();
                this.f3670h.a(oVar, qVar2);
            }
            if (qVar2 != null) {
                if (f3664i) {
                    d("Loaded resource from cache", j2, oVar);
                }
                return qVar2;
            }
            return null;
        }
        return null;
    }

    public synchronized void e(m<?> mVar, f.d.a.o.f fVar, q<?> qVar) {
        if (qVar != null) {
            if (qVar.a) {
                this.f3670h.a(fVar, qVar);
            }
        }
        t tVar = this.a;
        if (tVar != null) {
            Map<f.d.a.o.f, m<?>> a2 = tVar.a(mVar.p);
            if (mVar.equals(a2.get(fVar))) {
                a2.remove(fVar);
            }
        } else {
            throw null;
        }
    }

    public void f(w<?> wVar) {
        if (wVar instanceof q) {
            ((q) wVar).c();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e8 A[Catch: all -> 0x0112, TryCatch #0 {, blocks: (B:21:0x00d2, B:23:0x00de, B:29:0x00e8, B:37:0x00fb, B:30:0x00eb, B:32:0x00ef, B:33:0x00f2, B:35:0x00f6, B:36:0x00f9), top: B:52:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb A[Catch: all -> 0x0112, TryCatch #0 {, blocks: (B:21:0x00d2, B:23:0x00de, B:29:0x00e8, B:37:0x00fb, B:30:0x00eb, B:32:0x00ef, B:33:0x00f2, B:35:0x00f6, B:36:0x00f9), top: B:52:0x00d2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> f.d.a.o.n.l.d g(f.d.a.e r17, java.lang.Object r18, f.d.a.o.f r19, int r20, int r21, java.lang.Class<?> r22, java.lang.Class<R> r23, f.d.a.f r24, f.d.a.o.n.k r25, java.util.Map<java.lang.Class<?>, f.d.a.o.l<?>> r26, boolean r27, boolean r28, f.d.a.o.h r29, boolean r30, boolean r31, boolean r32, boolean r33, f.d.a.s.f r34, java.util.concurrent.Executor r35, f.d.a.o.n.o r36, long r37) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.n.l.g(f.d.a.e, java.lang.Object, f.d.a.o.f, int, int, java.lang.Class, java.lang.Class, f.d.a.f, f.d.a.o.n.k, java.util.Map, boolean, boolean, f.d.a.o.h, boolean, boolean, boolean, boolean, f.d.a.s.f, java.util.concurrent.Executor, f.d.a.o.n.o, long):f.d.a.o.n.l$d");
    }
}
