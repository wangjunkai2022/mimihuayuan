package h.o.c;

import c.a.a.b.g.h;
import h.q.b;

/* compiled from: ClassReference.kt */
/* loaded from: classes.dex */
public final class d implements b<Object>, c {
    public final Class<?> a;

    public d(Class<?> cls) {
        if (cls != null) {
            this.a = cls;
        } else {
            g.f("jClass");
            throw null;
        }
    }

    @Override // h.o.c.c
    public Class<?> a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof d) && g.a(h.V(this), h.V((b) obj));
    }

    public int hashCode() {
        return h.V(this).hashCode();
    }

    public String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
