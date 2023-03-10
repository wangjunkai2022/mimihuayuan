package io.realm.internal;

import g.a.a0;
import g.a.f1.k;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
@Keep
/* loaded from: classes.dex */
public abstract class RealmNotifier implements Closeable {
    public OsSharedRealm sharedRealm;
    public k<b> realmObserverPairs = new k<>();
    public final k.a<b> onChangeCallBack = new a();
    public List<Runnable> transactionCallbacks = new ArrayList();
    public List<Runnable> startSendingNotificationsCallbacks = new ArrayList();
    public List<Runnable> finishedSendingNotificationsCallbacks = new ArrayList();

    /* loaded from: classes.dex */
    public class a implements k.a<b> {
        public a() {
        }

        @Override // g.a.f1.k.a
        public void a(b bVar, Object obj) {
            b bVar2 = bVar;
            if (RealmNotifier.this.sharedRealm == null || RealmNotifier.this.sharedRealm.isClosed()) {
                return;
            }
            ((a0) bVar2.b).a(obj);
        }
    }

    /* loaded from: classes.dex */
    public static class b<T> extends k.b<T, a0<T>> {
        public b(T t, a0<T> a0Var) {
            super(t, a0Var);
        }
    }

    public RealmNotifier(OsSharedRealm osSharedRealm) {
        this.sharedRealm = osSharedRealm;
    }

    private void removeAllChangeListeners() {
        k<b> kVar = this.realmObserverPairs;
        kVar.b = true;
        kVar.a.clear();
    }

    public void addBeginSendingNotificationsCallback(Runnable runnable) {
        this.startSendingNotificationsCallbacks.add(runnable);
    }

    public <T> void addChangeListener(T t, a0<T> a0Var) {
        this.realmObserverPairs.a(new b(t, a0Var));
    }

    public void addFinishedSendingNotificationsCallback(Runnable runnable) {
        this.finishedSendingNotificationsCallbacks.add(runnable);
    }

    public void addTransactionCallback(Runnable runnable) {
        this.transactionCallbacks.add(runnable);
    }

    public void beforeNotify() {
        this.sharedRealm.invalidateIterators();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        removeAllChangeListeners();
        this.startSendingNotificationsCallbacks.clear();
        this.finishedSendingNotificationsCallbacks.clear();
    }

    public void didChange() {
        this.realmObserverPairs.b(this.onChangeCallBack);
        if (this.transactionCallbacks.isEmpty()) {
            return;
        }
        List<Runnable> list = this.transactionCallbacks;
        this.transactionCallbacks = new ArrayList();
        for (Runnable runnable : list) {
            runnable.run();
        }
    }

    public void didSendNotifications() {
        for (int i2 = 0; i2 < this.startSendingNotificationsCallbacks.size(); i2++) {
            this.finishedSendingNotificationsCallbacks.get(i2).run();
        }
    }

    public int getListenersListSize() {
        return this.realmObserverPairs.a.size();
    }

    public abstract boolean post(Runnable runnable);

    public <E> void removeChangeListener(E e2, a0<E> a0Var) {
        this.realmObserverPairs.d(e2, a0Var);
    }

    public <E> void removeChangeListeners(E e2) {
        this.realmObserverPairs.e(e2);
    }

    public void willSendNotifications() {
        for (int i2 = 0; i2 < this.startSendingNotificationsCallbacks.size(); i2++) {
            this.startSendingNotificationsCallbacks.get(i2).run();
        }
    }
}
