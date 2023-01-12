package m.o.d.j;

import java.util.Iterator;

/* compiled from: ConcurrentCircularArrayQueue.java */
/* loaded from: classes2.dex */
public abstract class a<E> extends b<E> {

    /* renamed from: c  reason: collision with root package name */
    public static final int f7389c = Integer.getInteger("sparse.shift", 0).intValue();

    /* renamed from: d  reason: collision with root package name */
    public static final long f7390d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f7391e;
    public final long a;
    public final E[] b;

    static {
        int arrayIndexScale = o.a.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            f7391e = f7389c + 2;
        } else if (8 == arrayIndexScale) {
            f7391e = f7389c + 3;
        } else {
            throw new IllegalStateException("Unknown pointer size");
        }
        f7390d = o.a.arrayBaseOffset(Object[].class) + (32 << (f7391e - f7389c));
    }

    public a(int i2) {
        int v = j.b.v(i2);
        this.a = v - 1;
        this.b = (E[]) new Object[(v << f7389c) + 64];
    }

    public final long b(long j2) {
        return f7390d + ((j2 & this.a) << f7391e);
    }

    public final E c(E[] eArr, long j2) {
        return (E) o.a.getObject(eArr, j2);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    public final E d(E[] eArr, long j2) {
        return (E) o.a.getObjectVolatile(eArr, j2);
    }

    public final void e(E[] eArr, long j2, E e2) {
        o.a.putOrderedObject(eArr, j2, e2);
    }

    public final void f(E[] eArr, long j2, E e2) {
        o.a.putObject(eArr, j2, e2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }
}
