package g.a.f1;

import g.a.s;
import io.realm.internal.OsCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;

/* compiled from: EmptyLoadChangeSet.java */
/* loaded from: classes.dex */
public class d extends OsCollectionChangeSet {

    /* renamed from: f  reason: collision with root package name */
    public static final s.a[] f6232f = new s.a[0];

    public d(OsSubscription osSubscription, boolean z, boolean z2) {
        super(0, z, osSubscription, z2);
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public s.a[] a() {
        return f6232f;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public s.a[] b() {
        return f6232f;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public Throwable c() {
        OsSubscription osSubscription = this.f6917c;
        if (osSubscription == null || osSubscription.a() != OsSubscription.d.ERROR) {
            return null;
        }
        return (Throwable) OsSubscription.nativeGetError(this.f6917c.a);
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public s.a[] d() {
        return f6232f;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean e() {
        return this.f6917c == null;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean f() {
        return this.b;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean g() {
        return super.g();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, g.a.f1.i
    public long getNativeFinalizerPtr() {
        return OsCollectionChangeSet.f6916e;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public String toString() {
        return super.toString();
    }

    public d(OsSubscription osSubscription, boolean z) {
        super(0, true, null, z);
    }
}
