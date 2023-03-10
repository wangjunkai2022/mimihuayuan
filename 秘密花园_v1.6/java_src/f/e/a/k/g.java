package f.e.a.k;

import g.a.g0;
import g.a.j0;
import g.a.x;
import io.realm.RealmQuery;
import io.realm.internal.OsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.core.DescriptorOrdering;
/* compiled from: RealmHelper.java */
/* loaded from: classes.dex */
public class g {
    public static g.a.x a;

    /* compiled from: RealmHelper.java */
    /* loaded from: classes.dex */
    public class a implements x.a {
        public final /* synthetic */ g0 a;

        public a(g gVar, g0 g0Var) {
            this.a = g0Var;
        }

        @Override // g.a.x.a
        public void a(g.a.x xVar) {
            xVar.L(this.a, new g.a.m[0]);
        }
    }

    /* compiled from: RealmHelper.java */
    /* loaded from: classes.dex */
    public class b implements x.a {
        public final /* synthetic */ j0 a;
        public final /* synthetic */ int b;

        public b(g gVar, j0 j0Var, int i2) {
            this.a = j0Var;
            this.b = i2;
        }

        @Override // g.a.x.a
        public void a(g.a.x xVar) {
            this.a.b(this.b);
        }
    }

    /* compiled from: RealmHelper.java */
    /* loaded from: classes.dex */
    public static class c {
        public static g a = new g(g.a, null);
    }

    public g(g.a.x xVar, a aVar) {
        a = xVar;
    }

    public static g d(g.a.x xVar) {
        if (xVar != null) {
            a = xVar;
        }
        return c.a;
    }

    public void a(g0 g0Var) {
        a.N(new a(this, g0Var));
    }

    public boolean b(Class<? extends g0> cls, String str, String str2) {
        return f(cls, str, str2).size() != 0;
    }

    public void c(Class<? extends g0> cls, int i2) {
        TableQuery tableQuery;
        OsResults b2;
        g.a.x xVar = a;
        xVar.f();
        DescriptorOrdering descriptorOrdering = new DescriptorOrdering();
        if (!g.a.e0.class.isAssignableFrom(cls)) {
            tableQuery = null;
        } else {
            Table table = xVar.f6401j.d(cls).f6354c;
            tableQuery = new TableQuery(table.b, table, table.nativeWhere(table.a));
        }
        xVar.f();
        g.a.f1.w.a aVar = g.a.f1.w.a.f6339d;
        if (aVar.a != null) {
            b2 = g.a.f1.r.e(xVar.f6275d, tableQuery, descriptorOrdering, aVar);
        } else {
            b2 = OsResults.b(xVar.f6275d, tableQuery, descriptorOrdering);
        }
        j0 j0Var = new j0(xVar, b2, cls);
        j0Var.a.f();
        OsResults osResults = j0Var.f6385d;
        if (!osResults.f7027e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults.a, false);
            osResults.notifyChangeListeners(0L);
        }
        a.N(new b(this, j0Var, i2));
    }

    public j0<? extends g0> e(Class<? extends g0> cls) {
        TableQuery tableQuery;
        OsResults b2;
        g.a.x xVar = a;
        xVar.f();
        DescriptorOrdering descriptorOrdering = new DescriptorOrdering();
        if (!g.a.e0.class.isAssignableFrom(cls)) {
            tableQuery = null;
        } else {
            Table table = xVar.f6401j.d(cls).f6354c;
            tableQuery = new TableQuery(table.b, table, table.nativeWhere(table.a));
        }
        xVar.f();
        g.a.f1.w.a aVar = g.a.f1.w.a.f6339d;
        if (aVar.a != null) {
            b2 = g.a.f1.r.e(xVar.f6275d, tableQuery, descriptorOrdering, aVar);
        } else {
            b2 = OsResults.b(xVar.f6275d, tableQuery, descriptorOrdering);
        }
        j0<? extends g0> j0Var = new j0<>(xVar, b2, cls);
        j0Var.a.f();
        OsResults osResults = j0Var.f6385d;
        if (!osResults.f7027e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults.a, false);
            osResults.notifyChangeListeners(0L);
        }
        return j0Var;
    }

    public j0<? extends g0> f(Class<? extends g0> cls, String str, String str2) {
        g.a.x xVar = a;
        xVar.f();
        RealmQuery realmQuery = new RealmQuery(xVar, cls);
        realmQuery.a(str, str2);
        return realmQuery.b();
    }
}
