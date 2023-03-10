package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
/* compiled from: TypeAdapters.java */
/* loaded from: classes.dex */
public final class s implements a0 {
    public final /* synthetic */ Class a;
    public final /* synthetic */ z b;

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes.dex */
    public class a extends z<T1> {
        public final /* synthetic */ Class a;

        public a(Class cls) {
            this.a = cls;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, T1] */
        @Override // f.i.b.z
        public T1 a(f.i.b.e0.a aVar) throws IOException {
            ?? a = s.this.b.a(aVar);
            if (a == 0 || this.a.isInstance(a)) {
                return a;
            }
            StringBuilder o = f.b.a.a.a.o("Expected a ");
            o.append(this.a.getName());
            o.append(" but was ");
            o.append(a.getClass().getName());
            throw new w(o.toString());
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, T1 t1) throws IOException {
            s.this.b.b(cVar, t1);
        }
    }

    public s(Class cls, z zVar) {
        this.a = cls;
        this.b = zVar;
    }

    @Override // f.i.b.a0
    public <T2> z<T2> a(f.i.b.j jVar, f.i.b.d0.a<T2> aVar) {
        Class<? super T2> cls = aVar.a;
        if (this.a.isAssignableFrom(cls)) {
            return new a(cls);
        }
        return null;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Factory[typeHierarchy=");
        o.append(this.a.getName());
        o.append(",adapter=");
        o.append(this.b);
        o.append("]");
        return o.toString();
    }
}
