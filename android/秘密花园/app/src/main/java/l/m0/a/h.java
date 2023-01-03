package l.m0.a;

import j.b;
import l.g0;
import m.e;
import m.j;
import m.m.c;
import m.m.d;
import m.q.o;

/* compiled from: ResultOnSubscribe.java */
/* loaded from: classes2.dex */
public final class h<T> implements e.a<g<T>> {
    public final e.a<g0<T>> a;

    /* compiled from: ResultOnSubscribe.java */
    /* loaded from: classes2.dex */
    public static class a<R> extends j<g0<R>> {

        /* renamed from: e  reason: collision with root package name */
        public final j<? super g<R>> f7200e;

        public a(j<? super g<R>> jVar) {
            super(jVar, true);
            this.f7200e = jVar;
        }

        @Override // m.j
        public void d() {
            this.f7200e.d();
        }

        @Override // m.j
        public void e(Throwable th) {
            try {
                j<? super g<R>> jVar = this.f7200e;
                if (th != null) {
                    jVar.f(new g(null, th));
                    this.f7200e.d();
                    return;
                }
                throw new NullPointerException("error == null");
            } catch (Throwable th2) {
                try {
                    this.f7200e.e(th2);
                } catch (c | d | m.m.e unused) {
                    if (o.f7333f.b() == null) {
                        throw null;
                    }
                } catch (Throwable th3) {
                    b.B(th3);
                    new m.m.a(th2, th3);
                    if (o.f7333f.b() == null) {
                        throw null;
                    }
                }
            }
        }

        @Override // m.j
        public void f(Object obj) {
            g0 g0Var = (g0) obj;
            j<? super g<R>> jVar = this.f7200e;
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
        this.a.a(new a((j) obj));
    }
}
