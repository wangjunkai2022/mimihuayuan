package com.tencent.smtt.utils;

import android.annotation.TargetApi;
import android.content.Context;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Properties;

/* compiled from: TbsCommonConfig.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: c  reason: collision with root package name */
    public static n f2692c;
    public Context a;
    public File b = null;

    /* renamed from: d  reason: collision with root package name */
    public String f2693d = "http://log.tbs.qq.com/ajax?c=pu&v=2&k=";

    /* renamed from: e  reason: collision with root package name */
    public String f2694e = "http://log.tbs.qq.com/ajax?c=pu&tk=";

    /* renamed from: f  reason: collision with root package name */
    public String f2695f = "http://wup.imtt.qq.com:8080";

    /* renamed from: g  reason: collision with root package name */
    public String f2696g = "http://log.tbs.qq.com/ajax?c=dl&k=";

    /* renamed from: h  reason: collision with root package name */
    public String f2697h = "http://cfg.imtt.qq.com/tbs?v=2&mk=";

    /* renamed from: i  reason: collision with root package name */
    public String f2698i = "http://log.tbs.qq.com/ajax?c=ul&v=2&k=";

    /* renamed from: j  reason: collision with root package name */
    public String f2699j = "http://mqqad.html5.qq.com/adjs";

    /* renamed from: k  reason: collision with root package name */
    public String f2700k = "http://log.tbs.qq.com/ajax?c=ucfu&k=";

    @TargetApi(11)
    public n(Context context) {
        this.a = null;
        TbsLog.w("TbsCommonConfig", "TbsCommonConfig constructing...");
        this.a = context.getApplicationContext();
        g();
    }

    public static synchronized n a(Context context) {
        n nVar;
        synchronized (n.class) {
            if (f2692c == null) {
                f2692c = new n(context);
            }
            nVar = f2692c;
        }
        return nVar;
    }

    private synchronized void g() {
        Throwable th;
        File h2;
        BufferedInputStream bufferedInputStream = null;
        try {
            h2 = h();
        } catch (Throwable th2) {
            th = th2;
        }
        if (h2 == null) {
            TbsLog.e("TbsCommonConfig", "Config file is null, default values will be applied");
            return;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(h2));
        try {
            Properties properties = new Properties();
            properties.load(bufferedInputStream2);
            String property = properties.getProperty("pv_post_url", "");
            if (!"".equals(property)) {
                this.f2693d = property;
            }
            String property2 = properties.getProperty("wup_proxy_domain", "");
            if (!"".equals(property2)) {
                this.f2695f = property2;
            }
            String property3 = properties.getProperty("tbs_download_stat_post_url", "");
            if (!"".equals(property3)) {
                this.f2696g = property3;
            }
            String property4 = properties.getProperty("tbs_downloader_post_url", "");
            if (!"".equals(property4)) {
                this.f2697h = property4;
            }
            String property5 = properties.getProperty("tbs_log_post_url", "");
            if (!"".equals(property5)) {
                this.f2698i = property5;
            }
            String property6 = properties.getProperty("tips_url", "");
            if (!"".equals(property6)) {
                this.f2699j = property6;
            }
            String property7 = properties.getProperty("tbs_cmd_post_url", "");
            if (!"".equals(property7)) {
                this.f2700k = property7;
            }
            String property8 = properties.getProperty("pv_post_url_tk", "");
            if (!"".equals(property8)) {
                this.f2694e = property8;
            }
            try {
                bufferedInputStream2.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = bufferedInputStream2;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            TbsLog.e("TbsCommonConfig", "exceptions occurred1:" + stringWriter.toString());
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                }
            }
        }
    }

    private File h() {
        Throwable th;
        File file = null;
        try {
            if (this.b == null) {
                File file2 = new File(f.a(this.a, 5));
                this.b = file2;
                if (file2 == null || !file2.isDirectory()) {
                    return null;
                }
            }
            File file3 = new File(this.b, "tbsnet.conf");
            if (!file3.exists()) {
                TbsLog.e("TbsCommonConfig", "Get file(" + file3.getCanonicalPath() + ") failed!");
                return null;
            }
            try {
                TbsLog.w("TbsCommonConfig", "pathc:" + file3.getCanonicalPath());
                return file3;
            } catch (Throwable th2) {
                th = th2;
                file = file3;
                StringWriter stringWriter = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter));
                TbsLog.e("TbsCommonConfig", "exceptions occurred2:" + stringWriter.toString());
                return file;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public String b() {
        return this.f2693d;
    }

    public String c() {
        return this.f2696g;
    }

    public String d() {
        return this.f2697h;
    }

    public String e() {
        return this.f2698i;
    }

    public String f() {
        return this.f2694e;
    }

    public static synchronized n a() {
        n nVar;
        synchronized (n.class) {
            nVar = f2692c;
        }
        return nVar;
    }
}
