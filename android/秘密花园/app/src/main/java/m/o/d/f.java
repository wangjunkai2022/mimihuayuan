package m.o.d;

import m.e;
import m.j;
import m.n.c;
import m.o.b.a;
import m.o.d.d;
import m.p.b;

/* compiled from: ScalarSynchronousObservable.java */
/* loaded from: classes2.dex */
public class f implements e.a<R> {
    public final /* synthetic */ c a;
    public final /* synthetic */ d b;

    public f(d dVar, c cVar) {
        this.b = dVar;
        this.a = cVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.f fVar;
        j jVar = (j) obj;
        e eVar = (e) this.a.a(this.b.b);
        if (eVar instanceof d) {
            T t = ((d) eVar).b;
            if (d.f7296c) {
                fVar = new a(jVar, t);
            } else {
                fVar = new d.e(jVar, t);
            }
            jVar.i(fVar);
            return;
        }
        eVar.f(new b(jVar, jVar));
    }
}
