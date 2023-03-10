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
        String b;
        try {
            if (z) {
                b = i.a().c();
            } else {
                b = h.a().b();
            }
            String str2 = str + b;
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
            HttpURLConnection a2 = a(str2, hashMap);
            if (a2 != null) {
                b(a2, bArr);
                return a(a2, aVar, z);
            }
            return null;
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
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        } catch (Exception e2) {
            e = e2;
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
        } catch (Exception e3) {
            e = e3;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            return httpURLConnection2;
        }
    }

    public static void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        GZIPOutputStream gZIPOutputStream;
        try {
            gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream(), 204800));
            try {
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.flush();
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    a(null);
                    a(gZIPOutputStream);
                }
            } catch (Throwable th) {
                th = th;
                a(null);
                a(gZIPOutputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            gZIPOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream = null;
            a(null);
            a(gZIPOutputStream);
            throw th;
        }
        a(null);
        a(gZIPOutputStream);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[Catch: all -> 0x0073, LOOP:0: B:22:0x0046->B:24:0x004d, LOOP_END, TryCatch #0 {all -> 0x0073, blocks: (B:21:0x0044, B:22:0x0046, B:24:0x004d, B:26:0x0054, B:28:0x0061), top: B:44:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:21:0x0044, B:22:0x0046, B:24:0x004d, B:26:0x0054, B:28:0x0061), top: B:44:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:21:0x0044, B:22:0x0046, B:24:0x004d, B:26:0x0054, B:28:0x0061), top: B:44:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0052 A[EDGE_INSN: B:50:0x0052->B:25:0x0052 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.net.HttpURLConnection r5, com.tencent.smtt.utils.g.a r6, boolean r7) {
        /*
            r0 = 0
            int r1 = r5.getResponseCode()     // Catch: java.lang.Throwable -> L87
            if (r6 == 0) goto La
            r6.a(r1)     // Catch: java.lang.Throwable -> L87
        La:
            r6 = 200(0xc8, float:2.8E-43)
            if (r1 != r6) goto L7d
            java.io.InputStream r6 = r5.getInputStream()     // Catch: java.lang.Throwable -> L87
            java.lang.String r5 = r5.getContentEncoding()     // Catch: java.lang.Throwable -> L87
            if (r5 == 0) goto L27
            java.lang.String r1 = "gzip"
            boolean r1 = r5.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L87
            if (r1 == 0) goto L27
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L87
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L87
        L25:
            r6 = r5
            goto L3d
        L27:
            if (r5 == 0) goto L3d
            java.lang.String r1 = "deflate"
            boolean r5 = r5.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L87
            if (r5 == 0) goto L3d
            java.util.zip.InflaterInputStream r5 = new java.util.zip.InflaterInputStream     // Catch: java.lang.Throwable -> L87
            java.util.zip.Inflater r1 = new java.util.zip.Inflater     // Catch: java.lang.Throwable -> L87
            r2 = 1
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L87
            r5.<init>(r6, r1)     // Catch: java.lang.Throwable -> L87
            goto L25
        L3d:
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L79
            r5.<init>()     // Catch: java.lang.Throwable -> L79
            r1 = 128(0x80, float:1.794E-43)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L73
        L46:
            int r2 = r6.read(r1)     // Catch: java.lang.Throwable -> L73
            r3 = -1
            if (r2 == r3) goto L52
            r3 = 0
            r5.write(r1, r3, r2)     // Catch: java.lang.Throwable -> L73
            goto L46
        L52:
            if (r7 == 0) goto L61
            java.lang.String r7 = new java.lang.String     // Catch: java.lang.Throwable -> L73
            byte[] r1 = r5.toByteArray()     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = "utf-8"
            r7.<init>(r1, r2)     // Catch: java.lang.Throwable -> L73
        L5f:
            r0 = r6
            goto L7f
        L61:
            java.lang.String r7 = new java.lang.String     // Catch: java.lang.Throwable -> L73
            com.tencent.smtt.utils.h r1 = com.tencent.smtt.utils.h.a()     // Catch: java.lang.Throwable -> L73
            byte[] r2 = r5.toByteArray()     // Catch: java.lang.Throwable -> L73
            byte[] r1 = r1.c(r2)     // Catch: java.lang.Throwable -> L73
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L73
            goto L5f
        L73:
            r7 = move-exception
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L8a
        L79:
            r5 = move-exception
            r7 = r6
            r6 = r0
            goto L8a
        L7d:
            r5 = r0
            r7 = r5
        L7f:
            a(r0)
            a(r5)
            r0 = r7
            goto L93
        L87:
            r5 = move-exception
            r6 = r0
            r7 = r6
        L8a:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L94
            a(r7)
            a(r6)
        L93:
            return r0
        L94:
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
