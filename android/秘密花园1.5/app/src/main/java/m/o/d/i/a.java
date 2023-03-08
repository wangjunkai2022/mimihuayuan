package m.o.d.i;

import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: AtomicReferenceArrayQueue.java */
/* loaded from: classes2.dex */
public abstract class a<E> extends AbstractQueue<E> {
    public final AtomicReferenceArray<E> a;
    public final int b;

    public a(int i2) {
        int v = j.b.v(i2);
        this.b = v - 1;
        this.a = new AtomicReferenceArray<>(v);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }
}
