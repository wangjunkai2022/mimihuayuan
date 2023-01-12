package f.d.a.o.n;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.o.n.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: LoadPath.java */
/* loaded from: classes.dex */
public class u<Data, ResourceType, Transcode> {
    public final Pools.Pool<List<Throwable>> a;
    public final List<? extends j<Data, ResourceType, Transcode>> b;

    /* renamed from: c  reason: collision with root package name */
    public final String f3702c;

    public u(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<j<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.a = pool;
        if (!list.isEmpty()) {
            this.b = list;
            StringBuilder o = f.b.a.a.a.o("Failed LoadPath{");
            o.append(cls.getSimpleName());
            o.append("->");
            o.append(cls2.getSimpleName());
            o.append("->");
            o.append(cls3.getSimpleName());
            o.append("}");
            this.f3702c = o.toString();
            return;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    public w<Transcode> a(f.d.a.o.m.e<Data> eVar, @NonNull f.d.a.o.h hVar, int i2, int i3, j.a<ResourceType> aVar) throws r {
        List<Throwable> acquire = this.a.acquire();
        c.a.a.b.g.h.s(acquire, "Argument must not be null");
        List<Throwable> list = acquire;
        try {
            int size = this.b.size();
            w<Transcode> wVar = null;
            for (int i4 = 0; i4 < size; i4++) {
                try {
                    wVar = this.b.get(i4).a(eVar, i2, i3, hVar, aVar);
                } catch (r e2) {
                    list.add(e2);
                }
                if (wVar != null) {
                    break;
                }
            }
            if (wVar != null) {
                return wVar;
            }
            throw new r(this.f3702c, new ArrayList(list));
        } finally {
            this.a.release(list);
        }
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("LoadPath{decodePaths=");
        o.append(Arrays.toString(this.b.toArray()));
        o.append('}');
        return o.toString();
    }
}
