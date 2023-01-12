package f.i.b;

import java.io.IOException;
import java.io.StringWriter;

/* compiled from: JsonElement.java */
/* loaded from: classes.dex */
public abstract class o {
    public t b() {
        if (this instanceof t) {
            return (t) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            f.i.b.e0.c cVar = new f.i.b.e0.c(stringWriter);
            cVar.f6169f = true;
            f.i.b.c0.a0.o.X.b(cVar, this);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
