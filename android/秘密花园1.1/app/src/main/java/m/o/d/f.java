package m.o.d;

import m.e;
import m.j;
import m.o.d.d;

/* compiled from: ScalarSynchronousObservable.java */
/* loaded from: classes2.dex */
public class f implements e.a<R> {
    public final /* synthetic */ m.n.c a;
    public final /* synthetic */ d b;

    public f(d dVar, m.n.c cVar) {
        this.b = dVar;
        this.a = cVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.f eVar;
        j jVar = (j) obj;
        m.e eVar2 = (m.e) this.a.a(this.b.b);
        if (eVar2 instanceof d) {
            T t = ((d) eVar2).b;
            if (d.f7296c) {
                eVar = new m.o.b.a(jVar, t);
            } else {
                eVar = new d.e(jVar, t);
            }
            jVar.i(eVar);
            return;
        }
        eVar2.f(new m.p.b(jVar, jVar));
    }
}
