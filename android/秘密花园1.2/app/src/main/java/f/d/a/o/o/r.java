package f.d.a.o.o;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import f.d.a.h;
import f.d.a.o.o.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: MultiModelLoaderFactory.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: e  reason: collision with root package name */
    public static final c f3741e = new c();

    /* renamed from: f  reason: collision with root package name */
    public static final n<Object, Object> f3742f = new a();
    public final List<b<?, ?>> a;
    public final c b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<b<?, ?>> f3743c;

    /* renamed from: d  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f3744d;

    /* compiled from: MultiModelLoaderFactory.java */
    /* loaded from: classes.dex */
    public static class a implements n<Object, Object> {
        @Override // f.d.a.o.o.n
        @Nullable
        public n.a<Object> a(@NonNull Object obj, int i2, int i3, @NonNull f.d.a.o.h hVar) {
            return null;
        }

        @Override // f.d.a.o.o.n
        public boolean b(@NonNull Object obj) {
            return false;
        }
    }

    /* compiled from: MultiModelLoaderFactory.java */
    /* loaded from: classes.dex */
    public static class b<Model, Data> {
        public final Class<Model> a;
        public final Class<Data> b;

        /* renamed from: c  reason: collision with root package name */
        public final o<? extends Model, ? extends Data> f3745c;

        public b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
            this.a = cls;
            this.b = cls2;
            this.f3745c = oVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.a.isAssignableFrom(cls) && this.b.isAssignableFrom(cls2);
        }
    }

    /* compiled from: MultiModelLoaderFactory.java */
    /* loaded from: classes.dex */
    public static class c {
    }

    public r(@NonNull Pools.Pool<List<Throwable>> pool) {
        c cVar = f3741e;
        this.a = new ArrayList();
        this.f3743c = new HashSet();
        this.f3744d = pool;
        this.b = cVar;
    }

    public synchronized <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.a;
        list.add(list.size(), bVar);
    }

    @NonNull
    public final <Model, Data> n<Model, Data> b(@NonNull b<?, ?> bVar) {
        n<Model, Data> nVar = (n<Model, Data>) bVar.f3745c.b(this);
        c.a.a.b.g.h.s(nVar, "Argument must not be null");
        return nVar;
    }

    @NonNull
    public synchronized <Model, Data> n<Model, Data> c(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b<?, ?> bVar : this.a) {
                if (this.f3743c.contains(bVar)) {
                    z = true;
                } else if (bVar.a(cls, cls2)) {
                    this.f3743c.add(bVar);
                    arrayList.add(b(bVar));
                    this.f3743c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                c cVar = this.b;
                Pools.Pool<List<Throwable>> pool = this.f3744d;
                if (cVar != null) {
                    return new q(arrayList, pool);
                }
                throw null;
            } else if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            } else if (z) {
                return (n<Model, Data>) f3742f;
            } else {
                throw new h.c(cls, cls2);
            }
        } catch (Throwable th) {
            this.f3743c.clear();
            throw th;
        }
    }

    @NonNull
    public synchronized <Model> List<n<Model, ?>> d(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.a) {
                if (!this.f3743c.contains(bVar) && bVar.a.isAssignableFrom(cls)) {
                    this.f3743c.add(bVar);
                    n<? extends Object, ? extends Object> b2 = bVar.f3745c.b(this);
                    c.a.a.b.g.h.s(b2, "Argument must not be null");
                    arrayList.add(b2);
                    this.f3743c.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.f3743c.clear();
            throw th;
        }
        return arrayList;
    }

    @NonNull
    public synchronized List<Class<?>> e(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.a) {
            if (!arrayList.contains(bVar.b) && bVar.a.isAssignableFrom(cls)) {
                arrayList.add(bVar.b);
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Model, Data> List<o<? extends Model, ? extends Data>> f(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<b<?, ?>> it = this.a.iterator();
        while (it.hasNext()) {
            b<?, ?> next = it.next();
            if (next.a(cls, cls2)) {
                it.remove();
                arrayList.add(next.f3745c);
            }
        }
        return arrayList;
    }
}
