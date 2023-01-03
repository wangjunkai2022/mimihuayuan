package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.d0.a;
import f.i.b.j;
import f.i.b.z;

/* compiled from: TypeAdapters.java */
/* loaded from: classes.dex */
public final class r implements a0 {
    public final /* synthetic */ Class a;
    public final /* synthetic */ Class b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ z f6042c;

    public r(Class cls, Class cls2, z zVar) {
        this.a = cls;
        this.b = cls2;
        this.f6042c = zVar;
    }

    @Override // f.i.b.a0
    public <T> z<T> a(j jVar, a<T> aVar) {
        Class<? super T> cls = aVar.a;
        if (cls == this.a || cls == this.b) {
            return this.f6042c;
        }
        return null;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Factory[type=");
        o.append(this.a.getName());
        o.append("+");
        o.append(this.b.getName());
        o.append(",adapter=");
        o.append(this.f6042c);
        o.append("]");
        return o.toString();
    }
}
