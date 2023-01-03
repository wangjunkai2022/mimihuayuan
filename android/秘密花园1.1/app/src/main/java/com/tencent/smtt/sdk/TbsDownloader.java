package com.tencent.smtt.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsDownloadUpload;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.Apn;
import com.tencent.smtt.utils.TbsLog;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.channels.FileLock;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TbsDownloader {
    public static final boolean DEBUG_DISABLE_DOWNLOAD = false;
    public static boolean DOWNLOAD_OVERSEA_TBS = false;
    public static final String LOGTAG = "TbsDownload";
    public static final String TBS_METADATA = "com.tencent.mm.BuildInfo.CLIENT_VERSION";
    public static boolean a = false;
    public static String b = null;

    /* renamed from: c  reason: collision with root package name */
    public static Context f2442c = null;

    /* renamed from: d  reason: collision with root package name */
    public static Handler f2443d = null;

    /* renamed from: e  reason: collision with root package name */
    public static String f2444e = null;

    /* renamed from: f  reason: collision with root package name */
    public static Object f2445f = new byte[0];

    /* renamed from: g  reason: collision with root package name */
    public static i f2446g = null;

    /* renamed from: h  reason: collision with root package name */
    public static HandlerThread f2447h = null;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2448i = false;

    /* renamed from: j  reason: collision with root package name */
    public static boolean f2449j = false;

    /* renamed from: k  reason: collision with root package name */
    public static boolean f2450k = false;

    /* renamed from: l  reason: collision with root package name */
    public static long f2451l = -1;

    /* loaded from: classes.dex */
    public interface TbsDownloaderCallback {
        void onNeedDownloadFinish(boolean z, int i2);
    }

    public static String a(String str) {
        return str == null ? "" : str;
    }

    public static boolean c() {
        try {
            for (String str : TbsShareManager.getCoreProviderAppList()) {
                if (TbsShareManager.getSharedTbsCoreVersion(f2442c, str) > 0) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public static synchronized void d() {
        synchronized (TbsDownloader.class) {
            if (f2447h == null) {
                f2447h = k.a();
                try {
                    f2446g = new i(f2442c);
                    f2443d = new Handler(f2447h.getLooper()) { // from class: com.tencent.smtt.sdk.TbsDownloader.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            FileOutputStream fileOutputStream;
                            int i2 = message.what;
                            if (i2 != 108) {
                                switch (i2) {
                                    case 100:
                                        boolean z = message.arg1 == 1;
                                        boolean b2 = TbsDownloader.b(true, false, false, message.arg2 == 1);
                                        Object obj = message.obj;
                                        if (obj != null && (obj instanceof TbsDownloaderCallback)) {
                                            TbsLog.i(TbsDownloader.LOGTAG, "needDownload-onNeedDownloadFinish needStartDownload=" + b2);
                                            String str = (TbsDownloader.f2442c == null || TbsDownloader.f2442c.getApplicationContext() == null || TbsDownloader.f2442c.getApplicationContext().getApplicationInfo() == null) ? "" : TbsDownloader.f2442c.getApplicationContext().getApplicationInfo().packageName;
                                            if (!b2 || z) {
                                                ((TbsDownloaderCallback) message.obj).onNeedDownloadFinish(b2, TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                                            } else if (TbsConfig.APP_WX.equals(str) || TbsConfig.APP_QQ.equals(str)) {
                                                f.b.a.a.a.A("needDownload-onNeedDownloadFinish in mm or QQ callback needStartDownload = ", b2, TbsDownloader.LOGTAG);
                                                ((TbsDownloaderCallback) message.obj).onNeedDownloadFinish(b2, TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                                            }
                                        }
                                        if (TbsShareManager.isThirdPartyApp(TbsDownloader.f2442c) && b2) {
                                            TbsDownloader.startDownload(TbsDownloader.f2442c);
                                            return;
                                        }
                                        return;
                                    case 101:
                                        break;
                                    case 102:
                                        TbsLog.i(TbsDownloader.LOGTAG, "[TbsDownloader.handleMessage] MSG_REPORT_DOWNLOAD_STAT");
                                        int a2 = TbsShareManager.isThirdPartyApp(TbsDownloader.f2442c) ? TbsShareManager.a(TbsDownloader.f2442c, false) : l.a().m(TbsDownloader.f2442c);
                                        TbsLog.i(TbsDownloader.LOGTAG, "[TbsDownloader.handleMessage] localTbsVersion=" + a2);
                                        TbsDownloader.f2446g.a(a2);
                                        TbsLogReport.getInstance(TbsDownloader.f2442c).dailyReport();
                                        return;
                                    case 103:
                                        TbsLog.i(TbsDownloader.LOGTAG, "[TbsDownloader.handleMessage] MSG_CONTINUEINSTALL_TBSCORE");
                                        if (message.arg1 == 0) {
                                            l.a().a((Context) message.obj, true);
                                            return;
                                        } else {
                                            l.a().a((Context) message.obj, false);
                                            return;
                                        }
                                    case 104:
                                        TbsLog.i(TbsDownloader.LOGTAG, "[TbsDownloader.handleMessage] MSG_UPLOAD_TBSLOG");
                                        TbsLogReport.getInstance(TbsDownloader.f2442c).reportTbsLog();
                                        return;
                                    default:
                                        return;
                                }
                            }
                            FileLock fileLock = null;
                            if (TbsShareManager.isThirdPartyApp(TbsDownloader.f2442c)) {
                                fileOutputStream = null;
                            } else {
                                StringBuilder o = f.b.a.a.a.o("tbs_download_lock_file");
                                o.append(TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                                o.append(".txt");
                                fileOutputStream = com.tencent.smtt.utils.f.b(TbsDownloader.f2442c, false, o.toString());
                                if (fileOutputStream != null) {
                                    fileLock = com.tencent.smtt.utils.f.a(TbsDownloader.f2442c, fileOutputStream);
                                    if (fileLock == null) {
                                        QbSdk.f2417m.onDownloadFinish(TbsListener.ErrorCode.NONEEDDOWNLOAD_OTHER_PROCESS_DOWNLOADING);
                                        TbsLog.i(TbsDownloader.LOGTAG, "file lock locked,wx or qq is downloading");
                                        TbsDownloadConfig.getInstance(TbsDownloader.f2442c).setDownloadInterruptCode(-203);
                                        TbsLog.i(TbsDownloader.LOGTAG, "MSG_START_DOWNLOAD_DECOUPLECORE return #1");
                                        return;
                                    }
                                } else if (com.tencent.smtt.utils.f.a(TbsDownloader.f2442c)) {
                                    TbsDownloadConfig.getInstance(TbsDownloader.f2442c).setDownloadInterruptCode(-204);
                                    TbsLog.i(TbsDownloader.LOGTAG, "MSG_START_DOWNLOAD_DECOUPLECORE return #2");
                                    return;
                                }
                            }
                            boolean z2 = message.arg1 == 1;
                            TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(TbsDownloader.f2442c);
                            if (TbsDownloader.b(false, z2, 108 == message.what, true)) {
                                if (z2 && l.a().b(TbsDownloader.f2442c, TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0))) {
                                    QbSdk.f2417m.onDownloadFinish(122);
                                    tbsDownloadConfig.setDownloadInterruptCode(-213);
                                } else if (tbsDownloadConfig.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, false)) {
                                    TbsDownloadConfig.getInstance(TbsDownloader.f2442c).setDownloadInterruptCode(-215);
                                    TbsDownloader.f2446g.b(z2, 108 == message.what);
                                } else {
                                    QbSdk.f2417m.onDownloadFinish(110);
                                }
                            } else {
                                QbSdk.f2417m.onDownloadFinish(110);
                            }
                            TbsLog.i(TbsDownloader.LOGTAG, "------freeFileLock called :");
                            com.tencent.smtt.utils.f.a(fileLock, fileOutputStream);
                        }
                    };
                } catch (Exception unused) {
                    f2448i = true;
                    TbsLog.e(LOGTAG, "TbsApkDownloader init has Exception");
                }
            }
        }
    }

    public static boolean e() {
        try {
            return TbsDownloadConfig.getInstance(f2442c).mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_LAST_THIRDAPP_SENDREQUEST_COREVERSION, "").equals(g().toString());
        } catch (Exception unused) {
            return false;
        }
    }

    public static String[] f() {
        if (QbSdk.getOnlyDownload()) {
            return new String[]{f2442c.getApplicationContext().getPackageName()};
        }
        String[] coreProviderAppList = TbsShareManager.getCoreProviderAppList();
        String packageName = f2442c.getApplicationContext().getPackageName();
        if (packageName.equals(TbsShareManager.f(f2442c))) {
            int length = coreProviderAppList.length;
            String[] strArr = new String[length + 1];
            System.arraycopy(coreProviderAppList, 0, strArr, 0, length);
            strArr[length] = packageName;
            return strArr;
        }
        return coreProviderAppList;
    }

    public static JSONArray g() {
        if (TbsShareManager.isThirdPartyApp(f2442c)) {
            JSONArray jSONArray = new JSONArray();
            a(jSONArray);
            c(jSONArray);
            b(jSONArray);
            return jSONArray;
        }
        return null;
    }

    public static int getCoreShareDecoupleCoreVersion() {
        return l.a().h(f2442c);
    }

    public static int getCoreShareDecoupleCoreVersionByContext(Context context) {
        return l.a().h(context);
    }

    public static synchronized boolean getOverSea(Context context) {
        boolean z;
        synchronized (TbsDownloader.class) {
            if (!f2450k) {
                f2450k = true;
                TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(context);
                if (tbsDownloadConfig.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA)) {
                    f2449j = tbsDownloadConfig.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA, false);
                    TbsLog.i(LOGTAG, "[TbsDownloader.getOverSea]  first called. sOverSea = " + f2449j);
                }
                TbsLog.i(LOGTAG, "[TbsDownloader.getOverSea]  sOverSea = " + f2449j);
            }
            z = f2449j;
        }
        return z;
    }

    public static long getRetryIntervalInSeconds() {
        return f2451l;
    }

    public static HandlerThread getsTbsHandlerThread() {
        return f2447h;
    }

    public static boolean h() {
        TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(f2442c);
        if (tbsDownloadConfig.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOAD_SUCCESS_RETRYTIMES, 0) >= tbsDownloadConfig.getDownloadSuccessMaxRetrytimes()) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] out of success retrytimes", true);
            tbsDownloadConfig.setDownloadInterruptCode(-115);
            return false;
        } else if (tbsDownloadConfig.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOAD_FAILED_RETRYTIMES, 0) >= tbsDownloadConfig.getDownloadFailedMaxRetrytimes()) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] out of failed retrytimes", true);
            tbsDownloadConfig.setDownloadInterruptCode(-116);
            return false;
        } else if (!com.tencent.smtt.utils.f.b(f2442c)) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] local rom freespace limit", true);
            tbsDownloadConfig.setDownloadInterruptCode(-117);
            return false;
        } else {
            if (System.currentTimeMillis() - tbsDownloadConfig.mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_TBSDOWNLOAD_STARTTIME, 0L) <= 86400000) {
                long j2 = tbsDownloadConfig.mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_TBSDOWNLOAD_FLOW, 0L);
                TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] downloadFlow=" + j2);
                if (j2 >= tbsDownloadConfig.getDownloadMaxflow()) {
                    TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] failed because you exceeded max flow!", true);
                    tbsDownloadConfig.setDownloadInterruptCode(-120);
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean isDownloadForeground() {
        i iVar = f2446g;
        return iVar != null && iVar.d();
    }

    public static synchronized boolean isDownloading() {
        boolean z;
        synchronized (TbsDownloader.class) {
            TbsLog.i(LOGTAG, "[TbsDownloader.isDownloading] is " + a);
            z = a;
        }
        return z;
    }

    public static boolean needDownload(Context context, boolean z) {
        return needDownload(context, z, false, true, null);
    }

    public static boolean needDownloadDecoupleCore() {
        int i2;
        if (TbsShareManager.isThirdPartyApp(f2442c) || a(f2442c)) {
            return false;
        }
        return System.currentTimeMillis() - TbsDownloadConfig.getInstance(f2442c).mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_LAST_DOWNLOAD_DECOUPLE_CORE, 0L) >= TbsDownloadConfig.getInstance(f2442c).getRetryInterval() * 1000 && (i2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0)) > 0 && i2 != l.a().h(f2442c) && TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0) != i2;
    }

    public static boolean needSendRequest(Context context, boolean z) {
        f2442c = context.getApplicationContext();
        TbsLog.initIfNeed(context);
        boolean z2 = false;
        if (a(f2442c, z)) {
            int m2 = l.a().m(context);
            TbsLog.i(LOGTAG, "[TbsDownloader.needSendRequest] localTbsVersion=" + m2);
            if (m2 > 0) {
                return false;
            }
            if (a(f2442c, false, true)) {
                return true;
            }
            TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(f2442c);
            boolean contains = tbsDownloadConfig.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD);
            f.b.a.a.a.A("[TbsDownloader.needSendRequest] hasNeedDownloadKey=", contains, LOGTAG);
            boolean z3 = !contains ? true : tbsDownloadConfig.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, false);
            f.b.a.a.a.A("[TbsDownloader.needSendRequest] needDownload=", z3, LOGTAG);
            if (z3 && h()) {
                z2 = true;
            }
            f.b.a.a.a.A("[TbsDownloader.needSendRequest] ret=", z2, LOGTAG);
            return z2;
        }
        return false;
    }

    public static void setAppContext(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return;
        }
        f2442c = context.getApplicationContext();
    }

    public static void setRetryIntervalInSeconds(Context context, long j2) {
        if (context == null) {
            return;
        }
        if (context.getApplicationInfo().packageName.equals("com.tencent.qqlive")) {
            f2451l = j2;
        }
        StringBuilder o = f.b.a.a.a.o("mRetryIntervalInSeconds is ");
        o.append(f2451l);
        TbsLog.i(LOGTAG, o.toString());
    }

    public static boolean startDecoupleCoreIfNeeded() {
        TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded ");
        if (TbsShareManager.isThirdPartyApp(f2442c)) {
            return false;
        }
        TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded #1");
        if (a(f2442c) || f2443d == null) {
            return false;
        }
        TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded #2");
        long j2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_LAST_DOWNLOAD_DECOUPLE_CORE, 0L);
        if (System.currentTimeMillis() - j2 < TbsDownloadConfig.getInstance(f2442c).getRetryInterval() * 1000) {
            return false;
        }
        TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded #3");
        int i2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0);
        if (i2 > 0 && i2 != l.a().h(f2442c)) {
            if (TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0) == i2 && TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V_TYPE, 0) != 1) {
                StringBuilder o = f.b.a.a.a.o("startDecoupleCoreIfNeeded no need, KEY_TBS_DOWNLOAD_V is ");
                o.append(TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                o.append(" deCoupleCoreVersion is ");
                o.append(i2);
                o.append(" KEY_TBS_DOWNLOAD_V_TYPE is ");
                o.append(TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V_TYPE, 0));
                TbsLog.i(LOGTAG, o.toString());
            } else {
                TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded #4");
                a = true;
                f2443d.removeMessages(108);
                Message obtain = Message.obtain(f2443d, 108, QbSdk.f2417m);
                obtain.arg1 = 0;
                obtain.sendToTarget();
                TbsDownloadConfig.getInstance(f2442c).a.put(TbsDownloadConfig.TbsConfigKey.KEY_LAST_DOWNLOAD_DECOUPLE_CORE, Long.valueOf(System.currentTimeMillis()));
                return true;
            }
        } else {
            StringBuilder p = f.b.a.a.a.p("startDecoupleCoreIfNeeded no need, deCoupleCoreVersion is ", i2, " getTbsCoreShareDecoupleCoreVersion is ");
            p.append(l.a().h(f2442c));
            TbsLog.i(LOGTAG, p.toString());
        }
        return false;
    }

    public static void startDownload(Context context) {
        startDownload(context, false);
    }

    public static void stopDownload() {
        if (f2448i) {
            return;
        }
        TbsLog.i(LOGTAG, "[TbsDownloader.stopDownload]");
        i iVar = f2446g;
        if (iVar != null) {
            iVar.b();
        }
        Handler handler = f2443d;
        if (handler != null) {
            handler.removeMessages(100);
            f2443d.removeMessages(101);
            f2443d.removeMessages(108);
        }
    }

    public static void b(JSONArray jSONArray) {
        if (TbsShareManager.getHostCorePathAppDefined() != null) {
            int a2 = l.a().a(TbsShareManager.getHostCorePathAppDefined());
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= jSONArray.length()) {
                    break;
                } else if (jSONArray.optInt(i2) == a2) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                return;
            }
            jSONArray.put(a2);
        }
    }

    public static boolean needDownload(Context context, boolean z, boolean z2, TbsDownloaderCallback tbsDownloaderCallback) {
        return needDownload(context, z, z2, true, tbsDownloaderCallback);
    }

    public static synchronized void startDownload(Context context, boolean z) {
        synchronized (TbsDownloader.class) {
            TbsDownloadUpload tbsDownloadUpload = TbsDownloadUpload.getInstance(context);
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, 160);
            tbsDownloadUpload.commit();
            TbsLog.i(LOGTAG, "[TbsDownloader.startDownload] sAppContext=" + f2442c);
            if (l.b) {
                tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.STARTDOWNLOAD_2));
                tbsDownloadUpload.commit();
                return;
            }
            int i2 = 1;
            a = true;
            Context applicationContext = context.getApplicationContext();
            f2442c = applicationContext;
            TbsDownloadConfig.getInstance(applicationContext).setDownloadInterruptCode(-200);
            d();
            if (f2448i) {
                QbSdk.f2417m.onDownloadFinish(121);
                TbsDownloadConfig.getInstance(f2442c).setDownloadInterruptCode(-202);
                tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.STARTDOWNLOAD_4));
                tbsDownloadUpload.commit();
                return;
            }
            if (z) {
                stopDownload();
            }
            f2443d.removeMessages(101);
            f2443d.removeMessages(100);
            Message obtain = Message.obtain(f2443d, 101, QbSdk.f2417m);
            if (!z) {
                i2 = 0;
            }
            obtain.arg1 = i2;
            obtain.sendToTarget();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0171, code lost:
        if (r6.equals(r1) != false) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(android.content.Context r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 521
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.TbsDownloader.a(android.content.Context, boolean, boolean):boolean");
    }

    public static boolean needDownload(Context context, boolean z, boolean z2, boolean z3, TbsDownloaderCallback tbsDownloaderCallback) {
        boolean contains;
        boolean z4;
        StringBuilder o = f.b.a.a.a.o("needDownload,process=");
        o.append(QbSdk.getCurrentProcessName(context));
        o.append("stack=");
        o.append(Log.getStackTraceString(new Throwable()));
        TbsLog.i(LOGTAG, o.toString());
        TbsDownloadUpload.clear();
        TbsDownloadUpload tbsDownloadUpload = TbsDownloadUpload.getInstance(context);
        tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_1));
        tbsDownloadUpload.commit();
        TbsLog.i(LOGTAG, "[TbsDownloader.needDownload] oversea=" + z + ",isDownloadForeground=" + z2);
        TbsLog.initIfNeed(context);
        if (l.b) {
            if (tbsDownloaderCallback != null) {
                tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
            }
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#1,return false");
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_1));
            tbsDownloadUpload.commit();
            return false;
        }
        TbsLog.app_extra(LOGTAG, context);
        Context applicationContext = context.getApplicationContext();
        f2442c = applicationContext;
        TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(applicationContext);
        tbsDownloadConfig.setDownloadInterruptCode(-100);
        if (!a(f2442c, z)) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#2,return false");
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_2));
            tbsDownloadUpload.commit();
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_2));
            tbsDownloadUpload.commit();
            if (tbsDownloaderCallback != null) {
                tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
            }
            return false;
        }
        d();
        if (f2448i) {
            if (tbsDownloaderCallback != null) {
                tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
            }
            tbsDownloadConfig.setDownloadInterruptCode(-105);
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#3,return false");
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_3));
            tbsDownloadUpload.commit();
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_3));
            tbsDownloadUpload.commit();
            if (tbsDownloaderCallback != null) {
                tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
            }
            return false;
        }
        boolean a2 = a(f2442c, z2, false);
        f.b.a.a.a.A("[TbsDownloader.needDownload],needSendRequest=", a2, LOGTAG);
        if (a2) {
            a(z2, tbsDownloaderCallback, z3);
            tbsDownloadConfig.setDownloadInterruptCode(-114);
        } else {
            tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_4));
            tbsDownloadUpload.commit();
        }
        f2443d.removeMessages(102);
        Message.obtain(f2443d, 102).sendToTarget();
        if (QbSdk.f2407c || !TbsShareManager.isThirdPartyApp(context)) {
            contains = tbsDownloadConfig.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD);
            f.b.a.a.a.A("[TbsDownloader.needDownload] hasNeedDownloadKey=", contains, LOGTAG);
            z4 = (contains || TbsShareManager.isThirdPartyApp(context)) ? tbsDownloadConfig.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, false) : true;
        } else {
            z4 = false;
            contains = false;
        }
        TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#4,needDownload=" + z4 + ",hasNeedDownloadKey=" + contains);
        if (z4) {
            if (!h()) {
                TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#5,set needDownload = false");
                z4 = false;
            } else {
                tbsDownloadConfig.setDownloadInterruptCode(-118);
                TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#6");
            }
        } else {
            int m2 = l.a().m(f2442c);
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#7,tbsLocalVersion=" + m2 + ",needSendRequest=" + a2);
            if (!a2 && m2 > 0) {
                tbsDownloadConfig.setDownloadInterruptCode(-119);
            } else {
                f2443d.removeMessages(103);
                if (m2 <= 0 && !a2) {
                    Message.obtain(f2443d, 103, 0, 0, f2442c).sendToTarget();
                } else {
                    Message.obtain(f2443d, 103, 1, 0, f2442c).sendToTarget();
                }
                tbsDownloadConfig.setDownloadInterruptCode(-121);
            }
        }
        if (!a2 && tbsDownloaderCallback != null) {
            tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
        }
        f.b.a.a.a.A("[TbsDownloader.needDownload] needDownload=", z4, LOGTAG);
        tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf(z4 ? TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE : TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_4));
        tbsDownloadUpload.commit();
        return z4;
    }

    public static void c(JSONArray jSONArray) {
        String[] f2;
        boolean z;
        if (TbsPVConfig.getInstance(f2442c).isDisableHostBackupCore()) {
            return;
        }
        for (String str : f()) {
            int backupCoreVersion = TbsShareManager.getBackupCoreVersion(f2442c, str);
            boolean z2 = true;
            if (backupCoreVersion > 0) {
                Context packageContext = TbsShareManager.getPackageContext(f2442c, str, false);
                if (packageContext == null || l.a().f(packageContext)) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= jSONArray.length()) {
                            z = false;
                            break;
                        } else if (jSONArray.optInt(i2) == backupCoreVersion) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (!z) {
                        jSONArray.put(backupCoreVersion);
                    }
                } else {
                    TbsLog.e(LOGTAG, "host check failed,packageName = " + str);
                }
            }
            int backupDecoupleCoreVersion = TbsShareManager.getBackupDecoupleCoreVersion(f2442c, str);
            if (backupDecoupleCoreVersion > 0) {
                Context packageContext2 = TbsShareManager.getPackageContext(f2442c, str, false);
                if (packageContext2 == null || l.a().f(packageContext2)) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= jSONArray.length()) {
                            z2 = false;
                            break;
                        } else if (jSONArray.optInt(i3) == backupDecoupleCoreVersion) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (!z2) {
                        jSONArray.put(backupDecoupleCoreVersion);
                    }
                } else {
                    TbsLog.e(LOGTAG, "host check failed,packageName = " + str);
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(30:25|(1:27)(1:121)|28|(1:30)(1:120)|31|(1:33)(1:119)|34|(1:36)|37|(2:39|(1:41)(2:42|(1:44)(2:45|(1:47))))|48|(1:50)|51|(4:53|54|55|(10:59|(3:61|(1:63)(1:112)|64)(1:(1:114)(1:115))|65|66|67|68|(4:94|(3:96|(1:98)|99)(1:109)|100|(1:(2:103|104)(1:(2:106|107)(1:108))))(1:71)|72|(5:80|81|(1:83)(1:(1:88))|84|86)(1:(1:76)(1:(1:79)))|77))|118|66|67|68|(0)|94|(0)(0)|100|(0)|72|(0)|80|81|(0)(0)|84|86) */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0395, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0396, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0399, code lost:
        if (r24 != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x039b, code lost:
        r4.setDownloadInterruptCode(-106);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03a1, code lost:
        r4.setDownloadInterruptCode(-206);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x021e, code lost:
        r11 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x032b A[Catch: all -> 0x0395, TryCatch #1 {all -> 0x0395, blocks: (B:109:0x0309, B:111:0x032b, B:114:0x0378, B:113:0x0353), top: B:125:0x0309 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean b(final boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.TbsDownloader.b(boolean, boolean, boolean, boolean):boolean");
    }

    @TargetApi(11)
    public static void c(Context context) {
        TbsDownloadConfig.getInstance(context).clear();
        TbsLogReport.getInstance(context).clear();
        i.c(context);
        context.getSharedPreferences("tbs_extension_config", 4).edit().clear().commit();
        context.getSharedPreferences("tbs_preloadx5_check_cfg_file", 4).edit().clear().commit();
    }

    public static boolean a(Context context, boolean z) {
        TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(context);
        if (QbSdk.f2407c || !TbsShareManager.isThirdPartyApp(f2442c) || c()) {
            if (!tbsDownloadConfig.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA)) {
                if (z && !TbsConfig.APP_WX.equals(context.getApplicationInfo().packageName)) {
                    TbsLog.i(LOGTAG, "needDownload-oversea is true, but not WX");
                    z = false;
                }
                tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA, Boolean.valueOf(z));
                tbsDownloadConfig.commit();
                f2449j = z;
                f.b.a.a.a.A("needDownload-first-called--isoversea = ", z, LOGTAG);
            }
            if (getOverSea(context)) {
                StringBuilder o = f.b.a.a.a.o("needDownload- return false,  because of  version is ");
                o.append(Build.VERSION.SDK_INT);
                o.append(", and overea");
                TbsLog.i(LOGTAG, o.toString());
                tbsDownloadConfig.setDownloadInterruptCode(-103);
                return false;
            }
            Matcher matcher = null;
            String string = tbsDownloadConfig.mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_DEVICE_CPUABI, null);
            f2444e = string;
            if (TextUtils.isEmpty(string)) {
                return true;
            }
            try {
                matcher = Pattern.compile("i686|mips|x86_64").matcher(f2444e);
            } catch (Exception unused) {
            }
            if (matcher == null || !matcher.find()) {
                return true;
            }
            TbsLog.e(LOGTAG, "can not support x86 devices!!");
            tbsDownloadConfig.setDownloadInterruptCode(-104);
            return false;
        }
        return false;
    }

    public static boolean a(Context context) {
        return TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOADDECOUPLECORE, 0) == 1;
    }

    public static void a(boolean z, TbsDownloaderCallback tbsDownloaderCallback, boolean z2) {
        TbsLog.i(LOGTAG, "[TbsDownloader.queryConfig]");
        f2443d.removeMessages(100);
        Message obtain = Message.obtain(f2443d, 100);
        if (tbsDownloaderCallback != null) {
            obtain.obj = tbsDownloaderCallback;
        }
        obtain.arg1 = 0;
        obtain.arg1 = z ? 1 : 0;
        obtain.arg2 = z2 ? 1 : 0;
        obtain.sendToTarget();
    }

    public static void a(JSONArray jSONArray) {
        String[] f2;
        boolean z;
        String[] f3 = f();
        int length = f3.length;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= length) {
                break;
            }
            String str = f3[i2];
            int sharedTbsCoreVersion = TbsShareManager.getSharedTbsCoreVersion(f2442c, str);
            if (sharedTbsCoreVersion > 0) {
                Context packageContext = TbsShareManager.getPackageContext(f2442c, str, true);
                if (packageContext == null || l.a().f(packageContext)) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= jSONArray.length()) {
                            z2 = false;
                            break;
                        } else if (jSONArray.optInt(i3) == sharedTbsCoreVersion) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (!z2) {
                        jSONArray.put(sharedTbsCoreVersion);
                    }
                } else {
                    TbsLog.e(LOGTAG, "host check failed,packageName = " + str);
                }
            }
            i2++;
        }
        for (String str2 : f()) {
            int coreShareDecoupleCoreVersion = TbsShareManager.getCoreShareDecoupleCoreVersion(f2442c, str2);
            if (coreShareDecoupleCoreVersion > 0) {
                Context packageContext2 = TbsShareManager.getPackageContext(f2442c, str2, true);
                if (packageContext2 == null || l.a().f(packageContext2)) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= jSONArray.length()) {
                            z = false;
                            break;
                        } else if (jSONArray.optInt(i4) == coreShareDecoupleCoreVersion) {
                            z = true;
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (!z) {
                        jSONArray.put(coreShareDecoupleCoreVersion);
                    }
                } else {
                    TbsLog.e(LOGTAG, "host check failed,packageName = " + str2);
                }
            }
        }
    }

    public static JSONObject a(boolean z, boolean z2, boolean z3) {
        int m2;
        int i2;
        int i3;
        TbsLog.i(LOGTAG, "[TbsDownloader.postJsonData]isQuery: " + z + " forDecoupleCore is " + z3);
        TbsDownloadConfig tbsDownloadConfig = TbsDownloadConfig.getInstance(f2442c);
        String b2 = b(f2442c);
        String d2 = com.tencent.smtt.utils.b.d(f2442c);
        String c2 = com.tencent.smtt.utils.b.c(f2442c);
        String f2 = com.tencent.smtt.utils.b.f(f2442c);
        String id = TimeZone.getDefault().getID();
        String str = id != null ? id : "";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) f2442c.getSystemService("phone");
            if (telephonyManager != null) {
                id = telephonyManager.getSimCountryIso();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        String str2 = id != null ? id : "";
        JSONObject jSONObject = new JSONObject();
        try {
            boolean z4 = false;
            if (j.a(f2442c).c("tpatch_num") < 5) {
                jSONObject.put("REQUEST_TPATCH", 1);
            } else {
                jSONObject.put("REQUEST_TPATCH", 0);
            }
            jSONObject.put("TIMEZONEID", str);
            jSONObject.put("COUNTRYISO", str2);
            jSONObject.put("PROTOCOLVERSION", 1);
            if (TbsShareManager.isThirdPartyApp(f2442c)) {
                if (QbSdk.f2407c) {
                    m2 = TbsShareManager.a(f2442c, false);
                } else {
                    m2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0);
                }
            } else {
                if (z3) {
                    m2 = l.a().i(f2442c);
                } else {
                    m2 = l.a().m(f2442c);
                }
                if (m2 == 0 && l.a().l(f2442c)) {
                    m2 = -1;
                    if (TbsConfig.APP_QQ.equals(f2442c.getApplicationInfo().packageName)) {
                        TbsDownloadUpload.clear();
                        TbsDownloadUpload tbsDownloadUpload = TbsDownloadUpload.getInstance(f2442c);
                        tbsDownloadUpload.a.put(TbsDownloadUpload.TbsUploadKey.KEY_LOCAL_CORE_VERSION, -1);
                        tbsDownloadUpload.commit();
                        TbsPVConfig.releaseInstance();
                        if (TbsPVConfig.getInstance(f2442c).getLocalCoreVersionMoreTimes() == 1) {
                            m2 = l.a().i(f2442c);
                        }
                    }
                }
                TbsLog.i(LOGTAG, "[TbsDownloader.postJsonData] tbsLocalVersion=" + m2 + " isDownloadForeground=" + z2);
                if (z2 && !l.a().l(f2442c)) {
                    m2 = 0;
                }
            }
            if (z) {
                jSONObject.put("FUNCTION", 2);
            } else {
                jSONObject.put("FUNCTION", m2 == 0 ? 0 : 1);
            }
            if (TbsShareManager.isThirdPartyApp(f2442c)) {
                JSONArray g2 = g();
                jSONObject.put("TBSVLARR", g2);
                tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_LAST_THIRDAPP_SENDREQUEST_COREVERSION, g2.toString());
                tbsDownloadConfig.commit();
                if (QbSdk.f2407c) {
                    jSONObject.put("THIRDREQ", 1);
                }
            } else {
                JSONArray a2 = a(z3);
                if (Apn.getApnType(f2442c) != 3 && a2.length() != 0 && m2 == 0 && z) {
                    jSONObject.put("TBSBACKUPARR", a2);
                }
            }
            jSONObject.put("APPN", f2442c.getPackageName());
            jSONObject.put("APPVN", a(tbsDownloadConfig.mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_APP_VERSIONNAME, null)));
            jSONObject.put("APPVC", tbsDownloadConfig.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_APP_VERSIONCODE, 0));
            jSONObject.put("APPMETA", a(tbsDownloadConfig.mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_APP_METADATA, null)));
            jSONObject.put("TBSSDKV", 43697);
            jSONObject.put("TBSV", m2);
            jSONObject.put("DOWNLOADDECOUPLECORE", z3 ? 1 : 0);
            tbsDownloadConfig.a.put(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOADDECOUPLECORE, Integer.valueOf(z3 ? 1 : 0));
            tbsDownloadConfig.commit();
            if (m2 != 0) {
                jSONObject.put("TBSBACKUPV", f2446g.b(z3));
            }
            jSONObject.put("CPU", f2444e);
            jSONObject.put("UA", b2);
            jSONObject.put("IMSI", a(d2));
            jSONObject.put("IMEI", a(c2));
            jSONObject.put("ANDROID_ID", a(f2));
            if (!TbsShareManager.isThirdPartyApp(f2442c)) {
                if (m2 != 0) {
                    jSONObject.put("STATUS", QbSdk.a(f2442c, m2) ? 0 : 1);
                } else {
                    jSONObject.put("STATUS", 0);
                }
                jSONObject.put("TBSDV", l.a().h(f2442c));
            }
            boolean z5 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_FULL_PACKAGE, false);
            Object a3 = QbSdk.a(f2442c, "can_unlzma", (Bundle) null);
            if ((a3 == null || !(a3 instanceof Boolean)) ? false : ((Boolean) a3).booleanValue()) {
                i2 = 1;
                z4 = !z5;
            } else {
                i2 = 1;
            }
            if (z4) {
                jSONObject.put("REQUEST_LZMA", i2);
            }
            if (getOverSea(f2442c)) {
                i3 = 1;
                jSONObject.put("OVERSEA", 1);
            } else {
                i3 = 1;
            }
            if (z2) {
                jSONObject.put("DOWNLOAD_FOREGROUND", i3);
            }
        } catch (Exception unused) {
        }
        StringBuilder o = f.b.a.a.a.o("[TbsDownloader.postJsonData] jsonData=");
        o.append(jSONObject.toString());
        TbsLog.i(LOGTAG, o.toString());
        return jSONObject;
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        Locale locale = Locale.getDefault();
        StringBuffer stringBuffer = new StringBuffer();
        String str = Build.VERSION.RELEASE;
        try {
            str = new String(str.getBytes("UTF-8"), "ISO8859-1");
        } catch (Exception unused) {
        }
        if (str == null) {
            stringBuffer.append("1.0");
        } else if (str.length() > 0) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append("1.0");
        }
        stringBuffer.append("; ");
        String language = locale.getLanguage();
        if (language != null) {
            stringBuffer.append(language.toLowerCase());
            String country = locale.getCountry();
            if (country != null) {
                stringBuffer.append("-");
                stringBuffer.append(country.toLowerCase());
            }
        } else {
            stringBuffer.append("en");
        }
        if ("REL".equals(Build.VERSION.CODENAME)) {
            String str2 = Build.MODEL;
            try {
                str2 = new String(str2.getBytes("UTF-8"), "ISO8859-1");
            } catch (Exception unused2) {
            }
            if (str2 == null) {
                stringBuffer.append("; ");
            } else if (str2.length() > 0) {
                stringBuffer.append("; ");
                stringBuffer.append(str2);
            }
        }
        String str3 = Build.ID;
        if (str3 == null) {
            str3 = "";
        }
        String replaceAll = str3.replaceAll("[一-龥]", "");
        if (replaceAll == null) {
            stringBuffer.append(" Build/");
            stringBuffer.append("00");
        } else if (replaceAll.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(replaceAll);
        }
        String format = String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 Mobile Safari/533.1", stringBuffer);
        b = format;
        return format;
    }

    public static File b(int i2) {
        String[] coreProviderAppList = TbsShareManager.getCoreProviderAppList();
        int length = coreProviderAppList.length;
        File file = null;
        int i3 = 0;
        while (i3 < length) {
            String str = coreProviderAppList[i3];
            File file2 = new File(com.tencent.smtt.utils.f.a(f2442c, str, 4, false), getOverSea(f2442c) ? "x5.oversea.tbs.org" : "x5.tbs.org");
            if (file2.exists() && com.tencent.smtt.utils.a.a(f2442c, file2) == i2) {
                StringBuilder o = f.b.a.a.a.o("local tbs version fond,path = ");
                o.append(file2.getAbsolutePath());
                TbsLog.i(LOGTAG, o.toString());
            } else {
                file2 = new File(com.tencent.smtt.utils.f.a(f2442c, str, 4, false), "x5.tbs.decouple");
                if (file2.exists() && com.tencent.smtt.utils.a.a(f2442c, file2) == i2) {
                    StringBuilder o2 = f.b.a.a.a.o("local tbs version fond,path = ");
                    o2.append(file2.getAbsolutePath());
                    TbsLog.i(LOGTAG, o2.toString());
                } else {
                    i3++;
                    file = file2;
                }
            }
            return file2;
        }
        return file;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:37:0x0112
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @android.annotation.TargetApi(11)
    public static boolean a(java.lang.String r32, int r33, boolean r34, boolean r35, boolean r36) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 2037
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.TbsDownloader.a(java.lang.String, int, boolean, boolean, boolean):boolean");
    }

    public static File a(int i2) {
        String[] coreProviderAppList = TbsShareManager.getCoreProviderAppList();
        int length = coreProviderAppList.length;
        File file = null;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                break;
            }
            String str = coreProviderAppList[i3];
            if (!str.equals(f2442c.getApplicationInfo().packageName)) {
                file = new File(com.tencent.smtt.utils.f.a(f2442c, str, 4, false), getOverSea(f2442c) ? "x5.oversea.tbs.org" : "x5.tbs.org");
                if (file.exists()) {
                    if (com.tencent.smtt.utils.a.a(f2442c, file) == i2) {
                        StringBuilder o = f.b.a.a.a.o("local tbs version fond,path = ");
                        o.append(file.getAbsolutePath());
                        TbsLog.i(LOGTAG, o.toString());
                        break;
                    }
                    TbsLog.i(LOGTAG, "version is not match");
                } else {
                    TbsLog.i(LOGTAG, "can not find local backup core file");
                }
            }
            i3++;
        }
        return file;
    }

    public static JSONArray a(boolean z) {
        String[] coreProviderAppList;
        File file;
        boolean z2;
        JSONArray jSONArray = new JSONArray();
        for (String str : TbsShareManager.getCoreProviderAppList()) {
            if (z) {
                file = new File(com.tencent.smtt.utils.f.a(f2442c, str, 4, false), getOverSea(f2442c) ? "x5.oversea.tbs.org" : "x5.tbs.org");
            } else {
                file = new File(com.tencent.smtt.utils.f.a(f2442c, str, 4, false), "x5.tbs.decouple");
            }
            if (file.exists()) {
                long a2 = com.tencent.smtt.utils.a.a(f2442c, file);
                if (a2 > 0) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= jSONArray.length()) {
                            z2 = false;
                            break;
                        } else if (jSONArray.optInt(i2) == a2) {
                            z2 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (!z2) {
                        jSONArray.put(a2);
                    }
                }
            }
        }
        return jSONArray;
    }
}
