package m.o.d.i;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: SpscUnboundedAtomicArrayQueue.java */
/* loaded from: classes2.dex */
public final class d<T> implements Queue<T> {

    /* renamed from: i  reason: collision with root package name */
    public static final int f7306i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j  reason: collision with root package name */
    public static final Object f7307j = new Object();
    public final AtomicLong a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public long f7308c;

    /* renamed from: d  reason: collision with root package name */
    public int f7309d;

    /* renamed from: e  reason: collision with root package name */
    public AtomicReferenceArray<Object> f7310e;

    /* renamed from: f  reason: collision with root package name */
    public int f7311f;

    /* renamed from: g  reason: collision with root package name */
    public AtomicReferenceArray<Object> f7312g;

    /* renamed from: h  reason: collision with root package name */
    public final AtomicLong f7313h;

    public d(int i2) {
        int v = j.b.v(Math.max(8, i2));
        int i3 = v - 1;
        this.a = new AtomicLong();
        this.f7313h = new AtomicLong();
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(v + 1);
        this.f7310e = atomicReferenceArray;
        this.f7309d = i3;
        this.b = Math.min(v / 4, f7306i);
        this.f7312g = atomicReferenceArray;
        this.f7311f = i3;
        this.f7308c = i3 - 1;
        this.a.lazySet(0L);
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    public final long b() {
        return this.f7313h.get();
    }

    public final boolean c(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j2, int i2) {
        this.a.lazySet(j2 + 1);
        atomicReferenceArray.lazySet(i2, t);
        return true;
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
        return this.a.get() == b();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue
    public boolean offer(T t) {
        if (t != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.f7310e;
            long j2 = this.a.get();
            int i2 = this.f7309d;
            int i3 = ((int) j2) & i2;
            if (j2 < this.f7308c) {
                c(atomicReferenceArray, t, j2, i3);
                return true;
            }
            long j3 = this.b + j2;
            if (atomicReferenceArray.get(((int) j3) & i2) == null) {
                this.f7308c = j3 - 1;
                this.a.lazySet(j2 + 1);
                atomicReferenceArray.lazySet(i3, t);
                return true;
            }
            long j4 = j2 + 1;
            if (atomicReferenceArray.get(((int) j4) & i2) != null) {
                this.a.lazySet(j4);
                atomicReferenceArray.lazySet(i3, t);
                return true;
            }
            AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
            this.f7310e = atomicReferenceArray2;
            this.f7308c = (i2 + j2) - 1;
            this.a.lazySet(j4);
            atomicReferenceArray2.lazySet(i3, t);
            atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
            atomicReferenceArray.lazySet(i3, f7307j);
            return true;
        }
        throw null;
    }

    @Override // java.util.Queue
    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f7312g;
        int i2 = ((int) this.f7313h.get()) & this.f7311f;
        T t = (T) atomicReferenceArray.get(i2);
        if (t == f7307j) {
            AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(atomicReferenceArray.length() - 1);
            this.f7312g = atomicReferenceArray2;
            return (T) atomicReferenceArray2.get(i2);
        }
        return t;
    }

    @Override // java.util.Queue
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f7312g;
        long j2 = this.f7313h.get();
        int i2 = this.f7311f & ((int) j2);
        T t = (T) atomicReferenceArray.get(i2);
        boolean z = t == f7307j;
        if (t != null && !z) {
            this.f7313h.lazySet(j2 + 1);
            atomicReferenceArray.lazySet(i2, null);
            return t;
        } else if (z) {
            AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(atomicReferenceArray.length() - 1);
            this.f7312g = atomicReferenceArray2;
            T t2 = (T) atomicReferenceArray2.get(i2);
            if (t2 == null) {
                return null;
            }
            this.f7313h.lazySet(j2 + 1);
            atomicReferenceArray2.lazySet(i2, null);
            return t2;
        } else {
            return null;
        }
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
        long b = b();
        while (true) {
            long j2 = this.a.get();
            long b2 = b();
            if (b == b2) {
                return (int) (j2 - b2);
            }
            b = b2;
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
