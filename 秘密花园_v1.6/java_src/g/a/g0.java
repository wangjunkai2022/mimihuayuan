package g.a;

import g.a.v;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.DynamicRealmObject;
import io.realm.internal.OsObject;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.log.RealmLog;
/* compiled from: RealmObject.java */
/* loaded from: classes.dex */
public abstract class g0 implements e0 {
    public static final String MSG_DELETED_OBJECT = "the object is already deleted.";
    public static final String MSG_DYNAMIC_OBJECT = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead.";
    public static final String MSG_NULL_OBJECT = "'model' is null.";

    public final <E extends e0> void addChangeListener(h0<E> h0Var) {
        addChangeListener(this, (h0<g0>) h0Var);
    }

    public final <E extends g0> Observable<Object<E>> asChangesetObservable() {
        return asChangesetObservable(this);
    }

    public final <E extends g0> Flowable<E> asFlowable() {
        return asFlowable(this);
    }

    public final void deleteFromRealm() {
        deleteFromRealm(this);
    }

    public x getRealm() {
        return getRealm(this);
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    public boolean isManaged() {
        return isManaged(this);
    }

    public final boolean isValid() {
        return isValid(this);
    }

    public final boolean load() {
        return load(this);
    }

    public final void removeAllChangeListeners() {
        removeAllChangeListeners(this);
    }

    public final void removeChangeListener(h0 h0Var) {
        removeChangeListener(this, h0Var);
    }

    public static <E extends e0> Observable<Object<E>> asChangesetObservable(E e2) {
        if (e2 instanceof g.a.f1.n) {
            a aVar = ((g.a.f1.n) e2).realmGet$proxyState().f6391e;
            if (aVar instanceof x) {
                return ((g.a.m1.a) aVar.b.c()).b((x) aVar, e2);
            } else if (aVar instanceof i) {
                return ((g.a.m1.a) aVar.b.c()).a((i) aVar, (DynamicRealmObject) e2);
            } else {
                throw new UnsupportedOperationException(aVar.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
            }
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends e0> Flowable<E> asFlowable(E e2) {
        if (e2 instanceof g.a.f1.n) {
            a aVar = ((g.a.f1.n) e2).realmGet$proxyState().f6391e;
            if (aVar instanceof x) {
                return ((g.a.m1.a) aVar.b.c()).d((x) aVar, e2);
            } else if (aVar instanceof i) {
                return ((g.a.m1.a) aVar.b.c()).c((i) aVar, (DynamicRealmObject) e2);
            } else {
                throw new UnsupportedOperationException(aVar.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
            }
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends e0> void deleteFromRealm(E e2) {
        if (e2 instanceof g.a.f1.n) {
            g.a.f1.n nVar = (g.a.f1.n) e2;
            if (nVar.realmGet$proxyState().f6389c != null) {
                if (nVar.realmGet$proxyState().f6391e != null) {
                    nVar.realmGet$proxyState().f6391e.f();
                    g.a.f1.p pVar = nVar.realmGet$proxyState().f6389c;
                    Table d2 = pVar.d();
                    long l2 = pVar.l();
                    d2.a();
                    d2.nativeMoveLastOver(d2.a, l2);
                    nVar.realmGet$proxyState().f6389c = g.a.f1.g.INSTANCE;
                    return;
                }
                throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            }
            throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
    }

    public static x getRealm(e0 e0Var) {
        if (e0Var != null) {
            if (!(e0Var instanceof DynamicRealmObject)) {
                if (e0Var instanceof g.a.f1.n) {
                    a aVar = ((g.a.f1.n) e0Var).realmGet$proxyState().f6391e;
                    aVar.f();
                    if (isValid(e0Var)) {
                        return (x) aVar;
                    }
                    throw new IllegalStateException(MSG_DELETED_OBJECT);
                }
                return null;
            }
            throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
        }
        throw new IllegalArgumentException(MSG_NULL_OBJECT);
    }

    public static <E extends e0> boolean isLoaded(E e2) {
        if (e2 instanceof g.a.f1.n) {
            g.a.f1.n nVar = (g.a.f1.n) e2;
            nVar.realmGet$proxyState().f6391e.f();
            return !(nVar.realmGet$proxyState().f6389c instanceof g.a.f1.l);
        }
        return true;
    }

    public static <E extends e0> boolean isManaged(E e2) {
        return e2 instanceof g.a.f1.n;
    }

    public static <E extends e0> boolean isValid(E e2) {
        if (!(e2 instanceof g.a.f1.n)) {
            return e2 != null;
        }
        g.a.f1.p pVar = ((g.a.f1.n) e2).realmGet$proxyState().f6389c;
        return pVar != null && pVar.v();
    }

    public static <E extends e0> boolean load(E e2) {
        if (isLoaded(e2)) {
            return true;
        }
        if (e2 instanceof g.a.f1.n) {
            g.a.f1.p pVar = ((g.a.f1.n) e2).realmGet$proxyState().f6389c;
            if (pVar instanceof g.a.f1.l) {
                if (((g.a.f1.l) pVar).a == null) {
                    throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
                }
                throw new IllegalStateException("The 'frontEnd' has not been set.");
            }
            return true;
        }
        return false;
    }

    public static <E extends e0> void removeAllChangeListeners(E e2) {
        if (e2 instanceof g.a.f1.n) {
            g.a.f1.n nVar = (g.a.f1.n) e2;
            a aVar = nVar.realmGet$proxyState().f6391e;
            if (aVar.H()) {
                RealmLog.c("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", aVar.b.f6281c);
            }
            v realmGet$proxyState = nVar.realmGet$proxyState();
            OsObject osObject = realmGet$proxyState.f6390d;
            if (osObject != null) {
                osObject.removeListener(realmGet$proxyState.a);
                return;
            }
            g.a.f1.k<OsObject.b> kVar = realmGet$proxyState.f6393g;
            kVar.b = true;
            kVar.a.clear();
            return;
        }
        throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
    }

    public final <E extends e0> void addChangeListener(a0<E> a0Var) {
        addChangeListener(this, (a0<g0>) a0Var);
    }

    public final void removeChangeListener(a0 a0Var) {
        removeChangeListener(this, a0Var);
    }

    public static <E extends e0> void addChangeListener(E e2, h0<E> h0Var) {
        if (e2 == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (h0Var != null) {
            if (e2 instanceof g.a.f1.n) {
                g.a.f1.n nVar = (g.a.f1.n) e2;
                a aVar = nVar.realmGet$proxyState().f6391e;
                aVar.f();
                ((g.a.f1.s.a) aVar.f6275d.capabilities).b("Listeners cannot be used on current thread.");
                v realmGet$proxyState = nVar.realmGet$proxyState();
                g.a.f1.p pVar = realmGet$proxyState.f6389c;
                if (pVar instanceof g.a.f1.l) {
                    realmGet$proxyState.f6393g.a(new OsObject.b(realmGet$proxyState.a, h0Var));
                    return;
                } else if (pVar instanceof UncheckedRow) {
                    realmGet$proxyState.a();
                    OsObject osObject = realmGet$proxyState.f6390d;
                    if (osObject != null) {
                        osObject.addListener(realmGet$proxyState.a, h0Var);
                        return;
                    }
                    return;
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    public static <E extends e0> void removeChangeListener(E e2, h0 h0Var) {
        if (e2 == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (h0Var != null) {
            if (e2 instanceof g.a.f1.n) {
                g.a.f1.n nVar = (g.a.f1.n) e2;
                a aVar = nVar.realmGet$proxyState().f6391e;
                if (aVar.H()) {
                    RealmLog.c("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", aVar.b.f6281c);
                }
                v realmGet$proxyState = nVar.realmGet$proxyState();
                OsObject osObject = realmGet$proxyState.f6390d;
                if (osObject != null) {
                    osObject.removeListener(realmGet$proxyState.a, h0Var);
                    return;
                } else {
                    realmGet$proxyState.f6393g.d(realmGet$proxyState.a, h0Var);
                    return;
                }
            }
            throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    public static <E extends e0> void removeChangeListener(E e2, a0<E> a0Var) {
        removeChangeListener(e2, new v.c(a0Var));
    }

    public static <E extends e0> void addChangeListener(E e2, a0<E> a0Var) {
        addChangeListener(e2, new v.c(a0Var));
    }
}
