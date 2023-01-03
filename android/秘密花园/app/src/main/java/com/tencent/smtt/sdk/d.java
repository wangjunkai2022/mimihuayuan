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
    public static d f2558e = null;

    /* renamed from: h  reason: collision with root package name */
    public static int f2559h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static int f2560i = 3;

    /* renamed from: k  reason: collision with root package name */
    public static String f2561k;

    /* renamed from: c  reason: collision with root package name */
    public r f2562c = null;

    /* renamed from: d  reason: collision with root package name */
    public r f2563d = null;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2564f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2565g = false;

    /* renamed from: j  reason: collision with root package name */
    public File f2566j = null;

    public static d a(boolean z) {
        if (f2558e == null && z) {
            synchronized (d.class) {
                if (f2558e == null) {
                    f2558e = new d();
                }
            }
        }
        return f2558e;
    }

    public static int d() {
        return f2559h;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 2, insn: 0x0054: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:23:0x0054
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    private int i() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: Exception -> 0x0041, all -> 0x003f
            java.io.File r3 = r6.f2566j     // Catch: Exception -> 0x0041, all -> 0x003f
            java.lang.String r4 = "count.prop"
            r2.<init>(r3, r4)     // Catch: Exception -> 0x0041, all -> 0x003f
            boolean r3 = r2.exists()     // Catch: Exception -> 0x0041, all -> 0x003f
            if (r3 != 0) goto L_0x0012
            return r0
        L_0x0012:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: Exception -> 0x0041, all -> 0x003f
            r3.<init>(r2)     // Catch: Exception -> 0x0041, all -> 0x003f
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: Exception -> 0x0041, all -> 0x003f
            r2.<init>(r3)     // Catch: Exception -> 0x0041, all -> 0x003f
            java.util.Properties r1 = new java.util.Properties     // Catch: Exception -> 0x003d, all -> 0x0053
            r1.<init>()     // Catch: Exception -> 0x003d, all -> 0x0053
            r1.load(r2)     // Catch: Exception -> 0x003d, all -> 0x0053
            java.lang.String r3 = com.tencent.smtt.sdk.d.f2561k     // Catch: Exception -> 0x003d, all -> 0x0053
            java.lang.String r4 = "1"
            java.lang.String r1 = r1.getProperty(r3, r4)     // Catch: Exception -> 0x003d, all -> 0x0053
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: Exception -> 0x003d, all -> 0x0053
            int r0 = r1.intValue()     // Catch: Exception -> 0x003d, all -> 0x0053
            r2.close()     // Catch: IOException -> 0x0038
            goto L_0x003c
        L_0x0038:
            r1 = move-exception
            r1.printStackTrace()
        L_0x003c:
            return r0
        L_0x003d:
            r1 = move-exception
            goto L_0x0045
        L_0x003f:
            r0 = move-exception
            goto L_0x0055
        L_0x0041:
            r2 = move-exception
            r5 = r2
            r2 = r1
            r1 = r5
        L_0x0045:
            r1.printStackTrace()     // Catch: all -> 0x0053
            if (r2 == 0) goto L_0x0052
            r2.close()     // Catch: IOException -> 0x004e
            goto L_0x0052
        L_0x004e:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0052:
            return r0
        L_0x0053:
            r0 = move-exception
            r1 = r2
        L_0x0055:
            if (r1 == 0) goto L_0x005f
            r1.close()     // Catch: IOException -> 0x005b
            goto L_0x005f
        L_0x005b:
            r1 = move-exception
            r1.printStackTrace()
        L_0x005f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.d.i():int");
    }

    public boolean b() {
        return this.f2564f;
    }

    public r c() {
        return this.f2562c;
    }

    public String e() {
        r rVar = this.f2562c;
        return (rVar == null || QbSdk.a) ? "system webview get nothing..." : rVar.a();
    }

    public boolean f() {
        if (b) {
            if (f2561k == null) {
                return false;
            }
            int i2 = i();
            if (i2 == 0) {
                b(1);
            } else {
                int i3 = i2 + 1;
                if (i3 > f2560i) {
                    return false;
                }
                b(i3);
            }
        }
        return b;
    }

    public boolean g() {
        return this.f2565g;
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
        properties.setProperty(f2561k, valueOf);
        try {
            properties.store(new FileOutputStream(new File(this.f2566j, "count.prop")), (String) null);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f5 A[Catch: all -> 0x0164, TryCatch #1 {, blocks: (B:4:0x0004, B:8:0x0043, B:14:0x005d, B:16:0x0092, B:62:0x019b, B:64:0x01ce, B:67:0x01d3, B:68:0x01e3, B:20:0x0098, B:22:0x009e, B:24:0x00ab, B:26:0x00c2, B:29:0x00cb, B:33:0x00d6, B:35:0x00e9, B:41:0x00f5, B:44:0x00fe, B:49:0x0109, B:50:0x0112, B:52:0x0115, B:53:0x0118, B:55:0x011e, B:56:0x0123, B:57:0x0127, B:59:0x0142, B:60:0x0151, B:61:0x0160), top: B:73:0x0004 }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00fe A[Catch: all -> 0x0164, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0004, B:8:0x0043, B:14:0x005d, B:16:0x0092, B:62:0x019b, B:64:0x01ce, B:67:0x01d3, B:68:0x01e3, B:20:0x0098, B:22:0x009e, B:24:0x00ab, B:26:0x00c2, B:29:0x00cb, B:33:0x00d6, B:35:0x00e9, B:41:0x00f5, B:44:0x00fe, B:49:0x0109, B:50:0x0112, B:52:0x0115, B:53:0x0118, B:55:0x011e, B:56:0x0123, B:57:0x0127, B:59:0x0142, B:60:0x0151, B:61:0x0160), top: B:73:0x0004 }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0107  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(android.content.Context r11, boolean r12, boolean r13) {
        /*
        // Method dump skipped, instructions count: 496
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.d.a(android.content.Context, boolean, boolean):void");
    }

    public r a() {
        if (this.f2564f) {
            return this.f2562c;
        }
        return null;
    }

    public static void a(int i2) {
        f2559h = i2;
    }

    public void a(String str) {
        f2561k = str;
    }
}
