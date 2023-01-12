package m.o.d.j;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* compiled from: UnsafeAccess.java */
/* loaded from: classes2.dex */
public final class o {
    public static final Unsafe a;
    public static final boolean b;

    static {
        b = System.getProperty("rx.unsafe-disable") != null;
        Unsafe unsafe = null;
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            unsafe = (Unsafe) declaredField.get(null);
        } catch (Throwable unused) {
        }
        a = unsafe;
    }

    public static long a(Class<?> cls, String str) {
        try {
            return a.objectFieldOffset(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e2) {
            InternalError internalError = new InternalError();
            internalError.initCause(e2);
            throw internalError;
        }
    }

    public static boolean b() {
        return (a == null || b) ? false : true;
    }
}
