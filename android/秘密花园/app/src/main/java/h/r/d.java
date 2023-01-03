package h.r;

import h.o.c.o.a;
import java.util.Iterator;

/* compiled from: Iterables.kt */
/* loaded from: classes.dex */
public final class d implements Iterable<T>, a {
    public final /* synthetic */ c a;

    public d(c cVar) {
        this.a = cVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.a.iterator();
    }
}
