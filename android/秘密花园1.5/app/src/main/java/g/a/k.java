package g.a;

import g.a.i0;
import io.realm.RealmFieldType;
import io.realm.internal.Table;

/* compiled from: ImmutableRealmObjectSchema.java */
/* loaded from: classes.dex */
public class k extends i0 {
    public k(a aVar, k0 k0Var, Table table, g.a.f1.c cVar) {
        super(aVar, k0Var, table, cVar);
    }

    @Override // g.a.i0
    public g.a.f1.u.c b(String str, RealmFieldType... realmFieldTypeArr) {
        return g.a.f1.u.c.d(new l0(this.a), this.f6345c, str, realmFieldTypeArr);
    }

    public k(a aVar, k0 k0Var, Table table) {
        super(aVar, k0Var, table, new i0.a(table));
    }
}
