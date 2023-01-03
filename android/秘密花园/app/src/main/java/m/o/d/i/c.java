package m.o.d.i;

import j.b;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: SpscExactAtomicArrayQueue.java */
/* loaded from: classes2.dex */
public final class c<T> extends AtomicReferenceArray<T> implements Queue<T> {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicLong f7304c = new AtomicLong();

    /* renamed from: d  reason: collision with root package name */
    public final AtomicLong f7305d = new AtomicLong();

    public c(int i2) {
        super(b.v(i2));
        int length = length();
        this.a = length - 1;
        this.b = length - i2;
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public T element() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f7304c == this.f7305d;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public boolean offer(T t) {
        if (t != null) {
            long j2 = this.f7304c.get();
            int i2 = this.a;
            if (get(((int) (((long) this.b) + j2)) & i2) != null) {
                return false;
            }
            this.f7304c.lazySet(j2 + 1);
            lazySet(i2 & ((int) j2), t);
            return true;
        }
        throw null;
    }

    @Override // java.util.Queue
    public T peek() {
        return get(this.a & ((int) this.f7305d.get()));
    }

    @Override // java.util.Queue
    public T poll() {
        long j2 = this.f7305d.get();
        int i2 = ((int) j2) & this.a;
        T t = get(i2);
        if (t == null) {
            return null;
        }
        this.f7305d.lazySet(j2 + 1);
        lazySet(i2, null);
        return t;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public int size() {
        long j2 = this.f7305d.get();
        while (true) {
            long j3 = this.f7304c.get();
            long j4 = this.f7305d.get();
            if (j2 == j4) {
                return (int) (j3 - j4);
            }
            j2 = j4;
        }
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public T remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        throw new UnsupportedOperationException();
    }
}
