package f.e.a.k;

import g.a.e0;
import g.a.m;
import g.a.x;
import io.realm.internal.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: RealmHelper.java */
/* loaded from: classes.dex */
public class h implements x.a {
    public final /* synthetic */ List a;

    public h(g gVar, List list) {
        this.a = list;
    }

    @Override // g.a.x.a
    public void a(x xVar) {
        List<e0> list = this.a;
        m[] mVarArr = new m[0];
        if (list == null) {
            new ArrayList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        HashMap hashMap = new HashMap();
        for (e0 e0Var : list) {
            xVar.J(e0Var);
            arrayList.add(xVar.K(e0Var, false, hashMap, Util.b(mVarArr)));
        }
    }
}
