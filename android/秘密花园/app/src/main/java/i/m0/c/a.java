package i.m0.c;

import h.o.c.f;
import i.c0;
import i.d;
import i.e0;
import i.h0;
import i.m0.d.c;
import i.v;
import i.w;
import i.y;

/* compiled from: CacheInterceptor.kt */
/* loaded from: classes.dex */
public final class a implements y {
    public static final C0099a b = new C0099a(null);
    public final d a;

    /* compiled from: CacheInterceptor.kt */
    /* renamed from: i.m0.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0099a {
        public C0099a(f fVar) {
        }

        public static final h0 a(C0099a aVar, h0 h0Var) {
            if ((h0Var != null ? h0Var.f6452h : null) == null) {
                return h0Var;
            }
            if (h0Var != null) {
                e0 e0Var = h0Var.b;
                c0 c0Var = h0Var.f6447c;
                int i2 = h0Var.f6449e;
                String str = h0Var.f6448d;
                v vVar = h0Var.f6450f;
                w.a d2 = h0Var.f6451g.d();
                h0 h0Var2 = h0Var.f6453i;
                h0 h0Var3 = h0Var.f6454j;
                h0 h0Var4 = h0Var.f6455k;
                long j2 = h0Var.f6456l;
                long j3 = h0Var.f6457m;
                c cVar = h0Var.n;
                if (!(i2 >= 0)) {
                    throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
                } else if (e0Var == null) {
                    throw new IllegalStateException("request == null".toString());
                } else if (c0Var == null) {
                    throw new IllegalStateException("protocol == null".toString());
                } else if (str != null) {
                    return new h0(e0Var, c0Var, str, i2, vVar, d2.d(), null, h0Var2, h0Var3, h0Var4, j2, j3, cVar);
                } else {
                    throw new IllegalStateException("message == null".toString());
                }
            } else {
                throw null;
            }
        }

        public final boolean b(String str) {
            if (h.s.d.d("Content-Length", str, true) || h.s.d.d("Content-Encoding", str, true) || h.s.d.d("Content-Type", str, true)) {
                return true;
            }
            return false;
        }

        public final boolean c(String str) {
            if (h.s.d.d("Connection", str, true) || h.s.d.d("Keep-Alive", str, true) || h.s.d.d("Proxy-Authenticate", str, true) || h.s.d.d("Proxy-Authorization", str, true) || h.s.d.d("TE", str, true) || h.s.d.d("Trailers", str, true) || h.s.d.d("Transfer-Encoding", str, true) || h.s.d.d("Upgrade", str, true)) {
                return false;
            }
            return true;
        }
    }

    public a(d dVar) {
        this.a = dVar;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [i.e0, i.h0] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x0248, code lost:
        if (r4 > 0) goto L_0x02c8;
     */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x03d7  */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x03ee  */
    /* JADX WARNING: Removed duplicated region for block: B:203:0x0411 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x041c A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x044b  */
    /* JADX WARNING: Removed duplicated region for block: B:217:0x0465  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00eb  */
    /* JADX WARNING: Removed duplicated region for block: B:350:0x06aa  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00f3  */
    /* JADX WARNING: Removed duplicated region for block: B:404:0x07b6  */
    /* JADX WARNING: Removed duplicated region for block: B:455:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0110  */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // i.y
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public i.h0 a(i.y.a r26) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1982
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.c.a.a(i.y$a):i.h0");
    }
}
