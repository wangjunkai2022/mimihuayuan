package i.m0.g;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.internal.view.SupportMenu;
import i.m0.g.l;
import i.m0.i.f;
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
    public final Map<Integer, m> f6721c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    public final String f6722d;

    /* renamed from: e  reason: collision with root package name */
    public int f6723e;

    /* renamed from: f  reason: collision with root package name */
    public int f6724f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6725g;

    /* renamed from: h  reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f6726h;

    /* renamed from: i  reason: collision with root package name */
    public final ThreadPoolExecutor f6727i;

    /* renamed from: j  reason: collision with root package name */
    public final q f6728j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6729k;

    /* renamed from: l  reason: collision with root package name */
    public final r f6730l;

    /* renamed from: m  reason: collision with root package name */
    public final r f6731m;
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
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String l2 = f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6722d, " ping");
            Thread currentThread = Thread.currentThread();
            h.o.c.g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(l2);
            try {
                f.this.I(false, 0, 0);
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
        public j.j f6732c;

        /* renamed from: d  reason: collision with root package name */
        public j.i f6733d;

        /* renamed from: e  reason: collision with root package name */
        public c f6734e = c.a;

        /* renamed from: f  reason: collision with root package name */
        public q f6735f = q.a;

        /* renamed from: g  reason: collision with root package name */
        public int f6736g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f6737h;

        public b(boolean z) {
            this.f6737h = z;
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
                    mVar.c(i.m0.g.b.REFUSED_STREAM, null);
                } else {
                    h.o.c.g.f("stream");
                    throw null;
                }
            }
        }

        public void a(f fVar) {
            if (fVar != null) {
                return;
            }
            h.o.c.g.f("connection");
            throw null;
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
                h.o.c.g.b(currentThread, "currentThread");
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
            public final /* synthetic */ d f6738c;

            public b(String str, m mVar, d dVar, m mVar2, int i2, List list, boolean z) {
                this.a = str;
                this.b = mVar;
                this.f6738c = dVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                h.o.c.g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    try {
                        f.this.b.b(this.b);
                    } catch (IOException e2) {
                        f.a aVar = i.m0.i.f.f6816c;
                        i.m0.i.f fVar = i.m0.i.f.a;
                        fVar.k(4, "Http2Connection.Listener failure for " + f.this.f6722d, e2);
                        try {
                            this.b.c(i.m0.g.b.PROTOCOL_ERROR, e2);
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
            public final /* synthetic */ int f6739c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ int f6740d;

            public c(String str, d dVar, int i2, int i3) {
                this.a = str;
                this.b = dVar;
                this.f6739c = i2;
                this.f6740d = i3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                h.o.c.g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    f.this.I(true, this.f6739c, this.f6740d);
                } finally {
                    currentThread.setName(name);
                }
            }
        }

        /* compiled from: Util.kt */
        /* renamed from: i.m0.g.f$d$d  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class RunnableC0110d implements Runnable {
            public final /* synthetic */ String a;
            public final /* synthetic */ d b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ boolean f6741c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ r f6742d;

            public RunnableC0110d(String str, d dVar, boolean z, r rVar) {
                this.a = str;
                this.b = dVar;
                this.f6741c = z;
                this.f6742d = rVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                String str = this.a;
                Thread currentThread = Thread.currentThread();
                h.o.c.g.b(currentThread, "currentThread");
                String name = currentThread.getName();
                currentThread.setName(str);
                try {
                    this.b.k(this.f6741c, this.f6742d);
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
                f.this.f6726h.execute(new RunnableC0110d(f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6722d, " ACK Settings"), this, z, rVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:59:0x010f, code lost:
            throw new h.f("null cannot be cast to non-null type java.lang.Object");
         */
        @Override // i.m0.g.l.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void c(boolean r18, int r19, j.j r20, int r21) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 306
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: i.m0.g.f.d.c(boolean, int, j.j, int):void");
        }

        @Override // i.m0.g.l.b
        public void d(boolean z, int i2, int i3) {
            if (z) {
                synchronized (f.this) {
                    f.this.f6729k = false;
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
                f.this.f6726h.execute(new c(f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6722d, " ping"), this, i2, i3));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // i.m0.g.l.b
        public void e(int i2, int i3, int i4, boolean z) {
        }

        @Override // i.m0.g.l.b
        public void f(int i2, i.m0.g.b bVar) {
            if (bVar != null) {
                if (f.this.g(i2)) {
                    f fVar = f.this;
                    if (fVar.f6725g) {
                        return;
                    }
                    ThreadPoolExecutor threadPoolExecutor = fVar.f6727i;
                    StringBuilder o = f.b.a.a.a.o("OkHttp ");
                    o.append(fVar.f6722d);
                    o.append(" Push Reset[");
                    o.append(i2);
                    o.append(']');
                    threadPoolExecutor.execute(new j(o.toString(), fVar, i2, bVar));
                    return;
                }
                m E = f.this.E(i2);
                if (E != null) {
                    E.k(bVar);
                    return;
                }
                return;
            }
            h.o.c.g.f("errorCode");
            throw null;
        }

        @Override // i.m0.g.l.b
        public void g(boolean z, int i2, int i3, List<i.m0.g.c> list) {
            boolean z2;
            if (f.this.g(i2)) {
                f fVar = f.this;
                if (fVar.f6725g) {
                    return;
                }
                ThreadPoolExecutor threadPoolExecutor = fVar.f6727i;
                StringBuilder o = f.b.a.a.a.o("OkHttp ");
                o.append(fVar.f6722d);
                o.append(" Push Headers[");
                o.append(i2);
                o.append(']');
                try {
                    threadPoolExecutor.execute(new h(o.toString(), fVar, i2, list, z));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (f.this) {
                m e2 = f.this.e(i2);
                if (e2 == null) {
                    f fVar2 = f.this;
                    synchronized (fVar2) {
                        z2 = fVar2.f6725g;
                    }
                    if (z2) {
                        return;
                    }
                    if (i2 <= f.this.f6723e) {
                        return;
                    }
                    if (i2 % 2 == f.this.f6724f % 2) {
                        return;
                    }
                    m mVar = new m(i2, f.this, false, z, i.m0.b.B(list));
                    f.this.f6723e = i2;
                    f.this.f6721c.put(Integer.valueOf(i2), mVar);
                    ThreadPoolExecutor threadPoolExecutor2 = f.v;
                    threadPoolExecutor2.execute(new b("OkHttp " + f.this.f6722d + " stream " + i2, mVar, this, e2, i2, list, z));
                    return;
                }
                e2.j(i.m0.b.B(list), z);
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
                    e2.f6773d += j2;
                    if (j2 > 0) {
                        e2.notifyAll();
                    }
                }
            }
        }

        @Override // i.m0.g.l.b
        public void i(int i2, int i3, List<i.m0.g.c> list) {
            f fVar = f.this;
            synchronized (fVar) {
                if (fVar.u.contains(Integer.valueOf(i3))) {
                    fVar.J(i3, i.m0.g.b.PROTOCOL_ERROR);
                    return;
                }
                fVar.u.add(Integer.valueOf(i3));
                if (fVar.f6725g) {
                    return;
                }
                ThreadPoolExecutor threadPoolExecutor = fVar.f6727i;
                StringBuilder o = f.b.a.a.a.o("OkHttp ");
                o.append(fVar.f6722d);
                o.append(" Push Request[");
                o.append(i3);
                o.append(']');
                try {
                    threadPoolExecutor.execute(new i(o.toString(), fVar, i3, list));
                } catch (RejectedExecutionException unused) {
                }
            }
        }

        @Override // i.m0.g.l.b
        public void j(int i2, i.m0.g.b bVar, j.k kVar) {
            int i3;
            m[] mVarArr;
            if (bVar == null) {
                h.o.c.g.f("errorCode");
                throw null;
            } else if (kVar != null) {
                kVar.b();
                synchronized (f.this) {
                    Object[] array = f.this.f6721c.values().toArray(new m[0]);
                    if (array != null) {
                        mVarArr = (m[]) array;
                        f.this.f6725g = true;
                    } else {
                        throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                for (m mVar : mVarArr) {
                    if (mVar.f6782m > i2 && mVar.h()) {
                        mVar.k(i.m0.g.b.REFUSED_STREAM);
                        f.this.E(mVar.f6782m);
                    }
                }
            } else {
                h.o.c.g.f("debugData");
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
                        int a2 = f.this.f6731m.a();
                        if (z) {
                            r rVar2 = f.this.f6731m;
                            rVar2.a = 0;
                            int[] iArr = rVar2.b;
                            Arrays.fill(iArr, 0, iArr.length, 0);
                        }
                        r rVar3 = f.this.f6731m;
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
                            int a3 = f.this.f6731m.a();
                            if (a3 == -1 || a3 == a2) {
                                j2 = 0;
                            } else {
                                j2 = a3 - a2;
                                if (!f.this.f6721c.isEmpty()) {
                                    Object[] array = f.this.f6721c.values().toArray(new m[0]);
                                    if (array == null) {
                                        throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                                    }
                                    mVarArr = (m[]) array;
                                }
                            }
                        } else {
                            throw null;
                        }
                    }
                    try {
                        f.this.s.d(f.this.f6731m);
                    } catch (IOException e2) {
                        f fVar = f.this;
                        i.m0.g.b bVar = i.m0.g.b.PROTOCOL_ERROR;
                        fVar.d(bVar, bVar, e2);
                    }
                }
                if (mVarArr != null) {
                    for (m mVar : mVarArr) {
                        synchronized (mVar) {
                            mVar.f6773d += j2;
                            if (j2 > 0) {
                                mVar.notifyAll();
                            }
                        }
                    }
                }
                f.v.execute(new a(f.b.a.a.a.l(f.b.a.a.a.o("OkHttp "), f.this.f6722d, " settings"), this));
                return;
            }
            h.o.c.g.f("settings");
            throw null;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.m0.g.b bVar;
            i.m0.g.b bVar2 = i.m0.g.b.PROTOCOL_ERROR;
            i.m0.g.b bVar3 = i.m0.g.b.INTERNAL_ERROR;
            try {
                try {
                    this.a.e(this);
                    while (this.a.d(false, this)) {
                    }
                    bVar = i.m0.g.b.NO_ERROR;
                    try {
                        f.this.d(bVar, i.m0.g.b.CANCEL, null);
                    } catch (Throwable th) {
                        th = th;
                        f.this.d(bVar, bVar3, null);
                        i.m0.b.f(this.a);
                        throw th;
                    }
                } catch (IOException e2) {
                    f.this.d(bVar2, bVar2, e2);
                }
                i.m0.b.f(this.a);
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar3;
            }
        }
    }

    /* compiled from: Util.kt */
    /* loaded from: classes.dex */
    public static final class e implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ f b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f6743c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ i.m0.g.b f6744d;

        public e(String str, f fVar, int i2, i.m0.g.b bVar) {
            this.a = str;
            this.b = fVar;
            this.f6743c = i2;
            this.f6744d = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            f fVar;
            int i2;
            i.m0.g.b bVar;
            String str = this.a;
            Thread currentThread = Thread.currentThread();
            h.o.c.g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(str);
            try {
                try {
                    fVar = this.b;
                    i2 = this.f6743c;
                    bVar = this.f6744d;
                } catch (IOException e2) {
                    f fVar2 = this.b;
                    i.m0.g.b bVar2 = i.m0.g.b.PROTOCOL_ERROR;
                    fVar2.d(bVar2, bVar2, e2);
                }
                if (bVar != null) {
                    fVar.s.G(i2, bVar);
                } else {
                    h.o.c.g.f("statusCode");
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
    public static final class RunnableC0111f implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ f b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f6745c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ long f6746d;

        public RunnableC0111f(String str, f fVar, int i2, long j2) {
            this.a = str;
            this.b = fVar;
            this.f6745c = i2;
            this.f6746d = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = this.a;
            Thread currentThread = Thread.currentThread();
            h.o.c.g.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(str);
            try {
                try {
                    this.b.s.H(this.f6745c, this.f6746d);
                } catch (IOException e2) {
                    f fVar = this.b;
                    i.m0.g.b bVar = i.m0.g.b.PROTOCOL_ERROR;
                    fVar.d(bVar, bVar, e2);
                }
            } finally {
                currentThread.setName(name);
            }
        }
    }

    public f(b bVar) {
        this.a = bVar.f6737h;
        this.b = bVar.f6734e;
        String str = bVar.b;
        if (str != null) {
            this.f6722d = str;
            this.f6724f = bVar.f6737h ? 3 : 2;
            this.f6726h = new ScheduledThreadPoolExecutor(1, i.m0.b.A(i.m0.b.l("OkHttp %s Writer", this.f6722d), false));
            this.f6727i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.m0.b.A(i.m0.b.l("OkHttp %s Push Observer", this.f6722d), true));
            this.f6728j = bVar.f6735f;
            r rVar = new r();
            if (bVar.f6737h) {
                rVar.b(7, 16777216);
            }
            this.f6730l = rVar;
            r rVar2 = new r();
            rVar2.b(7, SupportMenu.USER_MASK);
            rVar2.b(5, 16384);
            this.f6731m = rVar2;
            this.q = rVar2.a();
            Socket socket = bVar.a;
            if (socket != null) {
                this.r = socket;
                j.i iVar = bVar.f6733d;
                if (iVar != null) {
                    this.s = new n(iVar, this.a);
                    j.j jVar = bVar.f6732c;
                    if (jVar != null) {
                        this.t = new d(new l(jVar, this.a));
                        this.u = new LinkedHashSet();
                        if (bVar.f6736g != 0) {
                            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f6726h;
                            a aVar = new a();
                            long j2 = bVar.f6736g;
                            scheduledThreadPoolExecutor.scheduleAtFixedRate(aVar, j2, j2, TimeUnit.MILLISECONDS);
                            return;
                        }
                        return;
                    }
                    h.o.c.g.g("source");
                    throw null;
                }
                h.o.c.g.g("sink");
                throw null;
            }
            h.o.c.g.g("socket");
            throw null;
        }
        h.o.c.g.g("connectionName");
        throw null;
    }

    public final synchronized m E(int i2) {
        m remove;
        remove = this.f6721c.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public final void F(i.m0.g.b bVar) throws IOException {
        synchronized (this.s) {
            synchronized (this) {
                if (this.f6725g) {
                    return;
                }
                this.f6725g = true;
                this.s.g(this.f6723e, bVar, i.m0.b.a);
            }
        }
    }

    public final synchronized void G(long j2) {
        long j3 = this.n + j2;
        this.n = j3;
        long j4 = j3 - this.o;
        if (j4 >= this.f6730l.a() / 2) {
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
                        if (this.f6721c.containsKey(Integer.valueOf(i2))) {
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
                this.p += min;
            }
            j2 -= min;
            this.s.e(z && j2 == 0, i2, gVar, min);
        }
    }

    public final void I(boolean z, int i2, int i3) {
        boolean z2;
        i.m0.g.b bVar = i.m0.g.b.PROTOCOL_ERROR;
        if (!z) {
            synchronized (this) {
                z2 = this.f6729k;
                this.f6729k = true;
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

    public final void J(int i2, i.m0.g.b bVar) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f6726h;
        StringBuilder o = f.b.a.a.a.o("OkHttp ");
        o.append(this.f6722d);
        o.append(" stream ");
        o.append(i2);
        try {
            scheduledThreadPoolExecutor.execute(new e(o.toString(), this, i2, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void K(int i2, long j2) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f6726h;
        StringBuilder o = f.b.a.a.a.o("OkHttp Window Update ");
        o.append(this.f6722d);
        o.append(" stream ");
        o.append(i2);
        try {
            scheduledThreadPoolExecutor.execute(new RunnableC0111f(o.toString(), this, i2, j2));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d(i.m0.g.b.NO_ERROR, i.m0.g.b.CANCEL, null);
    }

    public final void d(i.m0.g.b bVar, i.m0.g.b bVar2, IOException iOException) {
        int i2;
        m[] mVarArr;
        boolean z = !Thread.holdsLock(this);
        if (h.j.a && !z) {
            throw new AssertionError("Assertion failed");
        }
        try {
            F(bVar);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (!this.f6721c.isEmpty()) {
                Object[] array = this.f6721c.values().toArray(new m[0]);
                if (array != null) {
                    mVarArr = (m[]) array;
                    this.f6721c.clear();
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
        this.f6726h.shutdown();
        this.f6727i.shutdown();
    }

    public final synchronized m e(int i2) {
        return this.f6721c.get(Integer.valueOf(i2));
    }

    public final synchronized int f() {
        int i2;
        r rVar = this.f6731m;
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
