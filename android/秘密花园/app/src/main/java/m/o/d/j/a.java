package m.o.d.j;

import j.b;
import java.util.Iterator;

/* compiled from: ConcurrentCircularArrayQueue.java */
/* loaded from: classes2.dex */
public abstract class a<E> extends b<E> {

    /* renamed from: c  reason: collision with root package name */
    public static final int f7314c = Integer.getInteger("sparse.shift", 0).intValue();

    /* renamed from: d  reason: collision with root package name */
    public static final long f7315d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f7316e;
    public final long a;
    public final E[] b;

    static {
        int arrayIndexScale = o.a.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            f7316e = f7314c + 2;
        } else if (8 == arrayIndexScale) {
            f7316e = f7314c + 3;
        } else {
            throw new IllegalStateException("Unknown pointer size");
        }
        f7315d = (long) (o.a.arrayBaseOffset(Object[].class) + (32 << (f7316e - f7314c)));
    }

    public a(int i2) {
        int v = b.v(i2);
        this.a = (long) (v - 1);
        this.b = (E[]) new Object[(v << f7314c) + 64];
    }

    public final long b(long j2) {
        return f7315d + ((j2 & this.a) << f7316e);
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
