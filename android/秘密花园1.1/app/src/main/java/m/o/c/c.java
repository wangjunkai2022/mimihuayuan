package m.o.c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicReference;
import m.g;
import m.k;
import m.o.c.g;
import m.q.l;

/* compiled from: EventLoopsScheduler.java */
/* loaded from: classes2.dex */
public final class c extends m.g implements h {

    /* renamed from: c  reason: collision with root package name */
    public static final int f7283c;

    /* renamed from: d  reason: collision with root package name */
    public static final C0133c f7284d;

    /* renamed from: e  reason: collision with root package name */
    public static final b f7285e;
    public final ThreadFactory a;
    public final AtomicReference<b> b = new AtomicReference<>(f7285e);

    /* compiled from: EventLoopsScheduler.java */
    /* loaded from: classes2.dex */
    public static final class a extends g.a {
        public final m.o.d.g a = new m.o.d.g();
        public final m.s.a b;

        /* renamed from: c  reason: collision with root package name */
        public final m.o.d.g f7286c;

        /* renamed from: d  reason: collision with root package name */
        public final C0133c f7287d;

        /* compiled from: EventLoopsScheduler.java */
        /* renamed from: m.o.c.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0132a implements m.n.a {
            public final /* synthetic */ m.n.a a;

            public C0132a(m.n.a aVar) {
                this.a = aVar;
            }

            @Override // m.n.a
            public void call() {
                if (a.this.f7286c.b) {
                    return;
                }
                this.a.call();
            }
        }

        public a(C0133c c0133c) {
            m.s.a aVar = new m.s.a();
            this.b = aVar;
            this.f7286c = new m.o.d.g(this.a, aVar);
            this.f7287d = c0133c;
        }

        @Override // m.k
        public boolean a() {
            return this.f7286c.b;
        }

        @Override // m.g.a
        public k b(m.n.a aVar) {
            if (this.f7286c.b) {
                return m.s.b.a;
            }
            C0133c c0133c = this.f7287d;
            C0132a c0132a = new C0132a(aVar);
            m.o.d.g gVar = this.a;
            if (c0133c != null) {
                g gVar2 = new g(l.c(c0132a), gVar);
                gVar.b(gVar2);
                gVar2.a.b(new g.a(c0133c.a.submit(gVar2)));
                return gVar2;
            }
            throw null;
        }

        @Override // m.k
        public void c() {
            this.f7286c.c();
        }
    }

    /* compiled from: EventLoopsScheduler.java */
    /* loaded from: classes2.dex */
    public static final class b {
        public final int a;
        public final C0133c[] b;

        /* renamed from: c  reason: collision with root package name */
        public long f7288c;

        public b(ThreadFactory threadFactory, int i2) {
            this.a = i2;
            this.b = new C0133c[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.b[i3] = new C0133c(threadFactory);
            }
        }

        public C0133c a() {
            int i2 = this.a;
            if (i2 == 0) {
                return c.f7284d;
            }
            C0133c[] c0133cArr = this.b;
            long j2 = this.f7288c;
            this.f7288c = 1 + j2;
            return c0133cArr[(int) (j2 % i2)];
        }
    }

    /* compiled from: EventLoopsScheduler.java */
    /* renamed from: m.o.c.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0133c extends f {
        public C0133c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        int intValue = Integer.getInteger("rx.scheduler.max-computation-threads", 0).intValue();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (intValue <= 0 || intValue > availableProcessors) {
            intValue = availableProcessors;
        }
        f7283c = intValue;
        C0133c c0133c = new C0133c(m.o.d.c.b);
        f7284d = c0133c;
        c0133c.c();
        f7285e = new b(null, 0);
    }

    public c(ThreadFactory threadFactory) {
        this.a = threadFactory;
        b bVar = new b(this.a, f7283c);
        if (this.b.compareAndSet(f7285e, bVar)) {
            return;
        }
        for (C0133c c0133c : bVar.b) {
            c0133c.c();
        }
    }

    @Override // m.g
    public g.a a() {
        return new a(this.b.get().a());
    }

    @Override // m.o.c.h
    public void shutdown() {
        b bVar;
        b bVar2;
        do {
            bVar = this.b.get();
            bVar2 = f7285e;
            if (bVar == bVar2) {
                return;
            }
        } while (!this.b.compareAndSet(bVar, bVar2));
        for (C0133c c0133c : bVar.b) {
            c0133c.c();
        }
    }
}
