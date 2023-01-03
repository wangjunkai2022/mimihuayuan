package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.e0.c;
import f.i.b.j;
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

        /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: java.lang.Class */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, T1] */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // f.i.b.z
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public T1 a(f.i.b.e0.a r4) throws java.io.IOException {
            /*
                r3 = this;
                f.i.b.c0.a0.s r0 = f.i.b.c0.a0.s.this
                f.i.b.z r0 = r0.b
                java.lang.Object r4 = r0.a(r4)
                if (r4 == 0) goto L_0x003c
                java.lang.Class r0 = r3.a
                boolean r0 = r0.isInstance(r4)
                if (r0 == 0) goto L_0x0013
                goto L_0x003c
            L_0x0013:
                f.i.b.w r0 = new f.i.b.w
                java.lang.String r1 = "Expected a "
                java.lang.StringBuilder r1 = f.b.a.a.a.o(r1)
                java.lang.Class r2 = r3.a
                java.lang.String r2 = r2.getName()
                r1.append(r2)
                java.lang.String r2 = " but was "
                r1.append(r2)
                java.lang.Class r4 = r4.getClass()
                java.lang.String r4 = r4.getName()
                r1.append(r4)
                java.lang.String r4 = r1.toString()
                r0.<init>(r4)
                throw r0
            L_0x003c:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.s.a.a(f.i.b.e0.a):java.lang.Object");
        }

        @Override // f.i.b.z
        public void b(c cVar, T1 t1) throws IOException {
            s.this.b.b(cVar, t1);
        }
    }

    public s(Class cls, z zVar) {
        this.a = cls;
        this.b = zVar;
    }

    @Override // f.i.b.a0
    public <T2> z<T2> a(j jVar, f.i.b.d0.a<T2> aVar) {
        Class<? super T2> cls = aVar.a;
        if (!this.a.isAssignableFrom(cls)) {
            return null;
        }
        return new a(cls);
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
