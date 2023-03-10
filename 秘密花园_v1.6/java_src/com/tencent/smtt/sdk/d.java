package com.tencent.smtt.sdk;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
/* compiled from: SDKEngine.java */
/* loaded from: classes.dex */
public class d {
    public static int a = 0;
    public static boolean b = false;

    /* renamed from: e  reason: collision with root package name */
    public static d f2637e = null;

    /* renamed from: h  reason: collision with root package name */
    public static int f2638h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static int f2639i = 3;

    /* renamed from: k  reason: collision with root package name */
    public static String f2640k;

    /* renamed from: c  reason: collision with root package name */
    public r f2641c = null;

    /* renamed from: d  reason: collision with root package name */
    public r f2642d = null;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2643f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2644g = false;

    /* renamed from: j  reason: collision with root package name */
    public File f2645j = null;

    public static d a(boolean z) {
        if (f2637e == null && z) {
            synchronized (d.class) {
                if (f2637e == null) {
                    f2637e = new d();
                }
            }
        }
        return f2637e;
    }

    public static int d() {
        return f2638h;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0054: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:27:0x0054 */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int i() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            java.io.File r3 = r6.f2645j     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            java.lang.String r4 = "count.prop"
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            if (r3 != 0) goto L12
            return r0
        L12:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L41
            java.util.Properties r1 = new java.util.Properties     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            r1.<init>()     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            r1.load(r2)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            java.lang.String r3 = com.tencent.smtt.sdk.d.f2640k     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            java.lang.String r4 = "1"
            java.lang.String r1 = r1.getProperty(r3, r4)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            int r0 = r1.intValue()     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L53
            r2.close()     // Catch: java.io.IOException -> L38
            goto L3c
        L38:
            r1 = move-exception
            r1.printStackTrace()
        L3c:
            return r0
        L3d:
            r1 = move-exception
            goto L45
        L3f:
            r0 = move-exception
            goto L55
        L41:
            r2 = move-exception
            r5 = r2
            r2 = r1
            r1 = r5
        L45:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L53
            if (r2 == 0) goto L52
            r2.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r1 = move-exception
            r1.printStackTrace()
        L52:
            return r0
        L53:
            r0 = move-exception
            r1 = r2
        L55:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5b
            goto L5f
        L5b:
            r1 = move-exception
            r1.printStackTrace()
        L5f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.d.i():int");
    }

    public boolean b() {
        return this.f2643f;
    }

    public r c() {
        return this.f2641c;
    }

    public String e() {
        r rVar = this.f2641c;
        return (rVar == null || QbSdk.a) ? "system webview get nothing..." : rVar.a();
    }

    public boolean f() {
        if (b) {
            if (f2640k == null) {
                return false;
            }
            int i2 = i();
            if (i2 == 0) {
                b(1);
            } else {
                int i3 = i2 + 1;
                if (i3 > f2639i) {
                    return false;
                }
                b(i3);
            }
        }
        return b;
    }

    public boolean g() {
        return this.f2644g;
    }

    public boolean h() {
        return QbSdk.useSoftWare();
    }

    public boolean b(boolean z) {
        b = z;
        return z;
    }

    private void b(int i2) {
        String valueOf = String.valueOf(i2);
        Properties properties = new Properties();
        properties.setProperty(f2640k, valueOf);
        try {
            properties.store(new FileOutputStream(new File(this.f2645j, "count.prop")), (String) null);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f5 A[Catch: all -> 0x0164, TryCatch #1 {, blocks: (B:4:0x0004, B:8:0x0043, B:14:0x005d, B:16:0x0092, B:71:0x01e3, B:65:0x019b, B:67:0x01ce, B:70:0x01d3, B:20:0x0098, B:22:0x009e, B:24:0x00ab, B:26:0x00c2, B:49:0x0109, B:50:0x0112, B:52:0x0115, B:53:0x0118, B:55:0x011e, B:57:0x0127, B:59:0x0142, B:61:0x0160, B:60:0x0151, B:56:0x0123, B:29:0x00cb, B:33:0x00d6, B:35:0x00e9, B:41:0x00f5, B:44:0x00fe), top: B:77:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fe A[Catch: all -> 0x0164, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0004, B:8:0x0043, B:14:0x005d, B:16:0x0092, B:71:0x01e3, B:65:0x019b, B:67:0x01ce, B:70:0x01d3, B:20:0x0098, B:22:0x009e, B:24:0x00ab, B:26:0x00c2, B:49:0x0109, B:50:0x0112, B:52:0x0115, B:53:0x0118, B:55:0x011e, B:57:0x0127, B:59:0x0142, B:61:0x0160, B:60:0x0151, B:56:0x0123, B:29:0x00cb, B:33:0x00d6, B:35:0x00e9, B:41:0x00f5, B:44:0x00fe), top: B:77:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(android.content.Context r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.d.a(android.content.Context, boolean, boolean):void");
    }

    public r a() {
        if (this.f2643f) {
            return this.f2641c;
        }
        return null;
    }

    public static void a(int i2) {
        f2638h = i2;
    }

    public void a(String str) {
        f2640k = str;
    }
}
