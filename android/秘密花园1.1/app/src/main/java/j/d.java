package j;

import java.io.IOException;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes.dex */
public final class d implements y {
    public final /* synthetic */ c a;
    public final /* synthetic */ y b;

    public d(c cVar, y yVar) {
        this.a = cVar;
        this.b = yVar;
    }

    @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.h();
        try {
            try {
                this.b.close();
                this.a.k(true);
            } catch (IOException e2) {
                throw this.a.j(e2);
            }
        } catch (Throwable th) {
            this.a.k(false);
            throw th;
        }
    }

    @Override // j.y, java.io.Flushable
    public void flush() {
        this.a.h();
        try {
            try {
                this.b.flush();
                this.a.k(true);
            } catch (IOException e2) {
                throw this.a.j(e2);
            }
        } catch (Throwable th) {
            this.a.k(false);
            throw th;
        }
    }

    @Override // j.y
    public b0 i() {
        return this.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
        r7.a.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
        r7.b.j(r8, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
        throw r7.a.j(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004f, code lost:
        r7.a.k(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
        throw r8;
     */
    @Override // j.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void j(j.g r8, long r9) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L5a
            long r1 = r8.b
            r3 = 0
            r5 = r9
            j.b.i(r1, r3, r5)
        Lb:
            r1 = 0
            int r3 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r3 <= 0) goto L59
            j.v r3 = r8.a
            if (r3 == 0) goto L55
        L15:
            r4 = 65536(0x10000, float:9.18355E-41)
            long r4 = (long) r4
            int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r6 >= 0) goto L32
            int r4 = r3.f6990c
            int r5 = r3.b
            int r4 = r4 - r5
            long r4 = (long) r4
            long r1 = r1 + r4
            int r4 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r4 < 0) goto L29
            r1 = r9
            goto L32
        L29:
            j.v r3 = r3.f6993f
            if (r3 == 0) goto L2e
            goto L15
        L2e:
            h.o.c.g.e()
            throw r0
        L32:
            r3 = 0
            j.c r4 = r7.a
            r4.h()
            j.y r4 = r7.b     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
            r4.j(r8, r1)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L47
            long r9 = r9 - r1
            r1 = 1
            j.c r2 = r7.a
            r2.k(r1)
            goto Lb
        L45:
            r8 = move-exception
            goto L4f
        L47:
            r8 = move-exception
            j.c r9 = r7.a     // Catch: java.lang.Throwable -> L45
            java.io.IOException r8 = r9.j(r8)     // Catch: java.lang.Throwable -> L45
            throw r8     // Catch: java.lang.Throwable -> L45
        L4f:
            j.c r9 = r7.a
            r9.k(r3)
            throw r8
        L55:
            h.o.c.g.e()
            throw r0
        L59:
            return
        L5a:
            java.lang.String r8 = "source"
            h.o.c.g.f(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.d.j(j.g, long):void");
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("AsyncTimeout.sink(");
        o.append(this.b);
        o.append(')');
        return o.toString();
    }
}
