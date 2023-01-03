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
public final class a extends g implements h {

    /* renamed from: e  reason: collision with root package name */
    public static final c f7274e;

    /* renamed from: f  reason: collision with root package name */
    public static final C0123a f7275f;
    public final ThreadFactory a;
    public final AtomicReference<C0123a> b = new AtomicReference<>(f7275f);

    /* renamed from: d  reason: collision with root package name */
    public static final TimeUnit f7273d = TimeUnit.SECONDS;

    /* renamed from: c  reason: collision with root package name */
    public static final long f7272c = (long) Integer.getInteger("rx.io-scheduler.keepalive", 60).intValue();

    /* compiled from: CachedThreadScheduler.java */
    /* renamed from: m.o.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0123a {
        public final ThreadFactory a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final ConcurrentLinkedQueue<c> f7276c;

        /* renamed from: d  reason: collision with root package name */
        public final m.s.a f7277d;

        /* renamed from: e  reason: collision with root package name */
        public final ScheduledExecutorService f7278e;

        /* renamed from: f  reason: collision with root package name */
        public final Future<?> f7279f;

        /* compiled from: CachedThreadScheduler.java */
        /* renamed from: m.o.c.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class ThreadFactoryC0124a implements ThreadFactory {
            public final /* synthetic */ ThreadFactory a;

            public ThreadFactoryC0124a(C0123a aVar, ThreadFactory threadFactory) {
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
                C0123a aVar = C0123a.this;
                if (!aVar.f7276c.isEmpty()) {
                    long nanoTime = System.nanoTime();
                    Iterator<c> it = aVar.f7276c.iterator();
                    while (it.hasNext()) {
                        c next = it.next();
                        if (next.f7282i > nanoTime) {
                            return;
                        }
                        if (aVar.f7276c.remove(next)) {
                            aVar.f7277d.e(next);
                        }
                    }
                }
            }
        }

        public C0123a(ThreadFactory threadFactory, long j2, TimeUnit timeUnit) {
            ScheduledFuture<?> scheduledFuture;
            this.a = threadFactory;
            this.b = timeUnit != null ? timeUnit.toNanos(j2) : 0;
            this.f7276c = new ConcurrentLinkedQueue<>();
            this.f7277d = new m.s.a();
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, new ThreadFactoryC0124a(this, threadFactory));
                f.f(scheduledExecutorService);
                b bVar = new b();
                long j3 = this.b;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(bVar, j3, j3, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f7278e = scheduledExecutorService;
            this.f7279f = scheduledFuture;
        }

        public void a() {
            try {
                if (this.f7279f != null) {
                    this.f7279f.cancel(true);
                }
                if (this.f7278e != null) {
                    this.f7278e.shutdownNow();
                }
            } finally {
                this.f7277d.c();
            }
        }
    }

    /* compiled from: CachedThreadScheduler.java */
    /* loaded from: classes2.dex */
    public static final class b extends g.a implements m.n.a {
        public final C0123a b;

        /* renamed from: c  reason: collision with root package name */
        public final c f7280c;
        public final m.s.a a = new m.s.a();

        /* renamed from: d  reason: collision with root package name */
        public final AtomicBoolean f7281d = new AtomicBoolean();

        public b(C0123a aVar) {
            c cVar;
            c cVar2;
            this.b = aVar;
            if (aVar.f7277d.b) {
                cVar = a.f7274e;
            } else {
                while (true) {
                    if (aVar.f7276c.isEmpty()) {
                        cVar2 = new c(aVar.a);
                        aVar.f7277d.b(cVar2);
                        break;
                    }
                    cVar2 = aVar.f7276c.poll();
                    if (cVar2 != null) {
                        break;
                    }
                }
                cVar = cVar2;
            }
            this.f7280c = cVar;
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
            g e2 = this.f7280c.e(new b(this, aVar), 0, null);
            this.a.b(e2);
            e2.a.b(new g.c(e2, this.a));
            return e2;
        }

        @Override // m.k
        public void c() {
            if (this.f7281d.compareAndSet(false, true)) {
                this.f7280c.b(this);
            }
            this.a.c();
        }

        @Override // m.n.a
        public void call() {
            C0123a aVar = this.b;
            c cVar = this.f7280c;
            if (aVar != null) {
                cVar.f7282i = System.nanoTime() + aVar.b;
                aVar.f7276c.offer(cVar);
                return;
            }
            throw null;
        }
    }

    /* compiled from: CachedThreadScheduler.java */
    /* loaded from: classes2.dex */
    public static final class c extends f {

        /* renamed from: i  reason: collision with root package name */
        public long f7282i = 0;

        public c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(m.o.d.c.b);
        f7274e = cVar;
        cVar.c();
        C0123a aVar = new C0123a(null, 0, null);
        f7275f = aVar;
        aVar.a();
    }

    public a(ThreadFactory threadFactory) {
        this.a = threadFactory;
        C0123a aVar = new C0123a(this.a, f7272c, f7273d);
        if (!this.b.compareAndSet(f7275f, aVar)) {
            aVar.a();
        }
    }

    @Override // m.g
    public g.a a() {
        return new b(this.b.get());
    }

    @Override // m.o.c.h
    public void shutdown() {
        C0123a aVar;
        C0123a aVar2;
        do {
            aVar = this.b.get();
            aVar2 = f7275f;
            if (aVar == aVar2) {
                return;
            }
        } while (!this.b.compareAndSet(aVar, aVar2));
        aVar.a();
    }
}
