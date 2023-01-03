package i.m0.e;

import h.o.c.g;
import h.s.d;
import i.h0;
import i.m0.b;
import j.k;

/* compiled from: HttpHeaders.kt */
/* loaded from: classes.dex */
public final class e {
    static {
        k.f6979e.b("\"\\");
        k.f6979e.b("\t ,=");
    }

    public static final boolean a(h0 h0Var) {
        if (g.a(h0Var.b.f6432c, "HEAD")) {
            return false;
        }
        int i2 = h0Var.f6449e;
        if (((i2 >= 100 && i2 < 200) || i2 == 204 || i2 == 304) && b.n(h0Var) == -1 && !d.d("chunked", h0.f(h0Var, "Transfer-Encoding", null, 2), true)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x01af, code lost:
        if (r3 == false) goto L_0x01fb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x01c4, code lost:
        if (okhttp3.internal.publicsuffix.PublicSuffixDatabase.f7342g.a(r10) == null) goto L_0x01fb;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final void b(i.p r34, i.x r35, i.w r36) {
        /*
        // Method dump skipped, instructions count: 582
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.e.b(i.p, i.x, i.w):void");
    }
}
