package l.m0.a;

import l.g0;
import m.e;
import m.q.o;
/* compiled from: ResultOnSubscribe.java */
/* loaded from: classes2.dex */
public final class h<T> implements e.a<g<T>> {
    public final e.a<g0<T>> a;

    /* compiled from: ResultOnSubscribe.java */
    /* loaded from: classes2.dex */
    public static class a<R> extends m.j<g0<R>> {

        /* renamed from: e  reason: collision with root package name */
        public final m.j<? super g<R>> f7284e;

        public a(m.j<? super g<R>> jVar) {
            super(jVar, true);
            this.f7284e = jVar;
        }

        @Override // m.j
        public void d() {
            this.f7284e.d();
        }

        @Override // m.j
        public void e(Throwable th) {
            try {
                m.j<? super g<R>> jVar = this.f7284e;
                if (th != null) {
                    jVar.f(new g(null, th));
                    this.f7284e.d();
                    return;
                }
                throw new NullPointerException("error == null");
            } catch (Throwable th2) {
                try {
                    this.f7284e.e(th2);
                } catch (m.m.c | m.m.d | m.m.e unused) {
                    if (o.f7417f.b() == null) {
                        throw null;
                    }
                } catch (Throwable th3) {
                    j.b.B(th3);
                    new m.m.a(th2, th3);
                    if (o.f7417f.b() == null) {
                        throw null;
                    }
                }
            }
        }

        @Override // m.j
        public void f(Object obj) {
            g0 g0Var = (g0) obj;
            m.j<? super g<R>> jVar = this.f7284e;
            if (g0Var != null) {
                jVar.f(new g(g0Var, null));
                return;
            }
            throw new NullPointerException("response == null");
        }
    }

    public h(e.a<g0<T>> aVar) {
        this.a = aVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        this.a.a(new a((m.j) obj));
    }
}
