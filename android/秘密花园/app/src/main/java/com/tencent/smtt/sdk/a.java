package com.tencent.smtt.sdk;

/* compiled from: DeviceInfo.java */
/* loaded from: classes.dex */
public class a {
    public static int a = 600;
    public static int b;

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:51:0x0051 */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0026, code lost:
        r2 = r2.substring(r4 + 9).trim();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0030, code lost:
        if (r2 == null) goto L_0x0051;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0036, code lost:
        if (r2.length() == 0) goto L_0x0051;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003c, code lost:
        if (r2.contains("k") == false) goto L_0x0051;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003e, code lost:
        r3 = java.lang.Integer.parseInt(r2.substring(0, r2.indexOf("k")).trim()) / 1024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a() {
        /*
            java.lang.String r0 = "k"
            int r1 = com.tencent.smtt.sdk.a.b
            if (r1 <= 0) goto L_0x0007
            return r1
        L_0x0007:
            java.lang.String r1 = "/proc/meminfo"
            r2 = 0
            r3 = 0
            java.io.FileReader r4 = new java.io.FileReader     // Catch: IOException -> 0x006a, all -> 0x0060
            r4.<init>(r1)     // Catch: IOException -> 0x006a, all -> 0x0060
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: IOException -> 0x006a, all -> 0x0060
            r5 = 8192(0x2000, float:1.14794E-41)
            r1.<init>(r4, r5)     // Catch: IOException -> 0x006a, all -> 0x0060
        L_0x0017:
            java.lang.String r2 = r1.readLine()     // Catch: IOException -> 0x005d, all -> 0x005a
            if (r2 == 0) goto L_0x0051
            java.lang.String r4 = "MemTotal:"
            int r4 = r2.indexOf(r4)     // Catch: IOException -> 0x005d, all -> 0x005a
            r5 = -1
            if (r5 == r4) goto L_0x0017
            int r4 = r4 + 9
            java.lang.String r2 = r2.substring(r4)     // Catch: IOException -> 0x005d, all -> 0x005a
            java.lang.String r2 = r2.trim()     // Catch: IOException -> 0x005d, all -> 0x005a
            if (r2 == 0) goto L_0x0051
            int r4 = r2.length()     // Catch: IOException -> 0x005d, all -> 0x005a
            if (r4 == 0) goto L_0x0051
            boolean r4 = r2.contains(r0)     // Catch: IOException -> 0x005d, all -> 0x005a
            if (r4 == 0) goto L_0x0051
            int r0 = r2.indexOf(r0)     // Catch: IOException -> 0x005d, all -> 0x005a
            java.lang.String r0 = r2.substring(r3, r0)     // Catch: IOException -> 0x005d, all -> 0x005a
            java.lang.String r0 = r0.trim()     // Catch: IOException -> 0x005d, all -> 0x005a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: IOException -> 0x005d, all -> 0x005a
            int r0 = r0 / 1024
            r3 = r0
        L_0x0051:
            r1.close()     // Catch: IOException -> 0x0055
            goto L_0x0073
        L_0x0055:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0073
        L_0x005a:
            r0 = move-exception
            r2 = r1
            goto L_0x0061
        L_0x005d:
            r0 = move-exception
            r2 = r1
            goto L_0x006b
        L_0x0060:
            r0 = move-exception
        L_0x0061:
            r0.printStackTrace()     // Catch: all -> 0x0076
            if (r2 == 0) goto L_0x0073
            r2.close()     // Catch: IOException -> 0x0055
            goto L_0x0073
        L_0x006a:
            r0 = move-exception
        L_0x006b:
            r0.printStackTrace()     // Catch: all -> 0x0076
            if (r2 == 0) goto L_0x0073
            r2.close()     // Catch: IOException -> 0x0055
        L_0x0073:
            com.tencent.smtt.sdk.a.b = r3
            return r3
        L_0x0076:
            r0 = move-exception
            if (r2 == 0) goto L_0x0081
            r2.close()     // Catch: IOException -> 0x007d
            goto L_0x0081
        L_0x007d:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0081:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.a():int");
    }
}
