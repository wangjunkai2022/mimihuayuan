package m.o.c;

import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import m.k;

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
                if (!gVar.b) {
                    synchronized (gVar) {
                        List<k> list = gVar.a;
                        if (!gVar.b && list != null) {
                            boolean remove = list.remove(gVar2);
                            if (remove) {
                                gVar2.c();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
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
        if (!this.a.b) {
            this.a.c();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:88)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:452)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @Override // java.lang.Runnable
    public void run() {
        /*
            r3 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: e -> 0x0024, all -> 0x000d
            r3.lazySet(r0)     // Catch: e -> 0x0024, all -> 0x000d
            m.n.a r0 = r3.b     // Catch: e -> 0x0024, all -> 0x000d
            r0.call()     // Catch: e -> 0x0024, all -> 0x000d
            goto L_0x003a
        L_0x000d:
            r0 = move-exception
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: all -> 0x003e
            java.lang.String r2 = "Fatal Exception thrown on Scheduler.Worker thread."
            r1.<init>(r2, r0)     // Catch: all -> 0x003e
            m.q.l.a(r1)     // Catch: all -> 0x003e
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: all -> 0x003e
            java.lang.Thread$UncaughtExceptionHandler r2 = r0.getUncaughtExceptionHandler()     // Catch: all -> 0x003e
            r2.uncaughtException(r0, r1)     // Catch: all -> 0x003e
            goto L_0x003a
        L_0x0024:
            r0 = move-exception
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: all -> 0x003e
            java.lang.String r2 = "Exception thrown on Scheduler.Worker thread. Add `onError` handling."
            r1.<init>(r2, r0)     // Catch: all -> 0x003e
            m.q.l.a(r1)     // Catch: all -> 0x003e
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: all -> 0x003e
            java.lang.Thread$UncaughtExceptionHandler r2 = r0.getUncaughtExceptionHandler()     // Catch: all -> 0x003e
            r2.uncaughtException(r0, r1)     // Catch: all -> 0x003e
        L_0x003a:
            r3.c()
            return
        L_0x003e:
            r0 = move-exception
            r3.c()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: m.o.c.g.run():void");
    }

    public g(m.n.a aVar, m.o.d.g gVar) {
        this.b = aVar;
        this.a = new m.o.d.g(new b(this, gVar));
    }
}
