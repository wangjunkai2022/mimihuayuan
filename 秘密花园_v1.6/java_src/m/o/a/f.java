package m.o.a;

import m.h;
/* compiled from: OnSubscribeSingle.java */
/* loaded from: classes2.dex */
public class f<T> implements h.a<T> {
    public final m.e<T> a;

    public f(m.e<T> eVar) {
        this.a = eVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.i iVar = (m.i) obj;
        e eVar = new e(this, iVar);
        iVar.a.b(eVar);
        this.a.f(eVar);
    }
}
