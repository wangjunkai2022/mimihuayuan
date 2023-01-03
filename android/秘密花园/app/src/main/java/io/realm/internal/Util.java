package io.realm.internal;

import g.a.e0;
import g.a.g0;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class Util {
    /* JADX DEBUG: Type inference failed for r1v3. Raw type applied. Possible types: java.lang.Class<? super ? extends g.a.e0>, java.lang.Object, java.lang.Class<? extends g.a.e0> */
    public static Class<? extends e0> a(Class<? extends e0> cls) {
        if (cls.equals(e0.class) || cls.equals(g0.class)) {
            throw new IllegalArgumentException("RealmModel or RealmObject was passed as an argument. Only subclasses of these can be used as arguments to methods that accept a Realm model class.");
        }
        Class superclass = cls.getSuperclass();
        return (superclass.equals(Object.class) || superclass.equals(g0.class)) ? cls : superclass;
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
