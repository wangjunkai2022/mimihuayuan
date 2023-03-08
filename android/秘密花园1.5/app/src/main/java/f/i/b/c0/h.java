package f.i.b.c0;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public class h implements t<T> {
    public final /* synthetic */ Constructor a;

    public h(g gVar, Constructor constructor) {
        this.a = constructor;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    @Override // f.i.b.c0.t
    public T a() {
        try {
            return this.a.newInstance(null);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (InstantiationException e3) {
            StringBuilder o = f.b.a.a.a.o("Failed to invoke ");
            o.append(this.a);
            o.append(" with no args");
            throw new RuntimeException(o.toString(), e3);
        } catch (InvocationTargetException e4) {
            StringBuilder o2 = f.b.a.a.a.o("Failed to invoke ");
            o2.append(this.a);
            o2.append(" with no args");
            throw new RuntimeException(o2.toString(), e4.getTargetException());
        }
    }
}
