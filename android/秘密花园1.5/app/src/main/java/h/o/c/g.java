package h.o.c;

import java.util.Arrays;

/* compiled from: Intrinsics.java */
/* loaded from: classes.dex */
public class g {
    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(f.b.a.a.a.f(str, " must not be null"));
        c(illegalStateException);
        throw illegalStateException;
    }

    public static <T extends Throwable> T c(T t) {
        d(t, g.class.getName());
        return t;
    }

    public static <T extends Throwable> T d(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
        return t;
    }

    public static void e() {
        h.a aVar = new h.a();
        c(aVar);
        throw aVar;
    }

    public static void f(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str);
        c(illegalArgumentException);
        throw illegalArgumentException;
    }

    public static void g(String str) {
        h.h hVar = new h.h(f.b.a.a.a.g("lateinit property ", str, " has not been initialized"));
        c(hVar);
        throw hVar;
    }
}
