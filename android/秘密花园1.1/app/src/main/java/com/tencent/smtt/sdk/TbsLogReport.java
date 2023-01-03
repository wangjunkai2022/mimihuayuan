package com.tencent.smtt.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.g;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class TbsLogReport {
    public static TbsLogReport a;
    public Handler b;

    /* renamed from: c  reason: collision with root package name */
    public Context f2452c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2453d = false;

    /* loaded from: classes.dex */
    public enum EventType {
        TYPE_DOWNLOAD(0),
        TYPE_INSTALL(1),
        TYPE_LOAD(2),
        TYPE_DOWNLOAD_DECOUPLE(3),
        TYPE_INSTALL_DECOUPLE(4),
        TYPE_COOKIE_DB_SWITCH(5),
        TYPE_SDK_REPORT_INFO(6);
        
        public int a;

        EventType(int i2) {
            this.a = i2;
        }
    }

    /* loaded from: classes.dex */
    public static class TbsLogInfo implements Cloneable {
        public int a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public String f2454c;

        /* renamed from: d  reason: collision with root package name */
        public String f2455d;

        /* renamed from: e  reason: collision with root package name */
        public int f2456e;

        /* renamed from: f  reason: collision with root package name */
        public int f2457f;

        /* renamed from: g  reason: collision with root package name */
        public int f2458g;

        /* renamed from: h  reason: collision with root package name */
        public int f2459h;

        /* renamed from: i  reason: collision with root package name */
        public String f2460i;

        /* renamed from: j  reason: collision with root package name */
        public int f2461j;

        /* renamed from: k  reason: collision with root package name */
        public int f2462k;

        /* renamed from: l  reason: collision with root package name */
        public long f2463l;

        /* renamed from: m  reason: collision with root package name */
        public long f2464m;
        public int n;
        public String o;
        public String p;
        public long q;

        public Object clone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException unused) {
                return this;
            }
        }

        public int getDownFinalFlag() {
            return this.f2462k;
        }

        public void resetArgs() {
            this.b = 0L;
            this.f2454c = null;
            this.f2455d = null;
            this.f2456e = 0;
            this.f2457f = 0;
            this.f2458g = 0;
            this.f2459h = 2;
            this.f2460i = EnvironmentCompat.MEDIA_UNKNOWN;
            this.f2461j = 0;
            this.f2462k = 2;
            this.f2463l = 0L;
            this.f2464m = 0L;
            this.n = 1;
            this.a = 0;
            this.o = null;
            this.p = null;
            this.q = 0L;
        }

        public void setApn(String str) {
            this.f2460i = str;
        }

        public void setCheckErrorDetail(String str) {
            setErrorCode(108);
            this.o = str;
        }

        public void setDownConsumeTime(long j2) {
            this.f2464m += j2;
        }

        public void setDownFinalFlag(int i2) {
            this.f2462k = i2;
        }

        public void setDownloadCancel(int i2) {
            this.f2458g = i2;
        }

        public void setDownloadSize(long j2) {
            this.q += j2;
        }

        public void setDownloadUrl(String str) {
            if (this.f2454c == null) {
                this.f2454c = str;
                return;
            }
            this.f2454c += ";" + str;
        }

        public void setErrorCode(int i2) {
            if (i2 != 100 && i2 != 110 && i2 != 120 && i2 != 111 && i2 < 400) {
                TbsLog.i(TbsDownloader.LOGTAG, "error occured, errorCode:" + i2, true);
            }
            if (i2 == 111) {
                TbsLog.i(TbsDownloader.LOGTAG, "you are not in wifi, downloading stoped", true);
            }
            this.a = i2;
        }

        public void setEventTime(long j2) {
            this.b = j2;
        }

        public void setFailDetail(String str) {
            if (str == null) {
                return;
            }
            if (str.length() > 1024) {
                str = str.substring(0, 1024);
            }
            this.p = str;
        }

        public void setHttpCode(int i2) {
            this.f2456e = i2;
        }

        public void setNetworkChange(int i2) {
            this.n = i2;
        }

        public void setNetworkType(int i2) {
            this.f2461j = i2;
        }

        public void setPatchUpdateFlag(int i2) {
            this.f2457f = i2;
        }

        public void setPkgSize(long j2) {
            this.f2463l = j2;
        }

        public void setResolveIp(String str) {
            this.f2455d = str;
        }

        public void setUnpkgFlag(int i2) {
            this.f2459h = i2;
        }

        public TbsLogInfo() {
            resetArgs();
        }

        public void setFailDetail(Throwable th) {
            if (th == null) {
                this.p = "";
                return;
            }
            String stackTraceString = Log.getStackTraceString(th);
            if (stackTraceString.length() > 1024) {
                stackTraceString = stackTraceString.substring(0, 1024);
            }
            this.p = stackTraceString;
        }
    }

    public TbsLogReport(Context context) {
        this.b = null;
        this.f2452c = context.getApplicationContext();
        HandlerThread handlerThread = new HandlerThread("TbsLogReportThread");
        handlerThread.start();
        this.b = new Handler(handlerThread.getLooper()) { // from class: com.tencent.smtt.sdk.TbsLogReport.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 != 600) {
                    if (i2 == 601) {
                        TbsLogReport.this.b();
                        return;
                    }
                    return;
                }
                Object obj = message.obj;
                if (obj instanceof TbsLogInfo) {
                    try {
                        int i3 = message.arg1;
                        TbsLogReport.this.a(i3, (TbsLogInfo) obj);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        SharedPreferences.Editor edit = d().edit();
        edit.remove("tbs_download_upload");
        edit.commit();
    }

    private SharedPreferences d() {
        return this.f2452c.getSharedPreferences("tbs_download_stat", 4);
    }

    public static TbsLogReport getInstance(Context context) {
        if (a == null) {
            synchronized (TbsLogReport.class) {
                if (a == null) {
                    a = new TbsLogReport(context);
                }
            }
        }
        return a;
    }

    public void clear() {
        try {
            SharedPreferences.Editor edit = d().edit();
            edit.clear();
            edit.commit();
        } catch (Exception unused) {
        }
    }

    public void dailyReport() {
        this.b.sendEmptyMessage(601);
    }

    public void eventReport(EventType eventType, TbsLogInfo tbsLogInfo) {
        try {
            Message obtainMessage = this.b.obtainMessage();
            obtainMessage.what = 600;
            obtainMessage.arg1 = eventType.a;
            obtainMessage.obj = (TbsLogInfo) tbsLogInfo.clone();
            this.b.sendMessage(obtainMessage);
        } catch (Throwable th) {
            StringBuilder o = f.b.a.a.a.o("[TbsLogReport.eventReport] error, message=");
            o.append(th.getMessage());
            TbsLog.w("upload", o.toString());
        }
    }

    public boolean getShouldUploadEventReport() {
        return this.f2453d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x012d, code lost:
        if (r0 != 0) goto L39;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void reportTbsLog() {
        /*
            Method dump skipped, instructions count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.TbsLogReport.reportTbsLog():void");
    }

    public void setInstallErrorCode(int i2, String str) {
        setInstallErrorCode(i2, str, EventType.TYPE_INSTALL);
    }

    public void setLoadErrorCode(int i2, String str) {
        TbsLogInfo tbsLogInfo = tbsLogInfo();
        tbsLogInfo.setErrorCode(i2);
        tbsLogInfo.setEventTime(System.currentTimeMillis());
        tbsLogInfo.setFailDetail(str);
        eventReport(EventType.TYPE_LOAD, tbsLogInfo);
    }

    public void setShouldUploadEventReport(boolean z) {
        this.f2453d = z;
    }

    public TbsLogInfo tbsLogInfo() {
        return new TbsLogInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Map<String, Object> map = QbSdk.n;
        if (map != null && map.containsKey(QbSdk.KEY_SET_SENDREQUEST_AND_UPLOAD) && QbSdk.n.get(QbSdk.KEY_SET_SENDREQUEST_AND_UPLOAD).equals("false")) {
            TbsLog.i("upload", "[TbsLogReport.sendLogReportRequest] -- SET_SENDREQUEST_AND_UPLOAD is false");
            return;
        }
        TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloadStat.reportDownloadStat]");
        JSONArray a2 = a();
        if (a2 != null && a2.length() != 0) {
            TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloadStat.reportDownloadStat] jsonArray:" + a2);
            try {
                String a3 = com.tencent.smtt.utils.g.a(com.tencent.smtt.utils.n.a(this.f2452c).c(), a2.toString().getBytes("utf-8"), new g.a() { // from class: com.tencent.smtt.sdk.TbsLogReport.3
                    @Override // com.tencent.smtt.utils.g.a
                    public void a(int i2) {
                        TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloadStat.reportDownloadStat] onHttpResponseCode:" + i2);
                        if (i2 < 300) {
                            TbsLogReport.this.c();
                        }
                    }
                }, true);
                TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloadStat.reportDownloadStat] response:" + a3 + " testcase: -1");
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloadStat.reportDownloadStat] no data");
    }

    public void setInstallErrorCode(int i2, String str, EventType eventType) {
        if (i2 != 200 && i2 != 220 && i2 != 221) {
            TbsLog.i(TbsDownloader.LOGTAG, "error occured in installation, errorCode:" + i2, true);
        }
        TbsLogInfo tbsLogInfo = tbsLogInfo();
        tbsLogInfo.setFailDetail(str);
        a(i2, tbsLogInfo, eventType);
    }

    private void a(int i2, TbsLogInfo tbsLogInfo, EventType eventType) {
        tbsLogInfo.setErrorCode(i2);
        tbsLogInfo.setEventTime(System.currentTimeMillis());
        QbSdk.f2417m.onInstallFinish(i2);
        eventReport(eventType, tbsLogInfo);
    }

    public void setInstallErrorCode(int i2, Throwable th) {
        TbsLogInfo tbsLogInfo = tbsLogInfo();
        tbsLogInfo.setFailDetail(th);
        a(i2, tbsLogInfo, EventType.TYPE_INSTALL);
    }

    public void setLoadErrorCode(int i2, Throwable th) {
        String str;
        if (th != null) {
            StringBuilder o = f.b.a.a.a.o("msg: ");
            o.append(th.getMessage());
            o.append("; err: ");
            o.append(th);
            o.append("; cause: ");
            o.append(Log.getStackTraceString(th.getCause()));
            str = o.toString();
            if (str.length() > 1024) {
                str = str.substring(0, 1024);
            }
        } else {
            str = "NULL";
        }
        setLoadErrorCode(i2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, TbsLogInfo tbsLogInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append(a(i2));
        sb.append(a(com.tencent.smtt.utils.b.c(this.f2452c)));
        sb.append(a(com.tencent.smtt.utils.l.a(this.f2452c)));
        sb.append(a(l.a().i(this.f2452c)));
        String str = Build.MODEL;
        try {
            str = new String(str.getBytes("UTF-8"), "ISO8859-1");
        } catch (Exception unused) {
        }
        sb.append(a(str));
        String packageName = this.f2452c.getPackageName();
        sb.append(a(packageName));
        if (TbsConfig.APP_WX.equals(packageName)) {
            sb.append(a(com.tencent.smtt.utils.b.a(this.f2452c, TbsDownloader.TBS_METADATA)));
        } else {
            sb.append(a(com.tencent.smtt.utils.b.b(this.f2452c)));
        }
        sb.append(a(a(tbsLogInfo.b)));
        sb.append(a(tbsLogInfo.f2454c));
        sb.append(a(tbsLogInfo.f2455d));
        sb.append(a(tbsLogInfo.f2456e));
        sb.append(a(tbsLogInfo.f2457f));
        sb.append(a(tbsLogInfo.f2458g));
        sb.append(a(tbsLogInfo.f2459h));
        sb.append(a(tbsLogInfo.f2460i));
        sb.append(a(tbsLogInfo.f2461j));
        sb.append(a(tbsLogInfo.f2462k));
        sb.append(b(tbsLogInfo.q));
        sb.append(b(tbsLogInfo.f2463l));
        sb.append(b(tbsLogInfo.f2464m));
        sb.append(a(tbsLogInfo.n));
        sb.append(a(tbsLogInfo.a));
        sb.append(a(tbsLogInfo.o));
        sb.append(a(tbsLogInfo.p));
        sb.append(a(TbsDownloadConfig.getInstance(this.f2452c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0)));
        sb.append(a(com.tencent.smtt.utils.b.f(this.f2452c)));
        sb.append(a("4.3.0.1148_43697"));
        sb.append(false);
        SharedPreferences d2 = d();
        JSONArray a2 = a();
        JSONArray jSONArray = new JSONArray();
        if (jSONArray.length() >= 5) {
            for (int i3 = 4; i3 >= 1; i3--) {
                try {
                    jSONArray.put(a2.get(jSONArray.length() - i3));
                } catch (Exception unused2) {
                    TbsLog.e("upload", "JSONArray transform error!");
                }
            }
            a2 = jSONArray;
        }
        a2.put(sb.toString());
        SharedPreferences.Editor edit = d2.edit();
        edit.putString("tbs_download_upload", a2.toString());
        edit.commit();
        if (this.f2453d || i2 != EventType.TYPE_LOAD.a) {
            b();
        }
    }

    private String b(long j2) {
        return j2 + "|";
    }

    /* loaded from: classes.dex */
    public static class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:8|9|10|11|13|14|15|16|(2:17|(1:19)(1:20))|21|22|23|(2:24|25)|26|27|28|29) */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x008d, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x008e, code lost:
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:100:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:122:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x00d4 -> B:102:0x00d7). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a() {
            /*
                Method dump skipped, instructions count: 238
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.TbsLogReport.a.a():void");
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x003d -> B:34:0x0040). Please submit an issue!!! */
        public static void a(File file) throws IOException {
            RandomAccessFile randomAccessFile = null;
            RandomAccessFile randomAccessFile2 = null;
            randomAccessFile = null;
            try {
            } catch (IOException e2) {
                e2.printStackTrace();
                randomAccessFile = randomAccessFile;
            }
            try {
                try {
                    RandomAccessFile randomAccessFile3 = new RandomAccessFile(file, "rw");
                    try {
                        int parseInt = Integer.parseInt("00001000", 2);
                        randomAccessFile3.seek(7L);
                        int read = randomAccessFile3.read();
                        if ((read & parseInt) > 0) {
                            randomAccessFile3.seek(7L);
                            randomAccessFile3.write((~parseInt) & 255 & read);
                        }
                        randomAccessFile3.close();
                        randomAccessFile = read;
                    } catch (Exception e3) {
                        e = e3;
                        randomAccessFile2 = randomAccessFile3;
                        e.printStackTrace();
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                            randomAccessFile = randomAccessFile2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile3;
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e = e5;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private JSONArray a() {
        String string = d().getString("tbs_download_upload", null);
        if (string == null) {
            return new JSONArray();
        }
        try {
            JSONArray jSONArray = new JSONArray(string);
            if (jSONArray.length() > 5) {
                JSONArray jSONArray2 = new JSONArray();
                int length = jSONArray.length() - 1;
                if (length > jSONArray.length() - 5) {
                    jSONArray2.put(jSONArray.get(length));
                    return jSONArray2;
                }
            }
            return jSONArray;
        } catch (Exception unused) {
            return new JSONArray();
        }
    }

    private String a(long j2) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(j2));
        } catch (Exception unused) {
            return null;
        }
    }

    private String a(String str) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        return f.b.a.a.a.l(sb, str, "|");
    }

    private String a(int i2) {
        return i2 + "|";
    }
}
