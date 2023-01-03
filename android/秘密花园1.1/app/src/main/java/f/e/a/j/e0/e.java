package f.e.a.j.e0;

import com.comeback.data.ui.mimei.ComicReadActivity;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
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
public class e implements x.a {
    public final /* synthetic */ ComicReadActivity a;

    public e(ComicReadActivity comicReadActivity) {
        this.a = comicReadActivity;
    }

    @Override // g.a.x.a
    public void a(x xVar) {
        TableQuery tableQuery;
        OsResults b;
        xVar.f();
        DescriptorOrdering descriptorOrdering = new DescriptorOrdering();
        if (!e0.class.isAssignableFrom(MimeiComicItem.class)) {
            tableQuery = null;
        } else {
            Table table = xVar.f6317j.d(MimeiComicItem.class).f6270c;
            tableQuery = new TableQuery(table.b, table, table.nativeWhere(table.a));
        }
        xVar.f();
        g.a.f1.w.a aVar = g.a.f1.w.a.f6255d;
        int i2 = 0;
        if (aVar.a != null) {
            b = r.e(xVar.f6191d, tableQuery, descriptorOrdering, aVar);
        } else {
            b = OsResults.b(xVar.f6191d, tableQuery, descriptorOrdering);
        }
        j0 j0Var = new j0(xVar, b, MimeiComicItem.class);
        j0Var.a.f();
        OsResults osResults = j0Var.f6301d;
        if (!osResults.f6943e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults.a, false);
            osResults.notifyChangeListeners(0L);
        }
        while (true) {
            if (i2 >= j0Var.size()) {
                i2 = -1;
                break;
            } else if (((MimeiComicItem) j0Var.get(i2)).getId() == this.a.b.getId()) {
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
