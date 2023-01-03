package g.a.f1.v;

import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.o;
import g.a.f1.p;
import g.a.m;
import g.a.x;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Util;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: FilterableMediator.java */
/* loaded from: classes.dex */
public class b extends o {
    public final o a;
    public final Set<Class<? extends e0>> b;

    public b(o oVar, Collection<Class<? extends e0>> collection) {
        this.a = oVar;
        HashSet hashSet = new HashSet();
        if (oVar != null) {
            Set<Class<? extends e0>> f2 = oVar.f();
            for (Class<? extends e0> cls : collection) {
                if (f2.contains(cls)) {
                    hashSet.add(cls);
                }
            }
        }
        this.b = Collections.unmodifiableSet(hashSet);
    }

    @Override // g.a.f1.o
    public <E extends e0> E b(x xVar, E e2, boolean z, Map<e0, n> map, Set<m> set) {
        k(Util.a(e2.getClass()));
        return (E) this.a.b(xVar, e2, z, map, set);
    }

    @Override // g.a.f1.o
    public c c(Class<? extends e0> cls, OsSchemaInfo osSchemaInfo) {
        k(cls);
        return this.a.c(cls, osSchemaInfo);
    }

    @Override // g.a.f1.o
    public Map<Class<? extends e0>, OsObjectSchemaInfo> d() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Class<? extends e0>, OsObjectSchemaInfo> entry : this.a.d().entrySet()) {
            if (this.b.contains(entry.getKey())) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    @Override // g.a.f1.o
    public Set<Class<? extends e0>> f() {
        return this.b;
    }

    @Override // g.a.f1.o
    public String h(Class<? extends e0> cls) {
        k(cls);
        return this.a.g(cls);
    }

    @Override // g.a.f1.o
    public <E extends e0> E i(Class<E> cls, Object obj, p pVar, c cVar, boolean z, List<String> list) {
        k(cls);
        return (E) this.a.i(cls, obj, pVar, cVar, z, list);
    }

    @Override // g.a.f1.o
    public boolean j() {
        o oVar = this.a;
        if (oVar == null) {
            return true;
        }
        return oVar.j();
    }

    public final void k(Class<? extends e0> cls) {
        if (!this.b.contains(cls)) {
            throw new IllegalArgumentException(cls.getSimpleName() + " is not part of the schema for this Realm");
        }
    }
}
