package h;

import h.o.c.g;
import java.io.Serializable;

/* compiled from: Tuples.kt */
/* loaded from: classes.dex */
public final class c<A, B> implements Serializable {
    public final A a;
    public final B b;

    public c(A a, B b) {
        this.a = a;
        this.b = b;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return g.a(this.a, cVar.a) && g.a(this.b, cVar.b);
    }

    @Override // java.lang.Object
    public int hashCode() {
        A a = this.a;
        int i2 = 0;
        int hashCode = (a != null ? a.hashCode() : 0) * 31;
        B b = this.b;
        if (b != null) {
            i2 = b.hashCode();
        }
        return hashCode + i2;
    }

    @Override // java.lang.Object
    public String toString() {
        return '(' + this.a + ", " + this.b + ')';
    }
}
