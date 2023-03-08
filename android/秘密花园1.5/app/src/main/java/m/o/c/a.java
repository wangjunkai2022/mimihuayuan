package m.o.c;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import m.g;
import m.k;
import m.o.c.g;

/* compiled from: CachedThreadScheduler.java */
/* loaded from: classes2.dex */
public final class a extends m.g implements h {

    /* renamed from: c  reason: collision with root package name */
    public static final long f7347c;

    /* renamed from: d  reason: collision with root package name */
    public static final TimeUnit f7348d = TimeUnit.SECONDS;

    /* renamed from: e  reason: collision with root package name */
    public static final c f7349e;

    /* renamed from: f  reason: collision with root package name */
    public static final C0130a f7350f;
    public final ThreadFactory a;
    public final AtomicReference<C0130a> b = new AtomicReference<>(f7350f);

    /* compiled from: CachedThreadScheduler.java */
    /* renamed from: m.o.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0130a {
        public final ThreadFactory a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final ConcurrentLinkedQueue<c> f7351c;

        /* renamed from: d  reason: collision with root package name */
        public final m.s.a f7352d;

        /* renamed from: e  reason: collision with root package name */
        public final ScheduledExecutorService f7353e;

        /* renamed from: f  reason: collision with root package name */
        public final Future<?> f7354f;

        /* compiled from: CachedThreadScheduler.java */
        /* renamed from: m.o.c.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class ThreadFactoryC0131a implements ThreadFactory {
            public final /* synthetic */ ThreadFactory a;

            public ThreadFactoryC0131a(C0130a c0130a, ThreadFactory threadFactory) {
                this.a = threadFactory;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread newThread = this.a.newThread(runnable);
                newThread.setName(newThread.getName() + " (Evictor)");
                return newThread;
            }
        }

        /* compiled from: CachedThreadScheduler.java */
        /* renamed from: m.o.c.a$a$b */
        /* loaded from: classes2.dex */
        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0130a c0130a = C0130a.this;
                if (c0130a.f7351c.isEmpty()) {
                    return;
                }
                long nanoTime = System.nanoTime();
                Iterator<c> it = c0130a.f7351c.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    if (next.f7357i > nanoTime) {
                        return;
                    }
                    if (c0130a.f7351c.remove(next)) {
                        c0130a.f7352d.e(next);
                    }
                }
            }
        }

        public C0130a(ThreadFactory threadFactory, long j2, TimeUnit timeUnit) {
            ScheduledFuture<?> scheduledFuture;
            this.a = threadFactory;
            this.b = timeUnit != null ? timeUnit.toNanos(j2) : 0L;
            this.f7351c = new ConcurrentLinkedQueue<>();
            this.f7352d = new m.s.a();
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, new ThreadFactoryC0131a(this, threadFactory));
                f.f(scheduledExecutorService);
                b bVar = new b();
                long j3 = this.b;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(bVar, j3, j3, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f7353e = scheduledExecutorService;
            this.f7354f = scheduledFuture;
        }

        public void a() {
            try {
                if (this.f7354f != null) {
                    this.f7354f.cancel(true);
                }
                if (this.f7353e != null) {
                    this.f7353e.shutdownNow();
                }
            } finally {
                this.f7352d.c();
            }
        }
    }

    /* compiled from: CachedThreadScheduler.java */
    /* loaded from: classes2.dex */
    public static final class b extends g.a implements m.n.a {
        public final C0130a b;

        /* renamed from: c  reason: collision with root package name */
        public final c f7355c;
        public final m.s.a a = new m.s.a();

        /* renamed from: d  reason: collision with root package name */
        public final AtomicBoolean f7356d = new AtomicBoolean();

        public b(C0130a c0130a) {
            c cVar;
            c cVar2;
            this.b = c0130a;
            if (c0130a.f7352d.b) {
                cVar2 = a.f7349e;
            } else {
                while (true) {
                    if (!c0130a.f7351c.isEmpty()) {
                        cVar = c0130a.f7351c.poll();
                        if (cVar != null) {
                            break;
                        }
                    } else {
                        cVar = new c(c0130a.a);
                        c0130a.f7352d.b(cVar);
                        break;
                    }
                }
                cVar2 = cVar;
            }
            this.f7355c = cVar2;
        }

        @Override // m.k
        public boolean a() {
            return this.a.b;
        }

        @Override // m.g.a
        public k b(m.n.a aVar) {
            if (this.a.b) {
                return m.s.b.a;
            }
            g e2 = this.f7355c.e(new m.o.c.b(this, aVar), 0L, null);
            this.a.b(e2);
            e2.a.b(new g.c(e2, this.a));
            return e2;
        }

        @Override // m.k
        public void c() {
            if (this.f7356d.compareAndSet(false, true)) {
                this.f7355c.b(this);
            }
            this.a.c();
        }

        @Override // m.n.a
        public void call() {
            C0130a c0130a = this.b;
            c cVar = this.f7355c;
            if (c0130a != null) {
                cVar.f7357i = System.nanoTime() + c0130a.b;
                c0130a.f7351c.offer(cVar);
                return;
            }
            throw null;
        }
    }

    /* compiled from: CachedThreadScheduler.java */
    /* loaded from: classes2.dex */
    public static final class c extends f {

        /* renamed from: i  reason: collision with root package name */
        public long f7357i;

        public c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f7357i = 0L;
        }
    }

    static {
        c cVar = new c(m.o.d.c.b);
        f7349e = cVar;
        cVar.c();
        C0130a c0130a = new C0130a(null, 0L, null);
        f7350f = c0130a;
        c0130a.a();
        f7347c = Integer.getInteger("rx.io-scheduler.keepalive", 60).intValue();
    }

    public a(ThreadFactory threadFactory) {
        this.a = threadFactory;
        C0130a c0130a = new C0130a(this.a, f7347c, f7348d);
        if (this.b.compareAndSet(f7350f, c0130a)) {
            return;
        }
        c0130a.a();
    }

    @Override // m.g
    public g.a a() {
        return new b(this.b.get());
    }

    @Override // m.o.c.h
    public void shutdown() {
        C0130a c0130a;
        C0130a c0130a2;
        do {
            c0130a = this.b.get();
            c0130a2 = f7350f;
            if (c0130a == c0130a2) {
                return;
            }
        } while (!this.b.compareAndSet(c0130a, c0130a2));
        c0130a.a();
    }
}
