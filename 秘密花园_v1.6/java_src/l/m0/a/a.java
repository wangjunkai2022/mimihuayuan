package l.m0.a;

import l.g0;
import m.e;
import m.q.o;
/* compiled from: BodyOnSubscribe.java */
/* loaded from: classes2.dex */
public final class a<T> implements e.a<T> {
    public final e.a<g0<T>> a;

    /* compiled from: BodyOnSubscribe.java */
    /* renamed from: l.m0.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0124a<R> extends m.j<g0<R>> {

        /* renamed from: e  reason: collision with root package name */
        public final m.j<? super R> f7280e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f7281f;

        public C0124a(m.j<? super R> jVar) {
            super(jVar, true);
            this.f7280e = jVar;
        }

        @Override // m.j
        public void d() {
            if (this.f7281f) {
                return;
            }
            this.f7280e.d();
        }

        @Override // m.j
        public void e(Throwable th) {
            if (!this.f7281f) {
                this.f7280e.e(th);
                return;
            }
            new AssertionError("This should never happen! Report as a Retrofit bug with the full stacktrace.").initCause(th);
            if (o.f7417f.b() == null) {
                throw null;
            }
        }

        @Override // m.j
        public void f(Object obj) {
            g0 g0Var = (g0) obj;
            if (g0Var.a()) {
                this.f7280e.f((T) g0Var.b);
                return;
            }
            this.f7281f = true;
            f fVar = new f(g0Var);
            try {
                this.f7280e.e(fVar);
            } catch (m.m.c | m.m.d | m.m.e unused) {
                if (o.f7417f.b() == null) {
                    throw null;
                }
            } catch (Throwable th) {
                j.b.B(th);
                new m.m.a(fVar, th);
                if (o.f7417f.b() == null) {
                    throw null;
                }
            }
        }
    }

    public a(e.a<g0<T>> aVar) {
        this.a = aVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        this.a.a(new C0124a((m.j) obj));
    }
}
