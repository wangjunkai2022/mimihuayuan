package l;

import java.io.IOException;

/* compiled from: ParameterHandler.java */
/* loaded from: classes2.dex */
public class a0 extends c0<Iterable<T>> {
    public final /* synthetic */ c0 a;

    public a0(c0 c0Var) {
        this.a = c0Var;
    }

    @Override // l.c0
    public void a(e0 e0Var, Object obj) throws IOException {
        Iterable<Object> iterable = (Iterable) obj;
        if (iterable == null) {
            return;
        }
        for (Object obj2 : iterable) {
            this.a.a(e0Var, obj2);
        }
    }
}
