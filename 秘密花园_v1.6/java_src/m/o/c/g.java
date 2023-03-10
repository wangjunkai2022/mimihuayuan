package m.o.c;

import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import m.k;
import m.q.l;
/* compiled from: ScheduledAction.java */
/* loaded from: classes2.dex */
public final class g extends AtomicReference<Thread> implements Runnable, k {
    public final m.o.d.g a;
    public final m.n.a b;

    /* compiled from: ScheduledAction.java */
    /* loaded from: classes2.dex */
    public final class a implements k {
        public final Future<?> a;

        public a(Future<?> future) {
            this.a = future;
        }

        @Override // m.k
        public boolean a() {
            return this.a.isCancelled();
        }

        @Override // m.k
        public void c() {
            if (g.this.get() != Thread.currentThread()) {
                this.a.cancel(true);
            } else {
                this.a.cancel(false);
            }
        }
    }

    /* compiled from: ScheduledAction.java */
    /* loaded from: classes2.dex */
    public static final class b extends AtomicBoolean implements k {
        public final g a;
        public final m.o.d.g b;

        public b(g gVar, m.o.d.g gVar2) {
            this.a = gVar;
            this.b = gVar2;
        }

        @Override // m.k
        public boolean a() {
            return this.a.a.b;
        }

        @Override // m.k
        public void c() {
            if (compareAndSet(false, true)) {
                m.o.d.g gVar = this.b;
                g gVar2 = this.a;
                if (gVar.b) {
                    return;
                }
                synchronized (gVar) {
                    List<k> list = gVar.a;
                    if (!gVar.b && list != null) {
                        boolean remove = list.remove(gVar2);
                        if (remove) {
                            gVar2.c();
                        }
                    }
                }
            }
        }
    }

    /* compiled from: ScheduledAction.java */
    /* loaded from: classes2.dex */
    public static final class c extends AtomicBoolean implements k {
        public final g a;
        public final m.s.a b;

        public c(g gVar, m.s.a aVar) {
            this.a = gVar;
            this.b = aVar;
        }

        @Override // m.k
        public boolean a() {
            return this.a.a.b;
        }

        @Override // m.k
        public void c() {
            if (compareAndSet(false, true)) {
                this.b.e(this.a);
            }
        }
    }

    public g(m.n.a aVar) {
        this.b = aVar;
        this.a = new m.o.d.g();
    }

    @Override // m.k
    public boolean a() {
        return this.a.b;
    }

    @Override // m.k
    public void c() {
        if (this.a.b) {
            return;
        }
        this.a.c();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                lazySet(Thread.currentThread());
                this.b.call();
            } finally {
                c();
            }
        } catch (m.m.e e2) {
            IllegalStateException illegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", e2);
            l.a(illegalStateException);
            Thread currentThread = Thread.currentThread();
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, illegalStateException);
        } catch (Throwable th) {
            IllegalStateException illegalStateException2 = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th);
            l.a(illegalStateException2);
            Thread currentThread2 = Thread.currentThread();
            currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, illegalStateException2);
        }
    }

    public g(m.n.a aVar, m.o.d.g gVar) {
        this.b = aVar;
        this.a = new m.o.d.g(new b(this, gVar));
    }
}
