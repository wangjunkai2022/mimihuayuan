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
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Null or empty class names are not allowed");
        }
        String k2 = Table.k(str);
        if (!this.f6285e.f6191d.hasTable(k2)) {
            return null;
        }
        return new p(this.f6285e, this, this.f6285e.f6191d.getTable(k2));
    }
}
