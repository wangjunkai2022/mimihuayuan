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
    public final TableQuery f6791c;

    /* renamed from: d  reason: collision with root package name */
    public final i0 f6792d;

    /* renamed from: e  reason: collision with root package name */
    public Class<E> f6793e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6794f;

    /* renamed from: g  reason: collision with root package name */
    public DescriptorOrdering f6795g = new DescriptorOrdering();

    public RealmQuery(x xVar, Class<E> cls) {
        this.b = xVar;
        this.f6793e = cls;
        boolean z = !e0.class.isAssignableFrom(cls);
        this.f6794f = z;
        if (z) {
            this.f6792d = null;
            this.a = null;
            this.f6791c = null;
            return;
        }
        i0 d2 = xVar.f6317j.d(cls);
        this.f6792d = d2;
        Table table = d2.f6270c;
        this.a = table;
        this.f6791c = new TableQuery(table.b, table, table.nativeWhere(table.a));
    }

    public RealmQuery<E> a(String str, String str2) {
        f fVar = f.SENSITIVE;
        this.b.f();
        c b = this.f6792d.b(str, RealmFieldType.STRING);
        TableQuery tableQuery = this.f6791c;
        b.b();
        long[] jArr = b.f6253f;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        b.b();
        long[] jArr2 = b.f6254g;
        tableQuery.nativeEqual(tableQuery.b, copyOf, Arrays.copyOf(jArr2, jArr2.length), str2, fVar.a);
        tableQuery.f6955c = false;
        return this;
    }

    public j0<E> b() {
        OsResults osResults;
        this.b.f();
        TableQuery tableQuery = this.f6791c;
        DescriptorOrdering descriptorOrdering = this.f6795g;
        g.a.f1.w.a aVar = g.a.f1.w.a.f6255d;
        if (aVar.a != null) {
            osResults = r.e(this.b.f6191d, tableQuery, descriptorOrdering, aVar);
        } else {
            osResults = OsResults.b(this.b.f6191d, tableQuery, descriptorOrdering);
        }
        j0<E> j0Var = new j0<>(this.b, osResults, this.f6793e);
        j0Var.a.f();
        OsResults osResults2 = j0Var.f6301d;
        if (!osResults2.f6943e) {
            OsResults.nativeEvaluateQueryIfNeeded(osResults2.a, false);
            osResults2.notifyChangeListeners(0);
        }
        return j0Var;
    }

    public E c() {
        long j2;
        this.b.f();
        if (this.f6794f) {
            return null;
        }
        if (!DescriptorOrdering.nativeIsEmpty(this.f6795g.a)) {
            j0<E> b = b();
            UncheckedRow c2 = b.f6301d.c();
            n nVar = (n) (c2 != null ? b.a.F(b.b, b.f6300c, c2) : null);
            j2 = nVar != null ? nVar.realmGet$proxyState().f6305c.l() : -1;
        } else {
            TableQuery tableQuery = this.f6791c;
            tableQuery.a();
            j2 = tableQuery.nativeFind(tableQuery.b, 0);
        }
        if (j2 < 0) {
            return null;
        }
        a aVar = this.b;
        Class<E> cls = this.f6793e;
        p pVar = g.INSTANCE;
        Table e2 = aVar.G().e(cls);
        o oVar = aVar.b.f6204j;
        if (j2 != -1) {
            pVar = UncheckedRow.F(e2.b, e2, j2);
        }
        k0 G = aVar.G();
        G.a();
        return (E) oVar.i(cls, aVar, pVar, G.f6286f.a(cls), false, Collections.emptyList());
    }
}
