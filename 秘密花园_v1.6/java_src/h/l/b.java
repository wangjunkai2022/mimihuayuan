package h.l;

import h.o.c.g;
import java.util.Comparator;
/* compiled from: Comparisons.kt */
/* loaded from: classes.dex */
public final class b implements Comparator<Comparable<? super Object>> {
    public static final b a = new b();

    @Override // java.util.Comparator
    public int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        if (comparable3 == null) {
            g.f("a");
            throw null;
        } else if (comparable4 != null) {
            return comparable4.compareTo(comparable3);
        } else {
            g.f("b");
            throw null;
        }
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return a.a;
    }
}
