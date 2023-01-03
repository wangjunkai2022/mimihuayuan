package i.m0.d;

import androidx.core.app.NotificationCompat;
import i.b0;
import i.e0;
import i.m0.i.f;
import i.t;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* compiled from: Transmitter.kt */
/* loaded from: classes.dex */
public final class m {
    public final i a;
    public final t b;

    /* renamed from: c  reason: collision with root package name */
    public final b f6574c;

    /* renamed from: d  reason: collision with root package name */
    public Object f6575d;

    /* renamed from: e  reason: collision with root package name */
    public e0 f6576e;

    /* renamed from: f  reason: collision with root package name */
    public d f6577f;

    /* renamed from: g  reason: collision with root package name */
    public h f6578g;

    /* renamed from: h  reason: collision with root package name */
    public c f6579h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6580i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f6581j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6582k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6583l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f6584m;
    public final b0 n;
    public final i.f o;

    /* compiled from: Transmitter.kt */
    /* loaded from: classes.dex */
    public static final class a extends WeakReference<m> {
        public final Object a;

        public a(m mVar, Object obj) {
            super(mVar);
            this.a = obj;
        }
    }

    /* compiled from: Transmitter.kt */
    /* loaded from: classes.dex */
    public static final class b extends j.c {
        public b() {
        }

        @Override // j.c
        public void m() {
            m.this.c();
        }
    }

    public m(b0 b0Var, i.f fVar) {
        if (b0Var != null) {
            this.n = b0Var;
            this.o = fVar;
            this.a = b0Var.b.a;
            this.b = b0Var.f6369e.a(fVar);
            b bVar = new b();
            bVar.g(this.n.x, TimeUnit.MILLISECONDS);
            this.f6574c = bVar;
            return;
        }
        h.o.c.g.f("client");
        throw null;
    }

    public final void a(h hVar) {
        if (hVar != null) {
            boolean holdsLock = Thread.holdsLock(this.a);
            if (h.j.a && !holdsLock) {
                throw new AssertionError("Assertion failed");
            }
            if (this.f6578g == null) {
                this.f6578g = hVar;
                hVar.n.add(new a(this, this.f6575d));
                return;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        h.o.c.g.f("connection");
        throw null;
    }

    public final void b() {
        f.a aVar = i.m0.i.f.f6741c;
        this.f6575d = i.m0.i.f.a.i("response.body().close()");
        t tVar = this.b;
        i.f fVar = this.o;
        if (tVar == null) {
            throw null;
        }
        if (fVar != null) {
            return;
        }
        h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
        throw null;
    }

    public final void c() {
        c cVar;
        h hVar;
        Socket socket;
        synchronized (this.a) {
            this.f6582k = true;
            cVar = this.f6579h;
            d dVar = this.f6577f;
            if (dVar != null) {
                boolean holdsLock = Thread.holdsLock(dVar.f6547g);
                if (h.j.a && !holdsLock) {
                    throw new AssertionError("Assertion failed");
                }
                hVar = dVar.f6543c;
                if (hVar != null) {
                }
            }
            hVar = this.f6578g;
        }
        if (cVar != null) {
            cVar.f6534f.cancel();
        } else if (hVar == null || (socket = hVar.b) == null) {
        } else {
            i.m0.b.g(socket);
        }
    }

    public final void d() {
        synchronized (this.a) {
            if (!this.f6584m) {
                this.f6579h = null;
            } else {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
    }

    public final <E extends IOException> E e(c cVar, boolean z, boolean z2, E e2) {
        boolean z3;
        synchronized (this.a) {
            boolean z4 = true;
            if (!h.o.c.g.a(cVar, this.f6579h)) {
                return e2;
            }
            if (z) {
                z3 = !this.f6580i;
                this.f6580i = true;
            } else {
                z3 = false;
            }
            if (z2) {
                if (!this.f6581j) {
                    z3 = true;
                }
                this.f6581j = true;
            }
            if (this.f6580i && this.f6581j && z3) {
                c cVar2 = this.f6579h;
                if (cVar2 == null) {
                    h.o.c.g.e();
                    throw null;
                }
                h b2 = cVar2.b();
                if (b2 != null) {
                    b2.f6560k++;
                    this.f6579h = null;
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            } else {
                z4 = false;
            }
            return z4 ? (E) g(e2, false) : e2;
        }
    }

    public final boolean f() {
        boolean z;
        synchronized (this.a) {
            z = this.f6582k;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0014 A[Catch: all -> 0x000e, TryCatch #0 {all -> 0x000e, blocks: (B:6:0x0007, B:14:0x0014, B:16:0x001b, B:19:0x0021, B:21:0x0025, B:23:0x002b, B:26:0x0030, B:28:0x0034, B:76:0x009d, B:77:0x00a8), top: B:80:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x009d A[Catch: all -> 0x000e, TRY_ENTER, TryCatch #0 {all -> 0x000e, blocks: (B:6:0x0007, B:14:0x0014, B:16:0x001b, B:19:0x0021, B:21:0x0025, B:23:0x002b, B:26:0x0030, B:28:0x0034, B:76:0x009d, B:77:0x00a8), top: B:80:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <E extends java.io.IOException> E g(E r7, boolean r8) {
        /*
            r6 = this;
            i.m0.d.i r0 = r6.a
            monitor-enter(r0)
            r1 = 1
            r2 = 0
            if (r8 == 0) goto L11
            i.m0.d.c r3 = r6.f6579h     // Catch: java.lang.Throwable -> Le
            if (r3 != 0) goto Lc
            goto L11
        Lc:
            r3 = 0
            goto L12
        Le:
            r7 = move-exception
            goto La9
        L11:
            r3 = 1
        L12:
            if (r3 == 0) goto L9d
            i.m0.d.h r3 = r6.f6578g     // Catch: java.lang.Throwable -> Le
            i.m0.d.h r4 = r6.f6578g     // Catch: java.lang.Throwable -> Le
            r5 = 0
            if (r4 == 0) goto L2a
            i.m0.d.c r4 = r6.f6579h     // Catch: java.lang.Throwable -> Le
            if (r4 != 0) goto L2a
            if (r8 != 0) goto L25
            boolean r8 = r6.f6584m     // Catch: java.lang.Throwable -> Le
            if (r8 == 0) goto L2a
        L25:
            java.net.Socket r8 = r6.i()     // Catch: java.lang.Throwable -> Le
            goto L2b
        L2a:
            r8 = r5
        L2b:
            i.m0.d.h r4 = r6.f6578g     // Catch: java.lang.Throwable -> Le
            if (r4 == 0) goto L30
            r3 = r5
        L30:
            boolean r4 = r6.f6584m     // Catch: java.lang.Throwable -> Le
            if (r4 == 0) goto L3a
            i.m0.d.c r4 = r6.f6579h     // Catch: java.lang.Throwable -> Le
            if (r4 != 0) goto L3a
            r4 = 1
            goto L3b
        L3a:
            r4 = 0
        L3b:
            monitor-exit(r0)
            if (r8 == 0) goto L41
            i.m0.b.g(r8)
        L41:
            if (r3 == 0) goto L53
            i.t r8 = r6.b
            i.f r0 = r6.o
            if (r8 == 0) goto L52
            if (r0 == 0) goto L4c
            goto L53
        L4c:
            java.lang.String r7 = "call"
            h.o.c.g.f(r7)
            throw r5
        L52:
            throw r5
        L53:
            if (r4 == 0) goto L9c
            if (r7 == 0) goto L58
            goto L59
        L58:
            r1 = 0
        L59:
            boolean r8 = r6.f6583l
            if (r8 == 0) goto L5e
            goto L74
        L5e:
            i.m0.d.m$b r8 = r6.f6574c
            boolean r8 = r8.i()
            if (r8 != 0) goto L67
            goto L74
        L67:
            java.io.InterruptedIOException r8 = new java.io.InterruptedIOException
            java.lang.String r0 = "timeout"
            r8.<init>(r0)
            if (r7 == 0) goto L73
            r8.initCause(r7)
        L73:
            r7 = r8
        L74:
            if (r1 == 0) goto L8c
            i.t r8 = r6.b
            i.f r0 = r6.o
            if (r7 == 0) goto L88
            if (r8 == 0) goto L87
            if (r0 == 0) goto L81
            goto L9c
        L81:
            java.lang.String r7 = "call"
            h.o.c.g.f(r7)
            throw r5
        L87:
            throw r5
        L88:
            h.o.c.g.e()
            throw r5
        L8c:
            i.t r8 = r6.b
            i.f r0 = r6.o
            if (r8 == 0) goto L9b
            if (r0 == 0) goto L95
            goto L9c
        L95:
            java.lang.String r7 = "call"
            h.o.c.g.f(r7)
            throw r5
        L9b:
            throw r5
        L9c:
            return r7
        L9d:
            java.lang.String r7 = "cannot release connection while it is in use"
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Le
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Le
            r8.<init>(r7)     // Catch: java.lang.Throwable -> Le
            throw r8     // Catch: java.lang.Throwable -> Le
        La9:
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.d.m.g(java.io.IOException, boolean):java.io.IOException");
    }

    public final IOException h(IOException iOException) {
        synchronized (this.a) {
            this.f6584m = true;
        }
        return g(iOException, false);
    }

    public final Socket i() {
        boolean holdsLock = Thread.holdsLock(this.a);
        if (!h.j.a || holdsLock) {
            h hVar = this.f6578g;
            if (hVar != null) {
                Iterator<Reference<m>> it = hVar.n.iterator();
                boolean z = false;
                int i2 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i2 = -1;
                        break;
                    } else if (h.o.c.g.a(it.next().get(), this)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 != -1) {
                    h hVar2 = this.f6578g;
                    if (hVar2 != null) {
                        hVar2.n.remove(i2);
                        this.f6578g = null;
                        if (hVar2.n.isEmpty()) {
                            hVar2.o = System.nanoTime();
                            i iVar = this.a;
                            if (iVar != null) {
                                boolean holdsLock2 = Thread.holdsLock(iVar);
                                if (h.j.a && !holdsLock2) {
                                    throw new AssertionError("Assertion failed");
                                }
                                if (!hVar2.f6558i && iVar.f6567f != 0) {
                                    iVar.notifyAll();
                                } else {
                                    iVar.f6564c.remove(hVar2);
                                    z = true;
                                }
                                if (z) {
                                    return hVar2.j();
                                }
                            } else {
                                throw null;
                            }
                        }
                        return null;
                    }
                    h.o.c.g.e();
                    throw null;
                }
                throw new IllegalStateException("Check failed.".toString());
            }
            h.o.c.g.e();
            throw null;
        }
        throw new AssertionError("Assertion failed");
    }
}
