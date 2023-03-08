package h.o.c;

/* compiled from: ClassReference.kt */
/* loaded from: classes.dex */
public final class d implements h.q.b<Object>, c {
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
        return (obj instanceof d) && g.a(c.a.a.b.g.h.V(this), c.a.a.b.g.h.V((h.q.b) obj));
    }

    public int hashCode() {
        return c.a.a.b.g.h.V(this).hashCode();
    }

    public String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
