package f.d.a;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import f.d.a.o.m.e;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.p;
import f.d.a.o.o.r;
import f.d.a.o.p.h.f;
import f.d.a.r.a;
import f.d.a.r.e;
import f.d.a.r.f;
import f.d.a.u.j.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: Registry.java */
/* loaded from: classes.dex */
public class h {
    public final p a;
    public final f.d.a.r.a b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.r.e f3462c;

    /* renamed from: d  reason: collision with root package name */
    public final f.d.a.r.f f3463d;

    /* renamed from: e  reason: collision with root package name */
    public final f.d.a.o.m.f f3464e;

    /* renamed from: f  reason: collision with root package name */
    public final f.d.a.o.p.h.f f3465f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.r.b f3466g;

    /* renamed from: h  reason: collision with root package name */
    public final f.d.a.r.d f3467h = new f.d.a.r.d();

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.r.c f3468i = new f.d.a.r.c();

    /* renamed from: j  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f3469j;

    /* compiled from: Registry.java */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        public a(@NonNull String str) {
            super(str);
        }
    }

    /* compiled from: Registry.java */
    /* loaded from: classes.dex */
    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    /* compiled from: Registry.java */
    /* loaded from: classes.dex */
    public static class c extends a {
        public c(@NonNull Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }

        public c(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* compiled from: Registry.java */
    /* loaded from: classes.dex */
    public static class d extends a {
        public d(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* compiled from: Registry.java */
    /* loaded from: classes.dex */
    public static class e extends a {
        public e(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public h() {
        a.c cVar = new a.c(new Pools.SynchronizedPool(20), new f.d.a.u.j.b(), new f.d.a.u.j.c());
        this.f3469j = cVar;
        this.a = new p(cVar);
        this.b = new f.d.a.r.a();
        this.f3462c = new f.d.a.r.e();
        this.f3463d = new f.d.a.r.f();
        this.f3464e = new f.d.a.o.m.f();
        this.f3465f = new f.d.a.o.p.h.f();
        this.f3466g = new f.d.a.r.b();
        List asList = Arrays.asList("Gif", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.addAll(asList);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        f.d.a.r.e eVar = this.f3462c;
        synchronized (eVar) {
            ArrayList arrayList2 = new ArrayList(eVar.a);
            eVar.a.clear();
            eVar.a.addAll(arrayList);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!arrayList.contains(str)) {
                    eVar.a.add(str);
                }
            }
        }
    }

    @NonNull
    public <Data> h a(@NonNull Class<Data> cls, @NonNull f.d.a.o.d<Data> dVar) {
        f.d.a.r.a aVar = this.b;
        synchronized (aVar) {
            aVar.a.add(new a.C0051a<>(cls, dVar));
        }
        return this;
    }

    @NonNull
    public <TResource> h b(@NonNull Class<TResource> cls, @NonNull f.d.a.o.k<TResource> kVar) {
        f.d.a.r.f fVar = this.f3463d;
        synchronized (fVar) {
            fVar.a.add(new f.a<>(cls, kVar));
        }
        return this;
    }

    @NonNull
    public <Model, Data> h c(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        p pVar = this.a;
        synchronized (pVar) {
            pVar.a.a(cls, cls2, oVar);
            pVar.b.a.clear();
        }
        return this;
    }

    @NonNull
    public <Data, TResource> h d(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull f.d.a.o.j<Data, TResource> jVar) {
        f.d.a.r.e eVar = this.f3462c;
        synchronized (eVar) {
            eVar.a(str).add(new e.a<>(cls, cls2, jVar));
        }
        return this;
    }

    @NonNull
    public List<ImageHeaderParser> e() {
        List<ImageHeaderParser> list;
        f.d.a.r.b bVar = this.f3466g;
        synchronized (bVar) {
            list = bVar.a;
        }
        if (list.isEmpty()) {
            throw new b();
        }
        return list;
    }

    @NonNull
    public <Model> List<n<Model, ?>> f(@NonNull Model model) {
        p pVar = this.a;
        List<n<?, ?>> list = null;
        if (pVar != null) {
            Class<?> cls = model.getClass();
            synchronized (pVar) {
                p.a.C0045a<?> c0045a = pVar.b.a.get(cls);
                if (c0045a != null) {
                    list = c0045a.a;
                }
                if (list == null) {
                    list = Collections.unmodifiableList(pVar.a.d(cls));
                    if (pVar.b.a.put(cls, new p.a.C0045a<>(list)) != null) {
                        throw new IllegalStateException("Already cached loaders for model: " + cls);
                    }
                }
            }
            int size = list.size();
            List<n<Model, ?>> emptyList = Collections.emptyList();
            boolean z = true;
            for (int i2 = 0; i2 < size; i2++) {
                n<?, ?> nVar = list.get(i2);
                if (nVar.b(model)) {
                    if (z) {
                        emptyList = new ArrayList<>(size - i2);
                        z = false;
                    }
                    emptyList.add(nVar);
                }
            }
            if (emptyList.isEmpty()) {
                throw new c(model);
            }
            return emptyList;
        }
        throw null;
    }

    @NonNull
    public h g(@NonNull e.a<?> aVar) {
        f.d.a.o.m.f fVar = this.f3464e;
        synchronized (fVar) {
            fVar.a.put(aVar.a(), aVar);
        }
        return this;
    }

    @NonNull
    public <TResource, Transcode> h h(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull f.d.a.o.p.h.e<TResource, Transcode> eVar) {
        f.d.a.o.p.h.f fVar = this.f3465f;
        synchronized (fVar) {
            fVar.a.add(new f.a<>(cls, cls2, eVar));
        }
        return this;
    }

    @NonNull
    public <Model, Data> h i(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        List<o<? extends Model, ? extends Data>> f2;
        p pVar = this.a;
        synchronized (pVar) {
            r rVar = pVar.a;
            synchronized (rVar) {
                f2 = rVar.f(cls, cls2);
                rVar.a(cls, cls2, oVar);
            }
            Iterator it = ((ArrayList) f2).iterator();
            while (it.hasNext()) {
                ((o) it.next()).c();
            }
            pVar.b.a.clear();
        }
        return this;
    }
}
