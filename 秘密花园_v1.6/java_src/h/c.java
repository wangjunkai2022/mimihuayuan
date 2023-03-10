package h;

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

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return h.o.c.g.a(this.a, cVar.a) && h.o.c.g.a(this.b, cVar.b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a = this.a;
        int hashCode = (a != null ? a.hashCode() : 0) * 31;
        B b = this.b;
        return hashCode + (b != null ? b.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.a + ", " + this.b + ')';
    }
}
