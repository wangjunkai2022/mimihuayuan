package h.o.c;

/* compiled from: PropertyReference.java */
/* loaded from: classes.dex */
public abstract class k extends b implements h.q.e {
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            j jVar = (j) this;
            j jVar2 = (j) kVar;
            return jVar.f6406d.equals(jVar2.f6406d) && jVar.f6407e.equals(jVar2.f6407e) && jVar.f6408f.equals(jVar2.f6408f) && g.a(this.b, kVar.b);
        } else if (obj instanceof h.q.e) {
            return obj.equals(a());
        } else {
            return false;
        }
    }

    public int hashCode() {
        j jVar = (j) this;
        int hashCode = jVar.f6407e.hashCode();
        return jVar.f6408f.hashCode() + ((hashCode + (jVar.f6406d.hashCode() * 31)) * 31);
    }

    public String toString() {
        h.q.a a = a();
        if (a != this) {
            return a.toString();
        }
        return f.b.a.a.a.l(f.b.a.a.a.o("property "), ((j) this).f6407e, " (Kotlin reflection is not available)");
    }
}
