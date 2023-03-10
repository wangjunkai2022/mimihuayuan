package i.m0.d;

import androidx.appcompat.widget.ActivityChooserView;
import i.k0;
import i.m0.d.m;
import i.m0.i.f;
import i.v;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.security.cert.Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
/* compiled from: RealConnectionPool.kt */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: g  reason: collision with root package name */
    public static final ThreadPoolExecutor f6647g = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), i.m0.b.A("OkHttp ConnectionPool", true));
    public final long a;
    public final a b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayDeque<h> f6648c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    public final j f6649d = new j();

    /* renamed from: e  reason: collision with root package name */
    public boolean f6650e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6651f;

    /* compiled from: RealConnectionPool.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j2;
            i iVar;
            while (true) {
                i iVar2 = i.this;
                long nanoTime = System.nanoTime();
                synchronized (iVar2) {
                    Iterator<h> it = iVar2.f6648c.iterator();
                    long j3 = Long.MIN_VALUE;
                    h hVar = null;
                    int i2 = 0;
                    int i3 = 0;
                    while (it.hasNext()) {
                        h next = it.next();
                        h.o.c.g.b(next, "connection");
                        if (iVar2.b(next, nanoTime) > 0) {
                            i3++;
                        } else {
                            i2++;
                            long j4 = nanoTime - next.o;
                            if (j4 > j3) {
                                hVar = next;
                                j3 = j4;
                            }
                        }
                    }
                    if (j3 < iVar2.a && i2 <= iVar2.f6651f) {
                        if (i2 > 0) {
                            j2 = iVar2.a - j3;
                        } else if (i3 > 0) {
                            j2 = iVar2.a;
                        } else {
                            iVar2.f6650e = false;
                            j2 = -1;
                        }
                    }
                    iVar2.f6648c.remove(hVar);
                    if (hVar != null) {
                        i.m0.b.g(hVar.j());
                        j2 = 0;
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                if (j2 == -1) {
                    return;
                }
                try {
                    iVar = i.this;
                } catch (InterruptedException unused) {
                    i iVar3 = i.this;
                    if (iVar3 != null) {
                        ArrayList arrayList = new ArrayList();
                        synchronized (iVar3) {
                            Iterator<h> it2 = iVar3.f6648c.iterator();
                            h.o.c.g.b(it2, "connections.iterator()");
                            while (it2.hasNext()) {
                                h next2 = it2.next();
                                if (next2.n.isEmpty()) {
                                    next2.f6642i = true;
                                    h.o.c.g.b(next2, "connection");
                                    arrayList.add(next2);
                                    it2.remove();
                                }
                            }
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                i.m0.b.g(((h) it3.next()).j());
                            }
                        }
                    } else {
                        throw null;
                    }
                }
                if (iVar != null) {
                    long j5 = j2 / 1000000;
                    Long.signum(j5);
                    long j6 = j2 - (1000000 * j5);
                    synchronized (iVar) {
                        int i4 = (int) j6;
                        if (j5 > 0 || i4 > 0) {
                            iVar.wait(j5, i4);
                        }
                    }
                } else {
                    h.o.c.g.f("$this$lockAndWaitNanos");
                    throw null;
                }
            }
        }
    }

    public i(int i2, long j2, TimeUnit timeUnit) {
        this.f6651f = i2;
        this.a = timeUnit.toNanos(j2);
        if (!(j2 > 0)) {
            throw new IllegalArgumentException(f.b.a.a.a.c("keepAliveDuration <= 0: ", j2).toString());
        }
    }

    public final void a(k0 k0Var, IOException iOException) {
        if (k0Var != null) {
            if (k0Var.b.type() != Proxy.Type.DIRECT) {
                i.a aVar = k0Var.a;
                aVar.f6439k.connectFailed(aVar.a.m(), k0Var.b.address(), iOException);
            }
            j jVar = this.f6649d;
            synchronized (jVar) {
                jVar.a.add(k0Var);
            }
            return;
        }
        h.o.c.g.f("failedRoute");
        throw null;
    }

    public final int b(h hVar, long j2) {
        List<Reference<m>> list = hVar.n;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference<m> reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                StringBuilder o = f.b.a.a.a.o("A connection to ");
                o.append(hVar.q.a.a);
                o.append(" was leaked. ");
                o.append("Did you forget to close a response body?");
                String sb = o.toString();
                f.a aVar = i.m0.i.f.f6825c;
                i.m0.i.f.a.l(sb, ((m.a) reference).a);
                list.remove(i2);
                hVar.f6642i = true;
                if (list.isEmpty()) {
                    hVar.o = j2 - this.a;
                    return 0;
                }
            }
        }
        return list.size();
    }

    public final void c(h hVar) {
        if (hVar != null) {
            boolean holdsLock = Thread.holdsLock(this);
            if (h.j.a && !holdsLock) {
                throw new AssertionError("Assertion failed");
            }
            if (!this.f6650e) {
                this.f6650e = true;
                f6647g.execute(this.b);
            }
            this.f6648c.add(hVar);
            return;
        }
        h.o.c.g.f("connection");
        throw null;
    }

    public final boolean d(i.a aVar, m mVar, List<k0> list, boolean z) {
        boolean z2;
        boolean z3;
        if (aVar == null) {
            h.o.c.g.f("address");
            throw null;
        } else if (mVar != null) {
            boolean holdsLock = Thread.holdsLock(this);
            if (h.j.a && !holdsLock) {
                throw new AssertionError("Assertion failed");
            }
            Iterator<h> it = this.f6648c.iterator();
            while (true) {
                boolean z4 = false;
                if (!it.hasNext()) {
                    return false;
                }
                h next = it.next();
                if (!z || next.g()) {
                    if (next.n.size() < next.f6646m && !next.f6642i && next.q.a.a(aVar)) {
                        if (!h.o.c.g.a(aVar.a.f6858e, next.q.a.a.f6858e)) {
                            if (next.f6639f != null && list != null) {
                                if (!list.isEmpty()) {
                                    for (k0 k0Var : list) {
                                        if (k0Var.b.type() == Proxy.Type.DIRECT && next.q.b.type() == Proxy.Type.DIRECT && h.o.c.g.a(next.q.f6570c, k0Var.f6570c)) {
                                            z3 = true;
                                            continue;
                                        } else {
                                            z3 = false;
                                            continue;
                                        }
                                        if (z3) {
                                            z2 = true;
                                            break;
                                        }
                                    }
                                }
                                z2 = false;
                                if (z2 && aVar.f6435g == i.m0.k.d.a && next.l(aVar.a)) {
                                    try {
                                        i.h hVar = aVar.f6436h;
                                        if (hVar == null) {
                                            h.o.c.g.e();
                                            throw null;
                                        }
                                        String str = aVar.a.f6858e;
                                        v vVar = next.f6637d;
                                        if (vVar != null) {
                                            List<Certificate> b = vVar.b();
                                            if (str == null) {
                                                h.o.c.g.f("hostname");
                                                throw null;
                                            } else if (b != null) {
                                                hVar.a(str, new i.i(hVar, b, str));
                                            } else {
                                                h.o.c.g.f("peerCertificates");
                                                throw null;
                                            }
                                        } else {
                                            h.o.c.g.e();
                                            throw null;
                                        }
                                    } catch (SSLPeerUnverifiedException unused) {
                                    }
                                }
                            }
                        }
                        z4 = true;
                    }
                    if (z4) {
                        h.o.c.g.b(next, "connection");
                        mVar.a(next);
                        return true;
                    }
                }
            }
        } else {
            h.o.c.g.f("transmitter");
            throw null;
        }
    }
}
