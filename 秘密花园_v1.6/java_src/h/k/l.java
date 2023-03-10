package h.k;

import java.util.Iterator;
/* compiled from: Iterators.kt */
/* loaded from: classes.dex */
public abstract class l implements Iterator<Integer>, h.o.c.o.a {
    public abstract int a();

    @Override // java.util.Iterator
    public Integer next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
