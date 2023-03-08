package f.d.a.s;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.n.l;
import f.d.a.o.n.r;
import f.d.a.o.n.w;
import f.d.a.s.h.h;
import f.d.a.s.i.a;
import f.d.a.u.i;
import f.d.a.u.j.d;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: SingleRequest.java */
/* loaded from: classes.dex */
public final class g<R> implements b, f.d.a.s.h.g, f {
    public static final boolean D = Log.isLoggable("Request", 2);
    @GuardedBy("requestLock")
    public int A;
    @GuardedBy("requestLock")
    public boolean B;
    @Nullable
    public RuntimeException C;
    @Nullable
    public final String a;
    public final f.d.a.u.j.d b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f3836c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final d<R> f3837d;

    /* renamed from: e  reason: collision with root package name */
    public final c f3838e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f3839f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.e f3840g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final Object f3841h;

    /* renamed from: i  reason: collision with root package name */
    public final Class<R> f3842i;

    /* renamed from: j  reason: collision with root package name */
    public final f.d.a.s.a<?> f3843j;

    /* renamed from: k  reason: collision with root package name */
    public final int f3844k;

    /* renamed from: l  reason: collision with root package name */
    public final int f3845l;

    /* renamed from: m  reason: collision with root package name */
    public final f.d.a.f f3846m;
    public final h<R> n;
    @Nullable
    public final List<d<R>> o;
    public final f.d.a.s.i.c<? super R> p;
    public final Executor q;
    @GuardedBy("requestLock")
    public w<R> r;
    @GuardedBy("requestLock")
    public l.d s;
    @GuardedBy("requestLock")
    public long t;
    public volatile l u;
    @GuardedBy("requestLock")
    public a v;
    @Nullable
    @GuardedBy("requestLock")
    public Drawable w;
    @Nullable
    @GuardedBy("requestLock")
    public Drawable x;
    @Nullable
    @GuardedBy("requestLock")
    public Drawable y;
    @GuardedBy("requestLock")
    public int z;

    /* compiled from: SingleRequest.java */
    /* loaded from: classes.dex */
    public enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public g(Context context, f.d.a.e eVar, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, f.d.a.s.a<?> aVar, int i2, int i3, f.d.a.f fVar, h<R> hVar, @Nullable d<R> dVar, @Nullable List<d<R>> list, c cVar, l lVar, f.d.a.s.i.c<? super R> cVar2, Executor executor) {
        this.a = D ? String.valueOf(super.hashCode()) : null;
        this.b = new d.b();
        this.f3836c = obj;
        this.f3839f = context;
        this.f3840g = eVar;
        this.f3841h = obj2;
        this.f3842i = cls;
        this.f3843j = aVar;
        this.f3844k = i2;
        this.f3845l = i3;
        this.f3846m = fVar;
        this.n = hVar;
        this.f3837d = dVar;
        this.o = list;
        this.f3838e = cVar;
        this.u = lVar;
        this.p = cVar2;
        this.q = executor;
        this.v = a.PENDING;
        if (this.C == null && eVar.f3456h) {
            this.C = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // f.d.a.s.b
    public boolean a() {
        boolean z;
        synchronized (this.f3836c) {
            z = this.v == a.CLEARED;
        }
        return z;
    }

    @Override // f.d.a.s.b
    public void b() {
        synchronized (this.f3836c) {
            if (isRunning()) {
                clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0084 A[Catch: all -> 0x00a0, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x0019, B:8:0x0023, B:9:0x002b, B:13:0x0034, B:14:0x003e, B:16:0x0040, B:18:0x0044, B:20:0x004a, B:21:0x0051, B:23:0x0053, B:25:0x005f, B:27:0x006c, B:29:0x0070, B:40:0x008d, B:42:0x0091, B:43:0x0096, B:31:0x0074, B:33:0x0078, B:39:0x0084, B:26:0x0067, B:45:0x0098, B:46:0x009f), top: B:50:0x0007 }] */
    @Override // f.d.a.s.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c() {
        /*
            r5 = this;
            f.d.a.s.g$a r0 = f.d.a.s.g.a.WAITING_FOR_SIZE
            f.d.a.s.g$a r1 = f.d.a.s.g.a.RUNNING
            java.lang.Object r2 = r5.f3836c
            monitor-enter(r2)
            r5.f()     // Catch: java.lang.Throwable -> La0
            f.d.a.u.j.d r3 = r5.b     // Catch: java.lang.Throwable -> La0
            r3.a()     // Catch: java.lang.Throwable -> La0
            long r3 = f.d.a.u.e.b()     // Catch: java.lang.Throwable -> La0
            r5.t = r3     // Catch: java.lang.Throwable -> La0
            java.lang.Object r3 = r5.f3841h     // Catch: java.lang.Throwable -> La0
            if (r3 != 0) goto L40
            int r0 = r5.f3844k     // Catch: java.lang.Throwable -> La0
            int r1 = r5.f3845l     // Catch: java.lang.Throwable -> La0
            boolean r0 = f.d.a.u.i.m(r0, r1)     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L2b
            int r0 = r5.f3844k     // Catch: java.lang.Throwable -> La0
            r5.z = r0     // Catch: java.lang.Throwable -> La0
            int r0 = r5.f3845l     // Catch: java.lang.Throwable -> La0
            r5.A = r0     // Catch: java.lang.Throwable -> La0
        L2b:
            android.graphics.drawable.Drawable r0 = r5.h()     // Catch: java.lang.Throwable -> La0
            if (r0 != 0) goto L33
            r0 = 5
            goto L34
        L33:
            r0 = 3
        L34:
            f.d.a.o.n.r r1 = new f.d.a.o.n.r     // Catch: java.lang.Throwable -> La0
            java.lang.String r3 = "Received null model"
            r1.<init>(r3)     // Catch: java.lang.Throwable -> La0
            r5.m(r1, r0)     // Catch: java.lang.Throwable -> La0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            return
        L40:
            f.d.a.s.g$a r3 = r5.v     // Catch: java.lang.Throwable -> La0
            if (r3 == r1) goto L98
            f.d.a.s.g$a r3 = r5.v     // Catch: java.lang.Throwable -> La0
            f.d.a.s.g$a r4 = f.d.a.s.g.a.COMPLETE     // Catch: java.lang.Throwable -> La0
            if (r3 != r4) goto L53
            f.d.a.o.n.w<R> r0 = r5.r     // Catch: java.lang.Throwable -> La0
            f.d.a.o.a r1 = f.d.a.o.a.MEMORY_CACHE     // Catch: java.lang.Throwable -> La0
            r5.n(r0, r1)     // Catch: java.lang.Throwable -> La0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            return
        L53:
            r5.v = r0     // Catch: java.lang.Throwable -> La0
            int r3 = r5.f3844k     // Catch: java.lang.Throwable -> La0
            int r4 = r5.f3845l     // Catch: java.lang.Throwable -> La0
            boolean r3 = f.d.a.u.i.m(r3, r4)     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L67
            int r3 = r5.f3844k     // Catch: java.lang.Throwable -> La0
            int r4 = r5.f3845l     // Catch: java.lang.Throwable -> La0
            r5.e(r3, r4)     // Catch: java.lang.Throwable -> La0
            goto L6c
        L67:
            f.d.a.s.h.h<R> r3 = r5.n     // Catch: java.lang.Throwable -> La0
            r3.h(r5)     // Catch: java.lang.Throwable -> La0
        L6c:
            f.d.a.s.g$a r3 = r5.v     // Catch: java.lang.Throwable -> La0
            if (r3 == r1) goto L74
            f.d.a.s.g$a r1 = r5.v     // Catch: java.lang.Throwable -> La0
            if (r1 != r0) goto L8d
        L74:
            f.d.a.s.c r0 = r5.f3838e     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L81
            boolean r0 = r0.c(r5)     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L7f
            goto L81
        L7f:
            r0 = 0
            goto L82
        L81:
            r0 = 1
        L82:
            if (r0 == 0) goto L8d
            f.d.a.s.h.h<R> r0 = r5.n     // Catch: java.lang.Throwable -> La0
            android.graphics.drawable.Drawable r1 = r5.i()     // Catch: java.lang.Throwable -> La0
            r0.e(r1)     // Catch: java.lang.Throwable -> La0
        L8d:
            boolean r0 = f.d.a.s.g.D     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L96
            long r0 = r5.t     // Catch: java.lang.Throwable -> La0
            f.d.a.u.e.a(r0)     // Catch: java.lang.Throwable -> La0
        L96:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            return
        L98:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> La0
            java.lang.String r1 = "Cannot restart a running request"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> La0
            throw r0     // Catch: java.lang.Throwable -> La0
        La0:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.s.g.c():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0030 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0011, B:8:0x0013, B:10:0x001b, B:11:0x0020, B:13:0x0024, B:19:0x0030, B:20:0x0039, B:21:0x003b), top: B:28:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // f.d.a.s.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void clear() {
        /*
            r5 = this;
            f.d.a.s.g$a r0 = f.d.a.s.g.a.CLEARED
            java.lang.Object r1 = r5.f3836c
            monitor-enter(r1)
            r5.f()     // Catch: java.lang.Throwable -> L44
            f.d.a.u.j.d r2 = r5.b     // Catch: java.lang.Throwable -> L44
            r2.a()     // Catch: java.lang.Throwable -> L44
            f.d.a.s.g$a r2 = r5.v     // Catch: java.lang.Throwable -> L44
            if (r2 != r0) goto L13
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L44
            return
        L13:
            r5.g()     // Catch: java.lang.Throwable -> L44
            f.d.a.o.n.w<R> r2 = r5.r     // Catch: java.lang.Throwable -> L44
            r3 = 0
            if (r2 == 0) goto L20
            f.d.a.o.n.w<R> r2 = r5.r     // Catch: java.lang.Throwable -> L44
            r5.r = r3     // Catch: java.lang.Throwable -> L44
            r3 = r2
        L20:
            f.d.a.s.c r2 = r5.f3838e     // Catch: java.lang.Throwable -> L44
            if (r2 == 0) goto L2d
            boolean r2 = r2.f(r5)     // Catch: java.lang.Throwable -> L44
            if (r2 == 0) goto L2b
            goto L2d
        L2b:
            r2 = 0
            goto L2e
        L2d:
            r2 = 1
        L2e:
            if (r2 == 0) goto L39
            f.d.a.s.h.h<R> r2 = r5.n     // Catch: java.lang.Throwable -> L44
            android.graphics.drawable.Drawable r4 = r5.i()     // Catch: java.lang.Throwable -> L44
            r2.g(r4)     // Catch: java.lang.Throwable -> L44
        L39:
            r5.v = r0     // Catch: java.lang.Throwable -> L44
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L43
            f.d.a.o.n.l r0 = r5.u
            r0.f(r3)
        L43:
            return
        L44:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L44
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.s.g.clear():void");
    }

    @Override // f.d.a.s.b
    public boolean d() {
        boolean z;
        synchronized (this.f3836c) {
            z = this.v == a.COMPLETE;
        }
        return z;
    }

    @Override // f.d.a.s.h.g
    public void e(int i2, int i3) {
        Object obj;
        int i4 = i2;
        a aVar = a.RUNNING;
        this.b.a();
        Object obj2 = this.f3836c;
        synchronized (obj2) {
            try {
                if (D) {
                    f.d.a.u.e.a(this.t);
                }
                if (this.v == a.WAITING_FOR_SIZE) {
                    this.v = aVar;
                    float f2 = this.f3843j.b;
                    if (i4 != Integer.MIN_VALUE) {
                        i4 = Math.round(i4 * f2);
                    }
                    this.z = i4;
                    this.A = i3 == Integer.MIN_VALUE ? i3 : Math.round(f2 * i3);
                    if (D) {
                        f.d.a.u.e.a(this.t);
                    }
                    obj = obj2;
                    try {
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        this.s = this.u.b(this.f3840g, this.f3841h, this.f3843j.f3834l, this.z, this.A, this.f3843j.s, this.f3842i, this.f3846m, this.f3843j.f3825c, this.f3843j.r, this.f3843j.f3835m, this.f3843j.y, this.f3843j.q, this.f3843j.f3831i, this.f3843j.w, this.f3843j.z, this.f3843j.x, this, this.q);
                        if (this.v != aVar) {
                            this.s = null;
                        }
                        if (D) {
                            f.d.a.u.e.a(this.t);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        while (true) {
                            try {
                                break;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj2;
            }
        }
    }

    @GuardedBy("requestLock")
    public final void f() {
        if (this.B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy("requestLock")
    public final void g() {
        f();
        this.b.a();
        this.n.a(this);
        l.d dVar = this.s;
        if (dVar != null) {
            synchronized (l.this) {
                dVar.a.h(dVar.b);
            }
            this.s = null;
        }
    }

    @GuardedBy("requestLock")
    public final Drawable h() {
        int i2;
        if (this.y == null) {
            f.d.a.s.a<?> aVar = this.f3843j;
            Drawable drawable = aVar.o;
            this.y = drawable;
            if (drawable == null && (i2 = aVar.p) > 0) {
                this.y = l(i2);
            }
        }
        return this.y;
    }

    @GuardedBy("requestLock")
    public final Drawable i() {
        int i2;
        if (this.x == null) {
            f.d.a.s.a<?> aVar = this.f3843j;
            Drawable drawable = aVar.f3829g;
            this.x = drawable;
            if (drawable == null && (i2 = aVar.f3830h) > 0) {
                this.x = l(i2);
            }
        }
        return this.x;
    }

    @Override // f.d.a.s.b
    public boolean isRunning() {
        boolean z;
        synchronized (this.f3836c) {
            z = this.v == a.RUNNING || this.v == a.WAITING_FOR_SIZE;
        }
        return z;
    }

    public boolean j(b bVar) {
        int i2;
        int i3;
        Object obj;
        Class<R> cls;
        f.d.a.s.a<?> aVar;
        f.d.a.f fVar;
        int size;
        int i4;
        int i5;
        Object obj2;
        Class<R> cls2;
        f.d.a.s.a<?> aVar2;
        f.d.a.f fVar2;
        int size2;
        if (bVar instanceof g) {
            synchronized (this.f3836c) {
                i2 = this.f3844k;
                i3 = this.f3845l;
                obj = this.f3841h;
                cls = this.f3842i;
                aVar = this.f3843j;
                fVar = this.f3846m;
                size = this.o != null ? this.o.size() : 0;
            }
            g gVar = (g) bVar;
            synchronized (gVar.f3836c) {
                i4 = gVar.f3844k;
                i5 = gVar.f3845l;
                obj2 = gVar.f3841h;
                cls2 = gVar.f3842i;
                aVar2 = gVar.f3843j;
                fVar2 = gVar.f3846m;
                size2 = gVar.o != null ? gVar.o.size() : 0;
            }
            return i2 == i4 && i3 == i5 && i.b(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && fVar == fVar2 && size == size2;
        }
        return false;
    }

    @GuardedBy("requestLock")
    public final boolean k() {
        c cVar = this.f3838e;
        return cVar == null || !cVar.b();
    }

    @GuardedBy("requestLock")
    public final Drawable l(@DrawableRes int i2) {
        Resources.Theme theme = this.f3843j.u;
        if (theme == null) {
            theme = this.f3839f.getTheme();
        }
        f.d.a.e eVar = this.f3840g;
        return f.d.a.o.p.e.a.a(eVar, eVar, i2, theme);
    }

    public final void m(r rVar, int i2) {
        boolean z;
        this.b.a();
        synchronized (this.f3836c) {
            if (rVar != null) {
                int i3 = this.f3840g.f3457i;
                if (i3 <= i2) {
                    String str = "Load failed for " + this.f3841h + " with size [" + this.z + "x" + this.A + "]";
                    if (i3 <= 4) {
                        ArrayList arrayList = new ArrayList();
                        rVar.a(rVar, arrayList);
                        int size = arrayList.size();
                        int i4 = 0;
                        while (i4 < size) {
                            int i5 = i4 + 1;
                            Throwable th = (Throwable) arrayList.get(i4);
                            i4 = i5;
                        }
                    }
                }
                this.s = null;
                this.v = a.FAILED;
                boolean z2 = true;
                this.B = true;
                if (this.o != null) {
                    z = false;
                    for (d<R> dVar : this.o) {
                        z |= dVar.b(rVar, this.f3841h, this.n, k());
                    }
                } else {
                    z = false;
                }
                if (this.f3837d == null || !this.f3837d.b(rVar, this.f3841h, this.n, k())) {
                    z2 = false;
                }
                if (!(z | z2)) {
                    p();
                }
                this.B = false;
                c cVar = this.f3838e;
                if (cVar != null) {
                    cVar.a(this);
                }
            } else {
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void n(w<?> wVar, f.d.a.o.a aVar) {
        this.b.a();
        w<?> wVar2 = null;
        try {
            synchronized (this.f3836c) {
                try {
                    this.s = null;
                    if (wVar == null) {
                        m(new r("Expected to receive a Resource<R> with an object of " + this.f3842i + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = wVar.get();
                    try {
                        if (obj != null && this.f3842i.isAssignableFrom(obj.getClass())) {
                            c cVar = this.f3838e;
                            if (!(cVar == null || cVar.d(this))) {
                                this.r = null;
                                this.v = a.COMPLETE;
                                this.u.f(wVar);
                                return;
                            }
                            o(wVar, obj, aVar);
                            return;
                        }
                        this.r = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.f3842i);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(wVar);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        m(new r(sb.toString()), 5);
                        this.u.f(wVar);
                    } catch (Throwable th) {
                        wVar2 = wVar;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (wVar2 != null) {
                this.u.f(wVar2);
            }
            throw th3;
        }
    }

    @GuardedBy("requestLock")
    public final void o(w<R> wVar, R r, f.d.a.o.a aVar) {
        boolean z;
        boolean k2 = k();
        this.v = a.COMPLETE;
        this.r = wVar;
        if (this.f3840g.f3457i <= 3) {
            StringBuilder o = f.b.a.a.a.o("Finished loading ");
            o.append(r.getClass().getSimpleName());
            o.append(" from ");
            o.append(aVar);
            o.append(" for ");
            o.append(this.f3841h);
            o.append(" with size [");
            o.append(this.z);
            o.append("x");
            o.append(this.A);
            o.append("] in ");
            o.append(f.d.a.u.e.a(this.t));
            o.append(" ms");
            o.toString();
        }
        boolean z2 = true;
        this.B = true;
        try {
            if (this.o != null) {
                z = false;
                for (d<R> dVar : this.o) {
                    z |= dVar.a(r, this.f3841h, this.n, aVar, k2);
                }
            } else {
                z = false;
            }
            if (this.f3837d == null || !this.f3837d.a(r, this.f3841h, this.n, aVar, k2)) {
                z2 = false;
            }
            if (!(z2 | z)) {
                if (((a.C0053a) this.p) != null) {
                    this.n.b(r, f.d.a.s.i.a.a);
                } else {
                    throw null;
                }
            }
            this.B = false;
            c cVar = this.f3838e;
            if (cVar != null) {
                cVar.e(this);
            }
        } catch (Throwable th) {
            this.B = false;
            throw th;
        }
    }

    @GuardedBy("requestLock")
    public final void p() {
        int i2;
        c cVar = this.f3838e;
        if (cVar == null || cVar.c(this)) {
            Drawable h2 = this.f3841h == null ? h() : null;
            if (h2 == null) {
                if (this.w == null) {
                    f.d.a.s.a<?> aVar = this.f3843j;
                    Drawable drawable = aVar.f3827e;
                    this.w = drawable;
                    if (drawable == null && (i2 = aVar.f3828f) > 0) {
                        this.w = l(i2);
                    }
                }
                h2 = this.w;
            }
            if (h2 == null) {
                h2 = i();
            }
            this.n.c(h2);
        }
    }
}
