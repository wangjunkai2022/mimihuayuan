package f.i.b;

import java.io.IOException;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class g extends z<Number> {
    @Override // f.i.b.z
    public Number a(f.i.b.e0.a aVar) throws IOException {
        if (aVar.V() == f.i.b.e0.b.NULL) {
            aVar.R();
            return null;
        }
        return Long.valueOf(aVar.O());
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            cVar.I();
        } else {
            cVar.Q(number2.toString());
        }
    }
}
