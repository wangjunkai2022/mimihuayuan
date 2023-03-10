package f.i.a.a.l1.k0;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ContentMetadataMutations.java */
/* loaded from: classes.dex */
public class q {
    public final Map<String, Object> a = new HashMap();
    public final List<String> b = new ArrayList();

    public static q a(q qVar, long j2) {
        Long valueOf = Long.valueOf(j2);
        Map<String, Object> map = qVar.a;
        if (valueOf != null) {
            map.put("exo_len", valueOf);
            qVar.b.remove("exo_len");
            return qVar;
        }
        throw null;
    }
}
