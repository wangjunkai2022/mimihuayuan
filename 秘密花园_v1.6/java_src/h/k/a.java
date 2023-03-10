package h.k;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
/* compiled from: Collections.kt */
/* loaded from: classes.dex */
public final class a<T> implements Collection<T>, h.o.c.o.a {
    public final T[] a;
    public final boolean b;

    public a(T[] tArr, boolean z) {
        this.a = tArr;
        this.b = z;
    }

    @Override // java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        int i2;
        T[] tArr = this.a;
        if (tArr == null) {
            h.o.c.g.f("$this$contains");
            throw null;
        }
        if (obj == null) {
            int length = tArr.length;
            i2 = 0;
            while (i2 < length) {
                if (tArr[i2] == null) {
                    break;
                }
                i2++;
            }
            i2 = -1;
        } else {
            int length2 = tArr.length;
            for (int i3 = 0; i3 < length2; i3++) {
                if (h.o.c.g.a(obj, tArr[i3])) {
                    i2 = i3;
                    break;
                }
            }
            i2 = -1;
        }
        return i2 >= 0;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        if (collection != null) {
            if (collection.isEmpty()) {
                return true;
            }
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
        h.o.c.g.f("elements");
        throw null;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.a.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        T[] tArr = this.a;
        if (tArr != null) {
            return new h.o.c.a(tArr);
        }
        h.o.c.g.f("array");
        throw null;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.a.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        T[] tArr = this.a;
        boolean z = this.b;
        if (tArr != null) {
            if (z && h.o.c.g.a(tArr.getClass(), Object[].class)) {
                return tArr;
            }
            Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
            h.o.c.g.b(copyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
            return copyOf;
        }
        h.o.c.g.f("$this$copyToArrayOfAny");
        throw null;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) h.o.c.e.b(this, tArr);
    }
}
