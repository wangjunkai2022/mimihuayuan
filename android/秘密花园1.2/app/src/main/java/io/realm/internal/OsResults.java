package io.realm.internal;

import g.a.f1.d;
import g.a.f1.h;
import g.a.f1.i;
import g.a.f1.k;
import g.a.u;
import io.realm.internal.ObservableCollection;
import io.realm.internal.core.DescriptorOrdering;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class OsResults implements i, ObservableCollection {

    /* renamed from: h  reason: collision with root package name */
    public static final long f7015h = nativeGetFinalizerPtr();
    public final long a;
    public final OsSharedRealm b;

    /* renamed from: c  reason: collision with root package name */
    public final h f7016c;

    /* renamed from: d  reason: collision with root package name */
    public final Table f7017d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7018e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7019f;

    /* renamed from: g  reason: collision with root package name */
    public final k<ObservableCollection.b> f7020g;

    /* loaded from: classes.dex */
    public static abstract class a<T> implements Iterator<T> {
        public OsResults a;
        public int b = -1;

        public a(OsResults osResults) {
            if (!osResults.b.isClosed()) {
                this.a = osResults;
                if (osResults.f7019f) {
                    return;
                }
                if (osResults.b.isInTransaction()) {
                    c();
                    return;
                } else {
                    this.a.b.addIterator(this);
                    return;
                }
            }
            throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
        }

        public void a() {
            if (this.a == null) {
                throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
            }
        }

        public abstract T b(UncheckedRow uncheckedRow);

        public void c() {
            OsResults osResults = this.a;
            if (!osResults.f7019f) {
                OsResults osResults2 = new OsResults(osResults.b, osResults.f7017d, OsResults.nativeCreateSnapshot(osResults.a));
                osResults2.f7019f = true;
                osResults = osResults2;
            }
            this.a = osResults;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return ((long) (this.b + 1)) < this.a.d();
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 < this.a.d()) {
                int i3 = this.b;
                OsResults osResults = this.a;
                return b(osResults.f7017d.m(OsResults.nativeGetRow(osResults.a, i3)));
            }
            StringBuilder o = f.b.a.a.a.o("Cannot access index ");
            o.append(this.b);
            o.append(" when size is ");
            o.append(this.a.d());
            o.append(". Remember to check hasNext() before using next().");
            throw new NoSuchElementException(o.toString());
        }

        @Override // java.util.Iterator
        @Deprecated
        public void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b<T> extends a<T> implements ListIterator<T> {
        public b(OsResults osResults, int i2) {
            super(osResults);
            if (i2 >= 0 && i2 <= this.a.d()) {
                this.b = i2 - 1;
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Starting location must be a valid index: [0, ");
            o.append(this.a.d() - 1);
            o.append("]. Yours was ");
            o.append(i2);
            throw new IndexOutOfBoundsException(o.toString());
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void add(T t) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            a();
            return this.b >= 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            a();
            return this.b + 1;
        }

        @Override // java.util.ListIterator
        public T previous() {
            a();
            try {
                int i2 = this.b;
                OsResults osResults = this.a;
                UncheckedRow m2 = osResults.f7017d.m(OsResults.nativeGetRow(osResults.a, i2));
                u uVar = u.this;
                this.b--;
                return (T) uVar.a.F(uVar.b, uVar.f6375c, m2);
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException(f.b.a.a.a.k(f.b.a.a.a.o("Cannot access index less than zero. This was "), this.b, ". Remember to check hasPrevious() before using previous()."));
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            a();
            return this.b;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void set(T t) {
            throw new UnsupportedOperationException("Replacing an element is not supported.");
        }
    }

    /* loaded from: classes.dex */
    public enum c {
        EMPTY,
        TABLE,
        QUERY,
        LINKVIEW,
        TABLEVIEW
    }

    public OsResults(OsSharedRealm osSharedRealm, Table table, long j2) {
        c cVar;
        c cVar2 = c.QUERY;
        this.f7019f = false;
        this.f7020g = new k<>();
        this.b = osSharedRealm;
        h hVar = osSharedRealm.context;
        this.f7016c = hVar;
        this.f7017d = table;
        this.a = j2;
        hVar.a(this);
        byte nativeGetMode = nativeGetMode(this.a);
        if (nativeGetMode == 0) {
            cVar = c.EMPTY;
        } else if (nativeGetMode == 1) {
            cVar = c.TABLE;
        } else if (nativeGetMode == 2) {
            cVar = cVar2;
        } else if (nativeGetMode == 3) {
            cVar = c.LINKVIEW;
        } else if (nativeGetMode == 4) {
            cVar = c.TABLEVIEW;
        } else {
            throw new IllegalArgumentException(f.b.a.a.a.J("Invalid value: ", nativeGetMode));
        }
        this.f7018e = cVar != cVar2;
    }

    public static OsResults a(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow, Table table, String str) {
        return new OsResults(osSharedRealm, table, nativeCreateResultsFromBacklinks(osSharedRealm.getNativePtr(), uncheckedRow.f7032c, table.a, table.f(str)));
    }

    public static OsResults b(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering) {
        tableQuery.a();
        return new OsResults(osSharedRealm, tableQuery.a, nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.b, descriptorOrdering.a));
    }

    public static native long nativeCreateResults(long j2, long j3, long j4);

    public static native long nativeCreateResultsFromBacklinks(long j2, long j3, long j4, long j5);

    public static native long nativeCreateSnapshot(long j2);

    public static native void nativeDelete(long j2, long j3);

    public static native void nativeEvaluateQueryIfNeeded(long j2, boolean z);

    public static native long nativeFirstRow(long j2);

    public static native long nativeGetFinalizerPtr();

    public static native byte nativeGetMode(long j2);

    public static native long nativeGetRow(long j2, int i2);

    public static native long nativeSize(long j2);

    public UncheckedRow c() {
        long nativeFirstRow = nativeFirstRow(this.a);
        if (nativeFirstRow != 0) {
            return this.f7017d.m(nativeFirstRow);
        }
        return null;
    }

    public long d() {
        return nativeSize(this.a);
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f7015h;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    public void notifyChangeListeners(long j2) {
        OsCollectionChangeSet osCollectionChangeSet;
        if (j2 == 0) {
            osCollectionChangeSet = new d(null, this.b.isPartial());
        } else {
            osCollectionChangeSet = new OsCollectionChangeSet(j2, !this.f7018e, null, this.b.isPartial());
        }
        if (osCollectionChangeSet.e() && this.f7018e) {
            return;
        }
        this.f7018e = true;
        this.f7020g.b(new ObservableCollection.a(osCollectionChangeSet));
    }
}
