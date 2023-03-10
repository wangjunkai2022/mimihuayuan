package io.realm.internal;

import g.a.e0;
import g.a.g0;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class Util {
    public static Class<? extends e0> a(Class<? extends e0> cls) {
        if (!cls.equals(e0.class) && !cls.equals(g0.class)) {
            Class superclass = cls.getSuperclass();
            return (superclass.equals(Object.class) || superclass.equals(g0.class)) ? cls : superclass;
        }
        throw new IllegalArgumentException("RealmModel or RealmObject was passed as an argument. Only subclasses of these can be used as arguments to methods that accept a Realm model class.");
    }

    public static <T> Set<T> b(T... tArr) {
        if (tArr == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (T t : tArr) {
            if (t != null) {
                linkedHashSet.add(t);
            }
        }
        return linkedHashSet;
    }

    public static native String nativeGetTablePrefix();
}
