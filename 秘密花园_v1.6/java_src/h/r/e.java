package h.r;

import java.util.Iterator;
/* compiled from: Sequences.kt */
/* loaded from: classes.dex */
public final class e<T, R> implements c<R> {
    public final c<T> a;
    public final h.o.b.b<T, R> b;

    /* compiled from: Sequences.kt */
    /* loaded from: classes.dex */
    public static final class a implements Iterator<R>, h.o.c.o.a {
        public final Iterator<T> a;

        public a() {
            this.a = e.this.a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return e.this.b.d(this.a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(c<? extends T> cVar, h.o.b.b<? super T, ? extends R> bVar) {
        this.a = cVar;
        this.b = bVar;
    }

    @Override // h.r.c
    public Iterator<R> iterator() {
        return new a();
    }
}
