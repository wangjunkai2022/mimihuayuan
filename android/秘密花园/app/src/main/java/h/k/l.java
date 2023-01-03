package h.k;

import h.o.c.o.a;
import java.util.Iterator;

/* compiled from: Iterators.kt */
/* loaded from: classes.dex */
public abstract class l implements Iterator<Integer>, a {
    public abstract int a();

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public Integer next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
