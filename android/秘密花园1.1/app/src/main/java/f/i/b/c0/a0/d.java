package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.v;
import f.i.b.y;
import f.i.b.z;

/* compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class d implements a0 {
    public final f.i.b.c0.g a;

    public d(f.i.b.c0.g gVar) {
        this.a = gVar;
    }

    @Override // f.i.b.a0
    public <T> z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
        f.i.b.b0.a aVar2 = (f.i.b.b0.a) aVar.a.getAnnotation(f.i.b.b0.a.class);
        if (aVar2 == null) {
            return null;
        }
        return (z<T>) b(this.a, jVar, aVar, aVar2);
    }

    public z<?> b(f.i.b.c0.g gVar, f.i.b.j jVar, f.i.b.d0.a<?> aVar, f.i.b.b0.a aVar2) {
        z<?> mVar;
        Object a = gVar.a(new f.i.b.d0.a(aVar2.value())).a();
        if (a instanceof z) {
            mVar = (z) a;
        } else if (a instanceof a0) {
            mVar = ((a0) a).a(jVar, aVar);
        } else {
            boolean z = a instanceof v;
            if (!z && !(a instanceof f.i.b.n)) {
                StringBuilder o = f.b.a.a.a.o("Invalid attempt to bind an instance of ");
                o.append(a.getClass().getName());
                o.append(" as a @JsonAdapter for ");
                o.append(aVar.toString());
                o.append(". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                throw new IllegalArgumentException(o.toString());
            }
            mVar = new m<>(z ? (v) a : null, a instanceof f.i.b.n ? (f.i.b.n) a : null, jVar, aVar, null);
        }
        return (mVar == null || !aVar2.nullSafe()) ? mVar : new y(mVar);
    }
}
