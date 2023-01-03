package m.o.a;

import j.b;
import m.e;
import m.j;
import m.m.f;
import m.n.c;
import m.q.l;

/* compiled from: OnSubscribeMap.java */
/* loaded from: classes2.dex */
public final class d<T, R> implements e.a<R> {
    public final e<T> a;
    public final c<? super T, ? extends R> b;

    /* compiled from: OnSubscribeMap.java */
    /* loaded from: classes2.dex */
    public static final class a<T, R> extends j<T> {

        /* renamed from: e  reason: collision with root package name */
        public final j<? super R> f7234e;

        /* renamed from: f  reason: collision with root package name */
        public final c<? super T, ? extends R> f7235f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f7236g;

        public a(j<? super R> jVar, c<? super T, ? extends R> cVar) {
            this.f7234e = jVar;
            this.f7235f = cVar;
        }

        @Override // m.j
        public void d() {
            if (!this.f7236g) {
                this.f7234e.d();
            }
        }

        @Override // m.j
        public void e(Throwable th) {
            if (this.f7236g) {
                l.a(th);
                return;
            }
            this.f7236g = true;
            this.f7234e.e(th);
        }

        @Override // m.j
        public void f(T t) {
            try {
                this.f7234e.f(this.f7235f.a(t));
            } catch (Throwable th) {
                b.B(th);
                this.a.c();
                e(f.a(th, t));
            }
        }

        @Override // m.j
        public void i(m.f fVar) {
            this.f7234e.i(fVar);
        }
    }

    public d(e<T> eVar, c<? super T, ? extends R> cVar) {
        this.a = eVar;
        this.b = cVar;
    }

    @Override // m.n.b
    public void a(Object obj) {
        j jVar = (j) obj;
        a aVar = new a(jVar, this.b);
        jVar.b(aVar);
        this.a.f(aVar);
    }
}
