package m.o.a;

import m.e;
import m.g;

/* compiled from: OperatorSubscribeOn.java */
/* loaded from: classes2.dex */
public final class j<T> implements e.a<T> {
    public final m.g a;
    public final m.e<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f7266c;

    /* compiled from: OperatorSubscribeOn.java */
    /* loaded from: classes2.dex */
    public static final class a<T> extends m.j<T> implements m.n.a {

        /* renamed from: e  reason: collision with root package name */
        public final m.j<? super T> f7267e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f7268f;

        /* renamed from: g  reason: collision with root package name */
        public final g.a f7269g;

        /* renamed from: h  reason: collision with root package name */
        public m.e<T> f7270h;

        /* renamed from: i  reason: collision with root package name */
        public Thread f7271i;

        /* compiled from: OperatorSubscribeOn.java */
        /* renamed from: m.o.a.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0128a implements m.f {
            public final /* synthetic */ m.f a;

            /* compiled from: OperatorSubscribeOn.java */
            /* renamed from: m.o.a.j$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0129a implements m.n.a {
                public final /* synthetic */ long a;

                public C0129a(long j2) {
                    this.a = j2;
                }

                @Override // m.n.a
                public void call() {
                    C0128a.this.a.b(this.a);
                }
            }

            public C0128a(m.f fVar) {
                this.a = fVar;
            }

            @Override // m.f
            public void b(long j2) {
                if (a.this.f7271i != Thread.currentThread()) {
                    a aVar = a.this;
                    if (aVar.f7268f) {
                        aVar.f7269g.b(new C0129a(j2));
                        return;
                    }
                }
                this.a.b(j2);
            }
        }

        public a(m.j<? super T> jVar, boolean z, g.a aVar, m.e<T> eVar) {
            this.f7267e = jVar;
            this.f7268f = z;
            this.f7269g = aVar;
            this.f7270h = eVar;
        }

        @Override // m.n.a
        public void call() {
            m.e<T> eVar = this.f7270h;
            this.f7270h = null;
            this.f7271i = Thread.currentThread();
            eVar.f(this);
        }

        @Override // m.j
        public void d() {
            try {
                this.f7267e.d();
            } finally {
                this.f7269g.c();
            }
        }

        @Override // m.j
        public void e(Throwable th) {
            try {
                this.f7267e.e(th);
            } finally {
                this.f7269g.c();
            }
        }

        @Override // m.j
        public void f(T t) {
            this.f7267e.f(t);
        }

        @Override // m.j
        public void i(m.f fVar) {
            this.f7267e.i(new C0128a(fVar));
        }
    }

    public j(m.e<T> eVar, m.g gVar, boolean z) {
        this.a = gVar;
        this.b = eVar;
        this.f7266c = z;
    }

    @Override // m.n.b
    public void a(Object obj) {
        m.j jVar = (m.j) obj;
        g.a a2 = this.a.a();
        a aVar = new a(jVar, this.f7266c, a2, this.b);
        jVar.b(aVar);
        jVar.b(a2);
        a2.b(aVar);
    }
}
