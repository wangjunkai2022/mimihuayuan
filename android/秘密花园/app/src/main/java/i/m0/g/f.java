package i.m0.g;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.internal.view.SupportMenu;
import h.o.c.g;
import i.m0.g.l;
import i.m0.i.f;
import j.i;
import j.j;
import j.k;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Http2Connection.kt */
/* loaded from: classes.dex */
public final class f implements Closeable {
    public static final ThreadPoolExecutor v = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), i.m0.b.A("OkHttp Http2Connection", true));
    public final boolean a;
    public final c b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<Integer, m> f6646c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    public final String f6647d;

    /* renamed from: e  reason: collision with root package name */
    public int f6648e;

    /* renamed from: f  reason: collision with root package name */
    public int f6649f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6650g;

    /* renamed from: h  reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f6651h;

    /* renamed from: i  reason: collision with root package name */
    public final ThreadPoolExecutor f6652i;

    /* renamed from: j  reason: collision with root package name */
    public final q f6653j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6654k;

    /* renamed from: l  reason: collision with root package name */
    public final r f6655l;

    /* renamed from: m  reason: collision with root package name */
    public final r f6656m;
    public long n;
    public long o;
    public long p;
    public long q;
    public final Socket r;
    public final n s;
    public final d t;
    public final Set<Integer> u;

    /* compiled from: Http2Connection.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {
        public final /* synthetic */ f a;

        public a(f fVar) {
            this.a = fVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String l2 = f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), this.a.f6647d, " ping");
            Thread currentThread = Thread.currentThread();
            g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(l2);
            try {
                this.a.I(false, 0, 0);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: Http2Connection.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public Socket a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public j f6657c;

        /* renamed from: d  reason: collision with root package name */
        public i f6658d;

        /* renamed from: e  reason: collision with root package name */
        public c f6659e = c.a;

        /* renamed from: f  reason: collision with root package name */
        public q f6660f = q.a;

        /* renamed from: g  reason: collision with root package name */
        public int f6661g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f6662h;

        public b(boolean z) {
            this.f6662h = z;
        }
    }

    /* compiled from: Http2Connection.kt */
    /* loaded from: classes.dex */
    public static abstract class c {
        public static final c a = new a();

        /* compiled from: Http2Connection.kt */
        /* loaded from: classes.dex */
        public static final class a extends c {
            @Override // i.m0.g.f.c
            public void b(m mVar) throws IOException {
                if (mVar != null) {
                    mVar.c(b.REFUSED_STREAM, null);
                } else {
                    g.f("stream");
                    throw null;
                }
            }
        }

        public void a(f fVar) {
            if (fVar == null) {
                g.f("connection");
                throw null;
            }
        }

        public abstract void b(m mVar) throws IOException;
    }

    /* compiled from: Http2Connection.kt */
    /* loaded from: classes.dex */
    public final class d implements Runnable, l.b {
        public final l a;

        /* compiled from: Util.kt */
        /* loaded from: classes.dex */
        public static final class a implements Runnable {
            public final /* synthetic */ String a;
            public final /* synthetic */ d b;

            public a(String str, d dVar) {
                this.a = str;
                this.b = dVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    f.this.b.a(f.this);
                } finally {
                    currentThread.setName(name);
                }
            }
        }

        /* compiled from: Util.kt */
        /* loaded from: classes.dex */
        public static final class b implements Runnable {
            public final /* synthetic */ String a;
            public final /* synthetic */ m b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ d f6663c;

            public b(String str, m mVar, d dVar, m mVar2, int i2, List list, boolean z) {
                this.a = str;
                this.b = mVar;
                this.f6663c = dVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    try {
                        f.this.b.b(this.b);
                    } catch (IOException e2) {
                        f.a aVar = i.m0.i.f.f6741c;
                        i.m0.i.f fVar = i.m0.i.f.a;
                        fVar.k(4, "Http2Connection.Listener failure for " + f.this.f6647d, e2);
                        try {
                            this.b.c(b.PROTOCOL_ERROR, e2);
                        } catch (IOException unused) {
                        }
                    }
                } finally {
                    currentThread.setName(name);
                }
            }
        }

        /* compiled from: Util.kt */
        /* loaded from: classes.dex */
        public static final class c implements Runnable {
            public final /* synthetic */ String a;
            public final /* synthetic */ d b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ int f6664c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ int f6665d;

            public c(String str, d dVar, int i2, int i3) {
                this.a = str;
                this.b = dVar;
                this.f6664c = i2;
                this.f6665d = i3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    f.this.I(true, this.f6664c, this.f6665d);
                } finally {
                    currentThread.setName(name);
                }
            }
        }

        /* compiled from: Util.kt */
        /* renamed from: i.m0.g.f$d$d  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class RunnableC0103d implements Runnable {
            public final /* synthetic */ String a;
            public final /* synthetic */ d b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ boolean f6666c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ r f6667d;

            public RunnableC0103d(String str, d dVar, boolean z, r rVar) {
                this.a = str;
                this.b = dVar;
                this.f6666c = z;
                this.f6667d = rVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    this.b.k(this.f6666c, this.f6667d);
                } finally {
                    currentThread.setName(name);
                }
            }
        }

        public d(l lVar) {
            this.a = lVar;
        }

        @Override // i.m0.g.l.b
        public void a() {
        }

        @Override // i.m0.g.l.b
        public void b(boolean z, r rVar) {
            try {
                f.this.f6651h.execute(new RunnableC0103d(f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6647d, " ACK Settings"), this, z, rVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:57:0x010f, code lost:
            throw new h.f("null cannot be cast to non-null type java.lang.Object");
         */
        @Override // i.m0.g.l.b
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void c(boolean r18, int r19, j.j r20, int r21) throws java.io.IOException {
            /*
            // Method dump skipped, instructions count: 306
            */
            throw new UnsupportedOperationException("Method not decompiled: i.m0.g.f.d.c(boolean, int, j.j, int):void");
        }

        @Override // i.m0.g.l.b
        public void d(boolean z, int i2, int i3) {
            if (z) {
                synchronized (f.this) {
                    f.this.f6654k = false;
                    f fVar = f.this;
                    if (fVar != null) {
                        fVar.notifyAll();
                    } else {
                        throw new h.f("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                return;
            }
            try {
                f.this.f6651h.execute(new c(f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6647d, " ping"), this, i2, i3));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // i.m0.g.l.b
        public void e(int i2, int i3, int i4, boolean z) {
        }

        @Override // i.m0.g.l.b
        public void f(int i2, b bVar) {
            if (bVar == null) {
                g.f("errorCode");
                throw null;
            } else if (f.this.g(i2)) {
                f fVar = f.this;
                if (!fVar.f6650g) {
                    ThreadPoolExecutor threadPoolExecutor = fVar.f6652i;
                    StringBuilder o = f.b.a.a.a.o("OkHttp ");
                    o.append(fVar.f6647d);
                    o.append(" Push Reset[");
                    o.append(i2);
                    o.append(']');
                    threadPoolExecutor.execute(new j(o.toString(), fVar, i2, bVar));
                }
            } else {
                m E = f.this.E(i2);
                if (E != null) {
                    E.k(bVar);
                }
            }
        }

        @Override // i.m0.g.l.b
        public void g(boolean z, int i2, int i3, List<c> list) {
            boolean z2;
            if (f.this.g(i2)) {
                f fVar = f.this;
                if (!fVar.f6650g) {
                    ThreadPoolExecutor threadPoolExecutor = fVar.f6652i;
                    StringBuilder o = f.b.a.a.a.o("OkHttp ");
                    o.append(fVar.f6647d);
                    o.append(" Push Headers[");
                    o.append(i2);
                    o.append(']');
                    try {
                        threadPoolExecutor.execute(new h(o.toString(), fVar, i2, list, z));
                    } catch (RejectedExecutionException unused) {
                    }
                }
            } else {
                synchronized (f.this) {
                    m e2 = f.this.e(i2);
                    if (e2 == null) {
                        f fVar2 = f.this;
                        synchronized (fVar2) {
                            z2 = fVar2.f6650g;
                        }
                        if (!z2) {
                            if (i2 > f.this.f6648e) {
                                if (i2 % 2 != f.this.f6649f % 2) {
                                    m mVar = new m(i2, f.this, false, z, i.m0.b.B(list));
                                    f.this.f6648e = i2;
                                    f.this.f6646c.put(Integer.valueOf(i2), mVar);
                                    ThreadPoolExecutor threadPoolExecutor2 = f.v;
                                    threadPoolExecutor2.execute(new b("OkHttp " + f.this.f6647d + " stream " + i2, mVar, this, e2, i2, list, z));
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    e2.j(i.m0.b.B(list), z);
                }
            }
        }

        @Override // i.m0.g.l.b
        public void h(int i2, long j2) {
            if (i2 == 0) {
                synchronized (f.this) {
                    f.this.q += j2;
                    f fVar = f.this;
                    if (fVar != null) {
                        fVar.notifyAll();
                    } else {
                        throw new h.f("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                return;
            }
            m e2 = f.this.e(i2);
            if (e2 != null) {
                synchronized (e2) {
                    e2.f6698d += j2;
                    if (j2 > 0) {
                        e2.notifyAll();
                    }
                }
            }
        }

        @Override // i.m0.g.l.b
        public void i(int i2, int i3, List<c> list) {
            f fVar = f.this;
            synchronized (fVar) {
                if (fVar.u.contains(Integer.valueOf(i3))) {
                    fVar.J(i3, b.PROTOCOL_ERROR);
                    return;
                }
                fVar.u.add(Integer.valueOf(i3));
                if (!fVar.f6650g) {
                    ThreadPoolExecutor threadPoolExecutor = fVar.f6652i;
                    StringBuilder o = f.b.a.a.a.o("OkHttp ");
                    o.append(fVar.f6647d);
                    o.append(" Push Request[");
                    o.append(i3);
                    o.append(']');
                    try {
                        threadPoolExecutor.execute(new i(o.toString(), fVar, i3, list));
                    } catch (RejectedExecutionException unused) {
                    }
                }
            }
        }

        @Override // i.m0.g.l.b
        public void j(int i2, b bVar, k kVar) {
            int i3;
            m[] mVarArr;
            if (bVar == null) {
                g.f("errorCode");
                throw null;
            } else if (kVar != null) {
                kVar.b();
                synchronized (f.this) {
                    Object[] array = f.this.f6646c.values().toArray(new m[0]);
                    if (array != null) {
                        mVarArr = (m[]) array;
                        f.this.f6650g = true;
                    } else {
                        throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                for (m mVar : mVarArr) {
                    if (mVar.f6707m > i2 && mVar.h()) {
                        mVar.k(b.REFUSED_STREAM);
                        f.this.E(mVar.f6707m);
                    }
                }
            } else {
                g.f("debugData");
                throw null;
            }
        }

        public final void k(boolean z, r rVar) {
            int i2;
            long j2;
            m[] mVarArr = null;
            if (rVar != null) {
                synchronized (f.this.s) {
                    synchronized (f.this) {
                        int a2 = f.this.f6656m.a();
                        if (z) {
                            r rVar2 = f.this.f6656m;
                            rVar2.a = 0;
                            int[] iArr = rVar2.b;
                            Arrays.fill(iArr, 0, iArr.length, 0);
                        }
                        r rVar3 = f.this.f6656m;
                        if (rVar3 != null) {
                            int i3 = 0;
                            while (true) {
                                boolean z2 = true;
                                if (i3 >= 10) {
                                    break;
                                }
                                if (((1 << i3) & rVar.a) == 0) {
                                    z2 = false;
                                }
                                if (z2) {
                                    rVar3.b(i3, rVar.b[i3]);
                                }
                                i3++;
                            }
                            int a3 = f.this.f6656m.a();
                            if (a3 == -1 || a3 == a2) {
                                j2 = 0;
                            } else {
                                j2 = (long) (a3 - a2);
                                if (!f.this.f6646c.isEmpty()) {
                                    Object[] array = f.this.f6646c.values().toArray(new m[0]);
                                    if (array != null) {
                                        mVarArr = (m[]) array;
                                    } else {
                                        throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                                    }
                                }
                            }
                        } else {
                            throw null;
                        }
                    }
                    try {
                        f.this.s.d(f.this.f6656m);
                    } catch (IOException e2) {
                        f fVar = f.this;
                        b bVar = b.PROTOCOL_ERROR;
                        fVar.d(bVar, bVar, e2);
                    }
                }
                if (mVarArr != null) {
                    for (m mVar : mVarArr) {
                        synchronized (mVar) {
                            mVar.f6698d += j2;
                            if (j2 > 0) {
                                mVar.notifyAll();
                            }
                        }
                    }
                }
                f.v.execute(new a(f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6647d, " settings"), this));
                return;
            }
            g.f("settings");
            throw null;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar;
            Throwable th;
            b bVar2 = b.PROTOCOL_ERROR;
            b bVar3 = b.INTERNAL_ERROR;
            try {
                try {
                    this.a.e(this);
                    while (this.a.d(false, this)) {
                    }
                    bVar = b.NO_ERROR;
                } catch (Throwable th2) {
                    th = th2;
                    bVar = bVar3;
                }
            } catch (IOException e2) {
                f.this.d(bVar2, bVar2, e2);
            }
            try {
                f.this.d(bVar, b.CANCEL, null);
                i.m0.b.f(this.a);
            } catch (Throwable th3) {
                th = th3;
                f.this.d(bVar, bVar3, null);
                i.m0.b.f(this.a);
                throw th;
            }
        }
    }

    /* compiled from: Util.kt */
    /* loaded from: classes.dex */
    public static final class e implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ f b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f6668c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ b f6669d;

        public e(String str, f fVar, int i2, b bVar) {
            this.a = str;
            this.b = fVar;
            this.f6668c = i2;
            this.f6669d = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Thread currentThread;
            String name;
            f fVar;
            int i2;
            b bVar;
            try {
                String str = this.a;
                currentThread = Thread.currentThread();
                g.b(currentThread, "currentThread");
                name = currentThread.getName();
                currentThread.setName(str);
                try {
                    fVar = this.b;
                    i2 = this.f6668c;
                    bVar = this.f6669d;
                } catch (IOException e2) {
                    f fVar2 = this.b;
                    b bVar2 = b.PROTOCOL_ERROR;
                    fVar2.d(bVar2, bVar2, e2);
                }
                if (bVar != null) {
                    fVar.s.G(i2, bVar);
                } else {
                    g.f("statusCode");
                    throw null;
                }
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: Util.kt */
    /* renamed from: i.m0.g.f$f  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class RunnableC0104f implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ f b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f6670c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ long f6671d;

        public RunnableC0104f(String str, f fVar, int i2, long j2) {
            this.a = str;
            this.b = fVar;
            this.f6670c = i2;
            this.f6671d = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = this.a;
            Thread currentThread = Thread.currentThread();
            g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(str);
            try {
                try {
                    this.b.s.H(this.f6670c, this.f6671d);
                } catch (IOException e2) {
                    f fVar = this.b;
                    b bVar = b.PROTOCOL_ERROR;
                    fVar.d(bVar, bVar, e2);
                }
            } finally {
                currentThread.setName(name);
            }
        }
    }

    public f(b bVar) {
        this.a = bVar.f6662h;
        this.b = bVar.f6659e;
        String str = bVar.b;
        if (str != null) {
            this.f6647d = str;
            this.f6649f = bVar.f6662h ? 3 : 2;
            this.f6651h = new ScheduledThreadPoolExecutor(1, i.m0.b.A(i.m0.b.l("OkHttp %s Writer", this.f6647d), false));
            this.f6652i = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.m0.b.A(i.m0.b.l("OkHttp %s Push Observer", this.f6647d), true));
            this.f6653j = bVar.f6660f;
            r rVar = new r();
            if (bVar.f6662h) {
                rVar.b(7, 16777216);
            }
            this.f6655l = rVar;
            r rVar2 = new r();
            rVar2.b(7, SupportMenu.USER_MASK);
            rVar2.b(5, 16384);
            this.f6656m = rVar2;
            this.q = (long) rVar2.a();
            Socket socket = bVar.a;
            if (socket != null) {
                this.r = socket;
                i iVar = bVar.f6658d;
                if (iVar != null) {
                    this.s = new n(iVar, this.a);
                    j jVar = bVar.f6657c;
                    if (jVar != null) {
                        this.t = new d(new l(jVar, this.a));
                        this.u = new LinkedHashSet();
                        if (bVar.f6661g != 0) {
                            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f6651h;
                            a aVar = new a(this);
                            long j2 = (long) bVar.f6661g;
                            scheduledThreadPoolExecutor.scheduleAtFixedRate(aVar, j2, j2, TimeUnit.MILLISECONDS);
                            return;
                        }
                        return;
                    }
                    g.g("source");
                    throw null;
                }
                g.g("sink");
                throw null;
            }
            g.g("socket");
            throw null;
        }
        g.g("connectionName");
        throw null;
    }

    public final synchronized m E(int i2) {
        m remove;
        remove = this.f6646c.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public final void F(b bVar) throws IOException {
        synchronized (this.s) {
            synchronized (this) {
                if (!this.f6650g) {
                    this.f6650g = true;
                    this.s.g(this.f6648e, bVar, i.m0.b.a);
                }
            }
        }
    }

    public final synchronized void G(long j2) {
        long j3 = this.n + j2;
        this.n = j3;
        long j4 = j3 - this.o;
        if (j4 >= ((long) (this.f6655l.a() / 2))) {
            K(0, j4);
            this.o += j4;
        }
    }

    public final void H(int i2, boolean z, j.g gVar, long j2) throws IOException {
        int min;
        if (j2 == 0) {
            this.s.e(z, i2, gVar, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (this.p >= this.q) {
                    try {
                        if (this.f6646c.containsKey(Integer.valueOf(i2))) {
                            wait();
                        } else {
                            throw new IOException("stream closed");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j2, this.q - this.p), this.s.b);
                this.p += (long) min;
            }
            j2 -= (long) min;
            this.s.e(z && j2 == 0, i2, gVar, min);
        }
    }

    public final void I(boolean z, int i2, int i3) {
        boolean z2;
        b bVar = b.PROTOCOL_ERROR;
        if (!z) {
            synchronized (this) {
                z2 = this.f6654k;
                this.f6654k = true;
            }
            if (z2) {
                d(bVar, bVar, null);
                return;
            }
        }
        try {
            this.s.F(z, i2, i3);
        } catch (IOException e2) {
            d(bVar, bVar, e2);
        }
    }

    public final void J(int i2, b bVar) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f6651h;
        StringBuilder o = f.b.a.a.a.o("OkHttp ");
        o.append(this.f6647d);
        o.append(" stream ");
        o.append(i2);
        try {
            scheduledThreadPoolExecutor.execute(new e(o.toString(), this, i2, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void K(int i2, long j2) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f6651h;
        StringBuilder o = f.b.a.a.a.o("OkHttp Window Update ");
        o.append(this.f6647d);
        o.append(" stream ");
        o.append(i2);
        try {
            scheduledThreadPoolExecutor.execute(new RunnableC0104f(o.toString(), this, i2, j2));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d(b.NO_ERROR, b.CANCEL, null);
    }

    public final void d(b bVar, b bVar2, IOException iOException) {
        int i2;
        m[] mVarArr;
        boolean z = !Thread.holdsLock(this);
        if (!h.j.a || z) {
            try {
                F(bVar);
            } catch (IOException unused) {
            }
            synchronized (this) {
                if (!this.f6646c.isEmpty()) {
                    Object[] array = this.f6646c.values().toArray(new m[0]);
                    if (array != null) {
                        mVarArr = (m[]) array;
                        this.f6646c.clear();
                    } else {
                        throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                } else {
                    mVarArr = null;
                }
            }
            if (mVarArr != null) {
                for (m mVar : mVarArr) {
                    try {
                        mVar.c(bVar2, iOException);
                    } catch (IOException unused2) {
                    }
                }
            }
            try {
                this.s.close();
            } catch (IOException unused3) {
            }
            try {
                this.r.close();
            } catch (IOException unused4) {
            }
            this.f6651h.shutdown();
            this.f6652i.shutdown();
            return;
        }
        throw new AssertionError("Assertion failed");
    }

    public final synchronized m e(int i2) {
        return this.f6646c.get(Integer.valueOf(i2));
    }

    public final synchronized int f() {
        int i2;
        r rVar = this.f6656m;
        i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if ((rVar.a & 16) != 0) {
            i2 = rVar.b[4];
        }
        return i2;
    }

    public final boolean g(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }
}
