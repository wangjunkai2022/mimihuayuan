package m.o.d;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import m.e;
import m.f;
import m.g;
import m.j;
import m.k;

/* compiled from: ScalarSynchronousObservable.java */
/* loaded from: classes2.dex */
public final class d<T> extends m.e<T> {

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f7296c = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();
    public final T b;

    /* compiled from: ScalarSynchronousObservable.java */
    /* loaded from: classes2.dex */
    public class a implements m.n.c<m.n.a, k> {
        public final /* synthetic */ m.o.c.c a;

        public a(d dVar, m.o.c.c cVar) {
            this.a = cVar;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.n.c
        public k a(m.n.a aVar) {
            return this.a.b.get().a().e(aVar, -1, TimeUnit.NANOSECONDS);
        }
    }

    /* compiled from: ScalarSynchronousObservable.java */
    /* loaded from: classes2.dex */
    public class b implements m.n.c<m.n.a, k> {
        public final /* synthetic */ g a;

        public b(d dVar, g gVar) {
            this.a = gVar;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.n.c
        public k a(m.n.a aVar) {
            g.a a = this.a.a();
            a.b(new e(this, aVar, a));
            return a;
        }
    }

    /* compiled from: ScalarSynchronousObservable.java */
    /* loaded from: classes2.dex */
    public static final class c<T> implements e.a<T> {
        public final T a = null;
        public final m.n.c<m.n.a, k> b;

        public c(T t, m.n.c<m.n.a, k> cVar) {
            this.b = cVar;
        }

        @Override // m.n.b
        public void a(Object obj) {
            j jVar = (j) obj;
            jVar.i(new C0127d(jVar, this.a, this.b));
        }
    }

    /* compiled from: ScalarSynchronousObservable.java */
    /* renamed from: m.o.d.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0127d<T> extends AtomicBoolean implements f, m.n.a {
        public final j<? super T> a;
        public final T b;

        /* renamed from: c  reason: collision with root package name */
        public final m.n.c<m.n.a, k> f7297c;

        public C0127d(j<? super T> jVar, T t, m.n.c<m.n.a, k> cVar) {
            this.a = jVar;
            this.b = t;
            this.f7297c = cVar;
        }

        @Override // m.f
        public void b(long j2) {
            int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
            if (i2 < 0) {
                throw new IllegalArgumentException(f.b.a.a.a.c("n >= 0 required but it was ", j2));
            } else if (i2 != 0 && compareAndSet(false, true)) {
                this.a.b(this.f7297c.a(this));
            }
        }

        @Override // m.n.a
        public void call() {
            j<? super T> jVar = this.a;
            if (!jVar.a.b) {
                Object obj = (T) this.b;
                try {
                    jVar.f(obj);
                    if (!jVar.a.b) {
                        jVar.d();
                    }
                } catch (Throwable th) {
                    j.b.C(th, jVar, obj);
                }
            }
        }

        @Override // java.util.concurrent.atomic.AtomicBoolean, java.lang.Object
        public String toString() {
            StringBuilder o = f.b.a.a.a.o("ScalarAsyncProducer[");
            o.append(this.b);
            o.append(", ");
            o.append(get());
            o.append("]");
            return o.toString();
        }
    }

    /* compiled from: ScalarSynchronousObservable.java */
    /* loaded from: classes2.dex */
    public static final class e<T> implements f {
        public final j<? super T> a;
        public final T b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f7298c;

        public e(j<? super T> jVar, T t) {
            this.a = jVar;
            this.b = t;
        }

        @Override // m.f
        public void b(long j2) {
            if (!this.f7298c) {
                int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
                if (i2 < 0) {
                    throw new IllegalStateException(f.b.a.a.a.c("n >= required but it was ", j2));
                } else if (i2 != 0) {
                    this.f7298c = true;
                    j<? super T> jVar = this.a;
                    if (!jVar.a.b) {
                        Object obj = (T) this.b;
                        try {
                            jVar.f(obj);
                            if (!jVar.a.b) {
                                jVar.d();
                            }
                        } catch (Throwable th) {
                            j.b.C(th, jVar, obj);
                        }
                    }
                }
            }
        }
    }

    public m.e<T> g(g gVar) {
        m.n.c cVar;
        if (gVar instanceof m.o.c.c) {
            cVar = new a(this, (m.o.c.c) gVar);
        } else {
            cVar = new b(this, gVar);
        }
        return m.e.e(new c(null, cVar));
    }
}
