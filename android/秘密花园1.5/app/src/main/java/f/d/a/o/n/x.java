package f.d.a.o.n;

import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import f.d.a.o.n.g;
import f.d.a.o.o.n;
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
    public int f3706c;

    /* renamed from: d  reason: collision with root package name */
    public int f3707d = -1;

    /* renamed from: e  reason: collision with root package name */
    public f.d.a.o.f f3708e;

    /* renamed from: f  reason: collision with root package name */
    public List<f.d.a.o.o.n<File, ?>> f3709f;

    /* renamed from: g  reason: collision with root package name */
    public int f3710g;

    /* renamed from: h  reason: collision with root package name */
    public volatile n.a<?> f3711h;

    /* renamed from: i  reason: collision with root package name */
    public File f3712i;

    /* renamed from: j  reason: collision with root package name */
    public y f3713j;

    public x(h<?> hVar, g.a aVar) {
        this.b = hVar;
        this.a = aVar;
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.a.b(this.f3713j, exc, this.f3711h.f3735c, f.d.a.o.a.RESOURCE_DISK_CACHE);
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3711h;
        if (aVar != null) {
            aVar.f3735c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        this.a.f(this.f3708e, obj, this.f3711h.f3735c, f.d.a.o.a.RESOURCE_DISK_CACHE, this.f3713j);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        List<Class<?>> list;
        List<Class<?>> e2;
        List<f.d.a.o.f> a = this.b.a();
        if (a.isEmpty()) {
            return false;
        }
        h<?> hVar = this.b;
        f.d.a.h hVar2 = hVar.f3624c.b;
        Class<?> cls = hVar.f3625d.getClass();
        Class<?> cls2 = hVar.f3628g;
        Class<?> cls3 = hVar.f3632k;
        f.d.a.r.d dVar = hVar2.f3467h;
        f.d.a.u.h andSet = dVar.a.getAndSet(null);
        if (andSet == null) {
            andSet = new f.d.a.u.h(cls, cls2, cls3);
        } else {
            andSet.a = cls;
            andSet.b = cls2;
            andSet.f3861c = cls3;
        }
        synchronized (dVar.b) {
            list = dVar.b.get(andSet);
        }
        dVar.a.set(andSet);
        ArrayList arrayList = list;
        if (list == null) {
            ArrayList arrayList2 = new ArrayList();
            f.d.a.o.o.p pVar = hVar2.a;
            synchronized (pVar) {
                e2 = pVar.a.e(cls);
            }
            Iterator it = ((ArrayList) e2).iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) hVar2.f3462c.b((Class) it.next(), cls2)).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!((ArrayList) hVar2.f3465f.a(cls4, cls3)).isEmpty() && !arrayList2.contains(cls4)) {
                        arrayList2.add(cls4);
                    }
                }
            }
            f.d.a.r.d dVar2 = hVar2.f3467h;
            List<Class<?>> unmodifiableList = Collections.unmodifiableList(arrayList2);
            synchronized (dVar2.b) {
                dVar2.b.put(new f.d.a.u.h(cls, cls2, cls3), unmodifiableList);
            }
            arrayList = arrayList2;
        }
        if (arrayList.isEmpty()) {
            if (File.class.equals(this.b.f3632k)) {
                return false;
            }
            StringBuilder o = f.b.a.a.a.o("Failed to find any load path from ");
            o.append(this.b.f3625d.getClass());
            o.append(" to ");
            o.append(this.b.f3632k);
            throw new IllegalStateException(o.toString());
        }
        while (true) {
            List<f.d.a.o.o.n<File, ?>> list2 = this.f3709f;
            if (list2 != null) {
                if (this.f3710g < list2.size()) {
                    this.f3711h = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f3710g < this.f3709f.size())) {
                            break;
                        }
                        List<f.d.a.o.o.n<File, ?>> list3 = this.f3709f;
                        int i2 = this.f3710g;
                        this.f3710g = i2 + 1;
                        File file = this.f3712i;
                        h<?> hVar3 = this.b;
                        this.f3711h = list3.get(i2).a(file, hVar3.f3626e, hVar3.f3627f, hVar3.f3630i);
                        if (this.f3711h != null && this.b.g(this.f3711h.f3735c.a())) {
                            this.f3711h.f3735c.f(this.b.o, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i3 = this.f3707d + 1;
            this.f3707d = i3;
            if (i3 >= arrayList.size()) {
                int i4 = this.f3706c + 1;
                this.f3706c = i4;
                if (i4 >= a.size()) {
                    return false;
                }
                this.f3707d = 0;
            }
            f.d.a.o.f fVar = a.get(this.f3706c);
            Class<?> cls5 = arrayList.get(this.f3707d);
            f.d.a.o.l<Z> f2 = this.b.f(cls5);
            h<?> hVar4 = this.b;
            this.f3713j = new y(hVar4.f3624c.a, fVar, hVar4.n, hVar4.f3626e, hVar4.f3627f, f2, cls5, hVar4.f3630i);
            File b = this.b.b().b(this.f3713j);
            this.f3712i = b;
            if (b != null) {
                this.f3708e = fVar;
                this.f3709f = this.b.f3624c.b.f(b);
                this.f3710g = 0;
            }
        }
    }
}
