package com.tencent.smtt.sdk;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
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

    private Properties e() {
        Throwable th;
        Properties properties;
        BufferedInputStream bufferedInputStream;
        Exception e2;
        try {
            BufferedInputStream bufferedInputStream2 = null;
            try {
                try {
                    File a2 = a();
                    properties = new Properties();
                    if (a2 != null) {
                        try {
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(a2));
                        } catch (Exception e3) {
                            e2 = e3;
                            bufferedInputStream = null;
                        }
                        try {
                            properties.load(bufferedInputStream);
                            bufferedInputStream2 = bufferedInputStream;
                        } catch (Exception e4) {
                            e2 = e4;
                            e2.printStackTrace();
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            return properties;
                        }
                    }
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    return properties;
                } catch (Throwable th2) {
                    th = th2;
                    if (0 != 0) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e8) {
                e2 = e8;
                properties = null;
                bufferedInputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
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
        Throwable th;
        Exception e2;
        try {
            try {
                FileOutputStream fileOutputStream = null;
                try {
                    Properties e3 = e();
                    if (e3 != null) {
                        e3.setProperty(str, str2);
                        File a2 = a();
                        if (a2 != null) {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(a2);
                            try {
                                e3.store(fileOutputStream2, "update " + str + " and status!");
                                fileOutputStream = fileOutputStream2;
                            } catch (Exception e4) {
                                e2 = e4;
                                fileOutputStream = fileOutputStream2;
                                e2.printStackTrace();
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                    return;
                                }
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e5) {
                                        e5.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Exception e6) {
                    e2 = e6;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public void a(String str, int i2) {
        a(str, String.valueOf(i2));
    }
}
