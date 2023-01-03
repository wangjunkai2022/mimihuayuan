package f.d.a.o.o;

import f.d.a.o.d;
import f.d.a.o.n.b0.b;
import java.io.InputStream;

/* compiled from: StreamEncoder.java */
/* loaded from: classes.dex */
public class t implements d<InputStream> {
    public final b a;

    public t(b bVar) {
        this.a = bVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.io.File, f.d.a.o.h] */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:26:0x0000 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:23:0x002e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:24:0x0039 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:10:0x0028 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [f.d.a.o.h] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v7, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARNING: Unknown variable types count: 2 */
    @Override // f.d.a.o.d
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(@androidx.annotation.NonNull java.io.InputStream r4, @androidx.annotation.NonNull java.io.File r5, @androidx.annotation.NonNull f.d.a.o.h r6) {
        /*
            r3 = this;
            java.io.InputStream r4 = (java.io.InputStream) r4
            f.d.a.o.n.b0.b r6 = r3.a
            java.lang.Class<byte[]> r0 = byte[].class
            r1 = 65536(0x10000, float:9.18355E-41)
            java.lang.Object r6 = r6.f(r1, r0)
            byte[] r6 = (byte[]) r6
            r0 = 0
            r1 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: IOException -> 0x002e, all -> 0x002c
            r2.<init>(r5)     // Catch: IOException -> 0x002e, all -> 0x002c
        L_0x0015:
            int r5 = r4.read(r6)     // Catch: IOException -> 0x002a, all -> 0x0028
            r1 = -1
            if (r5 == r1) goto L_0x0020
            r2.write(r6, r0, r5)     // Catch: IOException -> 0x002a, all -> 0x0028
            goto L_0x0015
        L_0x0020:
            r2.close()     // Catch: IOException -> 0x002a, all -> 0x0028
            r0 = 1
            r2.close()     // Catch: IOException -> 0x0039
            goto L_0x0039
        L_0x0028:
            r4 = move-exception
            goto L_0x0040
        L_0x002a:
            r1 = r2
            goto L_0x002e
        L_0x002c:
            r4 = move-exception
            goto L_0x003f
        L_0x002e:
            java.lang.String r4 = "StreamEncoder"
            r5 = 3
            android.util.Log.isLoggable(r4, r5)     // Catch: all -> 0x002c
            if (r1 == 0) goto L_0x0039
            r1.close()     // Catch: IOException -> 0x0039
        L_0x0039:
            f.d.a.o.n.b0.b r4 = r3.a
            r4.e(r6)
            return r0
        L_0x003f:
            r2 = r1
        L_0x0040:
            if (r2 == 0) goto L_0x0045
            r2.close()     // Catch: IOException -> 0x0045
        L_0x0045:
            f.d.a.o.n.b0.b r5 = r3.a
            r5.e(r6)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.o.t.a(java.lang.Object, java.io.File, f.d.a.o.h):boolean");
    }
}
