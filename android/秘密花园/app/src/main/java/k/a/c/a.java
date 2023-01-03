package k.a.c;

import java.util.ArrayList;
import java.util.Collection;

/* compiled from: ChangeNotifyingArrayList.java */
/* loaded from: classes.dex */
public abstract class a<E> extends ArrayList<E> {
    public a(int i2) {
        super(i2);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList
    public boolean add(E e2) {
        b();
        return super.add(e2);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        b();
        return super.addAll(collection);
    }

    public abstract void b();

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList
    public void clear() {
        b();
        super.clear();
    }

    @Override // java.util.ArrayList, java.util.List, java.util.AbstractList
    public E remove(int i2) {
        b();
        return (E) super.remove(i2);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        b();
        return super.removeAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    public void removeRange(int i2, int i3) {
        b();
        super.removeRange(i2, i3);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        b();
        return super.retainAll(collection);
    }

    @Override // java.util.ArrayList, java.util.List, java.util.AbstractList
    public E set(int i2, E e2) {
        b();
        return (E) super.set(i2, e2);
    }

    @Override // java.util.ArrayList, java.util.List, java.util.AbstractList
    public void add(int i2, E e2) {
        b();
        super.add(i2, e2);
    }

    @Override // java.util.ArrayList, java.util.List, java.util.AbstractList
    public boolean addAll(int i2, Collection<? extends E> collection) {
        b();
        return super.addAll(i2, collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        b();
        return super.remove(obj);
    }
}
