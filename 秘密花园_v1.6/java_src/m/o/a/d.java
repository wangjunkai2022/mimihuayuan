package m.o.a;

import m.e;
import m.q.l;
/* compiled from: OnSubscribeMap.java */
/* loaded from: classes2.dex */
public final class d<T, R> implements e.a<R> {
    public final m.e<T> a;
    public final m.n.c<? super T, ? extends R> b;

    /* compiled from: OnSubscribeMap.java */
    /* loaded from: classes2.dex */
    public static final class a<T, R> extends m.j<T> {

        /* renamed from: e  reason: collision with root package name */
        public final m.j<? super R> f7318e;

        /* renamed from: f  reason: collision with root package name */
        public final m.n.c<? super T, ? extends R> f7319f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f7320g;

        public a(m.j<? super R> jVar, m.n.c<? super T, ? extends R> cVar) {
            this.f7318e = jVar;
            this.f7319f = cVar;
        }

        @Override // m.j
        public void d() {
            if (this.f7320g) {
                return;
            }
            this.f7318e.d();
        }

        @Override // m.j
        public void e(Throwable th) {
            if (this.f7320g) {
                l.a(th);
                return;
            }
            this.f7320g = true;
            this.f7318e.e(th);
        }

        @Override // m.j
        public void f(T t) {
            try {
                this.f7318e.f(this.f7319f.a(t));
            } catch (Throwable th) {
                j.b.B(th);
                this.a.c();
                e(m.m.f.a(th, t));
            }
        }

        @Override // m.j
        public void i(m.f fVar) {
            this.f7318e.i(fVar);
        }
    }

    public d(m.e<T> eVar, m.n.c<? super T, ? extends R> cVar) {
        this.a = eVar;
        this.b = cVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.j jVar = (m.j) obj;
        a aVar = new a(jVar, this.b);
        jVar.b(aVar);
        this.a.f(aVar);
    }
}
