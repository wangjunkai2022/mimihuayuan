package f.i.b.c0;

import java.lang.reflect.Method;

/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public final class v extends z {
    public final /* synthetic */ Method a;
    public final /* synthetic */ Object b;

    public v(Method method, Object obj) {
        this.a = method;
        this.b = obj;
    }

    @Override // f.i.b.c0.z
    public <T> T b(Class<T> cls) throws Exception {
        z.a(cls);
        return (T) this.a.invoke(this.b, cls);
    }
}
