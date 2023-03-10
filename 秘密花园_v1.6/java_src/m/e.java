package m;

import m.o.a.g;
import m.q.l;
/* compiled from: Observable.java */
/* loaded from: classes2.dex */
public class e<T> {
    public final a<T> a;

    /* compiled from: Observable.java */
    /* loaded from: classes2.dex */
    public interface a<T> extends m.n.b<j<? super T>> {
    }

    /* compiled from: Observable.java */
    /* loaded from: classes2.dex */
    public interface b<R, T> extends m.n.c<j<? super R>, j<? super T>> {
    }

    public e(a<T> aVar) {
        this.a = aVar;
    }

    public static <T> e<T> e(a<T> aVar) {
        m.n.c<a, a> cVar = l.b;
        if (cVar != null) {
            aVar = cVar.a(aVar);
        }
        return new e<>(aVar);
    }

    public final <R> e<R> a(m.n.c<? super T, ? extends e<? extends R>> cVar) {
        if (getClass() == m.o.d.d.class) {
            return e(new m.o.d.f((m.o.d.d) this, cVar));
        }
        e e2 = e(new m.o.a.d(this, cVar));
        if (e2.getClass() == m.o.d.d.class) {
            return e(new m.o.d.f((m.o.d.d) e2, m.o.d.h.INSTANCE));
        }
        return e(new m.o.a.c(e2.a, g.a.a));
    }

    public final e<T> b(g gVar) {
        int i2 = m.o.d.b.f7379c;
        if (this instanceof m.o.d.d) {
            return ((m.o.d.d) this).g(gVar);
        }
        return e(new m.o.a.c(this.a, new m.o.a.i(gVar, false, i2)));
    }

    public final k c(j<? super T> jVar) {
        if (jVar != null) {
            if (this.a != null) {
                jVar.g();
                if (!(jVar instanceof m.p.a)) {
                    jVar = new m.p.a(jVar);
                }
                try {
                    a aVar = this.a;
                    m.n.d<e, a, a> dVar = l.f7412e;
                    if (dVar != null) {
                        aVar = dVar.a(this, aVar);
                    }
                    aVar.a(jVar);
                    m.n.c<k, k> cVar = l.f7414g;
                    return cVar != null ? cVar.a(jVar) : jVar;
                } catch (Throwable th) {
                    j.b.B(th);
                    if (jVar.a.b) {
                        l.a(l.b(th));
                    } else {
                        try {
                            jVar.e(l.b(th));
                        } catch (Throwable th2) {
                            j.b.B(th2);
                            StringBuilder o = f.b.a.a.a.o("Error occurred attempting to subscribe [");
                            o.append(th.getMessage());
                            o.append("] and then again while trying to pass to onError.");
                            m.m.d dVar2 = new m.m.d(o.toString(), th2);
                            l.b(dVar2);
                            throw dVar2;
                        }
                    }
                    return m.s.b.a;
                }
            }
            throw new IllegalStateException("onSubscribe function can not be null.");
        }
        throw new IllegalArgumentException("subscriber can not be null");
    }

    public final e<T> d(g gVar) {
        if (this instanceof m.o.d.d) {
            return ((m.o.d.d) this).g(gVar);
        }
        return e(new m.o.a.j(this, gVar, true));
    }

    public final k f(j<? super T> jVar) {
        try {
            jVar.g();
            a aVar = this.a;
            m.n.d<e, a, a> dVar = l.f7412e;
            if (dVar != null) {
                aVar = dVar.a(this, aVar);
            }
            aVar.a(jVar);
            m.n.c<k, k> cVar = l.f7414g;
            return cVar != null ? cVar.a(jVar) : jVar;
        } catch (Throwable th) {
            j.b.B(th);
            try {
                jVar.e(l.b(th));
                return m.s.b.a;
            } catch (Throwable th2) {
                j.b.B(th2);
                StringBuilder o = f.b.a.a.a.o("Error occurred attempting to subscribe [");
                o.append(th.getMessage());
                o.append("] and then again while trying to pass to onError.");
                m.m.d dVar2 = new m.m.d(o.toString(), th2);
                l.b(dVar2);
                throw dVar2;
            }
        }
    }
}
