package m.o.d.i;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* compiled from: SpscAtomicArrayQueue.java */
/* loaded from: classes2.dex */
public final class b<E> extends a<E> {

    /* renamed from: g  reason: collision with root package name */
    public static final Integer f7383g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: c  reason: collision with root package name */
    public final AtomicLong f7384c;

    /* renamed from: d  reason: collision with root package name */
    public long f7385d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicLong f7386e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7387f;

    public b(int i2) {
        super(i2);
        this.f7384c = new AtomicLong();
        this.f7386e = new AtomicLong();
        this.f7387f = Math.min(i2 / 4, f7383g.intValue());
    }

    public final long b() {
        return this.f7386e.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f7384c.get() == b();
    }

    @Override // java.util.Queue
    public boolean offer(E e2) {
        if (e2 != null) {
            AtomicReferenceArray<E> atomicReferenceArray = this.a;
            int i2 = this.b;
            long j2 = this.f7384c.get();
            int i3 = ((int) j2) & i2;
            if (j2 >= this.f7385d) {
                long j3 = this.f7387f + j2;
                if (atomicReferenceArray.get(i2 & ((int) j3)) == null) {
                    this.f7385d = j3;
                } else if (atomicReferenceArray.get(i3) != null) {
                    return false;
                }
            }
            atomicReferenceArray.lazySet(i3, e2);
            this.f7384c.lazySet(j2 + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // java.util.Queue
    public E peek() {
        return this.a.get(this.b & ((int) this.f7386e.get()));
    }

    @Override // java.util.Queue
    public E poll() {
        long j2 = this.f7386e.get();
        int i2 = ((int) j2) & this.b;
        AtomicReferenceArray<E> atomicReferenceArray = this.a;
        E e2 = atomicReferenceArray.get(i2);
        if (e2 == null) {
            return null;
        }
        atomicReferenceArray.lazySet(i2, null);
        this.f7386e.lazySet(j2 + 1);
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        long b = b();
        while (true) {
            long j2 = this.f7384c.get();
            long b2 = b();
            if (b == b2) {
                return (int) (j2 - b2);
            }
            b = b2;
        }
    }
}
