package h.k;

import h.r.c;
import java.util.Iterator;

/* compiled from: Sequences.kt */
/* loaded from: classes.dex */
public final class f implements c<T> {
    public final /* synthetic */ Iterable a;

    public f(Iterable iterable) {
        this.a = iterable;
    }

    @Override // h.r.c
    public Iterator<T> iterator() {
        return this.a.iterator();
    }
}
