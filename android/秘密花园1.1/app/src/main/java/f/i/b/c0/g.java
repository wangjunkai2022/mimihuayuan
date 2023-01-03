package f.i.b.c0;

import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public final class g {
    public final Map<Type, f.i.b.k<?>> a;
    public final f.i.b.c0.b0.b b = f.i.b.c0.b0.b.a;

    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class a implements t<T> {
        public final /* synthetic */ f.i.b.k a;
        public final /* synthetic */ Type b;

        public a(g gVar, f.i.b.k kVar, Type type) {
            this.a = kVar;
            this.b = type;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // f.i.b.c0.t
        public T a() {
            return this.a.a(this.b);
        }
    }

    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class b implements t<T> {
        public final /* synthetic */ f.i.b.k a;
        public final /* synthetic */ Type b;

        public b(g gVar, f.i.b.k kVar, Type type) {
            this.a = kVar;
            this.b = type;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // f.i.b.c0.t
        public T a() {
            return this.a.a(this.b);
        }
    }

    public g(Map<Type, f.i.b.k<?>> map) {
        this.a = map;
    }

    public <T> t<T> a(f.i.b.d0.a<T> aVar) {
        h hVar;
        Type type = aVar.b;
        Class<? super T> cls = aVar.a;
        f.i.b.k<?> kVar = this.a.get(type);
        if (kVar != null) {
            return new a(this, kVar, type);
        }
        f.i.b.k<?> kVar2 = this.a.get(cls);
        if (kVar2 != null) {
            return new b(this, kVar2, type);
        }
        t<T> tVar = null;
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.b.a(declaredConstructor);
            }
            hVar = new h(this, declaredConstructor);
        } catch (NoSuchMethodException unused) {
            hVar = null;
        }
        if (hVar != null) {
            return hVar;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                tVar = new i(this);
            } else if (EnumSet.class.isAssignableFrom(cls)) {
                tVar = new j(this, type);
            } else if (Set.class.isAssignableFrom(cls)) {
                tVar = new k(this);
            } else if (Queue.class.isAssignableFrom(cls)) {
                tVar = new l(this);
            } else {
                tVar = new m(this);
            }
        } else if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                tVar = new n(this);
            } else if (ConcurrentMap.class.isAssignableFrom(cls)) {
                tVar = new f.i.b.c0.b(this);
            } else if (SortedMap.class.isAssignableFrom(cls)) {
                tVar = new c(this);
            } else {
                if (type instanceof ParameterizedType) {
                    Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (type2 != null) {
                        Type a2 = f.i.b.c0.a.a(type2);
                        Class<?> e2 = f.i.b.c0.a.e(a2);
                        a2.hashCode();
                        if (!String.class.isAssignableFrom(e2)) {
                            tVar = new d(this);
                        }
                    } else {
                        throw null;
                    }
                }
                tVar = new e(this);
            }
        }
        return tVar != null ? tVar : new f(this, cls, type);
    }

    public String toString() {
        return this.a.toString();
    }
}
