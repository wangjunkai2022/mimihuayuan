package f.i.b.c0.a0;

import f.i.b.c0.a0.j;
import f.i.b.e0.a;
import f.i.b.e0.c;
import f.i.b.j;
import f.i.b.z;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* loaded from: classes.dex */
public final class n<T> extends z<T> {
    public final j a;
    public final z<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final Type f6029c;

    public n(j jVar, z<T> zVar, Type type) {
        this.a = jVar;
        this.b = zVar;
        this.f6029c = type;
    }

    @Override // f.i.b.z
    public T a(a aVar) throws IOException {
        return this.b.a(aVar);
    }

    @Override // f.i.b.z
    public void b(c cVar, T t) throws IOException {
        z<T> zVar = this.b;
        Type type = this.f6029c;
        if (t != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t.getClass();
        }
        if (type != this.f6029c) {
            zVar = this.a.f(new f.i.b.d0.a<>(type));
            if (zVar instanceof j.a) {
                z<T> zVar2 = this.b;
                if (!(zVar2 instanceof j.a)) {
                    zVar = zVar2;
                }
            }
        }
        zVar.b(cVar, t);
    }
}
