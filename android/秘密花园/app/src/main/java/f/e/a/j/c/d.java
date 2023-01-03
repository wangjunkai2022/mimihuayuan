package f.e.a.j.c;

import com.comeback.data.ui.ba.ComicReadActivity;
import com.comeback.data.ui.ba.bean.BaComicsBean;
import g.a.e0;
import g.a.f1.r;
import g.a.f1.w.a;
import g.a.j0;
import g.a.x;
import io.realm.internal.OsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.core.DescriptorOrdering;

/* compiled from: ComicReadActivity.java */
/* loaded from: classes.dex */
public class d implements x.a {
    public final /* synthetic */ ComicReadActivity a;

    public d(ComicReadActivity comicReadActivity) {
        this.a = comicReadActivity;
    }

    @Override // g.a.x.a
    public void a(x xVar) {
        TableQuery tableQuery;
        OsResults osResults;
        xVar.f();
        DescriptorOrdering descriptorOrdering = new DescriptorOrdering();
        boolean z = true;
        if (!e0.class.isAssignableFrom(BaComicsBean.class)) {
            tableQuery = null;
        } else {
            Table table = xVar.f6317j.d(BaComicsBean.class).f6270c;
            tableQuery = new TableQuery(table.b, table, table.nativeWhere(table.a));
        }
        xVar.f();
        a aVar = a.f6255d;
        int i2 = 0;
        if (aVar.a == null) {
            z = false;
        }
        if (z) {
            osResults = r.e(xVar.f6191d, tableQuery, descriptorOrdering, aVar);
        } else {
            osResults = OsResults.b(xVar.f6191d, tableQuery, descriptorOrdering);
        }
        j0 j0Var = new j0(xVar, osResults, BaComicsBean.class);
        j0Var.a.f();
        OsResults osResults2 = j0Var.f6301d;
        if (!osResults2.f6943e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults2.a, false);
            osResults2.notifyChangeListeners(0);
        }
        while (true) {
            if (i2 >= j0Var.size()) {
                i2 = -1;
                break;
            } else if (((BaComicsBean) j0Var.get(i2)).getShow_id().equals(this.a.b.getShow_id())) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1) {
            j0Var.b(i2);
        }
    }
}
