package g.a.m1;

import g.a.b0;
import g.a.c0;
import g.a.e0;
import g.a.i;
import g.a.j0;
import g.a.x;
import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableOnSubscribe;
import io.realm.DynamicRealmObject;
import java.util.IdentityHashMap;
/* compiled from: RealmObservableFactory.java */
/* loaded from: classes.dex */
public class a implements g.a.m1.b {
    public static final BackpressureStrategy a = BackpressureStrategy.LATEST;

    /* compiled from: RealmObservableFactory.java */
    /* renamed from: g.a.m1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0099a implements FlowableOnSubscribe<E> {
        public C0099a(a aVar, b0 b0Var, e0 e0Var) {
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public class b implements ObservableOnSubscribe<Object<E>> {
        public b(a aVar, b0 b0Var, e0 e0Var) {
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public class c implements FlowableOnSubscribe<DynamicRealmObject> {
        public c(a aVar, b0 b0Var, DynamicRealmObject dynamicRealmObject) {
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public class d implements ObservableOnSubscribe<Object<DynamicRealmObject>> {
        public d(a aVar, b0 b0Var, DynamicRealmObject dynamicRealmObject) {
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public class e extends ThreadLocal<h<j0>> {
        public e(a aVar) {
        }

        @Override // java.lang.ThreadLocal
        public h<j0> initialValue() {
            return new h<>(null);
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public class f extends ThreadLocal<h<c0>> {
        public f(a aVar) {
        }

        @Override // java.lang.ThreadLocal
        public h<c0> initialValue() {
            return new h<>(null);
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public class g extends ThreadLocal<h<e0>> {
        public g(a aVar) {
        }

        @Override // java.lang.ThreadLocal
        public h<e0> initialValue() {
            return new h<>(null);
        }
    }

    /* compiled from: RealmObservableFactory.java */
    /* loaded from: classes.dex */
    public static class h<K> {
        public h(e eVar) {
            new IdentityHashMap();
        }
    }

    public a() {
        new e(this);
        new f(this);
        new g(this);
    }

    public Observable<Object<DynamicRealmObject>> a(i iVar, DynamicRealmObject dynamicRealmObject) {
        return Observable.create(new d(this, iVar.b, dynamicRealmObject));
    }

    public <E extends e0> Observable<Object<E>> b(x xVar, E e2) {
        return Observable.create(new b(this, xVar.b, e2));
    }

    public Flowable<DynamicRealmObject> c(i iVar, DynamicRealmObject dynamicRealmObject) {
        return Flowable.create(new c(this, iVar.b, dynamicRealmObject), a);
    }

    public <E extends e0> Flowable<E> d(x xVar, E e2) {
        return Flowable.create(new C0099a(this, xVar.b, e2), a);
    }

    public boolean equals(Object obj) {
        return obj instanceof a;
    }

    public int hashCode() {
        return 37;
    }
}
