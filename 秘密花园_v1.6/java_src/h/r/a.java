package h.r;

import h.o.c.g;
import java.util.Iterator;
/* compiled from: Sequences.kt */
/* loaded from: classes.dex */
public final class a<T> implements c<T>, b<T> {
    public final c<T> a;
    public final int b;

    /* compiled from: Sequences.kt */
    /* renamed from: h.r.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0103a implements Iterator<T>, h.o.c.o.a {
        public final Iterator<T> a;
        public int b;

        public C0103a(a aVar) {
            this.a = aVar.a.iterator();
            this.b = aVar.b;
        }

        public final void a() {
            while (this.b > 0 && this.a.hasNext()) {
                this.a.next();
                this.b--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            return this.a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(c<? extends T> cVar, int i2) {
        if (cVar == 0) {
            g.f("sequence");
            throw null;
        }
        this.a = cVar;
        this.b = i2;
        if (i2 >= 0) {
            return;
        }
        StringBuilder o = f.b.a.a.a.o("count must be non-negative, but was ");
        o.append(this.b);
        o.append('.');
        throw new IllegalArgumentException(o.toString().toString());
    }

    @Override // h.r.b
    public c<T> a(int i2) {
        int i3 = this.b + i2;
        return i3 < 0 ? new a(this, i2) : new a(this.a, i3);
    }

    @Override // h.r.c
    public Iterator<T> iterator() {
        return new C0103a(this);
    }
}
