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
            return jVar.f6415d.equals(jVar2.f6415d) && jVar.f6416e.equals(jVar2.f6416e) && jVar.f6417f.equals(jVar2.f6417f) && g.a(this.b, kVar.b);
        } else if (obj instanceof h.q.e) {
            return obj.equals(a());
        } else {
            return false;
        }
    }

    public int hashCode() {
        j jVar = (j) this;
        int hashCode = jVar.f6416e.hashCode();
        return jVar.f6417f.hashCode() + ((hashCode + (jVar.f6415d.hashCode() * 31)) * 31);
    }

    public String toString() {
        h.q.a a = a();
        if (a != this) {
            return a.toString();
        }
        return f.b.a.a.a.l(f.b.a.a.a.o("property "), ((j) this).f6416e, " (Kotlin reflection is not available)");
    }
}
