package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.c0.g;
import f.i.b.c0.t;
import f.i.b.e0.c;
import f.i.b.j;
import f.i.b.z;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

/* compiled from: CollectionTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class b implements a0 {
    public final g a;

    /* compiled from: CollectionTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    public static final class a<E> extends z<Collection<E>> {
        public final z<E> a;
        public final t<? extends Collection<E>> b;

        public a(j jVar, Type type, z<E> zVar, t<? extends Collection<E>> tVar) {
            this.a = new n(jVar, zVar, type);
            this.b = tVar;
        }

        @Override // f.i.b.z
        public Object a(f.i.b.e0.a aVar) throws IOException {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            Collection collection = (Collection) this.b.a();
            aVar.d();
            while (aVar.I()) {
                collection.add(this.a.a(aVar));
            }
            aVar.E();
            return collection;
        }

        @Override // f.i.b.z
        public void b(c cVar, Object obj) throws IOException {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                cVar.I();
                return;
            }
            cVar.e();
            for (E e2 : collection) {
                this.a.b(cVar, e2);
            }
            cVar.E();
        }
    }

    public b(g gVar) {
        this.a = gVar;
    }

    @Override // f.i.b.a0
    public <T> z<T> a(j jVar, f.i.b.d0.a<T> aVar) {
        Type type;
        Type type2 = aVar.b;
        Class<? super T> cls = aVar.a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type f2 = f.i.b.c0.a.f(type2, cls, Collection.class);
        if (f2 instanceof WildcardType) {
            f2 = ((WildcardType) f2).getUpperBounds()[0];
        }
        if (f2 instanceof ParameterizedType) {
            type = ((ParameterizedType) f2).getActualTypeArguments()[0];
        } else {
            type = Object.class;
        }
        return new a(jVar, type, jVar.f(new f.i.b.d0.a<>(type)), this.a.a(aVar));
    }
}
