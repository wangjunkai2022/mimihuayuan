package h.l;

import h.o.c.g;
import java.util.Comparator;
/* compiled from: Comparisons.kt */
/* loaded from: classes.dex */
public final class a implements Comparator<Comparable<? super Object>> {
    public static final a a = new a();

    @Override // java.util.Comparator
    public int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        if (comparable3 == null) {
            g.f("a");
            throw null;
        } else if (comparable4 != null) {
            return comparable3.compareTo(comparable4);
        } else {
            g.f("b");
            throw null;
        }
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return b.a;
    }
}
