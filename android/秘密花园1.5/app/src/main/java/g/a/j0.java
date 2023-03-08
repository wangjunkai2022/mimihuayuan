package g.a;

import io.realm.DynamicRealmObject;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsResults;
import io.realm.internal.Table;

/* compiled from: RealmResults.java */
/* loaded from: classes.dex */
public class j0<E> extends u<E> {
    public j0(a aVar, OsResults osResults, Class<E> cls) {
        super(aVar, osResults, cls);
    }

    public static j0<DynamicRealmObject> c(i iVar, CheckedRow checkedRow, Table table, String str) {
        return new j0<>(iVar, OsResults.a(iVar.f6266d, checkedRow, table, str), Table.e(table.j()));
    }

    @Override // io.realm.RealmCollection
    public boolean a() {
        this.a.f();
        return this.f6376d.f7018e;
    }

    public j0(a aVar, OsResults osResults, String str) {
        super(aVar, osResults, str);
    }
}
