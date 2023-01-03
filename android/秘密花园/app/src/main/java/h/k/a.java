package h.k;

import h.o.c.e;
import h.o.c.g;
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

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0027 A[ORIG_RETURN, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // java.util.Collection
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean contains(java.lang.Object r6) {
        /*
            r5 = this;
            T[] r0 = r5.a
            if (r0 == 0) goto L_0x0029
            r1 = 0
            if (r6 != 0) goto L_0x0013
            int r6 = r0.length
            r2 = 0
        L_0x0009:
            if (r2 >= r6) goto L_0x0024
            r3 = r0[r2]
            if (r3 != 0) goto L_0x0010
            goto L_0x0025
        L_0x0010:
            int r2 = r2 + 1
            goto L_0x0009
        L_0x0013:
            int r2 = r0.length
            r3 = 0
        L_0x0015:
            if (r3 >= r2) goto L_0x0024
            r4 = r0[r3]
            boolean r4 = h.o.c.g.a(r6, r4)
            if (r4 == 0) goto L_0x0021
            r2 = r3
            goto L_0x0025
        L_0x0021:
            int r3 = r3 + 1
            goto L_0x0015
        L_0x0024:
            r2 = -1
        L_0x0025:
            if (r2 < 0) goto L_0x0028
            r1 = 1
        L_0x0028:
            return r1
        L_0x0029:
            java.lang.String r6 = "$this$contains"
            h.o.c.g.f(r6)
            r6 = 0
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: h.k.a.contains(java.lang.Object):boolean");
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        if (collection == null) {
            g.f("elements");
            throw null;
        } else if (collection.isEmpty()) {
            return true;
        } else {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
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
        g.f("array");
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
        if (tArr == null) {
            g.f("$this$copyToArrayOfAny");
            throw null;
        } else if (z && g.a(tArr.getClass(), Object[].class)) {
            return tArr;
        } else {
            Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
            g.b(copyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
            return copyOf;
        }
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) e.b(this, tArr);
    }
}
