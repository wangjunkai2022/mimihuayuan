package l.m0.a;

import j.b;
import l.g0;
import m.e;
import m.j;
import m.m.c;
import m.m.d;
import m.q.o;

/* compiled from: BodyOnSubscribe.java */
/* loaded from: classes2.dex */
public final class a<T> implements e.a<T> {
    public final e.a<g0<T>> a;

    /* compiled from: BodyOnSubscribe.java */
    /* renamed from: l.m0.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0117a<R> extends j<g0<R>> {

        /* renamed from: e  reason: collision with root package name */
        public final j<? super R> f7196e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f7197f;

        public C0117a(j<? super R> jVar) {
            super(jVar, true);
            this.f7196e = jVar;
        }

        @Override // m.j
        public void d() {
            if (!this.f7197f) {
                this.f7196e.d();
            }
        }

        @Override // m.j
        public void e(Throwable th) {
            if (!this.f7197f) {
                this.f7196e.e(th);
                return;
            }
            new AssertionError("This should never happen! Report as a Retrofit bug with the full stacktrace.").initCause(th);
            if (o.f7333f.b() == null) {
                throw null;
            }
        }

        /* JADX DEBUG: Type inference failed for r7v3. Raw type applied. Possible types: T, ? super R */
        @Override // m.j
        public void f(Object obj) {
            g0 g0Var = (g0) obj;
            if (g0Var.a()) {
                this.f7196e.f((T) g0Var.b);
                return;
            }
            this.f7197f = true;
            f fVar = new f(g0Var);
            try {
                this.f7196e.e(fVar);
            } catch (c | d | m.m.e unused) {
                if (o.f7333f.b() == null) {
                    throw null;
                }
            } catch (Throwable th) {
                b.B(th);
                new m.m.a(fVar, th);
                if (o.f7333f.b() == null) {
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
        this.a.a(new C0117a((j) obj));
    }
}
