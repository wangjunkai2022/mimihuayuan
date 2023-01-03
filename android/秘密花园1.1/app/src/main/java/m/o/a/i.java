package m.o.a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import m.e;
import m.g;
import m.o.d.j.o;
import m.q.l;

/* compiled from: OperatorObserveOn.java */
/* loaded from: classes2.dex */
public final class i<T> implements e.b<T, T> {
    public final m.g a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7256c;

    /* compiled from: OperatorObserveOn.java */
    /* loaded from: classes2.dex */
    public static final class a<T> extends m.j<T> implements m.n.a {

        /* renamed from: e  reason: collision with root package name */
        public final m.j<? super T> f7257e;

        /* renamed from: f  reason: collision with root package name */
        public final g.a f7258f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f7259g;

        /* renamed from: h  reason: collision with root package name */
        public final Queue<Object> f7260h;

        /* renamed from: i  reason: collision with root package name */
        public final int f7261i;

        /* renamed from: j  reason: collision with root package name */
        public volatile boolean f7262j;

        /* renamed from: k  reason: collision with root package name */
        public final AtomicLong f7263k = new AtomicLong();

        /* renamed from: l  reason: collision with root package name */
        public final AtomicLong f7264l = new AtomicLong();

        /* renamed from: m  reason: collision with root package name */
        public Throwable f7265m;
        public long n;

        public a(m.g gVar, m.j<? super T> jVar, boolean z, int i2) {
            this.f7257e = jVar;
            this.f7258f = gVar.a();
            this.f7259g = z;
            i2 = i2 <= 0 ? m.o.d.b.f7295c : i2;
            this.f7261i = i2 - (i2 >> 2);
            if (o.b()) {
                this.f7260h = new m.o.d.j.j(i2);
            } else {
                this.f7260h = new m.o.d.i.b(i2);
            }
            h(i2);
        }

        @Override // m.n.a
        public void call() {
            int i2;
            long j2;
            long j3;
            long j4 = this.n;
            Queue<Object> queue = this.f7260h;
            m.j<? super T> jVar = this.f7257e;
            long j5 = 1;
            do {
                long j6 = this.f7263k.get();
                while (true) {
                    i2 = (j6 > j4 ? 1 : (j6 == j4 ? 0 : -1));
                    if (i2 == 0) {
                        break;
                    }
                    boolean z = this.f7262j;
                    Object poll = queue.poll();
                    boolean z2 = poll == null;
                    if (j(z, z2, jVar, queue)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    jVar.f((Object) b.a(poll));
                    j4++;
                    if (j4 == this.f7261i) {
                        AtomicLong atomicLong = this.f7263k;
                        do {
                            j2 = atomicLong.get();
                            j3 = RecyclerView.FOREVER_NS;
                            if (j2 == RecyclerView.FOREVER_NS) {
                                break;
                            }
                            j3 = j2 - j4;
                            if (j3 < 0) {
                                throw new IllegalStateException(f.b.a.a.a.c("More produced than requested: ", j3));
                            }
                        } while (!atomicLong.compareAndSet(j2, j3));
                        j6 = j3;
                        h(j4);
                        j4 = 0;
                    }
                }
                if (i2 == 0 && j(this.f7262j, queue.isEmpty(), jVar, queue)) {
                    return;
                }
                this.n = j4;
                j5 = this.f7264l.addAndGet(-j5);
            } while (j5 != 0);
        }

        @Override // m.j
        public void d() {
            if (this.a.b || this.f7262j) {
                return;
            }
            this.f7262j = true;
            k();
        }

        @Override // m.j
        public void e(Throwable th) {
            if (!this.a.b && !this.f7262j) {
                this.f7265m = th;
                this.f7262j = true;
                k();
                return;
            }
            l.a(th);
        }

        @Override // m.j
        public void f(T t) {
            if (this.a.b || this.f7262j) {
                return;
            }
            Queue<Object> queue = this.f7260h;
            if (t == null) {
                t = (T) b.a;
            }
            if (!queue.offer(t)) {
                e(new m.m.b());
            } else {
                k();
            }
        }

        public boolean j(boolean z, boolean z2, m.j<? super T> jVar, Queue<Object> queue) {
            if (jVar.a.b) {
                queue.clear();
                return true;
            } else if (z) {
                if (this.f7259g) {
                    if (z2) {
                        Throwable th = this.f7265m;
                        try {
                            if (th != null) {
                                jVar.e(th);
                            } else {
                                jVar.d();
                            }
                            return false;
                        } finally {
                        }
                    }
                    return false;
                }
                Throwable th2 = this.f7265m;
                if (th2 != null) {
                    queue.clear();
                    try {
                        jVar.e(th2);
                        return true;
                    } finally {
                    }
                } else if (z2) {
                    try {
                        jVar.d();
                        return true;
                    } finally {
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        public void k() {
            if (this.f7264l.getAndIncrement() == 0) {
                this.f7258f.b(this);
            }
        }
    }

    public i(m.g gVar, boolean z, int i2) {
        this.a = gVar;
        this.b = z;
        this.f7256c = i2 <= 0 ? m.o.d.b.f7295c : i2;
    }

    @Override // m.n.c
    public Object a(Object obj) {
        a aVar = new a(this.a, (m.j) obj, this.b, this.f7256c);
        m.j<? super T> jVar = aVar.f7257e;
        jVar.i(new h(aVar));
        jVar.b(aVar.f7258f);
        jVar.b(aVar);
        return aVar;
    }
}
