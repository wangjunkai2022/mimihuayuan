package i.m0.d;

import androidx.core.app.NotificationCompat;
import h.o.c.g;
import i.a;
import i.f;
import i.k0;
import i.m0.b;
import i.m0.d.l;
import i.t;
import j.j;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;

/* compiled from: ExchangeFinder.kt */
/* loaded from: classes.dex */
public final class d {
    public l.a a;
    public final l b;

    /* renamed from: c  reason: collision with root package name */
    public h f6543c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f6544d;

    /* renamed from: e  reason: collision with root package name */
    public k0 f6545e;

    /* renamed from: f  reason: collision with root package name */
    public final m f6546f;

    /* renamed from: g  reason: collision with root package name */
    public final i f6547g;

    /* renamed from: h  reason: collision with root package name */
    public final a f6548h;

    /* renamed from: i  reason: collision with root package name */
    public final f f6549i;

    /* renamed from: j  reason: collision with root package name */
    public final t f6550j;

    public d(m mVar, i iVar, a aVar, f fVar, t tVar) {
        if (iVar == null) {
            g.f("connectionPool");
            throw null;
        } else if (fVar == null) {
            g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (tVar != null) {
            this.f6546f = mVar;
            this.f6547g = iVar;
            this.f6548h = aVar;
            this.f6549i = fVar;
            this.f6550j = tVar;
            this.b = new l(aVar, iVar.f6565d, fVar, tVar);
        } else {
            g.f("eventListener");
            throw null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0037 A[Catch: all -> 0x0347, TryCatch #1 {, blocks: (B:4:0x0005, B:6:0x000d, B:8:0x001b, B:10:0x0021, B:12:0x0025, B:13:0x002c, B:16:0x0031, B:18:0x0037, B:22:0x0042, B:24:0x004e, B:25:0x0056, B:27:0x005a, B:28:0x005f, B:30:0x0065, B:32:0x006b, B:33:0x006e, B:202:0x033f, B:203:0x0346), top: B:208:0x0005 }] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0042 A[Catch: all -> 0x0347, TryCatch #1 {, blocks: (B:4:0x0005, B:6:0x000d, B:8:0x001b, B:10:0x0021, B:12:0x0025, B:13:0x002c, B:16:0x0031, B:18:0x0037, B:22:0x0042, B:24:0x004e, B:25:0x0056, B:27:0x005a, B:28:0x005f, B:30:0x0065, B:32:0x006b, B:33:0x006e, B:202:0x033f, B:203:0x0346), top: B:208:0x0005 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final i.m0.d.h a(int r19, int r20, int r21, int r22, boolean r23) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 842
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.d.d.a(int, int, int, int, boolean):i.m0.d.h");
    }

    public final h b(int i2, int i3, int i4, int i5, boolean z, boolean z2) throws IOException {
        boolean z3;
        while (true) {
            h a = a(i2, i3, i4, i5, z);
            synchronized (this.f6547g) {
                if (a.f6560k == 0) {
                    return a;
                }
                Socket socket = a.f6552c;
                if (socket != null) {
                    j jVar = a.f6556g;
                    if (jVar != null) {
                        boolean z4 = false;
                        if (!socket.isClosed() && !socket.isInputShutdown() && !socket.isOutputShutdown()) {
                            i.m0.g.f fVar = a.f6555f;
                            if (fVar != null) {
                                synchronized (fVar) {
                                    z3 = fVar.f6650g;
                                }
                                z4 = !z3;
                            } else {
                                if (z2) {
                                    try {
                                        int soTimeout = socket.getSoTimeout();
                                        try {
                                            socket.setSoTimeout(1);
                                            boolean z5 = !jVar.p();
                                            socket.setSoTimeout(soTimeout);
                                            z4 = z5;
                                        } catch (Throwable th) {
                                            socket.setSoTimeout(soTimeout);
                                            throw th;
                                            break;
                                        }
                                    } catch (SocketTimeoutException unused) {
                                    } catch (IOException unused2) {
                                    }
                                }
                                z4 = true;
                            }
                        }
                        if (z4) {
                            return a;
                        }
                        a.i();
                    } else {
                        g.e();
                        throw null;
                    }
                } else {
                    g.e();
                    throw null;
                }
            }
        }
    }

    public final boolean c() {
        synchronized (this.f6547g) {
            boolean z = true;
            if (this.f6545e != null) {
                return true;
            }
            if (d()) {
                h hVar = this.f6546f.f6578g;
                if (hVar != null) {
                    this.f6545e = hVar.q;
                    return true;
                }
                g.e();
                throw null;
            }
            l.a aVar = this.a;
            if (!(aVar != null ? aVar.a() : false) && !this.b.a()) {
                z = false;
            }
            return z;
        }
    }

    public final boolean d() {
        h hVar = this.f6546f.f6578g;
        if (hVar != null) {
            if (hVar == null) {
                g.e();
                throw null;
            } else if (hVar.f6559j == 0) {
                if (hVar == null) {
                    g.e();
                    throw null;
                } else if (b.c(hVar.q.a.a, this.f6548h.a)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void e() {
        boolean z = !Thread.holdsLock(this.f6547g);
        if (!h.j.a || z) {
            synchronized (this.f6547g) {
                this.f6544d = true;
            }
            return;
        }
        throw new AssertionError("Assertion failed");
    }
}
