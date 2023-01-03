package f.i.b;

import f.i.b.e0.a;
import f.i.b.e0.b;
import f.i.b.e0.c;
import java.io.IOException;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class g extends z<Number> {
    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.i.b.z
    public Number a(a aVar) throws IOException {
        if (aVar.V() != b.NULL) {
            return Long.valueOf(aVar.O());
        }
        aVar.R();
        return null;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.b.e0.c, java.lang.Object] */
    @Override // f.i.b.z
    public void b(c cVar, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            cVar.I();
        } else {
            cVar.Q(number2.toString());
        }
    }
}
