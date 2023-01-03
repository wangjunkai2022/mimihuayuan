package io.realm.internal;

import g.a.a0;
import g.a.f1.k;
import g.a.f1.q;
import g.a.t;

@Keep
/* loaded from: classes.dex */
public interface ObservableCollection {

    /* loaded from: classes.dex */
    public static class a implements k.a<b> {
        public final OsCollectionChangeSet a;

        public a(OsCollectionChangeSet osCollectionChangeSet) {
            this.a = osCollectionChangeSet;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [g.a.f1.k$b, java.lang.Object] */
        @Override // g.a.f1.k.a
        public void a(b bVar, Object obj) {
            b bVar2 = bVar;
            OsCollectionChangeSet osCollectionChangeSet = this.a;
            S s = bVar2.b;
            if (s instanceof t) {
                ((t) s).a(obj, new q(osCollectionChangeSet));
            } else if (s instanceof a0) {
                ((a0) s).a(obj);
            } else {
                StringBuilder o = f.b.a.a.a.o("Unsupported listener type: ");
                o.append(bVar2.b);
                throw new RuntimeException(o.toString());
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b<T> extends k.b<T, Object> {
    }

    void notifyChangeListeners(long j2);
}
