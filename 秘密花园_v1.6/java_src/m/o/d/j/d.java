package m.o.d.j;
/* JADX WARN: Incorrect class signature, class is equals to this class: <E:Ljava/lang/Object;>Lm/o/d/j/d<TE;>; */
/* compiled from: SpmcArrayQueue.java */
/* loaded from: classes2.dex */
public final class d<E> extends i {
    public d(int i2) {
        super(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.consumerIndex == this.producerIndex;
    }

    @Override // java.util.Queue
    public boolean offer(E e2) {
        if (e2 != null) {
            E[] eArr = this.b;
            long j2 = this.a;
            long j3 = this.producerIndex;
            long b = b(j3);
            if (d(eArr, b) != null) {
                if (j3 - this.consumerIndex > j2) {
                    return false;
                }
                do {
                } while (d(eArr, b) != null);
                f(eArr, b, e2);
                g(j3 + 1);
                return true;
            }
            f(eArr, b, e2);
            g(j3 + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // java.util.Queue
    public E peek() {
        E d2;
        long j2 = this.f7403h;
        do {
            long j3 = this.consumerIndex;
            if (j3 >= j2) {
                long j4 = this.producerIndex;
                if (j3 >= j4) {
                    return null;
                }
                this.f7403h = j4;
            }
            d2 = d(this.b, b(j3));
        } while (d2 == null);
        return d2;
    }

    @Override // java.util.Queue, m.o.d.j.c
    public E poll() {
        long j2;
        long j3 = this.f7403h;
        do {
            j2 = this.consumerIndex;
            if (j2 >= j3) {
                long j4 = this.producerIndex;
                if (j2 >= j4) {
                    return null;
                }
                this.f7403h = j4;
            }
        } while (!h(j2, 1 + j2));
        long b = b(j2);
        E[] eArr = this.b;
        E c2 = c(eArr, b);
        e(eArr, b, null);
        return c2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        long j2 = this.consumerIndex;
        while (true) {
            long j3 = this.producerIndex;
            long j4 = this.consumerIndex;
            if (j2 == j4) {
                return (int) (j3 - j4);
            }
            j2 = j4;
        }
    }
}
