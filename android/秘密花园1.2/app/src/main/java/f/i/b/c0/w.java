package f.i.b.c0;

import java.lang.reflect.Method;

/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public final class w extends z {
    public final /* synthetic */ Method a;
    public final /* synthetic */ int b;

    public w(Method method, int i2) {
        this.a = method;
        this.b = i2;
    }

    @Override // f.i.b.c0.z
    public <T> T b(Class<T> cls) throws Exception {
        z.a(cls);
        return (T) this.a.invoke(null, cls, Integer.valueOf(this.b));
    }
}
