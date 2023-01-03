package m.o.a;

import m.e;
import m.q.l;

/* compiled from: OnSubscribeLift.java */
/* loaded from: classes2.dex */
public final class c<T, R> implements e.a<R> {
    public final e.a<T> a;
    public final e.b<? extends R, ? super T> b;

    public c(e.a<T> aVar, e.b<? extends R, ? super T> bVar) {
        this.a = aVar;
        this.b = bVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.j jVar = (m.j) obj;
        try {
            e.b bVar = this.b;
            m.n.c<e.b, e.b> cVar = l.f7332i;
            if (cVar != null) {
                bVar = cVar.a(bVar);
            }
            m.j jVar2 = (m.j) bVar.a(jVar);
            jVar2.g();
            this.a.a(jVar2);
        } catch (Throwable th) {
            j.b.B(th);
            jVar.e(th);
        }
    }
}
