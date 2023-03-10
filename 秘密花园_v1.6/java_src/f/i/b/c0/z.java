package f.i.b.c0;

import java.lang.reflect.Modifier;
/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public abstract class z {
    public static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (!Modifier.isInterface(modifiers)) {
            if (Modifier.isAbstract(modifiers)) {
                StringBuilder o = f.b.a.a.a.o("Abstract class can't be instantiated! Class name: ");
                o.append(cls.getName());
                throw new UnsupportedOperationException(o.toString());
            }
            return;
        }
        StringBuilder o2 = f.b.a.a.a.o("Interface can't be instantiated! Interface name: ");
        o2.append(cls.getName());
        throw new UnsupportedOperationException(o2.toString());
    }

    public abstract <T> T b(Class<T> cls) throws Exception;
}
