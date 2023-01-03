package f.i.b.c0;

import f.b.a.a.a;
import java.lang.reflect.Modifier;

/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public abstract class z {
    public static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            StringBuilder o = a.o("Interface can't be instantiated! Interface name: ");
            o.append(cls.getName());
            throw new UnsupportedOperationException(o.toString());
        } else if (Modifier.isAbstract(modifiers)) {
            StringBuilder o2 = a.o("Abstract class can't be instantiated! Class name: ");
            o2.append(cls.getName());
            throw new UnsupportedOperationException(o2.toString());
        }
    }

    public abstract <T> T b(Class<T> cls) throws Exception;
}
