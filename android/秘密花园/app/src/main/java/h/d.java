package h;

import f.b.a.a.a;
import h.o.c.g;
import java.io.Serializable;

/* compiled from: Result.kt */
/* loaded from: classes.dex */
public final class d implements Serializable {
    public final Throwable a;

    public d(Throwable th) {
        this.a = th;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        return (obj instanceof d) && g.a(this.a, ((d) obj).a);
    }

    @Override // java.lang.Object
    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = a.o("Failure(");
        o.append(this.a);
        o.append(')');
        return o.toString();
    }
}
