package io.realm;

import g.a.a;
import g.a.e0;
import g.a.f;
import g.a.f1.g;
import g.a.f1.n;
import g.a.f1.o;
import g.a.f1.p;
import g.a.f1.r;
import g.a.f1.u.c;
import g.a.i0;
import g.a.j0;
import g.a.k0;
import g.a.x;
import io.realm.internal.OsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.UncheckedRow;
import io.realm.internal.core.DescriptorOrdering;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public class RealmQuery<E> {
    public final Table a;
    public final a b;

    /* renamed from: c  reason: collision with root package name */
    public final TableQuery f6866c;

    /* renamed from: d  reason: collision with root package name */
    public final i0 f6867d;

    /* renamed from: e  reason: collision with root package name */
    public Class<E> f6868e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6869f;

    /* renamed from: g  reason: collision with root package name */
    public DescriptorOrdering f6870g = new DescriptorOrdering();

    public RealmQuery(x xVar, Class<E> cls) {
        this.b = xVar;
        this.f6868e = cls;
        boolean z = !e0.class.isAssignableFrom(cls);
        this.f6869f = z;
        if (z) {
            this.f6867d = null;
            this.a = null;
            this.f6866c = null;
            return;
        }
        i0 d2 = xVar.f6392j.d(cls);
        this.f6867d = d2;
        Table table = d2.f6345c;
        this.a = table;
        this.f6866c = new TableQuery(table.b, table, table.nativeWhere(table.a));
    }

    public RealmQuery<E> a(String str, String str2) {
        f fVar = f.SENSITIVE;
        this.b.f();
        c b = this.f6867d.b(str, RealmFieldType.STRING);
        TableQuery tableQuery = this.f6866c;
        b.b();
        long[] jArr = b.f6328f;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        b.b();
        long[] jArr2 = b.f6329g;
        tableQuery.nativeEqual(tableQuery.b, copyOf, Arrays.copyOf(jArr2, jArr2.length), str2, fVar.a);
        tableQuery.f7030c = false;
        return this;
    }

    public j0<E> b() {
        OsResults b;
        this.b.f();
        TableQuery tableQuery = this.f6866c;
        DescriptorOrdering descriptorOrdering = this.f6870g;
        g.a.f1.w.a aVar = g.a.f1.w.a.f6330d;
        if (aVar.a != null) {
            b = r.e(this.b.f6266d, tableQuery, descriptorOrdering, aVar);
        } else {
            b = OsResults.b(this.b.f6266d, tableQuery, descriptorOrdering);
        }
        j0<E> j0Var = new j0<>(this.b, b, this.f6868e);
        j0Var.a.f();
        OsResults osResults = j0Var.f6376d;
        if (!osResults.f7018e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults.a, false);
            osResults.notifyChangeListeners(0L);
        }
        return j0Var;
    }

    public E c() {
        long nativeFind;
        this.b.f();
        if (this.f6869f) {
            return null;
        }
        if (!DescriptorOrdering.nativeIsEmpty(this.f6870g.a)) {
            j0<E> b = b();
            UncheckedRow c2 = b.f6376d.c();
            n nVar = (n) (c2 != null ? b.a.F(b.b, b.f6375c, c2) : null);
            nativeFind = nVar != null ? nVar.realmGet$proxyState().f6380c.l() : -1L;
        } else {
            TableQuery tableQuery = this.f6866c;
            tableQuery.a();
            nativeFind = tableQuery.nativeFind(tableQuery.b, 0L);
        }
        if (nativeFind < 0) {
            return null;
        }
        a aVar = this.b;
        Class<E> cls = this.f6868e;
        p pVar = g.INSTANCE;
        Table e2 = aVar.G().e(cls);
        o oVar = aVar.b.f6279j;
        if (nativeFind != -1) {
            pVar = UncheckedRow.F(e2.b, e2, nativeFind);
        }
        p pVar2 = pVar;
        k0 G = aVar.G();
        G.a();
        return (E) oVar.i(cls, aVar, pVar2, G.f6361f.a(cls), false, Collections.emptyList());
    }
}
