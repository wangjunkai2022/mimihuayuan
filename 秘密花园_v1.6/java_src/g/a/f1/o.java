package g.a.f1;

import g.a.e0;
import g.a.x;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Util;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: RealmProxyMediator.java */
/* loaded from: classes.dex */
public abstract class o {
    public static void a(Class<? extends e0> cls) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        }
    }

    public static RealmException e(Class<? extends e0> cls) {
        return new RealmException(String.format("'%s' is not part of the schema for this Realm.", cls.toString()));
    }

    public abstract <E extends e0> E b(x xVar, E e2, boolean z, Map<e0, n> map, Set<g.a.m> set);

    public abstract c c(Class<? extends e0> cls, OsSchemaInfo osSchemaInfo);

    public abstract Map<Class<? extends e0>, OsObjectSchemaInfo> d();

    public boolean equals(Object obj) {
        if (obj instanceof o) {
            return f().equals(((o) obj).f());
        }
        return false;
    }

    public abstract Set<Class<? extends e0>> f();

    public final String g(Class<? extends e0> cls) {
        return h(Util.a(cls));
    }

    public abstract String h(Class<? extends e0> cls);

    public int hashCode() {
        return f().hashCode();
    }

    public abstract <E extends e0> E i(Class<E> cls, Object obj, p pVar, c cVar, boolean z, List<String> list);

    public boolean j() {
        return false;
    }
}
