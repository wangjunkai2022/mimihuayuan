package i.m0.e;

import androidx.appcompat.widget.ActivityChooserView;
import h.o.c.g;
import i.b0;
import i.e0;
import i.g0;
import i.h0;
import i.m0.b;
import i.x;
import i.y;
import java.util.regex.Pattern;

/* compiled from: RetryAndFollowUpInterceptor.kt */
/* loaded from: classes.dex */
public final class i implements y {
    public final b0 a;

    public i(b0 b0Var) {
        if (b0Var != null) {
            this.a = b0Var;
        } else {
            g.f("client");
            throw null;
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:192:0x00ba */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:182:0x0340 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Throwable, i.m0.d.d, java.io.IOException] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [i.m0.d.m] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r19v1, types: [javax.net.ssl.HostnameVerifier] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x02c7  */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x02a4 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x0345 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b9  */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // i.y
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public i.h0 a(i.y.a r47) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 868
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.i.a(i.y$a):i.h0");
    }

    public final e0 b(h0 h0Var, String str) {
        String f2;
        x l2;
        g0 g0Var = null;
        if (!this.a.f6372h || (f2 = h0.f(h0Var, "Location", null, 2)) == null || (l2 = h0Var.b.b.l(f2)) == null) {
            return null;
        }
        if (!g.a(l2.b, h0Var.b.b.b) && !this.a.f6373i) {
            return null;
        }
        e0 e0Var = h0Var.b;
        if (e0Var != null) {
            e0.a aVar = new e0.a(e0Var);
            if (f.a(str)) {
                boolean a = g.a(str, "PROPFIND");
                if (!g.a(str, "PROPFIND")) {
                    aVar.e("GET", null);
                } else {
                    if (a) {
                        g0Var = h0Var.b.f6434e;
                    }
                    aVar.e(str, g0Var);
                }
                if (!a) {
                    aVar.g("Transfer-Encoding");
                    aVar.g("Content-Length");
                    aVar.g("Content-Type");
                }
            }
            if (!b.c(h0Var.b.b, l2)) {
                aVar.g("Authorization");
            }
            aVar.a = l2;
            return aVar.b();
        }
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x0059 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x005a A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean c(java.io.IOException r3, i.m0.d.m r4, boolean r5, i.e0 r6) {
        /*
            r2 = this;
            i.b0 r0 = r2.a
            boolean r0 = r0.f6370f
            r1 = 0
            if (r0 != 0) goto L_0x0008
            return r1
        L_0x0008:
            if (r5 == 0) goto L_0x0011
            i.g0 r6 = r6.f6434e
            boolean r6 = r3 instanceof java.io.FileNotFoundException
            if (r6 == 0) goto L_0x0011
            return r1
        L_0x0011:
            boolean r6 = r3 instanceof java.net.ProtocolException
            r0 = 1
            if (r6 == 0) goto L_0x0017
            goto L_0x0033
        L_0x0017:
            boolean r6 = r3 instanceof java.io.InterruptedIOException
            if (r6 == 0) goto L_0x0022
            boolean r3 = r3 instanceof java.net.SocketTimeoutException
            if (r3 == 0) goto L_0x0033
            if (r5 != 0) goto L_0x0033
            goto L_0x0035
        L_0x0022:
            boolean r5 = r3 instanceof javax.net.ssl.SSLHandshakeException
            if (r5 == 0) goto L_0x002f
            java.lang.Throwable r5 = r3.getCause()
            boolean r5 = r5 instanceof java.security.cert.CertificateException
            if (r5 == 0) goto L_0x002f
            goto L_0x0033
        L_0x002f:
            boolean r3 = r3 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r3 == 0) goto L_0x0035
        L_0x0033:
            r3 = 0
            goto L_0x0036
        L_0x0035:
            r3 = 1
        L_0x0036:
            if (r3 != 0) goto L_0x0039
            return r1
        L_0x0039:
            i.m0.d.d r3 = r4.f6577f
            r5 = 0
            if (r3 == 0) goto L_0x005e
            i.m0.d.i r6 = r3.f6547g
            monitor-enter(r6)
            boolean r3 = r3.f6544d     // Catch: all -> 0x005b
            monitor-exit(r6)
            if (r3 == 0) goto L_0x0056
            i.m0.d.d r3 = r4.f6577f
            if (r3 == 0) goto L_0x0052
            boolean r3 = r3.c()
            if (r3 == 0) goto L_0x0056
            r3 = 1
            goto L_0x0057
        L_0x0052:
            h.o.c.g.e()
            throw r5
        L_0x0056:
            r3 = 0
        L_0x0057:
            if (r3 != 0) goto L_0x005a
            return r1
        L_0x005a:
            return r0
        L_0x005b:
            r3 = move-exception
            monitor-exit(r6)
            throw r3
        L_0x005e:
            h.o.c.g.e()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.i.c(java.io.IOException, i.m0.d.m, boolean, i.e0):boolean");
    }

    public final int d(h0 h0Var, int i2) {
        String f2 = h0.f(h0Var, "Retry-After", null, 2);
        if (f2 == null) {
            return i2;
        }
        Pattern compile = Pattern.compile("\\d+");
        g.b(compile, "Pattern.compile(pattern)");
        if (!compile.matcher(f2).matches()) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        Integer valueOf = Integer.valueOf(f2);
        g.b(valueOf, "Integer.valueOf(header)");
        return valueOf.intValue();
    }
}
