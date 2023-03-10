package g.a;

import g.a.x;
import io.realm.internal.OsSharedRealm;
/* compiled from: BaseRealm.java */
/* loaded from: classes.dex */
public class b implements OsSharedRealm.InitializationCallback {
    public final /* synthetic */ x.a a;
    public final /* synthetic */ a b;

    public b(a aVar, x.a aVar2) {
        this.b = aVar;
        this.a = aVar2;
    }

    @Override // io.realm.internal.OsSharedRealm.InitializationCallback
    public void onInit(OsSharedRealm osSharedRealm) {
        this.a.a(new x(osSharedRealm));
    }
}
