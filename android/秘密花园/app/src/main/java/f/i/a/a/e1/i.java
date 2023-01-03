package f.i.a.a.e1;

/* compiled from: ActionFile.java */
@Deprecated
/* loaded from: classes.dex */
public final class i {
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00bf  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static f.i.a.a.e1.u a(java.io.DataInputStream r17) throws java.io.IOException {
        /*
            java.lang.String r2 = r17.readUTF()
            int r0 = r17.readInt()
            java.lang.String r1 = r17.readUTF()
            android.net.Uri r3 = android.net.Uri.parse(r1)
            boolean r1 = r17.readBoolean()
            int r4 = r17.readInt()
            if (r4 == 0) goto L_0x0023
            byte[] r4 = new byte[r4]
            r6 = r17
            r6.readFully(r4)
            r7 = r4
            goto L_0x0026
        L_0x0023:
            r6 = r17
            r7 = 0
        L_0x0026:
            r8 = 0
            if (r0 != 0) goto L_0x0033
            java.lang.String r9 = "progressive"
            boolean r9 = r9.equals(r2)
            if (r9 == 0) goto L_0x0033
            r9 = 1
            goto L_0x0034
        L_0x0033:
            r9 = 0
        L_0x0034:
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            java.lang.String r11 = "ss"
            java.lang.String r12 = "hls"
            if (r9 != 0) goto L_0x0079
            int r9 = r17.readInt()
            r13 = 0
        L_0x0044:
            if (r13 >= r9) goto L_0x0079
            boolean r14 = r12.equals(r2)
            if (r14 != 0) goto L_0x0052
            boolean r14 = r11.equals(r2)
            if (r14 == 0) goto L_0x0060
        L_0x0052:
            if (r0 != 0) goto L_0x0060
            int r14 = r17.readInt()
            int r15 = r17.readInt()
            r4 = r15
            r15 = r14
            r14 = 0
            goto L_0x006e
        L_0x0060:
            int r14 = r17.readInt()
            int r15 = r17.readInt()
            int r16 = r17.readInt()
            r4 = r16
        L_0x006e:
            f.i.a.a.e1.c0 r5 = new f.i.a.a.e1.c0
            r5.<init>(r14, r15, r4)
            r10.add(r5)
            int r13 = r13 + 1
            goto L_0x0044
        L_0x0079:
            r4 = 2
            if (r0 >= r4) goto L_0x0092
            java.lang.String r4 = "dash"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L_0x0090
            boolean r4 = r12.equals(r2)
            if (r4 != 0) goto L_0x0090
            boolean r4 = r11.equals(r2)
            if (r4 == 0) goto L_0x0092
        L_0x0090:
            r4 = 1
            goto L_0x0093
        L_0x0092:
            r4 = 0
        L_0x0093:
            if (r4 != 0) goto L_0x00a1
            boolean r4 = r17.readBoolean()
            if (r4 == 0) goto L_0x00a1
            java.lang.String r4 = r17.readUTF()
            r5 = r4
            goto L_0x00a2
        L_0x00a1:
            r5 = 0
        L_0x00a2:
            r4 = 3
            if (r0 >= r4) goto L_0x00ae
            if (r5 == 0) goto L_0x00a9
            r4 = r5
            goto L_0x00b3
        L_0x00a9:
            java.lang.String r0 = r3.toString()
            goto L_0x00b2
        L_0x00ae:
            java.lang.String r0 = r17.readUTF()
        L_0x00b2:
            r4 = r0
        L_0x00b3:
            if (r1 != 0) goto L_0x00bf
            f.i.a.a.e1.u r8 = new f.i.a.a.e1.u
            r0 = r8
            r1 = r4
            r4 = r10
            r6 = r7
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return r8
        L_0x00bf:
            f.i.a.a.e1.u$b r0 = new f.i.a.a.e1.u$b
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.e1.i.a(java.io.DataInputStream):f.i.a.a.e1.u");
    }
}
