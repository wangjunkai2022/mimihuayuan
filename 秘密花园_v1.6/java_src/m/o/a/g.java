package m.o.a;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import m.e;
import m.o.d.j.o;
/* compiled from: OperatorMerge.java */
/* loaded from: classes2.dex */
public final class g<T> implements e.b<T, m.e<? extends T>> {
    public final boolean a;
    public final int b;

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class a {
        public static final g<Object> a = new g<>(false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class b<T> extends m.j<T> {

        /* renamed from: j  reason: collision with root package name */
        public static final int f7325j = m.o.d.b.f7379c / 4;

        /* renamed from: e  reason: collision with root package name */
        public final d<T> f7326e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7327f;

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f7328g;

        /* renamed from: h  reason: collision with root package name */
        public volatile m.o.d.b f7329h;

        /* renamed from: i  reason: collision with root package name */
        public int f7330i;

        public b(d<T> dVar, long j2) {
            this.f7326e = dVar;
            this.f7327f = j2;
        }

        @Override // m.j
        public void d() {
            this.f7328g = true;
            this.f7326e.k();
        }

        @Override // m.j
        public void e(Throwable th) {
            this.f7326e.m().offer(th);
            this.f7328g = true;
            this.f7326e.k();
        }

        @Override // m.j
        public void f(T t) {
            boolean z;
            d<T> dVar = this.f7326e;
            long j2 = dVar.f7334h.get();
            if (j2 != 0) {
                synchronized (dVar) {
                    j2 = dVar.f7334h.get();
                    if (dVar.f7339m || j2 == 0) {
                        z = false;
                    } else {
                        dVar.f7339m = true;
                        z = true;
                    }
                }
            } else {
                z = false;
            }
            if (z) {
                m.o.d.b bVar = this.f7329h;
                if (bVar != null) {
                    Queue<Object> queue = bVar.a;
                    if (!(queue == null || queue.isEmpty())) {
                        dVar.o(this, t);
                        dVar.l();
                        return;
                    }
                }
                try {
                    dVar.f7331e.f(t);
                    if (j2 != RecyclerView.FOREVER_NS) {
                        dVar.f7334h.a(1);
                    }
                    j(1L);
                    synchronized (dVar) {
                        try {
                            if (!dVar.n) {
                                dVar.f7339m = false;
                            } else {
                                dVar.n = false;
                                dVar.l();
                            }
                        }
                    }
                    return;
                }
            }
            dVar.o(this, t);
            dVar.k();
        }

        @Override // m.j
        public void g() {
            int i2 = m.o.d.b.f7379c;
            this.f7330i = i2;
            h(i2);
        }

        public void j(long j2) {
            int i2 = this.f7330i - ((int) j2);
            if (i2 > f7325j) {
                this.f7330i = i2;
                return;
            }
            int i3 = m.o.d.b.f7379c;
            this.f7330i = i3;
            int i4 = i3 - i2;
            if (i4 > 0) {
                h(i4);
            }
        }
    }

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class c<T> extends AtomicLong implements m.f {
        public final d<T> a;

        public c(d<T> dVar) {
            this.a = dVar;
        }

        public long a(int i2) {
            return addAndGet(-i2);
        }

        @Override // m.f
        public void b(long j2) {
            int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i2 <= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("n >= 0 required");
                }
            } else if (get() == RecyclerView.FOREVER_NS) {
            } else {
                j.b.k(this, j2);
                this.a.k();
            }
        }
    }

    /* compiled from: OperatorMerge.java */
    /* loaded from: classes2.dex */
    public static final class d<T> extends m.j<m.e<? extends T>> {
        public static final b<?>[] v = new b[0];

        /* renamed from: e  reason: collision with root package name */
        public final m.j<? super T> f7331e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f7332f;

        /* renamed from: g  reason: collision with root package name */
        public final int f7333g;

        /* renamed from: h  reason: collision with root package name */
        public c<T> f7334h;

        /* renamed from: i  reason: collision with root package name */
        public volatile Queue<Object> f7335i;

        /* renamed from: j  reason: collision with root package name */
        public volatile m.s.a f7336j;

        /* renamed from: k  reason: collision with root package name */
        public volatile ConcurrentLinkedQueue<Throwable> f7337k;

        /* renamed from: l  reason: collision with root package name */
        public volatile boolean f7338l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f7339m;
        public boolean n;
        public final Object o = new Object();
        public volatile b<?>[] p = v;
        public long q;
        public long r;
        public int s;
        public final int t;
        public int u;

        public d(m.j<? super T> jVar, boolean z, int i2) {
            this.f7331e = jVar;
            this.f7332f = z;
            this.f7333g = i2;
            if (i2 == Integer.MAX_VALUE) {
                this.t = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                h(RecyclerView.FOREVER_NS);
                return;
            }
            this.t = Math.max(1, i2 >> 1);
            h(i2);
        }

        @Override // m.j
        public void d() {
            this.f7338l = true;
            k();
        }

        @Override // m.j
        public void e(Throwable th) {
            m().offer(th);
            this.f7338l = true;
            k();
        }

        @Override // m.j
        public void f(Object obj) {
            boolean z;
            m.e<Object> eVar = (m.e) obj;
            if (eVar == null) {
                return;
            }
            boolean z2 = true;
            if (eVar == m.o.a.a.b) {
                int i2 = this.u + 1;
                if (i2 == this.t) {
                    this.u = 0;
                    h(i2);
                    return;
                }
                this.u = i2;
            } else if (eVar instanceof m.o.d.d) {
                m.o.d.d dVar = (m.o.d.d) eVar;
                long j2 = this.f7334h.get();
                if (j2 != 0) {
                    synchronized (this) {
                        j2 = this.f7334h.get();
                        if (this.f7339m || j2 == 0) {
                            z = false;
                        } else {
                            this.f7339m = true;
                            z = true;
                        }
                    }
                } else {
                    z = false;
                }
                if (z) {
                    Queue<Object> queue = this.f7335i;
                    if (queue != null && !queue.isEmpty()) {
                        n(null);
                        l();
                        return;
                    }
                    try {
                        this.f7331e.f(null);
                        if (j2 != RecyclerView.FOREVER_NS) {
                            try {
                                this.f7334h.a(1);
                            }
                        }
                        int i3 = this.u + 1;
                        if (i3 == this.t) {
                            this.u = 0;
                            h(i3);
                        } else {
                            this.u = i3;
                        }
                        synchronized (this) {
                            if (!this.n) {
                                this.f7339m = false;
                            } else {
                                this.n = false;
                                l();
                            }
                        }
                        return;
                    }
                }
                n(null);
                k();
            } else {
                long j3 = this.q;
                this.q = 1 + j3;
                b<?> bVar = new b<>(this, j3);
                m.s.a aVar = this.f7336j;
                if (aVar == null) {
                    synchronized (this) {
                        aVar = this.f7336j;
                        if (aVar == null) {
                            aVar = new m.s.a();
                            this.f7336j = aVar;
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

        public boolean j() {
            if (this.f7331e.a.b) {
                return true;
            }
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f7337k;
            if (this.f7332f || concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
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
                if (this.f7339m) {
                    this.n = true;
                    return;
                }
                this.f7339m = true;
                l();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:135:0x0170, code lost:
            r11 = r9.f7328g;
            r14 = r9.f7329h;
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:0x0174, code lost:
            if (r11 == false) goto L108;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:0x0176, code lost:
            if (r14 == null) goto L103;
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x0178, code lost:
            r11 = r14.a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:139:0x017a, code lost:
            if (r11 == null) goto L102;
         */
        /* JADX WARN: Code restructure failed: missing block: B:141:0x0180, code lost:
            if (r11.isEmpty() == false) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x0183, code lost:
            r11 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x0185, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:145:0x0186, code lost:
            if (r11 == false) goto L108;
         */
        /* JADX WARN: Code restructure failed: missing block: B:146:0x0188, code lost:
            p(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:147:0x018f, code lost:
            if (j() == false) goto L105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:148:0x0191, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:149:0x0192, code lost:
            r6 = r6 + 1;
            r8 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x0195, code lost:
            if (r3 != 0) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x0198, code lost:
            r0 = r0 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x019a, code lost:
            if (r0 != r7) goto L114;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x019c, code lost:
            r0 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:155:0x019d, code lost:
            r2 = r2 + 1;
            r13 = 0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void l() {
            /*
                Method dump skipped, instructions count: 479
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: m.o.a.g.d.l():void");
        }

        public Queue<Throwable> m() {
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f7337k;
            if (concurrentLinkedQueue == null) {
                synchronized (this) {
                    concurrentLinkedQueue = this.f7337k;
                    if (concurrentLinkedQueue == null) {
                        concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                        this.f7337k = concurrentLinkedQueue;
                    }
                }
            }
            return concurrentLinkedQueue;
        }

        public void n(T t) {
            Queue<Object> cVar;
            Queue<Object> queue = this.f7335i;
            if (queue == null) {
                int i2 = this.f7333g;
                if (i2 == Integer.MAX_VALUE) {
                    queue = new m.o.d.i.d<>(m.o.d.b.f7379c);
                } else {
                    if (((i2 + (-1)) & i2) == 0) {
                        if (o.b()) {
                            cVar = new m.o.d.j.j<>(i2);
                        } else {
                            cVar = new m.o.d.i.b<>(i2);
                        }
                    } else {
                        cVar = new m.o.d.i.c<>(i2);
                    }
                    queue = cVar;
                }
                this.f7335i = queue;
            }
            if (queue.offer(t == null ? m.o.a.b.a : t)) {
                return;
            }
            this.a.c();
            m().offer(m.m.f.a(new m.m.b(), t));
            this.f7338l = true;
            k();
        }

        public void o(b<T> bVar, T t) {
            m.o.d.b bVar2 = bVar.f7329h;
            if (bVar2 == null) {
                if (o.b()) {
                    bVar2 = new m.o.d.b(false, m.o.d.b.f7379c);
                } else {
                    bVar2 = new m.o.d.b();
                }
                bVar.a.b(bVar2);
                bVar.f7329h = bVar2;
            }
            if (t == null) {
                try {
                    t = (T) m.o.a.b.a;
                } catch (IllegalStateException e2) {
                    if (bVar.a.b) {
                        return;
                    }
                    bVar.a.c();
                    bVar.e(e2);
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
            m.o.d.b bVar2 = bVar.f7329h;
            if (bVar2 != null) {
                synchronized (bVar2) {
                }
            }
            this.f7336j.e(bVar);
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
                if (i2 < 0) {
                    return;
                }
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

        public final void q() {
            ArrayList arrayList = new ArrayList(this.f7337k);
            if (arrayList.size() == 1) {
                this.f7331e.e((Throwable) arrayList.get(0));
            } else {
                this.f7331e.e(new m.m.a(arrayList));
            }
        }
    }

    public g(boolean z, int i2) {
        this.a = z;
        this.b = i2;
    }

    @Override // m.n.c
    public Object a(Object obj) {
        m.j jVar = (m.j) obj;
        d dVar = new d(jVar, this.a, this.b);
        c<T> cVar = new c<>(dVar);
        dVar.f7334h = cVar;
        jVar.a.b(dVar);
        jVar.i(cVar);
        return dVar;
    }
}
