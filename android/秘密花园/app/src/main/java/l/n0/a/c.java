package l.n0.a;

import f.i.b.e0.a;
import f.i.b.e0.b;
import f.i.b.j;
import f.i.b.p;
import f.i.b.z;
import i.i0;
import java.io.IOException;
import java.io.Reader;
import l.l;

/* compiled from: GsonResponseBodyConverter.java */
/* loaded from: classes2.dex */
public final class c<T> implements l<i0, T> {
    public final j a;
    public final z<T> b;

    public c(j jVar, z<T> zVar) {
        this.a = jVar;
        this.b = zVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // l.l
    public Object a(i0 i0Var) throws IOException {
        i0 i0Var2 = i0Var;
        j jVar = this.a;
        Reader reader = i0Var2.a;
        if (reader == null) {
            reader = new i0.a(i0Var2.G(), i0Var2.f());
            i0Var2.a = reader;
        }
        a h2 = jVar.h(reader);
        try {
            T a = this.b.a(h2);
            if (h2.V() == b.END_DOCUMENT) {
                return a;
            }
            throw new p("JSON document was not fully consumed.");
        } finally {
            i0Var2.close();
        }
    }
}
