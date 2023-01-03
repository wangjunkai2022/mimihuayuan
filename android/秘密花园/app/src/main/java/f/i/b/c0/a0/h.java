package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.c0.s;
import f.i.b.e0.c;
import f.i.b.j;
import f.i.b.z;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: ObjectTypeAdapter.java */
/* loaded from: classes.dex */
public final class h extends z<Object> {
    public static final a0 b = new a();
    public final j a;

    /* compiled from: ObjectTypeAdapter.java */
    /* loaded from: classes.dex */
    public static class a implements a0 {
        @Override // f.i.b.a0
        public <T> z<T> a(j jVar, f.i.b.d0.a<T> aVar) {
            if (aVar.a == Object.class) {
                return new h(jVar);
            }
            return null;
        }
    }

    public h(j jVar) {
        this.a = jVar;
    }

    @Override // f.i.b.z
    public Object a(f.i.b.e0.a aVar) throws IOException {
        int ordinal = aVar.V().ordinal();
        if (ordinal == 0) {
            ArrayList arrayList = new ArrayList();
            aVar.d();
            while (aVar.I()) {
                arrayList.add(a(aVar));
            }
            aVar.E();
            return arrayList;
        } else if (ordinal == 2) {
            s sVar = new s();
            aVar.e();
            while (aVar.I()) {
                sVar.put(aVar.P(), a(aVar));
            }
            aVar.F();
            return sVar;
        } else if (ordinal == 5) {
            return aVar.T();
        } else {
            if (ordinal == 6) {
                return Double.valueOf(aVar.M());
            }
            if (ordinal == 7) {
                return Boolean.valueOf(aVar.L());
            }
            if (ordinal == 8) {
                aVar.R();
                return null;
            }
            throw new IllegalStateException();
        }
    }

    @Override // f.i.b.z
    public void b(c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.I();
            return;
        }
        j jVar = this.a;
        Class<?> cls = obj.getClass();
        if (jVar != null) {
            z f2 = jVar.f(new f.i.b.d0.a(cls));
            if (f2 instanceof h) {
                cVar.f();
                cVar.F();
                return;
            }
            f2.b(cVar, obj);
            return;
        }
        throw null;
    }
}
