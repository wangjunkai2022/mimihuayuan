package g.a;

import g.a.f1.b;
import io.realm.internal.Table;

/* compiled from: ImmutableRealmSchema.java */
/* loaded from: classes.dex */
public class l extends k0 {
    public l(a aVar, b bVar) {
        super(aVar, bVar);
    }

    @Override // g.a.k0
    public i0 b(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Null or empty class names are not allowed");
        }
        String k2 = Table.k(str);
        if (!this.f6285e.f6191d.hasTable(k2)) {
            return null;
        }
        return new k(this.f6285e, this, this.f6285e.f6191d.getTable(k2), c(str));
    }
}
