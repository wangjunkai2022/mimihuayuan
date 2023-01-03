package h.k;

import c.a.a.b.g.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: _Collections.kt */
/* loaded from: classes.dex */
public class g extends e {
    public static final <T, C extends Collection<? super T>> C a(Iterable<? extends T> iterable, C c2) {
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c2.add(it.next());
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
                if (size == 0) {
                    return i.a;
                }
                if (size != 1) {
                    return c(collection);
                }
                return h.s0(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            }
            if (z) {
                list = c((Collection) iterable);
            } else {
                ArrayList arrayList = new ArrayList();
                a(iterable, arrayList);
                list = arrayList;
            }
            return h.T0(list);
        }
        h.o.c.g.f("$this$toList");
        throw null;
    }

    public static final <T> List<T> c(Collection<? extends T> collection) {
        return new ArrayList(collection);
    }
}
