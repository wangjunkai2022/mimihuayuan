package i.m0.c;

import i.c0;
import i.e0;
import i.h0;
import i.v;
import i.w;
import i.y;

/* compiled from: CacheInterceptor.kt */
/* loaded from: classes.dex */
public final class a implements y {
    public static final C0106a b = new C0106a(null);
    public final i.d a;

    /* compiled from: CacheInterceptor.kt */
    /* renamed from: i.m0.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0106a {
        public C0106a(h.o.c.f fVar) {
        }

        public static final h0 a(C0106a c0106a, h0 h0Var) {
            if ((h0Var != null ? h0Var.f6527h : null) != null) {
                if (h0Var != null) {
                    e0 e0Var = h0Var.b;
                    c0 c0Var = h0Var.f6522c;
                    int i2 = h0Var.f6524e;
                    String str = h0Var.f6523d;
                    v vVar = h0Var.f6525f;
                    w.a d2 = h0Var.f6526g.d();
                    h0 h0Var2 = h0Var.f6528i;
                    h0 h0Var3 = h0Var.f6529j;
                    h0 h0Var4 = h0Var.f6530k;
                    long j2 = h0Var.f6531l;
                    long j3 = h0Var.f6532m;
                    i.m0.d.c cVar = h0Var.n;
                    if (i2 >= 0) {
                        if (e0Var != null) {
                            if (c0Var != null) {
                                if (str != null) {
                                    return new h0(e0Var, c0Var, str, i2, vVar, d2.d(), null, h0Var2, h0Var3, h0Var4, j2, j3, cVar);
                                }
                                throw new IllegalStateException("message == null".toString());
                            }
                            throw new IllegalStateException("protocol == null".toString());
                        }
                        throw new IllegalStateException("request == null".toString());
                    }
                    throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
                }
                throw null;
            }
            return h0Var;
        }

        public final boolean b(String str) {
            return h.s.d.d("Content-Length", str, true) || h.s.d.d("Content-Encoding", str, true) || h.s.d.d("Content-Type", str, true);
        }

        public final boolean c(String str) {
            return (h.s.d.d("Connection", str, true) || h.s.d.d("Keep-Alive", str, true) || h.s.d.d("Proxy-Authenticate", str, true) || h.s.d.d("Proxy-Authorization", str, true) || h.s.d.d("TE", str, true) || h.s.d.d("Trailers", str, true) || h.s.d.d("Transfer-Encoding", str, true) || h.s.d.d("Upgrade", str, true)) ? false : true;
        }
    }

    public a(i.d dVar) {
        this.a = dVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0248, code lost:
        if (r4 > 0) goto L346;
     */
    /* JADX WARN: Removed duplicated region for block: B:192:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0411 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x041c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:474:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v17, types: [i.e0, i.h0] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v56 */
    @Override // i.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public i.h0 a(i.y.a r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1982
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.c.a.a(i.y$a):i.h0");
    }
}
