package i.m0.d;

import androidx.appcompat.widget.ActivityChooserView;
import h.j;
import h.o.c.g;
import i.h;
import i.k0;
import i.m0.b;
import i.m0.d.m;
import i.m0.i.f;
import i.m0.k.d;
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
    public static final ThreadPoolExecutor f6563g = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), b.A("OkHttp ConnectionPool", true));
    public final long a;
    public final a b = new a(this);

    /* renamed from: c  reason: collision with root package name */
    public final ArrayDeque<h> f6564c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    public final j f6565d = new j();

    /* renamed from: e  reason: collision with root package name */
    public boolean f6566e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6567f;

    /* compiled from: RealConnectionPool.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {
        public final /* synthetic */ i a;

        /* JADX WARN: Incorrect args count in method signature: ()V */
        public a(i iVar) {
            this.a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            long j2;
            i iVar;
            while (true) {
                i iVar2 = this.a;
                long nanoTime = System.nanoTime();
                synchronized (iVar2) {
                    Iterator<h> it = iVar2.f6564c.iterator();
                    long j3 = Long.MIN_VALUE;
                    h hVar = null;
                    int i2 = 0;
                    int i3 = 0;
                    while (it.hasNext()) {
                        h next = it.next();
                        g.b(next, "connection");
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
                    if (j3 < iVar2.a && i2 <= iVar2.f6567f) {
                        if (i2 > 0) {
                            j2 = iVar2.a - j3;
                        } else if (i3 > 0) {
                            j2 = iVar2.a;
                        } else {
                            iVar2.f6566e = false;
                            j2 = -1;
                        }
                    }
                    iVar2.f6564c.remove(hVar);
                    if (hVar != null) {
                        b.g(hVar.j());
                        j2 = 0;
                    } else {
                        g.e();
                        throw null;
                    }
                }
                if (j2 != -1) {
                    try {
                        iVar = this.a;
                    } catch (InterruptedException unused) {
                        i iVar3 = this.a;
                        if (iVar3 != null) {
                            ArrayList arrayList = new ArrayList();
                            synchronized (iVar3) {
                                Iterator<h> it2 = iVar3.f6564c.iterator();
                                g.b(it2, "connections.iterator()");
                                while (it2.hasNext()) {
                                    h next2 = it2.next();
                                    if (next2.n.isEmpty()) {
                                        next2.f6558i = true;
                                        g.b(next2, "connection");
                                        arrayList.add(next2);
                                        it2.remove();
                                    }
                                }
                                Iterator it3 = arrayList.iterator();
                                while (it3.hasNext()) {
                                    b.g(((h) it3.next()).j());
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
                        g.f("$this$lockAndWaitNanos");
                        throw null;
                    }
                } else {
                    return;
                }
            }
        }
    }

    public i(int i2, long j2, TimeUnit timeUnit) {
        this.f6567f = i2;
        this.a = timeUnit.toNanos(j2);
        if (!(j2 > 0)) {
            throw new IllegalArgumentException(f.b.a.a.a.c("keepAliveDuration <= 0: ", j2).toString());
        }
    }

    public final void a(k0 k0Var, IOException iOException) {
        if (k0Var != null) {
            if (k0Var.b.type() != Proxy.Type.DIRECT) {
                i.a aVar = k0Var.a;
                aVar.f6355k.connectFailed(aVar.a.m(), k0Var.b.address(), iOException);
            }
            j jVar = this.f6565d;
            synchronized (jVar) {
                jVar.a.add(k0Var);
            }
            return;
        }
        g.f("failedRoute");
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
                f.a aVar = f.f6741c;
                f.a.l(sb, ((m.a) reference).a);
                list.remove(i2);
                hVar.f6558i = true;
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
            if (!j.a || holdsLock) {
                if (!this.f6566e) {
                    this.f6566e = true;
                    f6563g.execute(this.b);
                }
                this.f6564c.add(hVar);
                return;
            }
            throw new AssertionError("Assertion failed");
        }
        g.f("connection");
        throw null;
    }

    public final boolean d(i.a aVar, m mVar, List<k0> list, boolean z) {
        boolean z2;
        boolean z3;
        if (aVar == null) {
            g.f("address");
            throw null;
        } else if (mVar != null) {
            boolean holdsLock = Thread.holdsLock(this);
            if (!j.a || holdsLock) {
                Iterator<h> it = this.f6564c.iterator();
                while (true) {
                    boolean z4 = false;
                    if (!it.hasNext()) {
                        return false;
                    }
                    h next = it.next();
                    if (!z || next.g()) {
                        if (next.n.size() < next.f6562m && !next.f6558i && next.q.a.a(aVar)) {
                            if (!g.a(aVar.a.f6774e, next.q.a.a.f6774e)) {
                                if (!(next.f6555f == null || list == null)) {
                                    if (!list.isEmpty()) {
                                        for (k0 k0Var : list) {
                                            if (k0Var.b.type() == Proxy.Type.DIRECT && next.q.b.type() == Proxy.Type.DIRECT && g.a(next.q.f6486c, k0Var.f6486c)) {
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
                                    if (z2 && aVar.f6351g == d.a && next.l(aVar.a)) {
                                        try {
                                            h hVar = aVar.f6352h;
                                            if (hVar != null) {
                                                String str = aVar.a.f6774e;
                                                v vVar = next.f6553d;
                                                if (vVar != null) {
                                                    List<Certificate> b = vVar.b();
                                                    if (str == null) {
                                                        g.f("hostname");
                                                        throw null;
                                                    } else if (b != null) {
                                                        hVar.a(str, new i.i(hVar, b, str));
                                                    } else {
                                                        g.f("peerCertificates");
                                                        throw null;
                                                    }
                                                } else {
                                                    g.e();
                                                    throw null;
                                                }
                                            } else {
                                                g.e();
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
                            g.b(next, "connection");
                            mVar.a(next);
                            return true;
                        }
                    }
                }
            } else {
                throw new AssertionError("Assertion failed");
            }
        } else {
            g.f("transmitter");
            throw null;
        }
    }
}
