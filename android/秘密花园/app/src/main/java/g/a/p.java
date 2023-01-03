package g.a;

import g.a.f1.u.c;
import g.a.i0;
import io.realm.RealmFieldType;
import io.realm.internal.Table;

/* compiled from: MutableRealmObjectSchema.java */
/* loaded from: classes.dex */
public class p extends i0 {
    public p(a aVar, k0 k0Var, Table table) {
        super(aVar, k0Var, table, new i0.a(table));
    }

    @Override // g.a.i0
    public c b(String str, RealmFieldType... realmFieldTypeArr) {
        return c.d(new l0(this.a), this.f6270c, str, realmFieldTypeArr);
    }
}
