package h.k;

import h.o.c.g;
import h.o.c.o.a;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: Maps.kt */
/* loaded from: classes.dex */
public final class j implements Map, Serializable, a {
    public static final j a = new j();

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (!(obj instanceof Void) || ((Void) obj) != null) {
            return false;
        }
        g.f("value");
        throw null;
    }

    @Override // java.util.Map
    public final Set<Map.Entry> entrySet() {
        return k.a;
    }

    @Override // java.util.Map, java.lang.Object
    public boolean equals(Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return null;
    }

    @Override // java.util.Map, java.lang.Object
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final Set<Object> keySet() {
        return k.a;
    }

    @Override // java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return 0;
    }

    @Override // java.lang.Object
    public String toString() {
        return "{}";
    }

    @Override // java.util.Map
    public final Collection values() {
        return i.a;
    }
}
