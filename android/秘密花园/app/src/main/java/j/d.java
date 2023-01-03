package j;

import f.b.a.a.a;
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
        try {
            this.a.h();
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
        try {
            this.a.h();
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

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0032, code lost:
        r3 = false;
        r7.a.h();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0038, code lost:
        r7.b.j(r8, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0045, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0047, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004e, code lost:
        throw r7.a.j(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004f, code lost:
        r7.a.k(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0054, code lost:
        throw r8;
     */
    @Override // j.y
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void j(j.g r8, long r9) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L_0x005a
            long r1 = r8.b
            r3 = 0
            r5 = r9
            j.b.i(r1, r3, r5)
        L_0x000b:
            r1 = 0
            int r3 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r3 <= 0) goto L_0x0059
            j.v r3 = r8.a
            if (r3 == 0) goto L_0x0055
        L_0x0015:
            r4 = 65536(0x10000, float:9.18355E-41)
            long r4 = (long) r4
            int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r6 >= 0) goto L_0x0032
            int r4 = r3.f6990c
            int r5 = r3.b
            int r4 = r4 - r5
            long r4 = (long) r4
            long r1 = r1 + r4
            int r4 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r4 < 0) goto L_0x0029
            r1 = r9
            goto L_0x0032
        L_0x0029:
            j.v r3 = r3.f6993f
            if (r3 == 0) goto L_0x002e
            goto L_0x0015
        L_0x002e:
            h.o.c.g.e()
            throw r0
        L_0x0032:
            r3 = 0
            j.c r4 = r7.a
            r4.h()
            j.y r4 = r7.b     // Catch: IOException -> 0x0047, all -> 0x0045
            r4.j(r8, r1)     // Catch: IOException -> 0x0047, all -> 0x0045
            long r9 = r9 - r1
            r1 = 1
            j.c r2 = r7.a
            r2.k(r1)
            goto L_0x000b
        L_0x0045:
            r8 = move-exception
            goto L_0x004f
        L_0x0047:
            r8 = move-exception
            j.c r9 = r7.a     // Catch: all -> 0x0045
            java.io.IOException r8 = r9.j(r8)     // Catch: all -> 0x0045
            throw r8     // Catch: all -> 0x0045
        L_0x004f:
            j.c r9 = r7.a
            r9.k(r3)
            throw r8
        L_0x0055:
            h.o.c.g.e()
            throw r0
        L_0x0059:
            return
        L_0x005a:
            java.lang.String r8 = "source"
            h.o.c.g.f(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.d.j(j.g, long):void");
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = a.o("AsyncTimeout.sink(");
        o.append(this.b);
        o.append(')');
        return o.toString();
    }
}
