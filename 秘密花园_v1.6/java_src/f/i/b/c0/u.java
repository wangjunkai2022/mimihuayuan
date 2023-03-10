package f.i.b.c0;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Primitives.java */
/* loaded from: classes.dex */
public final class u {
    public static final Map<Class<?>, Class<?>> a;

    static {
        HashMap hashMap = new HashMap(16);
        HashMap hashMap2 = new HashMap(16);
        Class cls = Boolean.TYPE;
        hashMap.put(cls, Boolean.class);
        hashMap2.put(Boolean.class, cls);
        Class cls2 = Byte.TYPE;
        hashMap.put(cls2, Byte.class);
        hashMap2.put(Byte.class, cls2);
        Class cls3 = Character.TYPE;
        hashMap.put(cls3, Character.class);
        hashMap2.put(Character.class, cls3);
        Class cls4 = Double.TYPE;
        hashMap.put(cls4, Double.class);
        hashMap2.put(Double.class, cls4);
        Class cls5 = Float.TYPE;
        hashMap.put(cls5, Float.class);
        hashMap2.put(Float.class, cls5);
        Class cls6 = Integer.TYPE;
        hashMap.put(cls6, Integer.class);
        hashMap2.put(Integer.class, cls6);
        Class cls7 = Long.TYPE;
        hashMap.put(cls7, Long.class);
        hashMap2.put(Long.class, cls7);
        Class cls8 = Short.TYPE;
        hashMap.put(cls8, Short.class);
        hashMap2.put(Short.class, cls8);
        Class cls9 = Void.TYPE;
        hashMap.put(cls9, Void.class);
        hashMap2.put(Void.class, cls9);
        a = Collections.unmodifiableMap(hashMap);
        Collections.unmodifiableMap(hashMap2);
    }

    public static <T> Class<T> a(Class<T> cls) {
        Map<Class<?>, Class<?>> map = a;
        if (cls != null) {
            Class<T> cls2 = (Class<T>) map.get(cls);
            return cls2 == null ? cls : cls2;
        }
        throw null;
    }
}
