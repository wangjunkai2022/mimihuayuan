package h.k;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: _Collections.kt */
/* loaded from: classes.dex */
public class g extends e {
    public static final <T, C extends Collection<? super T>> C a(Iterable<? extends T> iterable, C c2) {
        for (T t : iterable) {
            c2.add(t);
        }
        return c2;
    }

    public static final <T> List<T> b(Iterable<? extends T> iterable) {
        List list;
        if (iterable != null) {
            boolean z = iterable instanceof Collection;
            if (z) {
                Collection collection = (Collection) iterable;
                int size = collection.size();
                if (size != 0) {
                    if (size != 1) {
                        return c(collection);
                    }
                    return c.a.a.b.g.h.s0(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
                }
                return i.a;
            }
            if (z) {
                list = c((Collection) iterable);
            } else {
                ArrayList arrayList = new ArrayList();
                a(iterable, arrayList);
                list = arrayList;
            }
            return c.a.a.b.g.h.T0(list);
        }
        h.o.c.g.f("$this$toList");
        throw null;
    }

    public static final <T> List<T> c(Collection<? extends T> collection) {
        return new ArrayList(collection);
    }
}
