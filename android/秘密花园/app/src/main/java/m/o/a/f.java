package m.o.a;

import m.e;
import m.h;
import m.i;

/* compiled from: OnSubscribeSingle.java */
/* loaded from: classes2.dex */
public class f<T> implements h.a<T> {
    public final e<T> a;

    public f(e<T> eVar) {
        this.a = eVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        i iVar = (i) obj;
        e eVar = new e(this, iVar);
        iVar.a.b(eVar);
        this.a.f(eVar);
    }
}
