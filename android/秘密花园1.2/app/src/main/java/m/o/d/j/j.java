package m.o.d.j;

/* JADX WARN: Incorrect class signature, class is equals to this class: <E:Ljava/lang/Object;>Lm/o/d/j/j<TE;>; */
/* compiled from: SpscArrayQueue.java */
/* loaded from: classes2.dex */
public final class j<E> extends k {
    public j(int i2) {
        super(i2);
    }

    public final long g() {
        return o.a.getLongVolatile(this, k.f7395h);
    }

    public final long h() {
        return o.a.getLongVolatile(this, n.f7397g);
    }

    public final void i(long j2) {
        o.a.putOrderedLong(this, k.f7395h, j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return h() == g();
    }

    public final void j(long j2) {
        o.a.putOrderedLong(this, n.f7397g, j2);
    }

    @Override // java.util.Queue
    public boolean offer(E e2) {
        if (e2 != null) {
            E[] eArr = this.b;
            long j2 = this.producerIndex;
            long b = b(j2);
            if (d(eArr, b) != null) {
                return false;
            }
            e(eArr, b, e2);
            j(j2 + 1);
            return true;
        }
        throw new NullPointerException("null elements not allowed");
    }

    @Override // java.util.Queue
    public E peek() {
        return d(this.b, b(this.consumerIndex));
    }

    @Override // java.util.Queue, m.o.d.j.c
    public E poll() {
        long j2 = this.consumerIndex;
        long b = b(j2);
        E[] eArr = this.b;
        E d2 = d(eArr, b);
        if (d2 == null) {
            return null;
        }
        e(eArr, b, null);
        i(j2 + 1);
        return d2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        long g2 = g();
        while (true) {
            long h2 = h();
            long g3 = g();
            if (g2 == g3) {
                return (int) (h2 - g3);
            }
            g2 = g3;
        }
    }
}
