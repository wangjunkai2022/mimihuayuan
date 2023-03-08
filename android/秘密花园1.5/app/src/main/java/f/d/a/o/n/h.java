package f.d.a.o.n;

import f.d.a.o.n.i;
import f.d.a.o.n.l;
import f.d.a.o.o.n;
import f.d.a.o.p.h.f;
import f.d.a.r.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: DecodeHelper.java */
/* loaded from: classes.dex */
public final class h<Transcode> {
    public final List<n.a<?>> a = new ArrayList();
    public final List<f.d.a.o.f> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public f.d.a.e f3624c;

    /* renamed from: d  reason: collision with root package name */
    public Object f3625d;

    /* renamed from: e  reason: collision with root package name */
    public int f3626e;

    /* renamed from: f  reason: collision with root package name */
    public int f3627f;

    /* renamed from: g  reason: collision with root package name */
    public Class<?> f3628g;

    /* renamed from: h  reason: collision with root package name */
    public i.d f3629h;

    /* renamed from: i  reason: collision with root package name */
    public f.d.a.o.h f3630i;

    /* renamed from: j  reason: collision with root package name */
    public Map<Class<?>, f.d.a.o.l<?>> f3631j;

    /* renamed from: k  reason: collision with root package name */
    public Class<Transcode> f3632k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3633l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3634m;
    public f.d.a.o.f n;
    public f.d.a.f o;
    public k p;
    public boolean q;
    public boolean r;

    public List<f.d.a.o.f> a() {
        if (!this.f3634m) {
            this.f3634m = true;
            this.b.clear();
            List<n.a<?>> c2 = c();
            int size = c2.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a<?> aVar = c2.get(i2);
                if (!this.b.contains(aVar.a)) {
                    this.b.add(aVar.a);
                }
                for (int i3 = 0; i3 < aVar.b.size(); i3++) {
                    if (!this.b.contains(aVar.b.get(i3))) {
                        this.b.add(aVar.b.get(i3));
                    }
                }
            }
        }
        return this.b;
    }

    public f.d.a.o.n.c0.a b() {
        return ((l.c) this.f3629h).a();
    }

    public List<n.a<?>> c() {
        if (!this.f3633l) {
            this.f3633l = true;
            this.a.clear();
            List f2 = this.f3624c.b.f(this.f3625d);
            int size = f2.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a<?> a = ((f.d.a.o.o.n) f2.get(i2)).a(this.f3625d, this.f3626e, this.f3627f, this.f3630i);
                if (a != null) {
                    this.a.add(a);
                }
            }
        }
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <Data> u<Data, ?, Transcode> d(Class<Data> cls) {
        u<Data, ?, Transcode> uVar;
        ArrayList arrayList;
        f.d.a.o.p.h.e eVar;
        f.d.a.h hVar = this.f3624c.b;
        Class<?> cls2 = this.f3628g;
        Class cls3 = (Class<Transcode>) this.f3632k;
        f.d.a.r.c cVar = hVar.f3468i;
        f.d.a.u.h andSet = cVar.b.getAndSet(null);
        if (andSet == null) {
            andSet = new f.d.a.u.h();
        }
        andSet.a = cls;
        andSet.b = cls2;
        andSet.f3861c = cls3;
        synchronized (cVar.a) {
            uVar = (u<Data, ?, Transcode>) cVar.a.get(andSet);
        }
        cVar.b.set(andSet);
        if (hVar.f3468i != null) {
            if (f.d.a.r.c.f3823c.equals(uVar)) {
                return null;
            }
            if (uVar == null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = ((ArrayList) hVar.f3462c.b(cls, cls2)).iterator();
                while (it.hasNext()) {
                    Class<?> cls4 = (Class) it.next();
                    Iterator it2 = ((ArrayList) hVar.f3465f.a(cls4, cls3)).iterator();
                    while (it2.hasNext()) {
                        Class<?> cls5 = (Class) it2.next();
                        f.d.a.r.e eVar2 = hVar.f3462c;
                        synchronized (eVar2) {
                            arrayList = new ArrayList();
                            for (String str : eVar2.a) {
                                List<e.a<?, ?>> list = eVar2.b.get(str);
                                if (list != null) {
                                    for (e.a<?, ?> aVar : list) {
                                        if (aVar.a(cls, cls4)) {
                                            arrayList.add(aVar.f3824c);
                                        }
                                    }
                                }
                            }
                        }
                        f.d.a.o.p.h.f fVar = hVar.f3465f;
                        synchronized (fVar) {
                            if (cls5.isAssignableFrom(cls4)) {
                                eVar = f.d.a.o.p.h.g.a;
                            } else {
                                for (f.a<?, ?> aVar2 : fVar.a) {
                                    if (aVar2.a(cls4, cls5)) {
                                        eVar = aVar2.f3809c;
                                    }
                                }
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls4 + " to " + cls5);
                            }
                        }
                        arrayList2.add(new j(cls, cls4, cls5, arrayList, eVar, hVar.f3469j));
                    }
                }
                u<Data, ?, Transcode> uVar2 = arrayList2.isEmpty() ? null : new u<>(cls, cls2, cls3, arrayList2, hVar.f3469j);
                f.d.a.r.c cVar2 = hVar.f3468i;
                synchronized (cVar2.a) {
                    cVar2.a.put(new f.d.a.u.h(cls, cls2, cls3), uVar2 != null ? uVar2 : f.d.a.r.c.f3823c);
                }
                return uVar2;
            }
            return uVar;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        r1 = (f.d.a.o.d<X>) r3.b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <X> f.d.a.o.d<X> e(X r6) throws f.d.a.h.e {
        /*
            r5 = this;
            f.d.a.e r0 = r5.f3624c
            f.d.a.h r0 = r0.b
            f.d.a.r.a r0 = r0.b
            java.lang.Class r1 = r6.getClass()
            monitor-enter(r0)
            java.util.List<f.d.a.r.a$a<?>> r2 = r0.a     // Catch: java.lang.Throwable -> L38
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L38
        L11:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L38
            if (r3 == 0) goto L29
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L38
            f.d.a.r.a$a r3 = (f.d.a.r.a.C0051a) r3     // Catch: java.lang.Throwable -> L38
            java.lang.Class<T> r4 = r3.a     // Catch: java.lang.Throwable -> L38
            boolean r4 = r4.isAssignableFrom(r1)     // Catch: java.lang.Throwable -> L38
            if (r4 == 0) goto L11
            f.d.a.o.d<T> r1 = r3.b     // Catch: java.lang.Throwable -> L38
            monitor-exit(r0)
            goto L2b
        L29:
            r1 = 0
            monitor-exit(r0)
        L2b:
            if (r1 == 0) goto L2e
            return r1
        L2e:
            f.d.a.h$e r0 = new f.d.a.h$e
            java.lang.Class r6 = r6.getClass()
            r0.<init>(r6)
            throw r0
        L38:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.n.h.e(java.lang.Object):f.d.a.o.d");
    }

    public <Z> f.d.a.o.l<Z> f(Class<Z> cls) {
        f.d.a.o.l<Z> lVar = (f.d.a.o.l<Z>) this.f3631j.get(cls);
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, f.d.a.o.l<?>>> it = this.f3631j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, f.d.a.o.l<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    lVar = (f.d.a.o.l<Z>) next.getValue();
                    break;
                }
            }
        }
        if (lVar == null) {
            if (this.f3631j.isEmpty() && this.q) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return (f.d.a.o.p.b) f.d.a.o.p.b.b;
        }
        return lVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean g(Class<?> cls) {
        return d(cls) != null;
    }
}
