package f.i.a.a.m1;

import f.i.a.a.m1.z;
import java.util.Comparator;
/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Comparator {
    public static final /* synthetic */ c a = new c();

    private /* synthetic */ c() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare;
        compare = Float.compare(((z.b) obj).f5796c, ((z.b) obj2).f5796c);
        return compare;
    }
}
