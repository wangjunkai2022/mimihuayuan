package i.m0.e;

import androidx.appcompat.widget.ActivityChooserView;
import i.b0;
import i.e0;
import i.h0;
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
            h.o.c.g.f("client");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0345 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b9  */
    /* JADX WARN: Type inference failed for: r19v1, types: [javax.net.ssl.HostnameVerifier] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [i.h] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Throwable, i.m0.d.d, java.io.IOException] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8, types: [i.m0.d.m] */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // i.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public i.h0 a(i.y.a r47) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 868
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.i.a(i.y$a):i.h0");
    }

    public final e0 b(h0 h0Var, String str) {
        String f2;
        x l2;
        if (!this.a.f6447h || (f2 = h0.f(h0Var, "Location", null, 2)) == null || (l2 = h0Var.b.b.l(f2)) == null) {
            return null;
        }
        if (h.o.c.g.a(l2.b, h0Var.b.b.b) || this.a.f6448i) {
            e0 e0Var = h0Var.b;
            if (e0Var != null) {
                e0.a aVar = new e0.a(e0Var);
                if (f.a(str)) {
                    boolean a = h.o.c.g.a(str, "PROPFIND");
                    if (!h.o.c.g.a(str, "PROPFIND")) {
                        aVar.e("GET", null);
                    } else {
                        aVar.e(str, a ? h0Var.b.f6509e : null);
                    }
                    if (!a) {
                        aVar.g("Transfer-Encoding");
                        aVar.g("Content-Length");
                        aVar.g("Content-Type");
                    }
                }
                if (!i.m0.b.c(h0Var.b.b, l2)) {
                    aVar.g("Authorization");
                }
                aVar.a = l2;
                return aVar.b();
            }
            throw null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(java.io.IOException r3, i.m0.d.m r4, boolean r5, i.e0 r6) {
        /*
            r2 = this;
            i.b0 r0 = r2.a
            boolean r0 = r0.f6445f
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            if (r5 == 0) goto L11
            i.g0 r6 = r6.f6509e
            boolean r6 = r3 instanceof java.io.FileNotFoundException
            if (r6 == 0) goto L11
            return r1
        L11:
            boolean r6 = r3 instanceof java.net.ProtocolException
            r0 = 1
            if (r6 == 0) goto L17
            goto L33
        L17:
            boolean r6 = r3 instanceof java.io.InterruptedIOException
            if (r6 == 0) goto L22
            boolean r3 = r3 instanceof java.net.SocketTimeoutException
            if (r3 == 0) goto L33
            if (r5 != 0) goto L33
            goto L35
        L22:
            boolean r5 = r3 instanceof javax.net.ssl.SSLHandshakeException
            if (r5 == 0) goto L2f
            java.lang.Throwable r5 = r3.getCause()
            boolean r5 = r5 instanceof java.security.cert.CertificateException
            if (r5 == 0) goto L2f
            goto L33
        L2f:
            boolean r3 = r3 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r3 == 0) goto L35
        L33:
            r3 = 0
            goto L36
        L35:
            r3 = 1
        L36:
            if (r3 != 0) goto L39
            return r1
        L39:
            i.m0.d.d r3 = r4.f6652f
            r5 = 0
            if (r3 == 0) goto L5e
            i.m0.d.i r6 = r3.f6622g
            monitor-enter(r6)
            boolean r3 = r3.f6619d     // Catch: java.lang.Throwable -> L5b
            monitor-exit(r6)
            if (r3 == 0) goto L56
            i.m0.d.d r3 = r4.f6652f
            if (r3 == 0) goto L52
            boolean r3 = r3.c()
            if (r3 == 0) goto L56
            r3 = 1
            goto L57
        L52:
            h.o.c.g.e()
            throw r5
        L56:
            r3 = 0
        L57:
            if (r3 != 0) goto L5a
            return r1
        L5a:
            return r0
        L5b:
            r3 = move-exception
            monitor-exit(r6)
            throw r3
        L5e:
            h.o.c.g.e()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.i.c(java.io.IOException, i.m0.d.m, boolean, i.e0):boolean");
    }

    public final int d(h0 h0Var, int i2) {
        String f2 = h0.f(h0Var, "Retry-After", null, 2);
        if (f2 != null) {
            Pattern compile = Pattern.compile("\\d+");
            h.o.c.g.b(compile, "Pattern.compile(pattern)");
            if (compile.matcher(f2).matches()) {
                Integer valueOf = Integer.valueOf(f2);
                h.o.c.g.b(valueOf, "Integer.valueOf(header)");
                return valueOf.intValue();
            }
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return i2;
    }
}
