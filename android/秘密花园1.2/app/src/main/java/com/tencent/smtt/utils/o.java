package com.tencent.smtt.utils;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Properties;

/* compiled from: TbsConfigFile.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: e  reason: collision with root package name */
    public static o f2776e;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public File f2777c = null;
    public boolean a = false;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2778d = false;

    /* renamed from: f  reason: collision with root package name */
    public File f2779f = null;

    public o(Context context) {
        this.b = null;
        this.b = context.getApplicationContext();
        b();
    }

    public static synchronized o a(Context context) {
        o oVar;
        synchronized (o.class) {
            if (f2776e == null) {
                f2776e = new o(context);
            }
            oVar = f2776e;
        }
        return oVar;
    }

    private File d() {
        try {
            if (this.f2777c == null) {
                File file = new File(this.b.getDir("tbs", 0), "core_private");
                this.f2777c = file;
                if (file == null || !file.isDirectory()) {
                    return null;
                }
            }
            File file2 = new File(this.f2777c, "debug.conf");
            if (!file2.exists()) {
                file2.createNewFile();
            }
            return file2;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public synchronized void b() {
        BufferedInputStream bufferedInputStream = null;
        try {
            if (this.f2779f == null) {
                this.f2779f = d();
            }
        } catch (Throwable th) {
            th = th;
        }
        if (this.f2779f == null) {
            return;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(this.f2779f));
        try {
            Properties properties = new Properties();
            properties.load(bufferedInputStream2);
            String property = properties.getProperty("setting_forceUseSystemWebview", "");
            if (!"".equals(property)) {
                this.a = Boolean.parseBoolean(property);
            }
            try {
                bufferedInputStream2.close();
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = bufferedInputStream2;
            th.printStackTrace();
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x006e -> B:36:0x0071). Please submit an issue!!! */
    public void c() {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        Properties properties;
        try {
            try {
                File d2 = d();
                if (d2 != null) {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(d2));
                    try {
                        properties = new Properties();
                        properties.load(bufferedInputStream);
                        properties.setProperty("setting_forceUseSystemWebview", Boolean.toString(this.a));
                        properties.setProperty("result_systemWebviewForceUsed", Boolean.toString(this.f2778d));
                        bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(d2));
                    } catch (Throwable th2) {
                        bufferedOutputStream = null;
                        th = th2;
                    }
                    try {
                        properties.store(bufferedOutputStream, (String) null);
                        try {
                            bufferedInputStream.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        bufferedOutputStream.close();
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            th.printStackTrace();
                            try {
                                bufferedInputStream.close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                            bufferedOutputStream.close();
                            return;
                        } catch (Throwable th4) {
                            try {
                                bufferedInputStream.close();
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                            try {
                                bufferedOutputStream.close();
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                            throw th4;
                        }
                    }
                }
                try {
                    throw null;
                } catch (Exception e6) {
                    e6.printStackTrace();
                    try {
                        throw null;
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            } catch (Throwable th5) {
                bufferedInputStream = null;
                th = th5;
                bufferedOutputStream = null;
            }
        } catch (Exception e8) {
            while (true) {
                e8.printStackTrace();
                return;
            }
        }
    }

    public static synchronized o a() {
        o oVar;
        synchronized (o.class) {
            oVar = f2776e;
        }
        return oVar;
    }

    public void a(boolean z) {
        this.f2778d = z;
        c();
    }
}
