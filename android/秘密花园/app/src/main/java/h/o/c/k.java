package h.o.c;

import h.q.a;
import h.q.e;

/* compiled from: PropertyReference.java */
/* loaded from: classes.dex */
public abstract class k extends b implements e {
    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            j jVar = (j) this;
            j jVar2 = (j) kVar;
            if (!jVar.f6331d.equals(jVar2.f6331d) || !jVar.f6332e.equals(jVar2.f6332e) || !jVar.f6333f.equals(jVar2.f6333f) || !g.a(this.b, kVar.b)) {
                return false;
            }
            return true;
        } else if (obj instanceof e) {
            return obj.equals(a());
        } else {
            return false;
        }
    }

    @Override // java.lang.Object
    public int hashCode() {
        j jVar = (j) this;
        int hashCode = jVar.f6332e.hashCode();
        return jVar.f6333f.hashCode() + ((hashCode + (jVar.f6331d.hashCode() * 31)) * 31);
    }

    @Override // java.lang.Object
    public String toString() {
        a a = a();
        if (a != this) {
            return a.toString();
        }
        return f.b.a.a.a.l(f.b.a.a.a.o("property "), ((j) this).f6332e, " (Kotlin reflection is not available)");
    }
}
