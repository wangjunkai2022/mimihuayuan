package g.a.f1.v;

import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.o;
import g.a.f1.p;
import g.a.m;
import g.a.x;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: CompositeMediator.java */
/* loaded from: classes.dex */
public class a extends o {
    public final Map<Class<? extends e0>, o> a;
    public final Map<String, Class<? extends e0>> b = new HashMap();

    public a(o... oVarArr) {
        HashMap hashMap = new HashMap();
        for (o oVar : oVarArr) {
            for (Class<? extends e0> cls : oVar.f()) {
                String g2 = oVar.g(cls);
                Class<? extends e0> cls2 = this.b.get(g2);
                if (cls2 != null && !cls2.equals(cls)) {
                    throw new IllegalStateException(String.format("It is not allowed for two different model classes to share the same internal name in Realm. The classes %s and %s are being included from the modules '%s' and '%s' and they share the same internal name '%s'.", cls2, cls, hashMap.get(cls2), oVar, g2));
                }
                hashMap.put(cls, oVar);
                this.b.put(g2, cls);
            }
        }
        this.a = Collections.unmodifiableMap(hashMap);
    }

    @Override // g.a.f1.o
    public <E extends e0> E b(x xVar, E e2, boolean z, Map<e0, n> map, Set<m> set) {
        return (E) k(Util.a(e2.getClass())).b(xVar, e2, z, map, set);
    }

    @Override // g.a.f1.o
    public c c(Class<? extends e0> cls, OsSchemaInfo osSchemaInfo) {
        return k(cls).c(cls, osSchemaInfo);
    }

    @Override // g.a.f1.o
    public Map<Class<? extends e0>, OsObjectSchemaInfo> d() {
        HashMap hashMap = new HashMap();
        for (o oVar : this.a.values()) {
            hashMap.putAll(oVar.d());
        }
        return hashMap;
    }

    @Override // g.a.f1.o
    public Set<Class<? extends e0>> f() {
        return this.a.keySet();
    }

    @Override // g.a.f1.o
    public String h(Class<? extends e0> cls) {
        return k(cls).g(cls);
    }

    @Override // g.a.f1.o
    public <E extends e0> E i(Class<E> cls, Object obj, p pVar, c cVar, boolean z, List<String> list) {
        return (E) k(cls).i(cls, obj, pVar, cVar, z, list);
    }

    @Override // g.a.f1.o
    public boolean j() {
        for (Map.Entry<Class<? extends e0>, o> entry : this.a.entrySet()) {
            if (!entry.getValue().j()) {
                return false;
            }
        }
        return true;
    }

    public final o k(Class<? extends e0> cls) {
        o oVar = this.a.get(cls);
        if (oVar != null) {
            return oVar;
        }
        throw new RealmException(cls.getSimpleName() + " is not part of the schema for this Realm");
    }
}
