package f.i.b.c0;

import java.lang.reflect.Method;
/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public final class x extends z {
    public final /* synthetic */ Method a;

    public x(Method method) {
        this.a = method;
    }

    @Override // f.i.b.c0.z
    public <T> T b(Class<T> cls) throws Exception {
        z.a(cls);
        return (T) this.a.invoke(null, cls, Object.class);
    }
}
