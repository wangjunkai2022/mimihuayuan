package f.d.a.o.n;

import androidx.annotation.NonNull;
import f.d.a.h;
import f.d.a.o.a;
import f.d.a.o.f;
import f.d.a.o.l;
import f.d.a.o.m.d;
import f.d.a.o.n.g;
import f.d.a.o.o.n;
import f.d.a.o.o.p;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: ResourceCacheGenerator.java */
/* loaded from: classes.dex */
public class x implements g, d.a<Object> {
    public final g.a a;
    public final h<?> b;

    /* renamed from: c  reason: collision with root package name */
    public int f3631c;

    /* renamed from: d  reason: collision with root package name */
    public int f3632d = -1;

    /* renamed from: e  reason: collision with root package name */
    public f f3633e;

    /* renamed from: f  reason: collision with root package name */
    public List<n<File, ?>> f3634f;

    /* renamed from: g  reason: collision with root package name */
    public int f3635g;

    /* renamed from: h  reason: collision with root package name */
    public volatile n.a<?> f3636h;

    /* renamed from: i  reason: collision with root package name */
    public File f3637i;

    /* renamed from: j  reason: collision with root package name */
    public y f3638j;

    public x(h<?> hVar, g.a aVar) {
        this.b = hVar;
        this.a = aVar;
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.a.b(this.f3638j, exc, this.f3636h.f3660c, a.RESOURCE_DISK_CACHE);
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3636h;
        if (aVar != null) {
            aVar.f3660c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        this.a.f(this.f3633e, obj, this.f3636h.f3660c, a.RESOURCE_DISK_CACHE, this.f3638j);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        List<Class<?>> list;
        List<Class<?>> e2;
        List<f> a = this.b.a();
        if (a.isEmpty()) {
            return false;
        }
        h<?> hVar = this.b;
        h hVar2 = hVar.f3549c.b;
        Class<?> cls = hVar.f3550d.getClass();
        Class<?> cls2 = hVar.f3553g;
        Class<?> cls3 = hVar.f3557k;
        f.d.a.r.d dVar = hVar2.f3392h;
        f.d.a.u.h andSet = dVar.a.getAndSet(null);
        if (andSet == null) {
            andSet = new f.d.a.u.h(cls, cls2, cls3);
        } else {
            andSet.a = cls;
            andSet.b = cls2;
            andSet.f3786c = cls3;
        }
        synchronized (dVar.b) {
            list = dVar.b.get(andSet);
        }
        dVar.a.set(andSet);
        ArrayList arrayList = list;
        if (list == null) {
            ArrayList arrayList2 = new ArrayList();
            p pVar = hVar2.a;
            synchronized (pVar) {
                e2 = pVar.a.e(cls);
            }
            Iterator it = ((ArrayList) e2).iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) hVar2.f3387c.b((Class) it.next(), cls2)).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!((ArrayList) hVar2.f3390f.a(cls4, cls3)).isEmpty() && !arrayList2.contains(cls4)) {
                        arrayList2.add(cls4);
                    }
                }
            }
            f.d.a.r.d dVar2 = hVar2.f3392h;
            List<Class<?>> unmodifiableList = Collections.unmodifiableList(arrayList2);
            synchronized (dVar2.b) {
                dVar2.b.put(new f.d.a.u.h(cls, cls2, cls3), unmodifiableList);
            }
            arrayList = arrayList2;
        }
        if (!arrayList.isEmpty()) {
            while (true) {
                List<n<File, ?>> list2 = this.f3634f;
                if (list2 != null) {
                    if (this.f3635g < list2.size()) {
                        this.f3636h = null;
                        boolean z = false;
                        while (!z) {
                            if (!(this.f3635g < this.f3634f.size())) {
                                break;
                            }
                            List<n<File, ?>> list3 = this.f3634f;
                            int i2 = this.f3635g;
                            this.f3635g = i2 + 1;
                            File file = this.f3637i;
                            h<?> hVar3 = this.b;
                            this.f3636h = list3.get(i2).a(file, hVar3.f3551e, hVar3.f3552f, hVar3.f3555i);
                            if (this.f3636h != null && this.b.g(this.f3636h.f3660c.a())) {
                                this.f3636h.f3660c.f(this.b.o, this);
                                z = true;
                            }
                        }
                        return z;
                    }
                }
                int i3 = this.f3632d + 1;
                this.f3632d = i3;
                if (i3 >= arrayList.size()) {
                    int i4 = this.f3631c + 1;
                    this.f3631c = i4;
                    if (i4 >= a.size()) {
                        return false;
                    }
                    this.f3632d = 0;
                }
                f fVar = a.get(this.f3631c);
                Class<?> cls5 = arrayList.get(this.f3632d);
                l<Z> f2 = this.b.f(cls5);
                h<?> hVar4 = this.b;
                this.f3638j = new y(hVar4.f3549c.a, fVar, hVar4.n, hVar4.f3551e, hVar4.f3552f, f2, cls5, hVar4.f3555i);
                File b = this.b.b().b(this.f3638j);
                this.f3637i = b;
                if (b != null) {
                    this.f3633e = fVar;
                    this.f3634f = this.b.f3549c.b.f(b);
                    this.f3635g = 0;
                }
            }
        } else if (File.class.equals(this.b.f3557k)) {
            return false;
        } else {
            StringBuilder o = f.b.a.a.a.o("Failed to find any load path from ");
            o.append(this.b.f3550d.getClass());
            o.append(" to ");
            o.append(this.b.f3557k);
            throw new IllegalStateException(o.toString());
        }
    }
}
