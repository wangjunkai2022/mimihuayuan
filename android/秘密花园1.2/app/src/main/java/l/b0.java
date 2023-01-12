package l;

import java.io.IOException;
import java.lang.reflect.Array;

/* compiled from: ParameterHandler.java */
/* loaded from: classes2.dex */
public class b0 extends c0<Object> {
    public final /* synthetic */ c0 a;

    public b0(c0 c0Var) {
        this.a = c0Var;
    }

    @Override // l.c0
    public void a(e0 e0Var, Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.a.a(e0Var, Array.get(obj, i2));
        }
    }
}
