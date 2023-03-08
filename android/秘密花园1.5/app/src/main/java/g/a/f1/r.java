package g.a.f1;

import g.a.a0;
import io.realm.internal.ObservableCollection;
import io.realm.internal.OsCollectionChangeSet;
import io.realm.internal.OsResults;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.sync.OsSubscription;

/* compiled from: SubscriptionAwareOsResults.java */
/* loaded from: classes.dex */
public class r extends OsResults {

    /* renamed from: i  reason: collision with root package name */
    public long f6311i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f6312j;

    /* renamed from: k  reason: collision with root package name */
    public OsSubscription f6313k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6314l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f6315m;

    /* compiled from: SubscriptionAwareOsResults.java */
    /* loaded from: classes.dex */
    public class a implements a0<OsSubscription> {
        public a() {
        }

        @Override // g.a.a0
        public void a(OsSubscription osSubscription) {
            r.this.f6312j = true;
        }
    }

    /* compiled from: SubscriptionAwareOsResults.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r rVar = r.this;
            rVar.f6312j = false;
            rVar.f6314l = false;
            rVar.f6311i = 0L;
        }
    }

    /* compiled from: SubscriptionAwareOsResults.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OsCollectionChangeSet osCollectionChangeSet;
            r rVar = r.this;
            if (rVar.f6314l || rVar.f6312j) {
                r rVar2 = r.this;
                OsSubscription osSubscription = rVar2.f6312j ? rVar2.f6313k : null;
                if (rVar2.f6311i != 0 || osSubscription == null || rVar2.f6315m || osSubscription.a() == OsSubscription.d.ERROR || osSubscription.a() == OsSubscription.d.COMPLETE) {
                    if (rVar2.f6311i == 0) {
                        osCollectionChangeSet = new d(osSubscription, rVar2.f6315m, true);
                    } else {
                        osCollectionChangeSet = new OsCollectionChangeSet(rVar2.f6311i, rVar2.f6315m, osSubscription, true);
                    }
                    if (osCollectionChangeSet.e() && rVar2.f7018e) {
                        return;
                    }
                    rVar2.f7018e = true;
                    rVar2.f6315m = false;
                    rVar2.f7020g.b(new ObservableCollection.a(osCollectionChangeSet));
                }
            }
        }
    }

    public r(OsSharedRealm osSharedRealm, Table table, long j2, g.a.f1.w.a aVar) {
        super(osSharedRealm, table, j2);
        this.f6311i = 0L;
        this.f6313k = null;
        this.f6314l = false;
        this.f6315m = true;
        OsSubscription osSubscription = new OsSubscription(this, aVar);
        this.f6313k = osSubscription;
        a aVar2 = new a();
        if (osSubscription.b.c()) {
            osSubscription.nativeStartListening(osSubscription.a);
        }
        osSubscription.b.a(new OsSubscription.c(osSubscription, aVar2));
        RealmNotifier realmNotifier = osSharedRealm.realmNotifier;
        realmNotifier.addBeginSendingNotificationsCallback(new b());
        realmNotifier.addFinishedSendingNotificationsCallback(new c());
    }

    public static r e(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering, g.a.f1.w.a aVar) {
        tableQuery.a();
        return new r(osSharedRealm, tableQuery.a, OsResults.nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.b, descriptorOrdering.a), aVar);
    }

    @Override // io.realm.internal.OsResults, io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j2) {
        this.f6314l = true;
        this.f6311i = j2;
    }
}
