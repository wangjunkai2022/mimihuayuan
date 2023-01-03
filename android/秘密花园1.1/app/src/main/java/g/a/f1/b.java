package g.a.f1;

import g.a.e0;
import io.realm.internal.OsSchemaInfo;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ColumnIndices.java */
/* loaded from: classes.dex */
public final class b {
    public final Map<Class<? extends e0>, c> a = new HashMap();
    public final Map<String, c> b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final o f6227c;

    /* renamed from: d  reason: collision with root package name */
    public final OsSchemaInfo f6228d;

    public b(o oVar, OsSchemaInfo osSchemaInfo) {
        this.f6227c = oVar;
        this.f6228d = osSchemaInfo;
    }

    public c a(Class<? extends e0> cls) {
        c cVar = this.a.get(cls);
        if (cVar == null) {
            c c2 = this.f6227c.c(cls, this.f6228d);
            this.a.put(cls, c2);
            return c2;
        }
        return cVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnIndices[");
        boolean z = false;
        for (Map.Entry<Class<? extends e0>, c> entry : this.a.entrySet()) {
            if (z) {
                sb.append(",");
            }
            sb.append(entry.getKey().getSimpleName());
            sb.append("->");
            sb.append(entry.getValue());
            z = true;
        }
        sb.append("]");
        return sb.toString();
    }
}
