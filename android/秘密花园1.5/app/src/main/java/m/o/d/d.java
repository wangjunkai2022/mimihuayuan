package m.o.d;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import m.e;
import m.g;
import m.j;
import m.k;

/* compiled from: ScalarSynchronousObservable.java */
/* loaded from: classes2.dex */
public final class d<T> extends m.e<T> {

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f7371c = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();
    public final T b;

    /* compiled from: ScalarSynchronousObservable.java */
    /* loaded from: classes2.dex */
    public class a implements m.n.c<m.n.a, k> {
        public final /* synthetic */ m.o.c.c a;

        public a(d dVar, m.o.c.c cVar) {
            this.a = cVar;
        }

        @Override // m.n.c
        public k a(m.n.a aVar) {
            return this.a.b.get().a().e(aVar, -1L, TimeUnit.NANOSECONDS);
        }
    }

    /* compiled from: ScalarSynchronousObservable.java */
    /* loaded from: classes2.dex */
    public class b implements m.n.c<m.n.a, k> {
        public final /* synthetic */ m.g a;

        public b(d dVar, m.g gVar) {
            this.a = gVar;
        }

        @Override // m.n.c
        public k a(m.n.a aVar) {
            g.a a = this.a.a();
            a.b(new m.o.d.e(this, aVar, a));
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
            jVar.i(new C0134d(jVar, this.a, this.b));
        }
    }

    /* compiled from: ScalarSynchronousObservable.java */
    /* renamed from: m.o.d.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0134d<T> extends AtomicBoolean implements m.f, m.n.a {
        public final j<? super T> a;
        public final T b;

        /* renamed from: c  reason: collision with root package name */
        public final m.n.c<m.n.a, k> f7372c;

        public C0134d(j<? super T> jVar, T t, m.n.c<m.n.a, k> cVar) {
            this.a = jVar;
            this.b = t;
            this.f7372c = cVar;
        }

        @Override // m.f
        public void b(long j2) {
            int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i2 >= 0) {
                if (i2 == 0 || !compareAndSet(false, true)) {
                    return;
                }
                this.a.b(this.f7372c.a(this));
                return;
            }
            throw new IllegalArgumentException(f.b.a.a.a.c("n >= 0 required but it was ", j2));
        }

        @Override // m.n.a
        public void call() {
            j<? super T> jVar = this.a;
            if (jVar.a.b) {
                return;
            }
            Object obj = (T) this.b;
            try {
                jVar.f(obj);
                if (jVar.a.b) {
                    return;
                }
                jVar.d();
            } catch (Throwable th) {
                j.b.C(th, jVar, obj);
            }
        }

        @Override // java.util.concurrent.atomic.AtomicBoolean
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
    public static final class e<T> implements m.f {
        public final j<? super T> a;
        public final T b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f7373c;

        public e(j<? super T> jVar, T t) {
            this.a = jVar;
            this.b = t;
        }

        @Override // m.f
        public void b(long j2) {
            if (this.f7373c) {
                return;
            }
            int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i2 < 0) {
                throw new IllegalStateException(f.b.a.a.a.c("n >= required but it was ", j2));
            }
            if (i2 == 0) {
                return;
            }
            this.f7373c = true;
            j<? super T> jVar = this.a;
            if (jVar.a.b) {
                return;
            }
            Object obj = (T) this.b;
            try {
                jVar.f(obj);
                if (jVar.a.b) {
                    return;
                }
                jVar.d();
            } catch (Throwable th) {
                j.b.C(th, jVar, obj);
            }
        }
    }

    public m.e<T> g(m.g gVar) {
        m.n.c bVar;
        if (gVar instanceof m.o.c.c) {
            bVar = new a(this, (m.o.c.c) gVar);
        } else {
            bVar = new b(this, gVar);
        }
        return m.e.e(new c(null, bVar));
    }
}
