package m.o.a;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import m.e;
import m.f;
import m.j;
import m.o.d.j.o;

/* compiled from: OperatorMerge.java */
/* loaded from: classes2.dex */
public final class g<T> implements e.b<T, e<? extends T>> {
    public final boolean a;
    public final int b;

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class a {
        public static final g<Object> a = new g<>(false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class b<T> extends j<T> {

        /* renamed from: j  reason: collision with root package name */
        public static final int f7241j = m.o.d.b.f7295c / 4;

        /* renamed from: e  reason: collision with root package name */
        public final d<T> f7242e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7243f;

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f7244g;

        /* renamed from: h  reason: collision with root package name */
        public volatile m.o.d.b f7245h;

        /* renamed from: i  reason: collision with root package name */
        public int f7246i;

        public b(d<T> dVar, long j2) {
            this.f7242e = dVar;
            this.f7243f = j2;
        }

        @Override // m.j
        public void d() {
            this.f7244g = true;
            this.f7242e.k();
        }

        @Override // m.j
        public void e(Throwable th) {
            this.f7242e.m().offer(th);
            this.f7244g = true;
            this.f7242e.k();
        }

        @Override // m.j
        public void f(T t) {
            boolean z;
            d<T> dVar = this.f7242e;
            long j2 = dVar.f7250h.get();
            if (j2 != 0) {
                synchronized (dVar) {
                    j2 = dVar.f7250h.get();
                    if (dVar.f7255m || j2 == 0) {
                        z = false;
                    } else {
                        dVar.f7255m = true;
                        z = true;
                    }
                }
            } else {
                z = false;
            }
            if (z) {
                m.o.d.b bVar = this.f7245h;
                if (bVar != null) {
                    Queue<Object> queue = bVar.a;
                    if (!(queue == null || queue.isEmpty())) {
                        dVar.o(this, t);
                        dVar.l();
                        return;
                    }
                }
                try {
                    dVar.f7247e.f(t);
                    if (j2 != RecyclerView.FOREVER_NS) {
                        dVar.f7250h.a(1);
                    }
                    j(1);
                    synchronized (dVar) {
                        try {
                            if (!dVar.n) {
                                dVar.f7255m = false;
                                return;
                            }
                            dVar.n = false;
                            dVar.l();
                        }
                    }
                }
            } else {
                dVar.o(this, t);
                dVar.k();
            }
        }

        @Override // m.j
        public void g() {
            int i2 = m.o.d.b.f7295c;
            this.f7246i = i2;
            h((long) i2);
        }

        public void j(long j2) {
            int i2 = this.f7246i - ((int) j2);
            if (i2 > f7241j) {
                this.f7246i = i2;
                return;
            }
            int i3 = m.o.d.b.f7295c;
            this.f7246i = i3;
            int i4 = i3 - i2;
            if (i4 > 0) {
                h((long) i4);
            }
        }
    }

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class c<T> extends AtomicLong implements f {
        public final d<T> a;

        public c(d<T> dVar) {
            this.a = dVar;
        }

        public long a(int i2) {
            return addAndGet((long) (-i2));
        }

        @Override // m.f
        public void b(long j2) {
            int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
            if (i2 > 0) {
                if (get() != RecyclerView.FOREVER_NS) {
                    j.b.k(this, j2);
                    this.a.k();
                }
            } else if (i2 < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
        }
    }

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class d<T> extends j<e<? extends T>> {
        public static final b<?>[] v = new b[0];

        /* renamed from: e  reason: collision with root package name */
        public final j<? super T> f7247e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f7248f;

        /* renamed from: g  reason: collision with root package name */
        public final int f7249g;

        /* renamed from: h  reason: collision with root package name */
        public c<T> f7250h;

        /* renamed from: i  reason: collision with root package name */
        public volatile Queue<Object> f7251i;

        /* renamed from: j  reason: collision with root package name */
        public volatile m.s.a f7252j;

        /* renamed from: k  reason: collision with root package name */
        public volatile ConcurrentLinkedQueue<Throwable> f7253k;

        /* renamed from: l  reason: collision with root package name */
        public volatile boolean f7254l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f7255m;
        public boolean n;
        public final Object o = new Object();
        public volatile b<?>[] p = v;
        public long q;
        public long r;
        public int s;
        public final int t;
        public int u;

        public d(j<? super T> jVar, boolean z, int i2) {
            this.f7247e = jVar;
            this.f7248f = z;
            this.f7249g = i2;
            if (i2 == Integer.MAX_VALUE) {
                this.t = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                h(RecyclerView.FOREVER_NS);
                return;
            }
            this.t = Math.max(1, i2 >> 1);
            h((long) i2);
        }

        @Override // m.j
        public void d() {
            this.f7254l = true;
            k();
        }

        @Override // m.j
        public void e(Throwable th) {
            m().offer(th);
            this.f7254l = true;
            k();
        }

        @Override // m.j
        public void f(Object obj) {
            boolean z;
            e<Object> eVar = (e) obj;
            if (eVar != null) {
                boolean z2 = true;
                if (eVar == a.b) {
                    int i2 = this.u + 1;
                    if (i2 == this.t) {
                        this.u = 0;
                        h((long) i2);
                        return;
                    }
                    this.u = i2;
                } else if (eVar instanceof m.o.d.d) {
                    m.o.d.d dVar = (m.o.d.d) eVar;
                    long j2 = this.f7250h.get();
                    if (j2 != 0) {
                        synchronized (this) {
                            j2 = this.f7250h.get();
                            if (this.f7255m || j2 == 0) {
                                z = false;
                            } else {
                                this.f7255m = true;
                                z = true;
                            }
                        }
                    } else {
                        z = false;
                    }
                    if (z) {
                        Queue<Object> queue = this.f7251i;
                        if (queue == null || queue.isEmpty()) {
                            try {
                                this.f7247e.f(null);
                                if (j2 != RecyclerView.FOREVER_NS) {
                                    try {
                                        this.f7250h.a(1);
                                    }
                                }
                                int i3 = this.u + 1;
                                if (i3 == this.t) {
                                    this.u = 0;
                                    h((long) i3);
                                } else {
                                    this.u = i3;
                                }
                                synchronized (this) {
                                    if (!this.n) {
                                        this.f7255m = false;
                                        return;
                                    }
                                    this.n = false;
                                    l();
                                }
                            }
                        } else {
                            n(null);
                            l();
                        }
                    } else {
                        n(null);
                        k();
                    }
                } else {
                    long j3 = this.q;
                    this.q = 1 + j3;
                    b<?> bVar = new b<>(this, j3);
                    m.s.a aVar = this.f7252j;
                    if (aVar == null) {
                        synchronized (this) {
                            aVar = this.f7252j;
                            if (aVar == null) {
                                aVar = new m.s.a();
                                this.f7252j = aVar;
                            } else {
                                z2 = false;
                            }
                        }
                        if (z2) {
                            this.a.b(aVar);
                        }
                    }
                    aVar.b(bVar);
                    synchronized (this.o) {
                        b<?>[] bVarArr = this.p;
                        int length = bVarArr.length;
                        b<?>[] bVarArr2 = new b[length + 1];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                        bVarArr2[length] = bVar;
                        this.p = bVarArr2;
                    }
                    eVar.f(bVar);
                    k();
                }
            }
        }

        public boolean j() {
            if (this.f7247e.a.b) {
                return true;
            }
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f7253k;
            if (this.f7248f || concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
                return false;
            }
            try {
                q();
                return true;
            } finally {
                this.a.c();
            }
        }

        public void k() {
            synchronized (this) {
                if (this.f7255m) {
                    this.n = true;
                    return;
                }
                this.f7255m = true;
                l();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:110:0x0170, code lost:
            r11 = r9.f7244g;
            r14 = r9.f7245h;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:111:0x0174, code lost:
            if (r11 == false) goto L_0x0195;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:112:0x0176, code lost:
            if (r14 == null) goto L_0x0188;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:113:0x0178, code lost:
            r11 = r14.a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:114:0x017a, code lost:
            if (r11 == null) goto L_0x0185;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:116:0x0180, code lost:
            if (r11.isEmpty() == false) goto L_0x0183;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:118:0x0183, code lost:
            r11 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:119:0x0185, code lost:
            r11 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:120:0x0186, code lost:
            if (r11 == false) goto L_0x0195;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:121:0x0188, code lost:
            p(r9);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:122:0x018f, code lost:
            if (j() == false) goto L_0x0192;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:123:0x0191, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:124:0x0192, code lost:
            r6 = r6 + 1;
            r8 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:125:0x0195, code lost:
            if (r3 != 0) goto L_0x0198;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:127:0x0198, code lost:
            r0 = r0 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:128:0x019a, code lost:
            if (r0 != r7) goto L_0x019d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:129:0x019c, code lost:
            r0 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:130:0x019d, code lost:
            r2 = r2 + 1;
            r13 = 0;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void l() {
            /*
            // Method dump skipped, instructions count: 479
            */
            throw new UnsupportedOperationException("Method not decompiled: m.o.a.g.d.l():void");
        }

        public Queue<Throwable> m() {
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f7253k;
            if (concurrentLinkedQueue == null) {
                synchronized (this) {
                    concurrentLinkedQueue = this.f7253k;
                    if (concurrentLinkedQueue == null) {
                        concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                        this.f7253k = concurrentLinkedQueue;
                    }
                }
            }
            return concurrentLinkedQueue;
        }

        public void n(T t) {
            Queue<Object> queue;
            Queue<Object> queue2 = this.f7251i;
            if (queue2 == null) {
                int i2 = this.f7249g;
                if (i2 == Integer.MAX_VALUE) {
                    queue2 = new m.o.d.i.d<>(m.o.d.b.f7295c);
                } else {
                    if (!(((i2 + -1) & i2) == 0)) {
                        queue = new m.o.d.i.c<>(i2);
                    } else if (o.b()) {
                        queue = new m.o.d.j.j<>(i2);
                    } else {
                        queue = new m.o.d.i.b<>(i2);
                    }
                    queue2 = queue;
                }
                this.f7251i = queue2;
            }
            if (!queue2.offer(t == null ? b.a : t)) {
                this.a.c();
                m().offer(m.m.f.a(new m.m.b(), t));
                this.f7254l = true;
                k();
            }
        }

        public void o(b<T> bVar, T t) {
            m.o.d.b bVar2 = bVar.f7245h;
            if (bVar2 == null) {
                if (o.b()) {
                    bVar2 = new m.o.d.b(false, m.o.d.b.f7295c);
                } else {
                    bVar2 = new m.o.d.b();
                }
                bVar.a.b(bVar2);
                bVar.f7245h = bVar2;
            }
            if (t == null) {
                try {
                    t = (T) b.a;
                } catch (IllegalStateException e2) {
                    if (!bVar.a.b) {
                        bVar.a.c();
                        bVar.e(e2);
                        return;
                    }
                    return;
                } catch (m.m.b e3) {
                    bVar.a.c();
                    bVar.e(e3);
                    return;
                }
            }
            bVar2.b(t);
        }

        public void p(b<T> bVar) {
            m.o.d.b bVar2 = bVar.f7245h;
            if (bVar2 != null) {
                synchronized (bVar2) {
                }
            }
            this.f7252j.e(bVar);
            synchronized (this.o) {
                b<?>[] bVarArr = this.p;
                int length = bVarArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (bVar.equals(bVarArr[i2])) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 >= 0) {
                    if (length == 1) {
                        this.p = v;
                        return;
                    }
                    b<?>[] bVarArr2 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, i2);
                    System.arraycopy(bVarArr, i2 + 1, bVarArr2, i2, (length - i2) - 1);
                    this.p = bVarArr2;
                }
            }
        }

        public final void q() {
            ArrayList arrayList = new ArrayList(this.f7253k);
            if (arrayList.size() == 1) {
                this.f7247e.e((Throwable) arrayList.get(0));
            } else {
                this.f7247e.e(new m.m.a(arrayList));
            }
        }
    }

    public g(boolean z, int i2) {
        this.a = z;
        this.b = i2;
    }

    @Override // m.n.c
    public Object a(Object obj) {
        j jVar = (j) obj;
        d dVar = new d(jVar, this.a, this.b);
        c<T> cVar = new c<>(dVar);
        dVar.f7250h = cVar;
        jVar.a.b(dVar);
        jVar.i(cVar);
        return dVar;
    }
}
