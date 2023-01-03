package h.r;

import h.o.b.b;
import java.util.Iterator;

/* compiled from: Sequences.kt */
/* loaded from: classes.dex */
public final class e<T, R> implements c<R> {
    public final c<T> a;
    public final b<T, R> b;

    /* compiled from: Sequences.kt */
    /* loaded from: classes.dex */
    public static final class a implements Iterator<R>, h.o.c.o.a {
        public final Iterator<T> a;
        public final /* synthetic */ e b;

        /* JADX WARN: Incorrect args count in method signature: ()V */
        public a(e eVar) {
            this.b = eVar;
            this.a = eVar.a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return this.b.b.d(this.a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: h.r.c<? extends T> */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: h.o.b.b<? super T, ? extends R> */
    /* JADX WARN: Multi-variable type inference failed */
    public e(c<? extends T> cVar, b<? super T, ? extends R> bVar) {
        this.a = cVar;
        this.b = bVar;
    }

    @Override // h.r.c
    public Iterator<R> iterator() {
        return new a(this);
    }
}
