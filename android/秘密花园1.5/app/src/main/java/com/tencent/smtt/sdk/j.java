package com.tencent.smtt.sdk;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

/* compiled from: TbsCoreVerManager.java */
/* loaded from: classes.dex */
public class j {
    public static j a;
    public static Context b;

    public static j a(Context context) {
        if (a == null) {
            synchronized (j.class) {
                if (a == null) {
                    a = new j();
                }
            }
        }
        b = context.getApplicationContext();
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.Properties e() {
        /*
            r5 = this;
            r0 = 0
            java.io.File r1 = r5.a()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            java.util.Properties r2 = new java.util.Properties     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            r2.<init>()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            if (r1 == 0) goto L22
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L2d
            r3.<init>(r1)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L2d
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L2d
            r1.<init>(r3)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L2d
            r2.load(r1)     // Catch: java.lang.Exception -> L1b java.lang.Throwable -> L44
            r0 = r1
            goto L22
        L1b:
            r0 = move-exception
            goto L36
        L1d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L36
        L22:
            if (r0 == 0) goto L2c
            r0.close()     // Catch: java.io.IOException -> L28
            goto L2c
        L28:
            r0 = move-exception
            r0.printStackTrace()
        L2c:
            return r2
        L2d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L45
        L32:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
        L36:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L43
            r1.close()     // Catch: java.io.IOException -> L3f
            goto L43
        L3f:
            r0 = move-exception
            r0.printStackTrace()
        L43:
            return r2
        L44:
            r0 = move-exception
        L45:
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.io.IOException -> L4b
            goto L4f
        L4b:
            r1 = move-exception
            r1.printStackTrace()
        L4f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.j.e():java.util.Properties");
    }

    public void b(int i2, int i3) {
        a("tpatch_ver", i2);
        a("tpatch_status", i3);
    }

    public int c() {
        return b("install_status");
    }

    public int d() {
        return b("incrupdate_status");
    }

    public void c(int i2, int i3) {
        a("install_core_ver", i2);
        a("install_status", i3);
    }

    public void d(int i2) {
        a("unlzma_status", i2);
    }

    public int b() {
        return c("install_core_ver");
    }

    public String d(String str) {
        Properties e2 = e();
        if (e2 == null || e2.getProperty(str) == null) {
            return null;
        }
        return e2.getProperty(str);
    }

    public void b(int i2) {
        a("unzip_retry_num", i2);
    }

    public void c(int i2) {
        a("incrupdate_status", i2);
    }

    public int b(String str) {
        Properties e2 = e();
        if (e2 == null || e2.getProperty(str) == null) {
            return -1;
        }
        return Integer.parseInt(e2.getProperty(str));
    }

    public int c(String str) {
        Properties e2 = e();
        if (e2 == null || e2.getProperty(str) == null) {
            return 0;
        }
        return Integer.parseInt(e2.getProperty(str));
    }

    public void a(int i2, int i3) {
        a("copy_core_ver", i2);
        a("copy_status", i3);
    }

    public File a() {
        l.a();
        File file = new File(l.s(b), "tbscoreinstall.txt");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return file;
    }

    public void a(int i2) {
        a("dexopt_retry_num", i2);
    }

    public void a(String str) {
        a("install_apk_path", str);
    }

    public void a(String str, String str2) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    Properties e2 = e();
                    if (e2 != null) {
                        e2.setProperty(str, str2);
                        File a2 = a();
                        if (a2 != null) {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(a2);
                            try {
                                e2.store(fileOutputStream2, "update " + str + " and status!");
                                fileOutputStream = fileOutputStream2;
                            } catch (Exception e3) {
                                e = e3;
                                fileOutputStream = fileOutputStream2;
                                e.printStackTrace();
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                } catch (Exception e5) {
                    e = e5;
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e6) {
            e6.printStackTrace();
        }
    }

    public void a(String str, int i2) {
        a(str, String.valueOf(i2));
    }
}
