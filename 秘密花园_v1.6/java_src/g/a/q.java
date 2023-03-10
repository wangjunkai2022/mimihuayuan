package g.a;

import io.realm.internal.Table;
/* compiled from: MutableRealmSchema.java */
/* loaded from: classes.dex */
public class q extends k0 {
    public q(a aVar) {
        super(aVar, null);
    }

    @Override // g.a.k0
    public i0 b(String str) {
        if (str != null && !str.isEmpty()) {
            String k2 = Table.k(str);
            if (this.f6369e.f6275d.hasTable(k2)) {
                return new p(this.f6369e, this, this.f6369e.f6275d.getTable(k2));
            }
            return null;
        }
        throw new IllegalArgumentException("Null or empty class names are not allowed");
    }
}
