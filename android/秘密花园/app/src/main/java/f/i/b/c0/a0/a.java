package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.e0.b;
import f.i.b.e0.c;
import f.i.b.j;
import f.i.b.z;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* compiled from: ArrayTypeAdapter.java */
/* loaded from: classes.dex */
public final class a<E> extends z<Object> {

    /* renamed from: c  reason: collision with root package name */
    public static final a0 f6009c = new C0087a();
    public final Class<E> a;
    public final z<E> b;

    /* compiled from: ArrayTypeAdapter.java */
    /* renamed from: f.i.b.c0.a0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0087a implements a0 {
        @Override // f.i.b.a0
        public <T> z<T> a(j jVar, f.i.b.d0.a<T> aVar) {
            Type type;
            Type type2 = aVar.b;
            boolean z = type2 instanceof GenericArrayType;
            if (!z && (!(type2 instanceof Class) || !((Class) type2).isArray())) {
                return null;
            }
            if (z) {
                type = ((GenericArrayType) type2).getGenericComponentType();
            } else {
                type = ((Class) type2).getComponentType();
            }
            return new a(jVar, jVar.f(new f.i.b.d0.a<>(type)), f.i.b.c0.a.e(type));
        }
    }

    public a(j jVar, z<E> zVar, Class<E> cls) {
        this.b = new n(jVar, zVar, cls);
        this.a = cls;
    }

    @Override // f.i.b.z
    public Object a(f.i.b.e0.a aVar) throws IOException {
        if (aVar.V() == b.NULL) {
            aVar.R();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.d();
        while (aVar.I()) {
            arrayList.add(this.b.a(aVar));
        }
        aVar.E();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.a, size);
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(newInstance, i2, arrayList.get(i2));
        }
        return newInstance;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: f.i.b.z<E> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.i.b.z
    public void b(c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.I();
            return;
        }
        cVar.e();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.b.b(cVar, Array.get(obj, i2));
        }
        cVar.E();
    }
}
