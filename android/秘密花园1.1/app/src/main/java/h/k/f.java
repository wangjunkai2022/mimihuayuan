package h.k;

import java.util.Iterator;

/* compiled from: Sequences.kt */
/* loaded from: classes.dex */
public final class f implements h.r.c<T> {
    public final /* synthetic */ Iterable a;

    public f(Iterable iterable) {
        this.a = iterable;
    }

    @Override // h.r.c
    public Iterator<T> iterator() {
        return this.a.iterator();
    }
}
