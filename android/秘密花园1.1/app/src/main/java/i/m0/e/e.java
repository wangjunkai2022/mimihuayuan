package i.m0.e;

import i.h0;
import j.k;

/* compiled from: HttpHeaders.kt */
/* loaded from: classes.dex */
public final class e {
    static {
        k.f6979e.b("\"\\");
        k.f6979e.b("\t ,=");
    }

    public static final boolean a(h0 h0Var) {
        if (h.o.c.g.a(h0Var.b.f6432c, "HEAD")) {
            return false;
        }
        int i2 = h0Var.f6449e;
        return (((i2 >= 100 && i2 < 200) || i2 == 204 || i2 == 304) && i.m0.b.n(h0Var) == -1 && !h.s.d.d("chunked", h0.f(h0Var, "Transfer-Encoding", null, 2), true)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01af, code lost:
        if ((h.o.c.g.a(r0, r10) || (h.s.d.c(r0, r10, false, 2) && r0.charAt((r0.length() - r10.length()) - 1) == '.' && !i.m0.b.b(r0))) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c4, code lost:
        if (okhttp3.internal.publicsuffix.PublicSuffixDatabase.f7342g.a(r10) == null) goto L16;
     */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void b(i.p r34, i.x r35, i.w r36) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.e.b(i.p, i.x, i.w):void");
    }
}
