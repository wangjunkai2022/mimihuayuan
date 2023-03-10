package g.a;

import io.realm.internal.OsSharedRealm;
/* compiled from: BaseRealm.java */
/* loaded from: classes.dex */
public class c implements OsSharedRealm.MigrationCallback {
    public final /* synthetic */ d0 a;

    public c(d0 d0Var) {
        this.a = d0Var;
    }

    @Override // io.realm.internal.OsSharedRealm.MigrationCallback
    public void onMigrationNeeded(OsSharedRealm osSharedRealm, long j2, long j3) {
        this.a.a(new i(osSharedRealm), j2, j3);
    }
}
