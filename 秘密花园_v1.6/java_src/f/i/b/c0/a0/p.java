package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.z;
/* compiled from: TypeAdapters.java */
/* loaded from: classes.dex */
public final class p implements a0 {
    public final /* synthetic */ Class a;
    public final /* synthetic */ z b;

    public p(Class cls, z zVar) {
        this.a = cls;
        this.b = zVar;
    }

    @Override // f.i.b.a0
    public <T> z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
        if (aVar.a == this.a) {
            return this.b;
        }
        return null;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Factory[type=");
        o.append(this.a.getName());
        o.append(",adapter=");
        o.append(this.b);
        o.append("]");
        return o.toString();
    }
}
