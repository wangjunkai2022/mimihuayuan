package g.a;

import g.a.f1.g;
import g.a.f1.k;
import g.a.f1.l;
import g.a.f1.n;
import g.a.f1.p;
import g.a.m1.a;
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
        if (e2 instanceof n) {
            a aVar = ((n) e2).realmGet$proxyState().f6307e;
            if (aVar instanceof x) {
                return ((a) aVar.b.c()).b((x) aVar, e2);
            } else if (aVar instanceof i) {
                return ((a) aVar.b.c()).a((i) aVar, (DynamicRealmObject) e2);
            } else {
                throw new UnsupportedOperationException(aVar.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
            }
        } else {
            throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
        }
    }

    public static <E extends e0> Flowable<E> asFlowable(E e2) {
        if (e2 instanceof n) {
            a aVar = ((n) e2).realmGet$proxyState().f6307e;
            if (aVar instanceof x) {
                return ((a) aVar.b.c()).d((x) aVar, e2);
            } else if (aVar instanceof i) {
                return ((a) aVar.b.c()).c((i) aVar, (DynamicRealmObject) e2);
            } else {
                throw new UnsupportedOperationException(aVar.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
            }
        } else {
            throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
        }
    }

    public static <E extends e0> void deleteFromRealm(E e2) {
        if (e2 instanceof n) {
            n nVar = (n) e2;
            if (nVar.realmGet$proxyState().f6305c == null) {
                throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            } else if (nVar.realmGet$proxyState().f6307e != null) {
                nVar.realmGet$proxyState().f6307e.f();
                p pVar = nVar.realmGet$proxyState().f6305c;
                Table d2 = pVar.d();
                long l2 = pVar.l();
                d2.a();
                d2.nativeMoveLastOver(d2.a, l2);
                nVar.realmGet$proxyState().f6305c = g.INSTANCE;
            } else {
                throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            }
        } else {
            throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
        }
    }

    public static x getRealm(e0 e0Var) {
        if (e0Var == null) {
            throw new IllegalArgumentException(MSG_NULL_OBJECT);
        } else if (e0Var instanceof DynamicRealmObject) {
            throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
        } else if (!(e0Var instanceof n)) {
            return null;
        } else {
            a aVar = ((n) e0Var).realmGet$proxyState().f6307e;
            aVar.f();
            if (isValid(e0Var)) {
                return (x) aVar;
            }
            throw new IllegalStateException(MSG_DELETED_OBJECT);
        }
    }

    public static <E extends e0> boolean isLoaded(E e2) {
        if (!(e2 instanceof n)) {
            return true;
        }
        n nVar = (n) e2;
        nVar.realmGet$proxyState().f6307e.f();
        return !(nVar.realmGet$proxyState().f6305c instanceof l);
    }

    public static <E extends e0> boolean isManaged(E e2) {
        return e2 instanceof n;
    }

    public static <E extends e0> boolean isValid(E e2) {
        if (e2 instanceof n) {
            p pVar = ((n) e2).realmGet$proxyState().f6305c;
            if (pVar == null || !pVar.v()) {
                return false;
            }
            return true;
        } else if (e2 != null) {
            return true;
        } else {
            return false;
        }
    }

    public static <E extends e0> boolean load(E e2) {
        if (isLoaded(e2)) {
            return true;
        }
        if (!(e2 instanceof n)) {
            return false;
        }
        p pVar = ((n) e2).realmGet$proxyState().f6305c;
        if (!(pVar instanceof l)) {
            return true;
        }
        if (((l) pVar).a == null) {
            throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
        }
        throw new IllegalStateException("The 'frontEnd' has not been set.");
    }

    public static <E extends e0> void removeAllChangeListeners(E e2) {
        if (e2 instanceof n) {
            n nVar = (n) e2;
            a aVar = nVar.realmGet$proxyState().f6307e;
            if (aVar.H()) {
                RealmLog.c("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", aVar.b.f6197c);
            }
            v realmGet$proxyState = nVar.realmGet$proxyState();
            OsObject osObject = realmGet$proxyState.f6306d;
            if (osObject != null) {
                osObject.removeListener(realmGet$proxyState.a);
                return;
            }
            k<OsObject.b> kVar = realmGet$proxyState.f6309g;
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
        } else if (h0Var == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (e2 instanceof n) {
            n nVar = (n) e2;
            a aVar = nVar.realmGet$proxyState().f6307e;
            aVar.f();
            ((g.a.f1.s.a) aVar.f6191d.capabilities).b("Listeners cannot be used on current thread.");
            v realmGet$proxyState = nVar.realmGet$proxyState();
            p pVar = realmGet$proxyState.f6305c;
            if (pVar instanceof l) {
                realmGet$proxyState.f6309g.a(new OsObject.b(realmGet$proxyState.a, h0Var));
            } else if (pVar instanceof UncheckedRow) {
                realmGet$proxyState.a();
                OsObject osObject = realmGet$proxyState.f6306d;
                if (osObject != null) {
                    osObject.addListener(realmGet$proxyState.a, h0Var);
                }
            }
        } else {
            throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
        }
    }

    public static <E extends e0> void removeChangeListener(E e2, h0 h0Var) {
        if (e2 == null) {
            throw new IllegalArgumentException("Object should not be null");
        } else if (h0Var == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (e2 instanceof n) {
            n nVar = (n) e2;
            a aVar = nVar.realmGet$proxyState().f6307e;
            if (aVar.H()) {
                RealmLog.c("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", aVar.b.f6197c);
            }
            v realmGet$proxyState = nVar.realmGet$proxyState();
            OsObject osObject = realmGet$proxyState.f6306d;
            if (osObject != null) {
                osObject.removeListener(realmGet$proxyState.a, h0Var);
            } else {
                realmGet$proxyState.f6309g.d(realmGet$proxyState.a, h0Var);
            }
        } else {
            throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
        }
    }

    public static <E extends e0> void removeChangeListener(E e2, a0<E> a0Var) {
        removeChangeListener(e2, new v.c(a0Var));
    }

    public static <E extends e0> void addChangeListener(E e2, a0<E> a0Var) {
        addChangeListener(e2, new v.c(a0Var));
    }
}
