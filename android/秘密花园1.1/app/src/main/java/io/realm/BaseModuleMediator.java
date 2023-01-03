package io.realm;

import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.o;
import g.a.f1.p;
import g.a.g1;
import g.a.g1$a;
import g.a.h1;
import g.a.h1$a;
import g.a.i1;
import g.a.i1$a;
import g.a.j1;
import g.a.j1$a;
import g.a.k0;
import g.a.k1;
import g.a.k1$a;
import g.a.l1;
import g.a.l1$a;
import g.a.m;
import g.a.x;
import io.realm.annotations.RealmModule;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.sync.Subscription;
import io.realm.sync.permissions.ClassPermissions;
import io.realm.sync.permissions.Permission;
import io.realm.sync.permissions.PermissionUser;
import io.realm.sync.permissions.RealmPermissions;
import io.realm.sync.permissions.Role;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RealmModule
/* loaded from: classes.dex */
public class BaseModuleMediator extends o {
    public static final Set<Class<? extends e0>> a;

    static {
        HashSet hashSet = new HashSet(6);
        hashSet.add(PermissionUser.class);
        hashSet.add(RealmPermissions.class);
        hashSet.add(ClassPermissions.class);
        hashSet.add(Permission.class);
        hashSet.add(Role.class);
        hashSet.add(Subscription.class);
        a = Collections.unmodifiableSet(hashSet);
    }

    @Override // g.a.f1.o
    public <E extends e0> E b(x xVar, E e2, boolean z, Map<e0, n> map, Set<m> set) {
        Class<?> superclass = e2 instanceof n ? e2.getClass().getSuperclass() : e2.getClass();
        if (superclass.equals(PermissionUser.class)) {
            k0 k0Var = xVar.f6317j;
            k0Var.a();
            return (E) superclass.cast(j1.copyOrUpdate(xVar, (j1$a) k0Var.f6286f.a(PermissionUser.class), (PermissionUser) e2, z, map, set));
        } else if (superclass.equals(RealmPermissions.class)) {
            k0 k0Var2 = xVar.f6317j;
            k0Var2.a();
            return (E) superclass.cast(k1.copyOrUpdate(xVar, (k1$a) k0Var2.f6286f.a(RealmPermissions.class), (RealmPermissions) e2, z, map, set));
        } else if (superclass.equals(ClassPermissions.class)) {
            k0 k0Var3 = xVar.f6317j;
            k0Var3.a();
            return (E) superclass.cast(h1.copyOrUpdate(xVar, (h1$a) k0Var3.f6286f.a(ClassPermissions.class), (ClassPermissions) e2, z, map, set));
        } else if (superclass.equals(Permission.class)) {
            k0 k0Var4 = xVar.f6317j;
            k0Var4.a();
            return (E) superclass.cast(i1.copyOrUpdate(xVar, (i1$a) k0Var4.f6286f.a(Permission.class), (Permission) e2, z, map, set));
        } else if (superclass.equals(Role.class)) {
            k0 k0Var5 = xVar.f6317j;
            k0Var5.a();
            return (E) superclass.cast(l1.copyOrUpdate(xVar, (l1$a) k0Var5.f6286f.a(Role.class), (Role) e2, z, map, set));
        } else if (superclass.equals(Subscription.class)) {
            k0 k0Var6 = xVar.f6317j;
            k0Var6.a();
            return (E) superclass.cast(g1.copyOrUpdate(xVar, (g1$a) k0Var6.f6286f.a(Subscription.class), (Subscription) e2, z, map, set));
        } else {
            throw o.e(superclass);
        }
    }

    @Override // g.a.f1.o
    public c c(Class<? extends e0> cls, OsSchemaInfo osSchemaInfo) {
        o.a(cls);
        if (cls.equals(PermissionUser.class)) {
            return j1.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(RealmPermissions.class)) {
            return k1.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ClassPermissions.class)) {
            return h1.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Permission.class)) {
            return i1.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Role.class)) {
            return l1.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Subscription.class)) {
            return g1.createColumnInfo(osSchemaInfo);
        }
        throw o.e(cls);
    }

    @Override // g.a.f1.o
    public Map<Class<? extends e0>, OsObjectSchemaInfo> d() {
        HashMap hashMap = new HashMap(6);
        hashMap.put(PermissionUser.class, j1.getExpectedObjectSchemaInfo());
        hashMap.put(RealmPermissions.class, k1.getExpectedObjectSchemaInfo());
        hashMap.put(ClassPermissions.class, h1.getExpectedObjectSchemaInfo());
        hashMap.put(Permission.class, i1.getExpectedObjectSchemaInfo());
        hashMap.put(Role.class, l1.getExpectedObjectSchemaInfo());
        hashMap.put(Subscription.class, g1.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // g.a.f1.o
    public Set<Class<? extends e0>> f() {
        return a;
    }

    @Override // g.a.f1.o
    public String h(Class<? extends e0> cls) {
        o.a(cls);
        if (cls.equals(PermissionUser.class)) {
            return "__User";
        }
        if (cls.equals(RealmPermissions.class)) {
            return "__Realm";
        }
        if (cls.equals(ClassPermissions.class)) {
            return "__Class";
        }
        if (cls.equals(Permission.class)) {
            return "__Permission";
        }
        if (cls.equals(Role.class)) {
            return "__Role";
        }
        if (cls.equals(Subscription.class)) {
            return "__ResultSets";
        }
        throw o.e(cls);
    }

    @Override // g.a.f1.o
    public <E extends e0> E i(Class<E> cls, Object obj, p pVar, c cVar, boolean z, List<String> list) {
        a.c cVar2 = a.f6189i.get();
        try {
            cVar2.b((a) obj, pVar, cVar, z, list);
            o.a(cls);
            if (cls.equals(PermissionUser.class)) {
                return cls.cast(new j1());
            }
            if (cls.equals(RealmPermissions.class)) {
                return cls.cast(new k1());
            }
            if (cls.equals(ClassPermissions.class)) {
                return cls.cast(new h1());
            }
            if (cls.equals(Permission.class)) {
                return cls.cast(new i1());
            }
            if (cls.equals(Role.class)) {
                return cls.cast(new l1());
            }
            if (cls.equals(Subscription.class)) {
                return cls.cast(new g1());
            }
            throw o.e(cls);
        } finally {
            cVar2.a();
        }
    }

    @Override // g.a.f1.o
    public boolean j() {
        return true;
    }
}
