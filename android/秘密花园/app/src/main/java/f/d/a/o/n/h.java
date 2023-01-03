package f.d.a.o.n;

import androidx.collection.SimpleArrayMap;
import f.d.a.e;
import f.d.a.o.f;
import f.d.a.o.l;
import f.d.a.o.n.c0.a;
import f.d.a.o.n.i;
import f.d.a.o.n.l;
import f.d.a.o.o.n;
import f.d.a.o.p.b;
import f.d.a.o.p.h.f;
import f.d.a.o.p.h.g;
import f.d.a.r.c;
import f.d.a.r.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: DecodeHelper.java */
/* loaded from: classes.dex */
public final class h<Transcode> {
    public final List<n.a<?>> a = new ArrayList();
    public final List<f> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public e f3549c;

    /* renamed from: d  reason: collision with root package name */
    public Object f3550d;

    /* renamed from: e  reason: collision with root package name */
    public int f3551e;

    /* renamed from: f  reason: collision with root package name */
    public int f3552f;

    /* renamed from: g  reason: collision with root package name */
    public Class<?> f3553g;

    /* renamed from: h  reason: collision with root package name */
    public i.d f3554h;

    /* renamed from: i  reason: collision with root package name */
    public f.d.a.o.h f3555i;

    /* renamed from: j  reason: collision with root package name */
    public Map<Class<?>, l<?>> f3556j;

    /* renamed from: k  reason: collision with root package name */
    public Class<Transcode> f3557k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3558l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3559m;
    public f n;
    public f.d.a.f o;
    public k p;
    public boolean q;
    public boolean r;

    public List<f> a() {
        if (!this.f3559m) {
            this.f3559m = true;
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

    public a b() {
        return ((l.c) this.f3554h).a();
    }

    public List<n.a<?>> c() {
        if (!this.f3558l) {
            this.f3558l = true;
            this.a.clear();
            List f2 = this.f3549c.b.f(this.f3550d);
            int size = f2.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a<?> a = ((n) f2.get(i2)).a(this.f3550d, this.f3551e, this.f3552f, this.f3555i);
                if (a != null) {
                    this.a.add(a);
                }
            }
        }
        return this.a;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r19v0, resolved type: java.lang.Class<Data> */
    /* JADX WARN: Multi-variable type inference failed */
    public <Data> u<Data, ?, Transcode> d(Class<Data> cls) {
        u<Data, ?, Transcode> uVar;
        u<Data, ?, Transcode> uVar2;
        Object obj;
        ArrayList arrayList;
        f.d.a.o.p.h.e eVar;
        f.d.a.h hVar = this.f3549c.b;
        Class<?> cls2 = this.f3553g;
        Class cls3 = (Class<Transcode>) this.f3557k;
        c cVar = hVar.f3393i;
        f.d.a.u.h andSet = cVar.b.getAndSet(null);
        if (andSet == null) {
            andSet = new f.d.a.u.h();
        }
        andSet.a = cls;
        andSet.b = cls2;
        andSet.f3786c = cls3;
        synchronized (cVar.a) {
            uVar = (u<Data, ?, Transcode>) cVar.a.get(andSet);
        }
        cVar.b.set(andSet);
        if (hVar.f3393i == null) {
            throw null;
        } else if (c.f3748c.equals(uVar)) {
            return null;
        } else {
            if (uVar != null) {
                return uVar;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((ArrayList) hVar.f3387c.b(cls, cls2)).iterator();
            while (it.hasNext()) {
                Class<?> cls4 = (Class) it.next();
                Iterator it2 = ((ArrayList) hVar.f3390f.a(cls4, cls3)).iterator();
                while (it2.hasNext()) {
                    Class<?> cls5 = (Class) it2.next();
                    f.d.a.r.e eVar2 = hVar.f3387c;
                    synchronized (eVar2) {
                        arrayList = new ArrayList();
                        for (String str : eVar2.a) {
                            List<e.a<?, ?>> list = eVar2.b.get(str);
                            if (list != null) {
                                for (e.a<?, ?> aVar : list) {
                                    if (aVar.a(cls, cls4)) {
                                        arrayList.add(aVar.f3749c);
                                    }
                                }
                            }
                        }
                    }
                    f.d.a.o.p.h.f fVar = hVar.f3390f;
                    synchronized (fVar) {
                        if (cls5.isAssignableFrom(cls4)) {
                            eVar = g.a;
                        } else {
                            for (f.a<?, ?> aVar2 : fVar.a) {
                                if (aVar2.a(cls4, cls5)) {
                                    eVar = aVar2.f3734c;
                                }
                            }
                            throw new IllegalArgumentException("No transcoder registered to transcode from " + cls4 + " to " + cls5);
                        }
                    }
                    arrayList2.add(new j(cls, cls4, cls5, arrayList, eVar, hVar.f3394j));
                }
            }
            if (arrayList2.isEmpty()) {
                uVar2 = null;
            } else {
                uVar2 = new u<>(cls, cls2, cls3, arrayList2, hVar.f3394j);
            }
            c cVar2 = hVar.f3393i;
            synchronized (cVar2.a) {
                SimpleArrayMap simpleArrayMap = cVar2.a;
                f.d.a.u.h hVar2 = new f.d.a.u.h(cls, cls2, cls3);
                if (uVar2 != null) {
                    obj = uVar2;
                } else {
                    obj = c.f3748c;
                }
                simpleArrayMap.put(hVar2, obj);
            }
            return uVar2;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0025, code lost:
        r1 = (f.d.a.o.d<X>) r3.b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <X> f.d.a.o.d<X> e(X r6) throws f.d.a.h.e {
        /*
            r5 = this;
            f.d.a.e r0 = r5.f3549c
            f.d.a.h r0 = r0.b
            f.d.a.r.a r0 = r0.b
            java.lang.Class r1 = r6.getClass()
            monitor-enter(r0)
            java.util.List<f.d.a.r.a$a<?>> r2 = r0.a     // Catch: all -> 0x0038
            java.util.Iterator r2 = r2.iterator()     // Catch: all -> 0x0038
        L_0x0011:
            boolean r3 = r2.hasNext()     // Catch: all -> 0x0038
            if (r3 == 0) goto L_0x0029
            java.lang.Object r3 = r2.next()     // Catch: all -> 0x0038
            f.d.a.r.a$a r3 = (f.d.a.r.a.C0044a) r3     // Catch: all -> 0x0038
            java.lang.Class<T> r4 = r3.a     // Catch: all -> 0x0038
            boolean r4 = r4.isAssignableFrom(r1)     // Catch: all -> 0x0038
            if (r4 == 0) goto L_0x0011
            f.d.a.o.d<T> r1 = r3.b     // Catch: all -> 0x0038
            monitor-exit(r0)
            goto L_0x002b
        L_0x0029:
            r1 = 0
            monitor-exit(r0)
        L_0x002b:
            if (r1 == 0) goto L_0x002e
            return r1
        L_0x002e:
            f.d.a.h$e r0 = new f.d.a.h$e
            java.lang.Class r6 = r6.getClass()
            r0.<init>(r6)
            throw r0
        L_0x0038:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.n.h.e(java.lang.Object):f.d.a.o.d");
    }

    public <Z> f.d.a.o.l<Z> f(Class<Z> cls) {
        f.d.a.o.l<Z> lVar = (f.d.a.o.l<Z>) this.f3556j.get(cls);
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, f.d.a.o.l<?>>> it = this.f3556j.entrySet().iterator();
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
        if (lVar != null) {
            return lVar;
        }
        if (!this.f3556j.isEmpty() || !this.q) {
            return (b) b.b;
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Class<?> */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean g(Class<?> cls) {
        return d(cls) != null;
    }
}
