package h.n;

import h.o.c.g;
import h.s.d;

/* compiled from: PlatformImplementations.kt */
/* loaded from: classes.dex */
public final class b {
    public static final a a;

    static {
        a aVar;
        Object newInstance;
        String property = System.getProperty("java.specification.version");
        int i2 = 65542;
        if (property != null) {
            int i3 = d.i(property, '.', 0, false, 6);
            try {
                if (i3 < 0) {
                    i2 = Integer.parseInt(property) * 65536;
                } else {
                    int i4 = i3 + 1;
                    int i5 = d.i(property, '.', i4, false, 4);
                    if (i5 < 0) {
                        i5 = property.length();
                    }
                    String substring = property.substring(0, i3);
                    g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    String substring2 = property.substring(i4, i5);
                    g.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    i2 = (Integer.parseInt(substring) * 65536) + Integer.parseInt(substring2);
                }
            } catch (NumberFormatException unused) {
            }
        }
        if (i2 >= 65544) {
            try {
                try {
                    Object newInstance2 = Class.forName("kotlin.internal.jdk8.JDK8PlatformImplementations").newInstance();
                    g.b(newInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        aVar = (a) newInstance2;
                    } catch (ClassCastException e2) {
                        ClassLoader classLoader = newInstance2.getClass().getClassLoader();
                        ClassLoader classLoader2 = a.class.getClassLoader();
                        Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e2);
                        g.b(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause;
                    }
                } catch (ClassNotFoundException unused2) {
                    Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                    g.b(newInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        aVar = (a) newInstance3;
                    } catch (ClassCastException e3) {
                        ClassLoader classLoader3 = newInstance3.getClass().getClassLoader();
                        ClassLoader classLoader4 = a.class.getClassLoader();
                        Throwable initCause2 = new ClassCastException("Instance classloader: " + classLoader3 + ", base type classloader: " + classLoader4).initCause(e3);
                        g.b(initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause2;
                    }
                }
            } catch (ClassNotFoundException unused3) {
            }
            a = aVar;
        }
        if (i2 >= 65543) {
            try {
                newInstance = Class.forName("kotlin.internal.jdk7.JDK7PlatformImplementations").newInstance();
                g.b(newInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
            } catch (ClassNotFoundException unused4) {
                Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                g.b(newInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    aVar = (a) newInstance4;
                } catch (ClassCastException e4) {
                    ClassLoader classLoader5 = newInstance4.getClass().getClassLoader();
                    ClassLoader classLoader6 = a.class.getClassLoader();
                    Throwable initCause3 = new ClassCastException("Instance classloader: " + classLoader5 + ", base type classloader: " + classLoader6).initCause(e4);
                    g.b(initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause3;
                }
            }
            try {
                try {
                    aVar = (a) newInstance;
                } catch (ClassNotFoundException unused5) {
                }
                a = aVar;
            } catch (ClassCastException e5) {
                ClassLoader classLoader7 = newInstance.getClass().getClassLoader();
                ClassLoader classLoader8 = a.class.getClassLoader();
                Throwable initCause4 = new ClassCastException("Instance classloader: " + classLoader7 + ", base type classloader: " + classLoader8).initCause(e5);
                g.b(initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                throw initCause4;
            }
        }
        aVar = new a();
        a = aVar;
    }
}
