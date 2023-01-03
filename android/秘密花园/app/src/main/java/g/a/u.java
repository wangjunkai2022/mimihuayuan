package g.a;

import androidx.appcompat.widget.ActivityChooserView;
import g.a.f1.g;
import g.a.f1.n;
import io.realm.OrderedRealmCollection;
import io.realm.internal.OsResults;
import io.realm.internal.UncheckedRow;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* compiled from: OrderedRealmCollectionImpl.java */
/* loaded from: classes.dex */
public abstract class u<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    public final a a;
    public final Class<E> b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6300c;

    /* renamed from: d  reason: collision with root package name */
    public final OsResults f6301d;

    /* compiled from: OrderedRealmCollectionImpl.java */
    /* loaded from: classes.dex */
    public class a extends OsResults.a<E> {
        public a() {
            super(u.this.f6301d);
        }

        @Override // io.realm.internal.OsResults.a
        public E b(UncheckedRow uncheckedRow) {
            u uVar = u.this;
            return (E) uVar.a.F(uVar.b, uVar.f6300c, uncheckedRow);
        }
    }

    /* compiled from: OrderedRealmCollectionImpl.java */
    /* loaded from: classes.dex */
    public class b extends OsResults.b<E> {
        public b(int i2) {
            super(u.this.f6301d, i2);
        }

        @Override // io.realm.internal.OsResults.a
        public E b(UncheckedRow uncheckedRow) {
            u uVar = u.this;
            return (E) uVar.a.F(uVar.b, uVar.f6300c, uncheckedRow);
        }
    }

    public u(a aVar, OsResults osResults, Class<E> cls) {
        this.a = aVar;
        this.f6301d = osResults;
        this.b = cls;
        this.f6300c = null;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean add(E e2) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    public void b(int i2) {
        if (this.a.I()) {
            OsResults.nativeDelete(this.f6301d.a, (long) i2);
            return;
        }
        throw new IllegalStateException("Changing Realm data can only be done from inside a transaction.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        if (!a() || ((obj instanceof n) && ((n) obj).realmGet$proxyState().f6305c == g.INSTANCE)) {
            return false;
        }
        a aVar = new a();
        while (aVar.hasNext()) {
            if (aVar.next().equals(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i2) {
        this.a.f();
        a aVar = this.a;
        Class<E> cls = this.b;
        String str = this.f6300c;
        OsResults osResults = this.f6301d;
        return (E) aVar.F(cls, str, osResults.f6942d.m(OsResults.nativeGetRow(osResults.a, i2)));
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new b(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E remove(int i2) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E set(int i2, E e2) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public int size() {
        if (!a()) {
            return 0;
        }
        long d2 = this.f6301d.d();
        return d2 > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) d2;
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public void add(int i2, E e2) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i2) {
        return new b(i2);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    public u(a aVar, OsResults osResults, String str) {
        this.a = aVar;
        this.f6301d = osResults;
        this.b = null;
        this.f6300c = str;
    }
}
