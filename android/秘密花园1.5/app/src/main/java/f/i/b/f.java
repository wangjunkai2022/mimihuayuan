package f.i.b;

import java.io.IOException;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public class f extends z<Number> {
    public f(j jVar) {
    }

    @Override // f.i.b.z
    public Number a(f.i.b.e0.a aVar) throws IOException {
        if (aVar.V() == f.i.b.e0.b.NULL) {
            aVar.R();
            return null;
        }
        return Float.valueOf((float) aVar.M());
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            cVar.I();
            return;
        }
        j.b(number2.floatValue());
        cVar.P(number2);
    }
}
