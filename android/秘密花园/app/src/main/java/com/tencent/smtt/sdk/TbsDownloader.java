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
import com.comeback.data.BuildConfig;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsDownloadUpload;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.Apn;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.b;
import com.tencent.smtt.utils.f;
import f.b.a.a.a;
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
                            boolean z = true;
                            if (i2 != 108) {
                                switch (i2) {
                                    case 100:
                                        boolean z2 = message.arg1 == 1;
                                        boolean b2 = TbsDownloader.b(true, false, false, message.arg2 == 1);
                                        Object obj = message.obj;
                                        if (obj != null && (obj instanceof TbsDownloaderCallback)) {
                                            TbsLog.i(TbsDownloader.LOGTAG, "needDownload-onNeedDownloadFinish needStartDownload=" + b2);
                                            String str = (TbsDownloader.f2442c == null || TbsDownloader.f2442c.getApplicationContext() == null || TbsDownloader.f2442c.getApplicationContext().getApplicationInfo() == null) ? "" : TbsDownloader.f2442c.getApplicationContext().getApplicationInfo().packageName;
                                            if (!b2 || z2) {
                                                ((TbsDownloaderCallback) message.obj).onNeedDownloadFinish(b2, TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                                            } else if (TbsConfig.APP_WX.equals(str) || TbsConfig.APP_QQ.equals(str)) {
                                                a.A("needDownload-onNeedDownloadFinish in mm or QQ callback needStartDownload = ", b2, TbsDownloader.LOGTAG);
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
                            if (!TbsShareManager.isThirdPartyApp(TbsDownloader.f2442c)) {
                                StringBuilder o = a.o("tbs_download_lock_file");
                                o.append(TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
                                o.append(".txt");
                                fileOutputStream = f.b(TbsDownloader.f2442c, false, o.toString());
                                if (fileOutputStream != null) {
                                    fileLock = f.a(TbsDownloader.f2442c, fileOutputStream);
                                    if (fileLock == null) {
                                        QbSdk.f2417m.onDownloadFinish(TbsListener.ErrorCode.NONEEDDOWNLOAD_OTHER_PROCESS_DOWNLOADING);
                                        TbsLog.i(TbsDownloader.LOGTAG, "file lock locked,wx or qq is downloading");
                                        TbsDownloadConfig.getInstance(TbsDownloader.f2442c).setDownloadInterruptCode(-203);
                                        TbsLog.i(TbsDownloader.LOGTAG, "MSG_START_DOWNLOAD_DECOUPLECORE return #1");
                                        return;
                                    }
                                } else if (f.a(TbsDownloader.f2442c)) {
                                    TbsDownloadConfig.getInstance(TbsDownloader.f2442c).setDownloadInterruptCode(-204);
                                    TbsLog.i(TbsDownloader.LOGTAG, "MSG_START_DOWNLOAD_DECOUPLECORE return #2");
                                    return;
                                }
                            } else {
                                fileOutputStream = null;
                            }
                            boolean z3 = message.arg1 == 1;
                            TbsDownloadConfig instance = TbsDownloadConfig.getInstance(TbsDownloader.f2442c);
                            if (!TbsDownloader.b(false, z3, 108 == message.what, true)) {
                                QbSdk.f2417m.onDownloadFinish(110);
                            } else if (z3 && l.a().b(TbsDownloader.f2442c, TbsDownloadConfig.getInstance(TbsDownloader.f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0))) {
                                QbSdk.f2417m.onDownloadFinish(122);
                                instance.setDownloadInterruptCode(-213);
                            } else if (instance.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, false)) {
                                TbsDownloadConfig.getInstance(TbsDownloader.f2442c).setDownloadInterruptCode(-215);
                                i iVar = TbsDownloader.f2446g;
                                if (108 != message.what) {
                                    z = false;
                                }
                                iVar.b(z3, z);
                            } else {
                                QbSdk.f2417m.onDownloadFinish(110);
                            }
                            TbsLog.i(TbsDownloader.LOGTAG, "------freeFileLock called :");
                            f.a(fileLock, fileOutputStream);
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
        if (!packageName.equals(TbsShareManager.f(f2442c))) {
            return coreProviderAppList;
        }
        int length = coreProviderAppList.length;
        String[] strArr = new String[length + 1];
        System.arraycopy(coreProviderAppList, 0, strArr, 0, length);
        strArr[length] = packageName;
        return strArr;
    }

    public static JSONArray g() {
        if (!TbsShareManager.isThirdPartyApp(f2442c)) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        a(jSONArray);
        c(jSONArray);
        b(jSONArray);
        return jSONArray;
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
                TbsDownloadConfig instance = TbsDownloadConfig.getInstance(context);
                if (instance.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA)) {
                    f2449j = instance.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA, false);
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
        TbsDownloadConfig instance = TbsDownloadConfig.getInstance(f2442c);
        if (instance.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOAD_SUCCESS_RETRYTIMES, 0) >= instance.getDownloadSuccessMaxRetrytimes()) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] out of success retrytimes", true);
            instance.setDownloadInterruptCode(-115);
            return false;
        } else if (instance.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOAD_FAILED_RETRYTIMES, 0) >= instance.getDownloadFailedMaxRetrytimes()) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] out of failed retrytimes", true);
            instance.setDownloadInterruptCode(-116);
            return false;
        } else if (!f.b(f2442c)) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] local rom freespace limit", true);
            instance.setDownloadInterruptCode(-117);
            return false;
        } else {
            if (System.currentTimeMillis() - instance.mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_TBSDOWNLOAD_STARTTIME, 0) <= 86400000) {
                long j2 = instance.mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_TBSDOWNLOAD_FLOW, 0);
                TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] downloadFlow=" + j2);
                if (j2 >= instance.getDownloadMaxflow()) {
                    TbsLog.i(LOGTAG, "[TbsDownloader.needStartDownload] failed because you exceeded max flow!", true);
                    instance.setDownloadInterruptCode(-120);
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
        if (System.currentTimeMillis() - TbsDownloadConfig.getInstance(f2442c).mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_LAST_DOWNLOAD_DECOUPLE_CORE, 0) >= TbsDownloadConfig.getInstance(f2442c).getRetryInterval() * 1000 && (i2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0)) > 0 && i2 != l.a().h(f2442c) && TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0) != i2) {
            return true;
        }
        return false;
    }

    public static boolean needSendRequest(Context context, boolean z) {
        boolean z2;
        f2442c = context.getApplicationContext();
        TbsLog.initIfNeed(context);
        boolean z3 = false;
        if (!a(f2442c, z)) {
            return false;
        }
        int m2 = l.a().m(context);
        TbsLog.i(LOGTAG, "[TbsDownloader.needSendRequest] localTbsVersion=" + m2);
        if (m2 > 0) {
            return false;
        }
        if (a(f2442c, false, true)) {
            return true;
        }
        TbsDownloadConfig instance = TbsDownloadConfig.getInstance(f2442c);
        boolean contains = instance.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD);
        a.A("[TbsDownloader.needSendRequest] hasNeedDownloadKey=", contains, LOGTAG);
        if (!contains) {
            z2 = true;
        } else {
            z2 = instance.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, false);
        }
        a.A("[TbsDownloader.needSendRequest] needDownload=", z2, LOGTAG);
        if (z2 && h()) {
            z3 = true;
        }
        a.A("[TbsDownloader.needSendRequest] ret=", z3, LOGTAG);
        return z3;
    }

    public static void setAppContext(Context context) {
        if (context != null && context.getApplicationContext() != null) {
            f2442c = context.getApplicationContext();
        }
    }

    public static void setRetryIntervalInSeconds(Context context, long j2) {
        if (context != null) {
            if (context.getApplicationInfo().packageName.equals("com.tencent.qqlive")) {
                f2451l = j2;
            }
            StringBuilder o = a.o("mRetryIntervalInSeconds is ");
            o.append(f2451l);
            TbsLog.i(LOGTAG, o.toString());
        }
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
        long j2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_LAST_DOWNLOAD_DECOUPLE_CORE, 0);
        if (System.currentTimeMillis() - j2 < TbsDownloadConfig.getInstance(f2442c).getRetryInterval() * 1000) {
            return false;
        }
        TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded #3");
        int i2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0);
        if (i2 <= 0 || i2 == l.a().h(f2442c)) {
            StringBuilder p = a.p("startDecoupleCoreIfNeeded no need, deCoupleCoreVersion is ", i2, " getTbsCoreShareDecoupleCoreVersion is ");
            p.append(l.a().h(f2442c));
            TbsLog.i(LOGTAG, p.toString());
        } else if (TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0) != i2 || TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V_TYPE, 0) == 1) {
            TbsLog.i(LOGTAG, "startDecoupleCoreIfNeeded #4");
            a = true;
            f2443d.removeMessages(108);
            Message obtain = Message.obtain(f2443d, 108, QbSdk.f2417m);
            obtain.arg1 = 0;
            obtain.sendToTarget();
            TbsDownloadConfig.getInstance(f2442c).a.put(TbsDownloadConfig.TbsConfigKey.KEY_LAST_DOWNLOAD_DECOUPLE_CORE, Long.valueOf(System.currentTimeMillis()));
            return true;
        } else {
            StringBuilder o = a.o("startDecoupleCoreIfNeeded no need, KEY_TBS_DOWNLOAD_V is ");
            o.append(TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0));
            o.append(" deCoupleCoreVersion is ");
            o.append(i2);
            o.append(" KEY_TBS_DOWNLOAD_V_TYPE is ");
            o.append(TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V_TYPE, 0));
            TbsLog.i(LOGTAG, o.toString());
        }
        return false;
    }

    public static void startDownload(Context context) {
        startDownload(context, false);
    }

    public static void stopDownload() {
        if (!f2448i) {
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
            if (!z) {
                jSONArray.put(a2);
            }
        }
    }

    public static boolean needDownload(Context context, boolean z, boolean z2, TbsDownloaderCallback tbsDownloaderCallback) {
        return needDownload(context, z, z2, true, tbsDownloaderCallback);
    }

    public static synchronized void startDownload(Context context, boolean z) {
        synchronized (TbsDownloader.class) {
            TbsDownloadUpload instance = TbsDownloadUpload.getInstance(context);
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, 160);
            instance.commit();
            TbsLog.i(LOGTAG, "[TbsDownloader.startDownload] sAppContext=" + f2442c);
            if (l.b) {
                instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.STARTDOWNLOAD_2));
                instance.commit();
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
                instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.STARTDOWNLOAD_4));
                instance.commit();
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

    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0171, code lost:
        if (r6.equals(r1) != false) goto L_0x01dc;
     */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0180  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x01e3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(android.content.Context r20, boolean r21, boolean r22) {
        /*
        // Method dump skipped, instructions count: 521
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.TbsDownloader.a(android.content.Context, boolean, boolean):boolean");
    }

    public static boolean needDownload(Context context, boolean z, boolean z2, boolean z3, TbsDownloaderCallback tbsDownloaderCallback) {
        boolean z4;
        boolean z5;
        StringBuilder o = a.o("needDownload,process=");
        o.append(QbSdk.getCurrentProcessName(context));
        o.append("stack=");
        o.append(Log.getStackTraceString(new Throwable()));
        TbsLog.i(LOGTAG, o.toString());
        TbsDownloadUpload.clear();
        TbsDownloadUpload instance = TbsDownloadUpload.getInstance(context);
        instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_1));
        instance.commit();
        TbsLog.i(LOGTAG, "[TbsDownloader.needDownload] oversea=" + z + ",isDownloadForeground=" + z2);
        TbsLog.initIfNeed(context);
        if (l.b) {
            if (tbsDownloaderCallback != null) {
                tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
            }
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#1,return false");
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_1));
            instance.commit();
            return false;
        }
        TbsLog.app_extra(LOGTAG, context);
        Context applicationContext = context.getApplicationContext();
        f2442c = applicationContext;
        TbsDownloadConfig instance2 = TbsDownloadConfig.getInstance(applicationContext);
        instance2.setDownloadInterruptCode(-100);
        if (!a(f2442c, z)) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#2,return false");
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_2));
            instance.commit();
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_2));
            instance.commit();
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
            instance2.setDownloadInterruptCode(-105);
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#3,return false");
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_3));
            instance.commit();
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_3));
            instance.commit();
            if (tbsDownloaderCallback != null) {
                tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
            }
            return false;
        }
        boolean a2 = a(f2442c, z2, false);
        a.A("[TbsDownloader.needDownload],needSendRequest=", a2, LOGTAG);
        if (a2) {
            a(z2, tbsDownloaderCallback, z3);
            instance2.setDownloadInterruptCode(-114);
        } else {
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf((int) TbsListener.ErrorCode.NEEDDOWNLOAD_4));
            instance.commit();
        }
        f2443d.removeMessages(102);
        Message.obtain(f2443d, 102).sendToTarget();
        if (QbSdk.f2407c || !TbsShareManager.isThirdPartyApp(context)) {
            z4 = instance2.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD);
            a.A("[TbsDownloader.needDownload] hasNeedDownloadKey=", z4, LOGTAG);
            if (z4 || TbsShareManager.isThirdPartyApp(context)) {
                z5 = instance2.mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_NEEDDOWNLOAD, false);
            } else {
                z5 = true;
            }
        } else {
            z5 = false;
            z4 = false;
        }
        TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#4,needDownload=" + z5 + ",hasNeedDownloadKey=" + z4);
        if (!z5) {
            int m2 = l.a().m(f2442c);
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#7,tbsLocalVersion=" + m2 + ",needSendRequest=" + a2);
            if (a2 || m2 <= 0) {
                f2443d.removeMessages(103);
                if (m2 > 0 || a2) {
                    Message.obtain(f2443d, 103, 1, 0, f2442c).sendToTarget();
                } else {
                    Message.obtain(f2443d, 103, 0, 0, f2442c).sendToTarget();
                }
                instance2.setDownloadInterruptCode(-121);
            } else {
                instance2.setDownloadInterruptCode(-119);
            }
        } else if (!h()) {
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#5,set needDownload = false");
            z5 = false;
        } else {
            instance2.setDownloadInterruptCode(-118);
            TbsLog.i(LOGTAG, "[TbsDownloader.needDownload]#6");
        }
        if (!a2 && tbsDownloaderCallback != null) {
            tbsDownloaderCallback.onNeedDownloadFinish(false, 0);
        }
        a.A("[TbsDownloader.needDownload] needDownload=", z5, LOGTAG);
        instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_RETURN, Integer.valueOf(z5 ? TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE : TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_4));
        instance.commit();
        return z5;
    }

    public static void c(JSONArray jSONArray) {
        boolean z;
        if (!TbsPVConfig.getInstance(f2442c).isDisableHostBackupCore()) {
            String[] f2 = f();
            for (String str : f2) {
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
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(30:27|(1:29)(1:30)|31|(1:33)(1:34)|35|(1:37)(1:38)|39|(1:41)|42|(2:44|(1:46)(2:47|(1:49)(2:50|(1:52))))|53|(1:55)|56|(4:58|119|59|(10:64|(3:66|(1:68)(1:69)|70)(1:(1:72)(1:73))|74|76|115|77|(4:82|(3:84|(1:86)|87)(1:88)|89|(1:(2:92|122)(1:(2:94|95)(1:123))))(1:81)|96|(5:117|103|(1:105)(1:(1:107))|108|121)(1:(1:100)(1:(1:102)))|114))|75|76|115|77|(0)|82|(0)(0)|89|(0)|96|(0)|117|103|(0)(0)|108|121) */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x0395, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0396, code lost:
        r0.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0399, code lost:
        if (r24 != false) goto L_0x039b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x039b, code lost:
        r4.setDownloadInterruptCode(-106);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:0x03a1, code lost:
        r4.setDownloadInterruptCode(-206);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x021e, code lost:
        r11 = -1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x032b A[Catch: all -> 0x0395, TryCatch #1 {all -> 0x0395, blocks: (B:103:0x0309, B:105:0x032b, B:107:0x0353, B:108:0x0378), top: B:117:0x0309 }] */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x0351  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0238  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0269  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x02a4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean b(final boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
        // Method dump skipped, instructions count: 936
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
        TbsDownloadConfig instance = TbsDownloadConfig.getInstance(context);
        if (!QbSdk.f2407c && TbsShareManager.isThirdPartyApp(f2442c) && !c()) {
            return false;
        }
        if (!instance.mPreferences.contains(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA)) {
            if (z && !TbsConfig.APP_WX.equals(context.getApplicationInfo().packageName)) {
                TbsLog.i(LOGTAG, "needDownload-oversea is true, but not WX");
                z = false;
            }
            instance.a.put(TbsDownloadConfig.TbsConfigKey.KEY_IS_OVERSEA, Boolean.valueOf(z));
            instance.commit();
            f2449j = z;
            a.A("needDownload-first-called--isoversea = ", z, LOGTAG);
        }
        if (getOverSea(context)) {
            StringBuilder o = a.o("needDownload- return false,  because of  version is ");
            o.append(Build.VERSION.SDK_INT);
            o.append(", and overea");
            TbsLog.i(LOGTAG, o.toString());
            instance.setDownloadInterruptCode(-103);
            return false;
        }
        Matcher matcher = null;
        String string = instance.mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_DEVICE_CPUABI, null);
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
        instance.setDownloadInterruptCode(-104);
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
        boolean z;
        String[] f2 = f();
        int length = f2.length;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= length) {
                break;
            }
            String str = f2[i2];
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
        String[] f3 = f();
        for (String str2 : f3) {
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
        int i2;
        int i3;
        int i4;
        TbsLog.i(LOGTAG, "[TbsDownloader.postJsonData]isQuery: " + z + " forDecoupleCore is " + z3);
        TbsDownloadConfig instance = TbsDownloadConfig.getInstance(f2442c);
        String b2 = b(f2442c);
        String d2 = b.d(f2442c);
        String c2 = b.c(f2442c);
        String f2 = b.f(f2442c);
        String id = TimeZone.getDefault().getID();
        String str = "";
        String str2 = id != null ? id : str;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) f2442c.getSystemService("phone");
            if (telephonyManager != null) {
                id = telephonyManager.getSimCountryIso();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (id != null) {
            str = id;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            boolean z4 = false;
            if (j.a(f2442c).c("tpatch_num") < 5) {
                jSONObject.put("REQUEST_TPATCH", 1);
            } else {
                jSONObject.put("REQUEST_TPATCH", 0);
            }
            jSONObject.put("TIMEZONEID", str2);
            jSONObject.put("COUNTRYISO", str);
            jSONObject.put("PROTOCOLVERSION", 1);
            if (!TbsShareManager.isThirdPartyApp(f2442c)) {
                if (z3) {
                    i2 = l.a().i(f2442c);
                } else {
                    i2 = l.a().m(f2442c);
                }
                if (i2 == 0 && l.a().l(f2442c)) {
                    i2 = -1;
                    if (TbsConfig.APP_QQ.equals(f2442c.getApplicationInfo().packageName)) {
                        TbsDownloadUpload.clear();
                        TbsDownloadUpload instance2 = TbsDownloadUpload.getInstance(f2442c);
                        instance2.a.put(TbsDownloadUpload.TbsUploadKey.KEY_LOCAL_CORE_VERSION, -1);
                        instance2.commit();
                        TbsPVConfig.releaseInstance();
                        if (TbsPVConfig.getInstance(f2442c).getLocalCoreVersionMoreTimes() == 1) {
                            i2 = l.a().i(f2442c);
                        }
                    }
                }
                TbsLog.i(LOGTAG, "[TbsDownloader.postJsonData] tbsLocalVersion=" + i2 + " isDownloadForeground=" + z2);
                if (z2 && !l.a().l(f2442c)) {
                    i2 = 0;
                }
            } else if (QbSdk.f2407c) {
                i2 = TbsShareManager.a(f2442c, false);
            } else {
                i2 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_TBS_DOWNLOAD_V, 0);
            }
            if (z) {
                jSONObject.put("FUNCTION", 2);
            } else {
                jSONObject.put("FUNCTION", i2 == 0 ? 0 : 1);
            }
            if (TbsShareManager.isThirdPartyApp(f2442c)) {
                JSONArray g2 = g();
                jSONObject.put("TBSVLARR", g2);
                instance.a.put(TbsDownloadConfig.TbsConfigKey.KEY_LAST_THIRDAPP_SENDREQUEST_COREVERSION, g2.toString());
                instance.commit();
                if (QbSdk.f2407c) {
                    jSONObject.put("THIRDREQ", 1);
                }
            } else {
                JSONArray a2 = a(z3);
                if (Apn.getApnType(f2442c) != 3 && a2.length() != 0 && i2 == 0 && z) {
                    jSONObject.put("TBSBACKUPARR", a2);
                }
            }
            jSONObject.put("APPN", f2442c.getPackageName());
            jSONObject.put("APPVN", a(instance.mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_APP_VERSIONNAME, null)));
            jSONObject.put("APPVC", instance.mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_APP_VERSIONCODE, 0));
            jSONObject.put("APPMETA", a(instance.mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_APP_METADATA, null)));
            jSONObject.put("TBSSDKV", 43697);
            jSONObject.put("TBSV", i2);
            jSONObject.put("DOWNLOADDECOUPLECORE", z3 ? 1 : 0);
            instance.a.put(TbsDownloadConfig.TbsConfigKey.KEY_DOWNLOADDECOUPLECORE, Integer.valueOf(z3 ? 1 : 0));
            instance.commit();
            if (i2 != 0) {
                jSONObject.put("TBSBACKUPV", f2446g.b(z3));
            }
            jSONObject.put("CPU", f2444e);
            jSONObject.put("UA", b2);
            jSONObject.put("IMSI", a(d2));
            jSONObject.put("IMEI", a(c2));
            jSONObject.put("ANDROID_ID", a(f2));
            if (!TbsShareManager.isThirdPartyApp(f2442c)) {
                if (i2 != 0) {
                    jSONObject.put("STATUS", QbSdk.a(f2442c, i2) ? 0 : 1);
                } else {
                    jSONObject.put("STATUS", 0);
                }
                jSONObject.put("TBSDV", l.a().h(f2442c));
            }
            boolean z5 = TbsDownloadConfig.getInstance(f2442c).mPreferences.getBoolean(TbsDownloadConfig.TbsConfigKey.KEY_FULL_PACKAGE, false);
            Object a3 = QbSdk.a(f2442c, "can_unlzma", (Bundle) null);
            if ((a3 == null || !(a3 instanceof Boolean)) ? false : ((Boolean) a3).booleanValue()) {
                i3 = 1;
                z4 = !z5;
            } else {
                i3 = 1;
            }
            if (z4) {
                jSONObject.put("REQUEST_LZMA", i3);
            }
            if (getOverSea(f2442c)) {
                i4 = 1;
                jSONObject.put("OVERSEA", 1);
            } else {
                i4 = 1;
            }
            if (z2) {
                jSONObject.put("DOWNLOAD_FOREGROUND", i4);
            }
        } catch (Exception unused) {
        }
        StringBuilder o = a.o("[TbsDownloader.postJsonData] jsonData=");
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
            stringBuffer.append(BuildConfig.VERSION_NAME);
        } else if (str.length() > 0) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append(BuildConfig.VERSION_NAME);
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
            File file2 = new File(f.a(f2442c, str, 4, false), getOverSea(f2442c) ? "x5.oversea.tbs.org" : "x5.tbs.org");
            if (!file2.exists() || com.tencent.smtt.utils.a.a(f2442c, file2) != i2) {
                file2 = new File(f.a(f2442c, str, 4, false), "x5.tbs.decouple");
                if (!file2.exists() || com.tencent.smtt.utils.a.a(f2442c, file2) != i2) {
                    i3++;
                    file = file2;
                } else {
                    StringBuilder o = a.o("local tbs version fond,path = ");
                    o.append(file2.getAbsolutePath());
                    TbsLog.i(LOGTAG, o.toString());
                }
            } else {
                StringBuilder o2 = a.o("local tbs version fond,path = ");
                o2.append(file2.getAbsolutePath());
                TbsLog.i(LOGTAG, o2.toString());
            }
            return file2;
        }
        return file;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:34:0x0112
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:86)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @android.annotation.TargetApi(11)
    public static boolean a(java.lang.String r32, int r33, boolean r34, boolean r35, boolean r36) throws java.lang.Exception {
        /*
        // Method dump skipped, instructions count: 2037
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
                file = new File(f.a(f2442c, str, 4, false), getOverSea(f2442c) ? "x5.oversea.tbs.org" : "x5.tbs.org");
                if (!file.exists()) {
                    TbsLog.i(LOGTAG, "can not find local backup core file");
                } else if (com.tencent.smtt.utils.a.a(f2442c, file) == i2) {
                    StringBuilder o = a.o("local tbs version fond,path = ");
                    o.append(file.getAbsolutePath());
                    TbsLog.i(LOGTAG, o.toString());
                    break;
                } else {
                    TbsLog.i(LOGTAG, "version is not match");
                }
            }
            i3++;
        }
        return file;
    }

    public static JSONArray a(boolean z) {
        File file;
        boolean z2;
        JSONArray jSONArray = new JSONArray();
        String[] coreProviderAppList = TbsShareManager.getCoreProviderAppList();
        for (String str : coreProviderAppList) {
            if (z) {
                file = new File(f.a(f2442c, str, 4, false), getOverSea(f2442c) ? "x5.oversea.tbs.org" : "x5.tbs.org");
            } else {
                file = new File(f.a(f2442c, str, 4, false), "x5.tbs.decouple");
            }
            if (file.exists()) {
                long a2 = (long) com.tencent.smtt.utils.a.a(f2442c, file);
                if (a2 > 0) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= jSONArray.length()) {
                            z2 = false;
                            break;
                        } else if (((long) jSONArray.optInt(i2)) == a2) {
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
