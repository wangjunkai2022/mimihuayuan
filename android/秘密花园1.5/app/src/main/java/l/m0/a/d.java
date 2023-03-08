package l.m0.a;

import l.g0;
import m.e;

/* compiled from: CallEnqueueOnSubscribe.java */
/* loaded from: classes2.dex */
public final class d<T> implements e.a<g0<T>> {
    public final l.d<T> a;

    public d(l.d<T> dVar) {
        this.a = dVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.j jVar = (m.j) obj;
        l.d<T> V = this.a.V();
        b bVar = new b(V, jVar);
        jVar.b(bVar);
        jVar.i(bVar);
        V.X(new c(this, bVar));
    }
}
