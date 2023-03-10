package com.tencent.smtt.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.TbsLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
/* loaded from: classes.dex */
public class TbsDownloadUpload {
    public static TbsDownloadUpload b;
    public Map<String, Object> a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public Context f2514c;

    /* renamed from: d  reason: collision with root package name */
    public int f2515d;

    /* renamed from: e  reason: collision with root package name */
    public int f2516e;

    /* renamed from: f  reason: collision with root package name */
    public int f2517f;

    /* renamed from: g  reason: collision with root package name */
    public int f2518g;

    /* renamed from: h  reason: collision with root package name */
    public int f2519h;

    /* renamed from: i  reason: collision with root package name */
    public int f2520i;
    public SharedPreferences mPreferences;

    /* loaded from: classes.dex */
    public interface TbsUploadKey {
        public static final String KEY_LOCAL_CORE_VERSION = "tbs_local_core_version";
        public static final String KEY_NEEDDOWNLOAD_CODE = "tbs_needdownload_code";
        public static final String KEY_NEEDDOWNLOAD_RETURN = "tbs_needdownload_return";
        public static final String KEY_NEEDDOWNLOAD_SENT = "tbs_needdownload_sent";
        public static final String KEY_STARTDOWNLOAD_CODE = "tbs_startdownload_code";
        public static final String KEY_STARTDOWNLOAD_SENT = "tbs_startdownload_sent";
    }

    public TbsDownloadUpload(Context context) {
        this.mPreferences = context.getSharedPreferences("tbs_download_upload", 4);
        Context applicationContext = context.getApplicationContext();
        this.f2514c = applicationContext;
        if (applicationContext == null) {
            this.f2514c = context;
        }
    }

    public static File a(Context context, String str) {
        l.a();
        File s = l.s(context);
        if (s == null) {
            return null;
        }
        File file = new File(s, str);
        if (file.exists()) {
            return file;
        }
        try {
            file.createNewFile();
            return file;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static synchronized void clear() {
        synchronized (TbsDownloadUpload.class) {
            b = null;
        }
    }

    public static synchronized TbsDownloadUpload getInstance(Context context) {
        TbsDownloadUpload tbsDownloadUpload;
        synchronized (TbsDownloadUpload.class) {
            if (b == null) {
                b = new TbsDownloadUpload(context);
            }
            tbsDownloadUpload = b;
        }
        return tbsDownloadUpload;
    }

    public void clearUploadCode() {
        this.a.put(TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, 0);
        this.a.put(TbsUploadKey.KEY_STARTDOWNLOAD_CODE, 0);
        this.a.put(TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, 0);
        this.a.put(TbsUploadKey.KEY_NEEDDOWNLOAD_SENT, 0);
        this.a.put(TbsUploadKey.KEY_STARTDOWNLOAD_SENT, 0);
        this.a.put(TbsUploadKey.KEY_LOCAL_CORE_VERSION, 0);
        writeTbsDownloadInfo();
    }

    public synchronized void commit() {
        writeTbsDownloadInfo();
    }

    public synchronized int getLocalCoreVersion() {
        return this.f2520i;
    }

    public synchronized int getNeedDownloadCode() {
        if (this.f2518g == 1) {
            return TbsListener.ErrorCode.NEEDDOWNLOAD_9;
        }
        return this.f2515d;
    }

    public synchronized int getNeedDownloadReturn() {
        return this.f2517f;
    }

    public synchronized int getStartDownloadCode() {
        if (this.f2519h == 1) {
            return TbsListener.ErrorCode.STARTDOWNLOAD_9;
        }
        return this.f2516e;
    }

    public synchronized void readTbsDownloadInfo(Context context) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        File a;
        try {
            a = a(this.f2514c, "download_upload");
        } catch (Throwable th2) {
            bufferedInputStream = null;
            th = th2;
        }
        if (a == null) {
            return;
        }
        bufferedInputStream = new BufferedInputStream(new FileInputStream(a));
        try {
            Properties properties = new Properties();
            properties.load(bufferedInputStream);
            String property = properties.getProperty(TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, "");
            if (!"".equals(property)) {
                this.f2515d = Math.max(Integer.parseInt(property), 0);
            }
            String property2 = properties.getProperty(TbsUploadKey.KEY_STARTDOWNLOAD_CODE, "");
            if (!"".equals(property2)) {
                this.f2516e = Math.max(Integer.parseInt(property2), 0);
            }
            String property3 = properties.getProperty(TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, "");
            if (!"".equals(property3)) {
                this.f2517f = Math.max(Integer.parseInt(property3), 0);
            }
            String property4 = properties.getProperty(TbsUploadKey.KEY_NEEDDOWNLOAD_SENT, "");
            if (!"".equals(property4)) {
                this.f2518g = Math.max(Integer.parseInt(property4), 0);
            }
            String property5 = properties.getProperty(TbsUploadKey.KEY_STARTDOWNLOAD_SENT, "");
            if (!"".equals(property5)) {
                this.f2519h = Math.max(Integer.parseInt(property5), 0);
            }
            String property6 = properties.getProperty(TbsUploadKey.KEY_LOCAL_CORE_VERSION, "");
            if (!"".equals(property6)) {
                this.f2520i = Math.max(Integer.parseInt(property6), 0);
            }
        } catch (Throwable th3) {
            th = th3;
            th.printStackTrace();
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                }
            }
        }
        try {
            bufferedInputStream.close();
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
    }

    public synchronized void writeTbsDownloadInfo() {
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        File a;
        TbsLog.i("TbsDownloadUpload", "writeTbsDownloadInfo #1");
        BufferedInputStream bufferedInputStream = null;
        try {
            a = a(this.f2514c, "download_upload");
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
        if (a == null) {
            return;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(a));
        try {
            Properties properties = new Properties();
            properties.load(bufferedInputStream2);
            for (String str : this.a.keySet()) {
                Object obj = this.a.get(str);
                properties.setProperty(str, "" + obj);
                TbsLog.i("TbsDownloadUpload", "writeTbsDownloadInfo key is " + str + " value is " + obj);
            }
            this.a.clear();
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(a));
            try {
                properties.store(bufferedOutputStream, (String) null);
                try {
                    bufferedInputStream2.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = bufferedInputStream2;
                th.printStackTrace();
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                if (bufferedOutputStream != null) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                    }
                }
            }
            try {
                bufferedOutputStream.close();
            } catch (Exception e5) {
                e = e5;
                e.printStackTrace();
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream = null;
        }
    }

    public static synchronized TbsDownloadUpload getInstance() {
        TbsDownloadUpload tbsDownloadUpload;
        synchronized (TbsDownloadUpload.class) {
            tbsDownloadUpload = b;
        }
        return tbsDownloadUpload;
    }
}
