package f.e.a.j.i;

import com.comeback.data.ui.ds.ComicReadActivity;
import com.comeback.data.ui.ds.bean.DsItemBean;
import g.a.e0;
import g.a.f1.r;
import g.a.j0;
import g.a.x;
import io.realm.internal.OsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.core.DescriptorOrdering;

/* compiled from: ComicReadActivity.java */
/* loaded from: classes.dex */
public class g implements x.a {
    public final /* synthetic */ ComicReadActivity a;

    public g(ComicReadActivity comicReadActivity) {
        this.a = comicReadActivity;
    }

    @Override // g.a.x.a
    public void a(x xVar) {
        TableQuery tableQuery;
        OsResults b;
        xVar.f();
        DescriptorOrdering descriptorOrdering = new DescriptorOrdering();
        if (!e0.class.isAssignableFrom(DsItemBean.class)) {
            tableQuery = null;
        } else {
            Table table = xVar.f6392j.d(DsItemBean.class).f6345c;
            tableQuery = new TableQuery(table.b, table, table.nativeWhere(table.a));
        }
        xVar.f();
        g.a.f1.w.a aVar = g.a.f1.w.a.f6330d;
        int i2 = 0;
        if (aVar.a != null) {
            b = r.e(xVar.f6266d, tableQuery, descriptorOrdering, aVar);
        } else {
            b = OsResults.b(xVar.f6266d, tableQuery, descriptorOrdering);
        }
        j0 j0Var = new j0(xVar, b, DsItemBean.class);
        j0Var.a.f();
        OsResults osResults = j0Var.f6376d;
        if (!osResults.f7018e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults.a, false);
            osResults.notifyChangeListeners(0L);
        }
        while (true) {
            if (i2 >= j0Var.size()) {
                i2 = -1;
                break;
            } else if (((DsItemBean) j0Var.get(i2)).getId().equals(this.a.b.getId())) {
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
