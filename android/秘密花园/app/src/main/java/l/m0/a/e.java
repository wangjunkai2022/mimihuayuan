package l.m0.a;

import j.b;
import l.d;
import l.g0;
import m.e;
import m.j;

/* compiled from: CallExecuteOnSubscribe.java */
/* loaded from: classes2.dex */
public final class e<T> implements e.a<g0<T>> {
    public final d<T> a;

    public e(d<T> dVar) {
        this.a = dVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        j jVar = (j) obj;
        d<T> V = this.a.V();
        b bVar = new b(V, jVar);
        jVar.b(bVar);
        jVar.i(bVar);
        try {
            bVar.f(V.T());
        } catch (Throwable th) {
            b.B(th);
            bVar.e(th);
        }
    }
}
