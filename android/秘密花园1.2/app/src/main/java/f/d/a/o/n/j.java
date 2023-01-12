package f.d.a.o.n;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.h;
import f.d.a.o.n.i;
import f.d.a.o.o.n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DecodePath.java */
/* loaded from: classes.dex */
public class j<DataType, ResourceType, Transcode> {
    public final Class<DataType> a;
    public final List<? extends f.d.a.o.j<DataType, ResourceType>> b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.p.h.e<ResourceType, Transcode> f3655c;

    /* renamed from: d  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f3656d;

    /* renamed from: e  reason: collision with root package name */
    public final String f3657e;

    /* compiled from: DecodePath.java */
    /* loaded from: classes.dex */
    public interface a<ResourceType> {
    }

    public j(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends f.d.a.o.j<DataType, ResourceType>> list, f.d.a.o.p.h.e<ResourceType, Transcode> eVar, Pools.Pool<List<Throwable>> pool) {
        this.a = cls;
        this.b = list;
        this.f3655c = eVar;
        this.f3656d = pool;
        StringBuilder o = f.b.a.a.a.o("Failed DecodePath{");
        o.append(cls.getSimpleName());
        o.append("->");
        o.append(cls2.getSimpleName());
        o.append("->");
        o.append(cls3.getSimpleName());
        o.append("}");
        this.f3657e = o.toString();
    }

    public w<Transcode> a(f.d.a.o.m.e<DataType> eVar, int i2, int i3, @NonNull f.d.a.o.h hVar, a<ResourceType> aVar) throws r {
        w<ResourceType> wVar;
        f.d.a.o.l lVar;
        f.d.a.o.c cVar;
        f.d.a.o.f eVar2;
        List<Throwable> acquire = this.f3656d.acquire();
        c.a.a.b.g.h.s(acquire, "Argument must not be null");
        List<Throwable> list = acquire;
        try {
            w<ResourceType> b = b(eVar, i2, i3, hVar, list);
            this.f3656d.release(list);
            i.b bVar = (i.b) aVar;
            i iVar = i.this;
            f.d.a.o.a aVar2 = bVar.a;
            f.d.a.o.k kVar = null;
            if (iVar != null) {
                Class<?> cls = b.get().getClass();
                if (aVar2 != f.d.a.o.a.RESOURCE_DISK_CACHE) {
                    f.d.a.o.l f2 = iVar.a.f(cls);
                    lVar = f2;
                    wVar = f2.a(iVar.f3640h, b, iVar.f3644l, iVar.f3645m);
                } else {
                    wVar = b;
                    lVar = null;
                }
                if (!b.equals(wVar)) {
                    b.d();
                }
                boolean z = false;
                if (iVar.a.f3624c.b.f3463d.a(wVar.b()) != null) {
                    f.d.a.o.k a2 = iVar.a.f3624c.b.f3463d.a(wVar.b());
                    if (a2 != null) {
                        cVar = a2.b(iVar.o);
                        kVar = a2;
                    } else {
                        throw new h.d(wVar.b());
                    }
                } else {
                    cVar = f.d.a.o.c.NONE;
                }
                h<R> hVar2 = iVar.a;
                f.d.a.o.f fVar = iVar.x;
                List<n.a<?>> c2 = hVar2.c();
                int size = c2.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        break;
                    } else if (c2.get(i4).a.equals(fVar)) {
                        z = true;
                        break;
                    } else {
                        i4++;
                    }
                }
                w<ResourceType> wVar2 = wVar;
                if (iVar.n.d(!z, aVar2, cVar)) {
                    if (kVar != null) {
                        int ordinal = cVar.ordinal();
                        if (ordinal == 0) {
                            eVar2 = new e(iVar.x, iVar.f3641i);
                        } else if (ordinal == 1) {
                            eVar2 = new y(iVar.a.f3624c.a, iVar.x, iVar.f3641i, iVar.f3644l, iVar.f3645m, lVar, cls, iVar.o);
                        } else {
                            throw new IllegalArgumentException("Unknown strategy: " + cVar);
                        }
                        v<Z> a3 = v.a(wVar);
                        i.c<?> cVar2 = iVar.f3638f;
                        cVar2.a = eVar2;
                        cVar2.b = kVar;
                        cVar2.f3646c = a3;
                        wVar2 = a3;
                    } else {
                        throw new h.d(wVar.get().getClass());
                    }
                }
                return this.f3655c.a(wVar2, hVar);
            }
            throw null;
        } catch (Throwable th) {
            this.f3656d.release(list);
            throw th;
        }
    }

    @NonNull
    public final w<ResourceType> b(f.d.a.o.m.e<DataType> eVar, int i2, int i3, @NonNull f.d.a.o.h hVar, List<Throwable> list) throws r {
        int size = this.b.size();
        w<ResourceType> wVar = null;
        for (int i4 = 0; i4 < size; i4++) {
            f.d.a.o.j<DataType, ResourceType> jVar = this.b.get(i4);
            try {
                if (jVar.b(eVar.a(), hVar)) {
                    wVar = jVar.a(eVar.a(), i2, i3, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    String str = "Failed to decode data for " + jVar;
                }
                list.add(e2);
            }
            if (wVar != null) {
                break;
            }
        }
        if (wVar != null) {
            return wVar;
        }
        throw new r(this.f3657e, new ArrayList(list));
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("DecodePath{ dataClass=");
        o.append(this.a);
        o.append(", decoders=");
        o.append(this.b);
        o.append(", transcoder=");
        o.append(this.f3655c);
        o.append('}');
        return o.toString();
    }
}
