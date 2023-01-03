package f.i.b.d0;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: TypeToken.java */
/* loaded from: classes.dex */
public class a<T> {
    public final Class<? super T> a;
    public final Type b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6068c;

    public a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            Type a = f.i.b.c0.a.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
            this.b = a;
            this.a = (Class<? super T>) f.i.b.c0.a.e(a);
            this.f6068c = this.b.hashCode();
            return;
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && f.i.b.c0.a.c(this.b, ((a) obj).b);
    }

    public final int hashCode() {
        return this.f6068c;
    }

    public final String toString() {
        return f.i.b.c0.a.i(this.b);
    }

    public a(Type type) {
        if (type != null) {
            Type a = f.i.b.c0.a.a(type);
            this.b = a;
            this.a = (Class<? super T>) f.i.b.c0.a.e(a);
            this.f6068c = this.b.hashCode();
            return;
        }
        throw null;
    }
}
