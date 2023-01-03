package com.tencent.smtt.utils;

import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* compiled from: HttpUtil.java */
/* loaded from: classes.dex */
public class g {

    /* compiled from: HttpUtil.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(int i2);
    }

    public static String a(String str, byte[] bArr, a aVar, boolean z) {
        String str2;
        try {
            if (z) {
                str2 = i.a().c();
            } else {
                str2 = h.a().b();
            }
            String str3 = str + str2;
            try {
                if (z) {
                    bArr = i.a().a(bArr);
                } else {
                    bArr = h.a().a(bArr);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (bArr == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", "application/x-www-form-urlencoded");
            hashMap.put("Content-Length", String.valueOf(bArr.length));
            HttpURLConnection a2 = a(str3, hashMap);
            if (a2 == null) {
                return null;
            }
            b(a2, bArr);
            return a(a2, aVar, z);
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static void b(HttpURLConnection httpURLConnection, byte[] bArr) {
        OutputStream outputStream = null;
        try {
            try {
                outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.flush();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            a(outputStream);
        }
    }

    public static String a(String str, Map<String, String> map, byte[] bArr, a aVar, boolean z) {
        HttpURLConnection a2;
        if (bArr == null || (a2 = a(str, map)) == null) {
            return null;
        }
        if (z) {
            a(a2, bArr);
        } else {
            b(a2, bArr);
        }
        return a(a2, aVar, false);
    }

    public static HttpURLConnection a(String str, Map<String, String> map) {
        Exception e2;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        } catch (Exception e3) {
            e2 = e3;
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setRequestProperty("Connection", "close");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
            return httpURLConnection;
        } catch (Exception e4) {
            e2 = e4;
            httpURLConnection2 = httpURLConnection;
            e2.printStackTrace();
            return httpURLConnection2;
        }
    }

    public static void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        Throwable th;
        GZIPOutputStream gZIPOutputStream;
        Exception e2;
        try {
            gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream(), 204800));
            try {
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.flush();
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    a(null);
                    a(gZIPOutputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                a(null);
                a(gZIPOutputStream);
                throw th;
            }
        } catch (Exception e4) {
            e2 = e4;
            gZIPOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = null;
            a(null);
            a(gZIPOutputStream);
            throw th;
        }
        a(null);
        a(gZIPOutputStream);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x004d A[Catch: all -> 0x0073, LOOP:0: B:21:0x0046->B:23:0x004d, LOOP_END, TryCatch #0 {all -> 0x0073, blocks: (B:20:0x0044, B:21:0x0046, B:23:0x004d, B:25:0x0054, B:27:0x0061), top: B:42:0x0044 }] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0054 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:20:0x0044, B:21:0x0046, B:23:0x004d, B:25:0x0054, B:27:0x0061), top: B:42:0x0044 }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0061 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:20:0x0044, B:21:0x0046, B:23:0x004d, B:25:0x0054, B:27:0x0061), top: B:42:0x0044 }] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0052 A[EDGE_INSN: B:48:0x0052->B:24:0x0052 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.net.HttpURLConnection r5, com.tencent.smtt.utils.g.a r6, boolean r7) {
        /*
            r0 = 0
            int r1 = r5.getResponseCode()     // Catch: all -> 0x0087
            if (r6 == 0) goto L_0x000a
            r6.a(r1)     // Catch: all -> 0x0087
        L_0x000a:
            r6 = 200(0xc8, float:2.8E-43)
            if (r1 != r6) goto L_0x007d
            java.io.InputStream r6 = r5.getInputStream()     // Catch: all -> 0x0087
            java.lang.String r5 = r5.getContentEncoding()     // Catch: all -> 0x0087
            if (r5 == 0) goto L_0x0027
            java.lang.String r1 = "gzip"
            boolean r1 = r5.equalsIgnoreCase(r1)     // Catch: all -> 0x0087
            if (r1 == 0) goto L_0x0027
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch: all -> 0x0087
            r5.<init>(r6)     // Catch: all -> 0x0087
        L_0x0025:
            r6 = r5
            goto L_0x003d
        L_0x0027:
            if (r5 == 0) goto L_0x003d
            java.lang.String r1 = "deflate"
            boolean r5 = r5.equalsIgnoreCase(r1)     // Catch: all -> 0x0087
            if (r5 == 0) goto L_0x003d
            java.util.zip.InflaterInputStream r5 = new java.util.zip.InflaterInputStream     // Catch: all -> 0x0087
            java.util.zip.Inflater r1 = new java.util.zip.Inflater     // Catch: all -> 0x0087
            r2 = 1
            r1.<init>(r2)     // Catch: all -> 0x0087
            r5.<init>(r6, r1)     // Catch: all -> 0x0087
            goto L_0x0025
        L_0x003d:
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: all -> 0x0079
            r5.<init>()     // Catch: all -> 0x0079
            r1 = 128(0x80, float:1.794E-43)
            byte[] r1 = new byte[r1]     // Catch: all -> 0x0073
        L_0x0046:
            int r2 = r6.read(r1)     // Catch: all -> 0x0073
            r3 = -1
            if (r2 == r3) goto L_0x0052
            r3 = 0
            r5.write(r1, r3, r2)     // Catch: all -> 0x0073
            goto L_0x0046
        L_0x0052:
            if (r7 == 0) goto L_0x0061
            java.lang.String r7 = new java.lang.String     // Catch: all -> 0x0073
            byte[] r1 = r5.toByteArray()     // Catch: all -> 0x0073
            java.lang.String r2 = "utf-8"
            r7.<init>(r1, r2)     // Catch: all -> 0x0073
        L_0x005f:
            r0 = r6
            goto L_0x007f
        L_0x0061:
            java.lang.String r7 = new java.lang.String     // Catch: all -> 0x0073
            com.tencent.smtt.utils.h r1 = com.tencent.smtt.utils.h.a()     // Catch: all -> 0x0073
            byte[] r2 = r5.toByteArray()     // Catch: all -> 0x0073
            byte[] r1 = r1.c(r2)     // Catch: all -> 0x0073
            r7.<init>(r1)     // Catch: all -> 0x0073
            goto L_0x005f
        L_0x0073:
            r7 = move-exception
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L_0x008a
        L_0x0079:
            r5 = move-exception
            r7 = r6
            r6 = r0
            goto L_0x008a
        L_0x007d:
            r5 = r0
            r7 = r5
        L_0x007f:
            a(r0)
            a(r5)
            r0 = r7
            goto L_0x0093
        L_0x0087:
            r5 = move-exception
            r6 = r0
            r7 = r6
        L_0x008a:
            r5.printStackTrace()     // Catch: all -> 0x0094
            a(r7)
            a(r6)
        L_0x0093:
            return r0
        L_0x0094:
            r5 = move-exception
            a(r7)
            a(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.utils.g.a(java.net.HttpURLConnection, com.tencent.smtt.utils.g$a, boolean):java.lang.String");
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }
}
