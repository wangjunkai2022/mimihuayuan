package g.a;

import io.realm.exceptions.RealmException;
import io.realm.internal.Table;
import io.realm.internal.Util;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* compiled from: RealmSchema.java */
/* loaded from: classes.dex */
public abstract class k0 {
    public final Map<String, Table> a = new HashMap();
    public final Map<Class<? extends e0>, Table> b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class<? extends e0>, i0> f6283c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, i0> f6284d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final a f6285e;

    /* renamed from: f  reason: collision with root package name */
    public final g.a.f1.b f6286f;

    public k0(a aVar, g.a.f1.b bVar) {
        this.f6285e = aVar;
        this.f6286f = bVar;
    }

    public final void a() {
        if (!(this.f6286f != null)) {
            throw new IllegalStateException("Attempt to use column index before set.");
        }
    }

    public abstract i0 b(String str);

    public final g.a.f1.c c(String str) {
        a();
        g.a.f1.b bVar = this.f6286f;
        g.a.f1.c cVar = bVar.b.get(str);
        if (cVar == null) {
            Iterator<Class<? extends e0>> it = bVar.f6227c.f().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Class<? extends e0> next = it.next();
                if (bVar.f6227c.g(next).equals(str)) {
                    cVar = bVar.a(next);
                    bVar.b.put(str, cVar);
                    break;
                }
            }
        }
        if (cVar != null) {
            return cVar;
        }
        throw new RealmException(String.format(Locale.US, "'%s' doesn't exist in current schema.", str));
    }

    public i0 d(Class<? extends e0> cls) {
        i0 i0Var = this.f6283c.get(cls);
        if (i0Var != null) {
            return i0Var;
        }
        Class<? extends e0> a = Util.a(cls);
        if (a.equals(cls)) {
            i0Var = this.f6283c.get(a);
        }
        if (i0Var == null) {
            Table e2 = e(cls);
            a aVar = this.f6285e;
            a();
            k kVar = new k(aVar, this, e2, this.f6286f.a(a));
            this.f6283c.put(a, kVar);
            i0Var = kVar;
        }
        if (a.equals(cls)) {
            this.f6283c.put(cls, i0Var);
        }
        return i0Var;
    }

    public Table e(Class<? extends e0> cls) {
        Table table = this.b.get(cls);
        if (table != null) {
            return table;
        }
        Class<? extends e0> a = Util.a(cls);
        if (a.equals(cls)) {
            table = this.b.get(a);
        }
        if (table == null) {
            table = this.f6285e.f6191d.getTable(Table.k(this.f6285e.b.f6204j.g(a)));
            this.b.put(a, table);
        }
        if (a.equals(cls)) {
            this.b.put(cls, table);
        }
        return table;
    }

    public Table f(String str) {
        String k2 = Table.k(str);
        Table table = this.a.get(k2);
        if (table != null) {
            return table;
        }
        Table table2 = this.f6285e.f6191d.getTable(k2);
        this.a.put(k2, table2);
        return table2;
    }
}
