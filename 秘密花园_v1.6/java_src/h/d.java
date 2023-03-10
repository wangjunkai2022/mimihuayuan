package h;

import java.io.Serializable;
/* compiled from: Result.kt */
/* loaded from: classes.dex */
public final class d implements Serializable {
    public final Throwable a;

    public d(Throwable th) {
        this.a = th;
    }

    public boolean equals(Object obj) {
        return (obj instanceof d) && h.o.c.g.a(this.a, ((d) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Failure(");
        o.append(this.a);
        o.append(')');
        return o.toString();
    }
}
