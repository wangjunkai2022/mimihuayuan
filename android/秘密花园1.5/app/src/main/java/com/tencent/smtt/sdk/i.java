package com.tencent.smtt.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsLogReport;
import com.tencent.smtt.utils.Apn;
import com.tencent.smtt.utils.TbsLog;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: TbsApkDownloader.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: d  reason: collision with root package name */
    public static int f2644d = 5;

    /* renamed from: e  reason: collision with root package name */
    public static int f2645e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final String[] f2646f = {"tbs_downloading_com.tencent.mtt", "tbs_downloading_com.tencent.mm", "tbs_downloading_com.tencent.mobileqq", "tbs_downloading_com.tencent.tbs", "tbs_downloading_com.qzone"};
    public Set<String> A;
    public boolean C;
    public String a;

    /* renamed from: g  reason: collision with root package name */
    public Context f2648g;

    /* renamed from: h  reason: collision with root package name */
    public String f2649h;

    /* renamed from: i  reason: collision with root package name */
    public String f2650i;

    /* renamed from: j  reason: collision with root package name */
    public String f2651j;

    /* renamed from: k  reason: collision with root package name */
    public File f2652k;

    /* renamed from: l  reason: collision with root package name */
    public long f2653l;
    public boolean o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public HttpURLConnection t;
    public String u;
    public TbsLogReport.TbsLogInfo v;
    public String w;
    public int x;
    public boolean y;
    public Handler z;

    /* renamed from: m  reason: collision with root package name */
    public int f2654m = 30000;
    public int n = 20000;
    public int B = f2644d;
    public String[] b = null;

    /* renamed from: c  reason: collision with root package name */
    public int f2647c = 0;

    public i(Context context) throws NullPointerException {
        Context applicationContext = context.getApplicationContext();
        this.f2648g = applicationContext;
        this.v = TbsLogReport.getInstance(applicationContext).tbsLogInfo();
        this.A = new HashSet();
        StringBuilder o = f.b.a.a.a.o("tbs_downloading_");
        o.append(this.f2648g.getPackageName());
        this.u = o.toString();
        l.a();
        File s = l.s(this.f2648g);
        this.f2652k = s;
        if (s != null) {
            e();
            this.w = null;
            this.x = -1;
            return;
        }
        throw new NullPointerException("TbsCorePrivateDir is null!");
    }

    private boolean b(int i2) {
        try {
            File file = new File(this.f2652k, "x5.tbs");
            File a = a(this.f2648g);
            if (a != null) {
                File file2 = new File(a, TbsDownloader.getOverSea(this.f2648g) ? "x5.oversea.tbs.org" : "x5.tbs.org");
                file.delete();
                com.tencent.smtt.utils.f.b(file2, file);
                if (com.tencent.smtt.utils.a.a(this.f2648g, file, 0L, i2)) {
                    return true;
                }
                TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] verifyTbsApk error!!");
                return false;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLog.e(TbsDownloader.LOGTAG, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] Exception is " + e2.getMessage());
            return false;
        }
    }

    private void c(boolean z) {
        com.tencent.smtt.utils.q.a(this.f2648g);
        TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(this.f2648g);
        tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_FULL_PACKAGE, Boolean.FALSE);
        tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, Boolean.FALSE);
        tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOAD_INTERRUPT_CODE_REASON, -123);
        tbsDownloadConfig.commit();
        QbSdk.f2492m.onDownloadFinish(z ? 100 : 120);
        int i2 = tbsDownloadConfig.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_RESPONSECODE, 0);
        boolean a = TbsDownloader.a(this.f2648g);
        if (i2 == 5) {
            Bundle a2 = a(i2, a);
            if (a2 == null) {
                return;
            }
            l.a().b(this.f2648g, a2);
        } else if (i2 != 3 && i2 <= 10000) {
            l.a().a(this.f2648g, new File(this.f2652k, "x5.tbs").getAbsolutePath(), tbsDownloadConfig.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
            a(new File(this.f2652k, "x5.tbs"), this.f2648g);
        } else {
            File a3 = a(this.f2648g);
            if (a3 != null) {
                l.a().b(this.f2648g, a(i2, a3, a));
                return;
            }
            c();
            tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, Boolean.TRUE);
            tbsDownloadConfig.commit();
        }
    }

    private boolean d(boolean z) {
        File file;
        f.b.a.a.a.A("[TbsApkDownloader.deleteFile] isApk=", z, TbsDownloader.LOGTAG);
        if (z) {
            file = new File(this.f2652k, "x5.tbs");
        } else {
            file = new File(this.f2652k, "x5.tbs.temp");
        }
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }

    private void e() {
        this.p = 0;
        this.q = 0;
        this.f2653l = -1L;
        this.f2651j = null;
        this.o = false;
        this.r = false;
        this.s = false;
        this.y = false;
    }

    private void f() {
        TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDownloader.closeHttpRequest]");
        HttpURLConnection httpURLConnection = this.t;
        if (httpURLConnection != null) {
            if (!this.r) {
                this.v.setResolveIp(a(httpURLConnection.getURL()));
            }
            try {
                this.t.disconnect();
            } catch (Throwable th) {
                StringBuilder o = f.b.a.a.a.o("[closeHttpRequest] mHttpRequest.disconnect() Throwable:");
                o.append(th.toString());
                TbsLog.e(TbsDownloader.LOGTAG, o.toString());
            }
            this.t = null;
        }
        TbsLogReport.TbsLogInfo tbsLogInfo = this.v;
        int i2 = tbsLogInfo.a;
        if (!this.r && this.y) {
            tbsLogInfo.setEventTime(System.currentTimeMillis());
            String apnInfo = Apn.getApnInfo(this.f2648g);
            if (apnInfo == null) {
                apnInfo = "";
            }
            int apnType = Apn.getApnType(this.f2648g);
            this.v.setApn(apnInfo);
            this.v.setNetworkType(apnType);
            if (apnType != this.x || !apnInfo.equals(this.w)) {
                this.v.setNetworkChange(0);
            }
            int i3 = this.v.a;
            if ((i3 == 0 || i3 == 107) && this.v.getDownFinalFlag() == 0) {
                if (!Apn.isNetworkAvailable(this.f2648g)) {
                    a(101, (String) null, true);
                } else if (!k()) {
                    a(101, (String) null, true);
                }
            }
            if (TbsDownloader.a(this.f2648g)) {
                TbsLogReport.getInstance(this.f2648g).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD_DECOUPLE, this.v);
            } else {
                TbsLogReport.getInstance(this.f2648g).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD, this.v);
            }
            this.v.resetArgs();
            if (i2 != 100) {
                QbSdk.f2492m.onDownloadFinish(i2);
                return;
            }
            return;
        }
        TbsDownloader.a = false;
    }

    private boolean g() {
        File file = new File(com.tencent.smtt.utils.f.a(this.f2648g, 4), TbsDownloader.getOverSea(this.f2648g) ? "x5.oversea.tbs.org" : "x5.tbs.org");
        int i2 = TbsDownloadConfig.getInstance(this.f2648g).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_USE_BACKUP_VERSION, 0);
        if (i2 == 0) {
            i2 = TbsDownloadConfig.getInstance(this.f2648g).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0);
        }
        return com.tencent.smtt.utils.a.a(this.f2648g, file, 0L, i2);
    }

    private void h() {
        try {
            File file = new File(com.tencent.smtt.utils.f.a(this.f2648g, 4), TbsDownloader.getOverSea(this.f2648g) ? "x5.oversea.tbs.org" : "x5.tbs.org");
            if (file.exists()) {
                file.delete();
                File[] listFiles = file.getParentFile().listFiles();
                Pattern compile = Pattern.compile(com.tencent.smtt.utils.a.a(TbsDownloader.a(this.f2648g)) + "(.*)");
                for (File file2 : listFiles) {
                    if (compile.matcher(file2.getName()).find() && file2.isFile() && file2.exists()) {
                        file2.delete();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean i() {
        return new File(this.f2652k, "x5.tbs.temp").exists();
    }

    private long j() {
        File file = new File(this.f2652k, "x5.tbs.temp");
        if (file.exists()) {
            return file.length();
        }
        return 0L;
    }

    private boolean k() {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        InputStream inputStream;
        boolean z = false;
        try {
            inputStream = Runtime.getRuntime().exec("ping www.qq.com").getInputStream();
            try {
                inputStreamReader = new InputStreamReader(inputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    int i2 = 0;
                    do {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            } else if (readLine.contains("TTL") || readLine.contains("ttl")) {
                                z = true;
                                break;
                            } else {
                                i2++;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                th.printStackTrace();
                                return z;
                            } finally {
                                a(inputStream);
                                a(inputStreamReader);
                                a(bufferedReader);
                            }
                        }
                    } while (i2 < 5);
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (Throwable th4) {
                bufferedReader = null;
                th = th4;
                inputStreamReader = null;
            }
        } catch (Throwable th5) {
            inputStreamReader = null;
            bufferedReader = null;
            th = th5;
            inputStream = null;
        }
        return z;
    }

    private long l() {
        int i2 = this.p;
        if (i2 == 1 || i2 == 2) {
            return this.p * 20000;
        }
        return (i2 == 3 || i2 == 4) ? 100000L : 200000L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        HttpURLConnection httpURLConnection;
        boolean z = false;
        boolean z2 = Apn.getApnType(this.f2648g) == 3;
        f.b.a.a.a.A("[TbsApkDwonloader.detectWifiNetworkAvailable] isWifi=", z2, TbsDownloader.LOGTAG);
        String str = null;
        HttpURLConnection httpURLConnection2 = null;
        if (z2) {
            String wifiSSID = Apn.getWifiSSID(this.f2648g);
            TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDwonloader.detectWifiNetworkAvailable] localBSSID=" + wifiSSID);
            try {
                httpURLConnection = (HttpURLConnection) new URL("http://pms.mb.qq.com/rsp204").openConnection();
            } catch (Throwable th) {
                th = th;
            }
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.getInputStream();
                int responseCode = httpURLConnection.getResponseCode();
                TbsLog.i(TbsDownloader.LOGTAG, "[TbsApkDwonloader.detectWifiNetworkAvailable] responseCode=" + responseCode);
                boolean z3 = responseCode == 204;
                try {
                    httpURLConnection.disconnect();
                } catch (Exception unused) {
                }
                str = wifiSSID;
                z = z3;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                try {
                    th.printStackTrace();
                    if (httpURLConnection2 != null) {
                        try {
                            httpURLConnection2.disconnect();
                        } catch (Exception unused2) {
                        }
                    }
                    str = wifiSSID;
                    if (!z) {
                        this.A.add(str);
                        n();
                        this.z.sendMessageDelayed(this.z.obtainMessage(SwipeRefreshLayout.SCALE_DOWN_DURATION, str), 120000L);
                    }
                    if (z) {
                        this.A.remove(str);
                    }
                    return z;
                } catch (Throwable th3) {
                    if (httpURLConnection2 != null) {
                        try {
                            httpURLConnection2.disconnect();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th3;
                }
            }
        }
        if (!z && !TextUtils.isEmpty(str) && !this.A.contains(str)) {
            this.A.add(str);
            n();
            this.z.sendMessageDelayed(this.z.obtainMessage(SwipeRefreshLayout.SCALE_DOWN_DURATION, str), 120000L);
        }
        if (z && this.A.contains(str)) {
            this.A.remove(str);
        }
        return z;
    }

    private void n() {
        if (this.z == null) {
            this.z = new Handler(k.a().getLooper()) { // from class: com.tencent.smtt.sdk.i.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 150) {
                        i.this.m();
                    }
                }
            };
        }
    }

    private void a(String str) throws Exception {
        URL url = new URL(str);
        HttpURLConnection httpURLConnection = this.t;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                StringBuilder o = f.b.a.a.a.o("[initHttpRequest] mHttpRequest.disconnect() Throwable:");
                o.append(th.toString());
                TbsLog.e(TbsDownloader.LOGTAG, o.toString());
            }
        }
        HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
        this.t = httpURLConnection2;
        httpURLConnection2.setRequestProperty("User-Agent", TbsDownloader.b(this.f2648g));
        this.t.setRequestProperty("Accept-Encoding", "identity");
        this.t.setRequestMethod("GET");
        this.t.setInstanceFollowRedirects(false);
        this.t.setConnectTimeout(this.n);
        this.t.setReadTimeout(this.f2654m);
    }

    public boolean d() {
        StringBuilder o = f.b.a.a.a.o("[TbsApkDownloader.isDownloadForeground] mIsDownloadForeground=");
        o.append(this.C);
        TbsLog.i(TbsDownloader.LOGTAG, o.toString());
        return this.C;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:(2:319|320)|(3:558|559|(11:561|326|327|328|330|331|332|(3:333|334|(1:531)(4:336|337|338|(1:497)(8:340|(2:342|(1:474)(4:344|345|346|(2:467|468)))(1:496)|348|349|350|351|(6:356|357|(3:359|360|361)(1:454)|(1:396)(2:365|(1:393)(4:374|375|(1:377)|378))|394|395)(2:353|354)|355)))|379|380|(8:383|384|(1:386)(1:389)|387|388|125|126|127)(1:382)))|(1:557)(1:325)|326|327|328|330|331|332|(4:333|334|(0)(0)|355)|379|380|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(14:319|320|(3:558|559|(11:561|326|327|328|330|331|332|(3:333|334|(1:531)(4:336|337|338|(1:497)(8:340|(2:342|(1:474)(4:344|345|346|(2:467|468)))(1:496)|348|349|350|351|(6:356|357|(3:359|360|361)(1:454)|(1:396)(2:365|(1:393)(4:374|375|(1:377)|378))|394|395)(2:353|354)|355)))|379|380|(8:383|384|(1:386)(1:389)|387|388|125|126|127)(1:382)))|(1:557)(1:325)|326|327|328|330|331|332|(4:333|334|(0)(0)|355)|379|380|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0410, code lost:
        if (r37 == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0546, code lost:
        if (r37 == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0555, code lost:
        if (r37 != false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0559, code lost:
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).a.put(r9, java.lang.Long.valueOf(r22));
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x05e6, code lost:
        if (r37 == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x060d, code lost:
        a(113, "tbsApkFileSize=" + r5 + "  but contentLength=" + r36.f2653l, true);
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).setDownloadInterruptCode(-310);
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x064b, code lost:
        if (r37 == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x065b, code lost:
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).commit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0664, code lost:
        r8 = r38;
        r9 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x06de, code lost:
        com.tencent.smtt.utils.TbsLog.i(com.tencent.smtt.sdk.TbsDownloader.LOGTAG, "STEP 1/2 begin downloading...Canceled!", true);
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).setDownloadInterruptCode(-309);
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x06ef, code lost:
        r6 = r38;
        r26 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0723, code lost:
        if (r36.b == null) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x072a, code lost:
        if (c(true, r4) != false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x072c, code lost:
        if (r37 != false) goto L507;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0732, code lost:
        if (a(false) == false) goto L507;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0734, code lost:
        r6 = true;
        r7 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0738, code lost:
        r36.s = true;
        r6 = false;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x073e, code lost:
        r36.s = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0743, code lost:
        if (r36.b == null) goto L520;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0745, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0747, code lost:
        r6 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0749, code lost:
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).setDownloadInterruptCode(-311);
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0754, code lost:
        r7 = r6;
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0757, code lost:
        r27 = r3;
        r9 = r4;
        r19 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0760, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0762, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0763, code lost:
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0768, code lost:
        r9 = r4;
        r11 = r0;
        r19 = r20;
        r12 = r22;
        r7 = r26;
        r32 = r6;
        r6 = r3;
        r3 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x077b, code lost:
        r9 = r4;
        r4 = r5;
        r5 = r0;
        r6 = r7;
        r19 = r20;
        r12 = r22;
        r7 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x079d, code lost:
        com.tencent.smtt.utils.TbsLog.i(com.tencent.smtt.sdk.TbsDownloader.LOGTAG, r19, true);
        r6 = new java.lang.StringBuilder();
        r6.append("downloadFlow=");
        r6.append(r3);
        r6.append(" downloadMaxflow=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x07b2, code lost:
        r11 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x07b4, code lost:
        r6.append(r11);
        a(112, r6.toString(), true);
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).setDownloadInterruptCode(-307);
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x07cc, code lost:
        r22 = r3;
        r19 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x07d2, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x07d3, code lost:
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x07d5, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x07d8, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x07d9, code lost:
        r11 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x07dc, code lost:
        r19 = r11;
        r7 = r26;
        r12 = r3;
        r3 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x07e5, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x07e6, code lost:
        r11 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x07e9, code lost:
        r19 = r11;
        r7 = r26;
        r12 = r3;
        r3 = r0;
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x09ca, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x09cb, code lost:
        r7 = r9;
        r19 = r20;
        r9 = r4;
        r4 = r5;
        r3 = r3;
        r12 = r22;
        r6 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x09d9, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x09da, code lost:
        r6 = r3;
        r7 = r9;
        r19 = r20;
        r9 = r4;
        r3 = r0;
        r12 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x09e2, code lost:
        r4 = r5;
        r5 = r3;
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x09e7, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x09e8, code lost:
        r7 = r9;
        r19 = r20;
        r9 = r4;
        r8 = null;
        r4 = r38;
        r12 = r22;
        r6 = r0;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x09fa, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x09fb, code lost:
        r7 = r9;
        r19 = r20;
        r9 = r4;
        r4 = r5;
        r5 = r0;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x0a40, code lost:
        if (r37 != false) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0a42, code lost:
        r2 = com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).a;
        r4 = java.lang.Long.valueOf(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0a50, code lost:
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x0a9a, code lost:
        a(105, "freespace=" + com.tencent.smtt.utils.q.a() + ",and minFreeSpace=" + com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).getDownloadMinFreeSpace(), true);
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).setDownloadInterruptCode(-308);
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0ad2, code lost:
        a(r8);
        a(r4);
        a(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0adb, code lost:
        if (r37 == false) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0add, code lost:
        r2 = com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).a;
        r4 = java.lang.Long.valueOf(r12);
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x0aea, code lost:
        r2.put(r7, r4);
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0af0, code lost:
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0b01, code lost:
        a(106, a(r5), false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0b0c, code lost:
        a(104, a(r5), false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0b1f, code lost:
        if (r37 != false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015d, code lost:
        r38 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0228, code lost:
        if (r37 == false) goto L642;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x022a, code lost:
        com.tencent.smtt.sdk.TbsDownloadConfig.getInstance(r36.f2648g).a.put(r11, java.lang.Long.valueOf(r12));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03a4 A[Catch: all -> 0x0385, TRY_ENTER, TRY_LEAVE, TryCatch #43 {all -> 0x0385, blocks: (B:130:0x037b, B:132:0x0380, B:144:0x03a4, B:147:0x03ce, B:149:0x03d6, B:151:0x03df, B:153:0x03e7, B:155:0x03ed, B:157:0x03f4, B:158:0x03fb, B:161:0x0405, B:255:0x05a0, B:257:0x05a6, B:259:0x05c7, B:261:0x05cd, B:263:0x05d3, B:265:0x05db, B:267:0x05df, B:273:0x060d, B:274:0x0638, B:138:0x038d, B:110:0x030a), top: B:611:0x037b }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03f4 A[Catch: all -> 0x0385, TryCatch #43 {all -> 0x0385, blocks: (B:130:0x037b, B:132:0x0380, B:144:0x03a4, B:147:0x03ce, B:149:0x03d6, B:151:0x03df, B:153:0x03e7, B:155:0x03ed, B:157:0x03f4, B:158:0x03fb, B:161:0x0405, B:255:0x05a0, B:257:0x05a6, B:259:0x05c7, B:261:0x05cd, B:263:0x05d3, B:265:0x05db, B:267:0x05df, B:273:0x060d, B:274:0x0638, B:138:0x038d, B:110:0x030a), top: B:611:0x037b }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0942  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0a8a A[Catch: all -> 0x0af3, TryCatch #33 {all -> 0x0af3, blocks: (B:476:0x0a83, B:478:0x0a8a, B:482:0x0a92, B:484:0x0a9a), top: B:601:0x0a83 }] */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0b01 A[Catch: all -> 0x0b62, TryCatch #28 {all -> 0x0b62, blocks: (B:493:0x0af8, B:495:0x0b01, B:496:0x0b0c, B:501:0x0b25), top: B:597:0x0af8 }] */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0b0c A[Catch: all -> 0x0b62, TRY_LEAVE, TryCatch #28 {all -> 0x0b62, blocks: (B:493:0x0af8, B:495:0x0b01, B:496:0x0b0c, B:501:0x0b25), top: B:597:0x0af8 }] */
    /* JADX WARN: Removed duplicated region for block: B:525:0x0b94 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0c0d  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0c66  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0c7a  */
    /* JADX WARN: Removed duplicated region for block: B:570:0x0cb3  */
    /* JADX WARN: Removed duplicated region for block: B:581:0x090c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:628:0x06de A[EDGE_INSN: B:628:0x06de->B:308:0x06de ?: BREAK  , EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:648:0x0405 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:671:0x0be3 A[EDGE_INSN: B:671:0x0be3->B:533:0x0be3 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:674:0x0ccb A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r36v0, types: [com.tencent.smtt.sdk.i] */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.tencent.smtt.sdk.TbsLogReport$TbsLogInfo] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(boolean r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 3317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.i.b(boolean, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.i.a(boolean, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0085, code lost:
        if (r10 != r8) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean c(boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.i.c(boolean, boolean):boolean");
    }

    public boolean a() {
        TbsLog.i("TbsApkDownloader", "verifyAndInstallDecoupleCoreFromBackup #1");
        try {
            File file = new File(com.tencent.smtt.utils.f.a(this.f2648g, 4), "x5.tbs.decouple");
            if (file.exists()) {
                TbsLog.i("TbsApkDownloader", "verifyAndInstallDecoupleCoreFromBackup #2");
            } else {
                File b = TbsDownloader.b(TbsDownloadConfig.getInstance(this.f2648g).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, -1));
                if (b != null && b.exists()) {
                    com.tencent.smtt.utils.f.b(b, file);
                }
            }
            if (com.tencent.smtt.utils.a.a(this.f2648g, file, 0L, TbsDownloadConfig.getInstance(this.f2648g).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, -1))) {
                TbsLog.i("TbsApkDownloader", "verifyAndInstallDecoupleCoreFromBackup #3");
                return l.a().e(this.f2648g);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void c() {
        b();
        d(false);
        d(true);
    }

    public static void c(Context context) {
        try {
            l.a();
            File s = l.s(context);
            new File(s, "x5.tbs").delete();
            new File(s, "x5.tbs.temp").delete();
            File a = a(context);
            if (a != null) {
                new File(a, "x5.tbs.org").delete();
                new File(a, "x5.oversea.tbs.org").delete();
                File[] listFiles = a.listFiles();
                Pattern compile = Pattern.compile(com.tencent.smtt.utils.a.a(true) + "(.*)");
                for (File file : listFiles) {
                    if (compile.matcher(file.getName()).find() && file.isFile() && file.exists()) {
                        file.delete();
                    }
                }
                Pattern compile2 = Pattern.compile(com.tencent.smtt.utils.a.a(false) + "(.*)");
                for (File file2 : listFiles) {
                    if (compile2.matcher(file2.getName()).find() && file2.isFile() && file2.exists()) {
                        file2.delete();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean a(boolean z) {
        String[] strArr;
        int i2;
        if ((!z || m() || (QbSdk.getDownloadWithoutWifi() && Apn.isNetworkAvailable(this.f2648g))) && (strArr = this.b) != null && (i2 = this.f2647c) >= 0 && i2 < strArr.length) {
            this.f2647c = i2 + 1;
            this.f2651j = strArr[i2];
            this.p = 0;
            this.q = 0;
            this.f2653l = -1L;
            this.o = false;
            this.r = false;
            this.s = false;
            this.y = false;
            return true;
        }
        return false;
    }

    private long a(long j2, long j3) {
        long currentTimeMillis = System.currentTimeMillis();
        this.v.setDownConsumeTime(currentTimeMillis - j2);
        this.v.setDownloadSize(j3);
        return currentTimeMillis;
    }

    private void a(int i2, String str, boolean z) {
        if (z || this.p > this.B) {
            this.v.setErrorCode(i2);
            this.v.setFailDetail(str);
        }
    }

    private String a(Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        return stackTraceString.length() > 1024 ? stackTraceString.substring(0, 1024) : stackTraceString;
    }

    public Bundle a(int i2, boolean z) {
        File q;
        int i3;
        File f2;
        if (z) {
            q = l.a().p(this.f2648g);
            i3 = l.a().h(this.f2648g);
        } else {
            q = l.a().q(this.f2648g);
            i3 = l.a().i(this.f2648g);
        }
        File file = new File(this.f2652k, "x5.tbs");
        String absolutePath = file.exists() ? file.getAbsolutePath() : null;
        if (absolutePath == null) {
            return null;
        }
        int i4 = TbsDownloadConfig.getInstance(this.f2648g).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0);
        if (z) {
            f2 = l.a().f(this.f2648g, 6);
        } else {
            f2 = l.a().f(this.f2648g, 5);
        }
        Bundle bundle = new Bundle();
        bundle.putInt("operation", i2);
        bundle.putInt("old_core_ver", i3);
        bundle.putInt("new_core_ver", i4);
        bundle.putString("old_apk_location", q.getAbsolutePath());
        bundle.putString("new_apk_location", f2.getAbsolutePath());
        bundle.putString("diff_file_location", absolutePath);
        String a = com.tencent.smtt.utils.f.a(this.f2648g, 7);
        File file2 = new File(a);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        bundle.putString("backup_apk", new File(a, i4 + ".tbs").getAbsolutePath());
        return bundle;
    }

    public Bundle a(int i2, File file, boolean z) {
        File file2;
        if (z) {
            file2 = new File(file, "x5.tbs.decouple");
        } else {
            file2 = new File(file, TbsDownloader.getOverSea(this.f2648g) ? "x5.oversea.tbs.org" : "x5.tbs.org");
        }
        int a = com.tencent.smtt.utils.a.a(this.f2648g, file2);
        File file3 = new File(this.f2652k, "x5.tbs");
        String absolutePath = file3.exists() ? file3.getAbsolutePath() : null;
        int i3 = TbsDownloadConfig.getInstance(this.f2648g).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0);
        Bundle bundle = new Bundle();
        bundle.putInt("operation", i2);
        bundle.putInt("old_core_ver", a);
        bundle.putInt("new_core_ver", i3);
        bundle.putString("old_apk_location", file2.getAbsolutePath());
        bundle.putString("new_apk_location", absolutePath);
        bundle.putString("diff_file_location", absolutePath);
        return bundle;
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private void a(long j2) {
        this.p++;
        if (j2 <= 0) {
            try {
                j2 = l();
            } catch (Exception unused) {
                return;
            }
        }
        Thread.sleep(j2);
    }

    private String a(URL url) {
        try {
            return InetAddress.getByName(url.getHost()).getHostAddress();
        } catch (Error e2) {
            e2.printStackTrace();
            return "";
        } catch (Exception e3) {
            e3.printStackTrace();
            return "";
        }
    }

    @TargetApi(8)
    public static File a(Context context) {
        try {
            File file = new File(com.tencent.smtt.utils.f.a(context, 4));
            if (file != null && !file.exists() && !file.isDirectory()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLog.e(TbsDownloader.LOGTAG, "[TbsApkDownloader.backupApkPath] Exception is " + e2.getMessage());
            return null;
        }
    }

    public static File a(Context context, int i2) {
        File file = new File(com.tencent.smtt.utils.f.a(context, i2));
        if (file.exists() && file.isDirectory()) {
            if (new File(file, TbsDownloader.getOverSea(context) ? "x5.oversea.tbs.org" : "x5.tbs.org").exists()) {
                return file;
            }
        }
        return null;
    }

    public void a(int i2) {
        if (l.a().t(this.f2648g)) {
            l.a().b();
            try {
                File file = new File(this.f2652k, "x5.tbs");
                int a = com.tencent.smtt.utils.a.a(this.f2648g, file);
                if (-1 == a || (i2 > 0 && i2 == a)) {
                    com.tencent.smtt.utils.f.b(file);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void a(File file, Context context) {
        File file2;
        boolean contains;
        synchronized (com.tencent.smtt.utils.a.class) {
            if (file != null) {
                if (file.exists()) {
                    try {
                        File a = a(context);
                        if (a != null) {
                            if (TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V_TYPE, 0) == 1) {
                                file2 = new File(a, "x5.tbs.decouple");
                            } else {
                                file2 = new File(a, TbsDownloader.getOverSea(context) ? "x5.oversea.tbs.org" : "x5.tbs.org");
                            }
                            file2.delete();
                            com.tencent.smtt.utils.f.b(file, file2);
                            boolean contains2 = file2.getName().contains("tbs.org");
                            if (file2.getName().contains("x5.tbs.decouple") || contains2) {
                                File[] listFiles = a.listFiles();
                                Pattern compile = Pattern.compile(com.tencent.smtt.utils.a.a(contains) + "(.*)");
                                for (File file3 : listFiles) {
                                    if (compile.matcher(file3.getName()).find() && file3.isFile() && file3.exists()) {
                                        file3.delete();
                                    }
                                }
                                File file4 = new File(a, com.tencent.smtt.utils.a.a(contains) + "." + TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                                if (file4.exists()) {
                                    TbsLog.e(TbsDownloader.LOGTAG, "[TbsApkDownloader.backupTbsApk]delete bacup config file error ");
                                    return;
                                }
                                file4.createNewFile();
                            }
                            if (TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V_TYPE, 0) != 1 && TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0) == com.tencent.smtt.utils.a.a(context, file)) {
                                int i2 = TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_RESPONSECODE, 0);
                                if (i2 == 5 || i2 == 3) {
                                    TbsLog.i("TbsApkDownloader", "response code=" + i2 + "return backup decouple apk");
                                }
                                File file5 = new File(a, "x5.tbs.decouple");
                                if (com.tencent.smtt.utils.a.a(context, file) != com.tencent.smtt.utils.a.a(context, file5)) {
                                    file5.delete();
                                    com.tencent.smtt.utils.f.b(file, file5);
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    @TargetApi(8)
    public static File b(Context context) {
        try {
            File a = a(context, 4);
            if (a == null) {
                a = a(context, 3);
            }
            if (a == null) {
                a = a(context, 2);
            }
            return a == null ? a(context, 1) : a;
        } catch (Exception e2) {
            e2.printStackTrace();
            TbsLog.e(TbsDownloader.LOGTAG, "[TbsApkDownloader.backupApkPath] Exception is " + e2.getMessage());
            return null;
        }
    }

    public int b(boolean z) {
        File a = a(this.f2648g);
        if (z) {
            if (a == null) {
                return 0;
            }
            return com.tencent.smtt.utils.a.a(this.f2648g, new File(a, "x5.tbs.decouple"));
        } else if (a == null) {
            return 0;
        } else {
            return com.tencent.smtt.utils.a.a(this.f2648g, new File(a, TbsDownloader.getOverSea(this.f2648g) ? "x5.oversea.tbs.org" : "x5.tbs.org"));
        }
    }

    public void b() {
        this.r = true;
        if (TbsShareManager.isThirdPartyApp(this.f2648g)) {
            TbsLogReport.TbsLogInfo tbsLogInfo = TbsLogReport.getInstance(this.f2648g).tbsLogInfo();
            tbsLogInfo.setErrorCode(-309);
            tbsLogInfo.setFailDetail(new Exception());
            if (TbsDownloader.a(this.f2648g)) {
                TbsLogReport.getInstance(this.f2648g).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD_DECOUPLE, tbsLogInfo);
            } else {
                TbsLogReport.getInstance(this.f2648g).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD, tbsLogInfo);
            }
        }
    }
}
