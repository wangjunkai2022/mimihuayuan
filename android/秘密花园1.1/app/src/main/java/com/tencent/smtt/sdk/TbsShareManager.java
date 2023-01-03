package com.tencent.smtt.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.multidex.MultiDexExtractor;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.TbsLog;
import com.umeng.commonsdk.debug.UMRTLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

/* loaded from: classes.dex */
public class TbsShareManager {
    public static Context a = null;
    public static boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public static String f2478c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f2479d = null;

    /* renamed from: e  reason: collision with root package name */
    public static int f2480e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static String f2481f = null;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f2482g = false;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f2483h = false;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2484i = false;

    /* renamed from: j  reason: collision with root package name */
    public static String f2485j = null;

    /* renamed from: k  reason: collision with root package name */
    public static boolean f2486k = false;

    /* renamed from: l  reason: collision with root package name */
    public static boolean f2487l = false;
    public static boolean mHasQueryed = false;

    public static void a(Context context) {
        TbsLog.i("TbsShareManager", "shareTbsCore #1");
        try {
            TbsLinuxToolsJni tbsLinuxToolsJni = new TbsLinuxToolsJni(context);
            a(context, tbsLinuxToolsJni, l.a().q(context));
            File r = l.a().r(context);
            TbsLog.i("TbsShareManager", "shareTbsCore tbsShareDir is " + r.getAbsolutePath());
            tbsLinuxToolsJni.a(r.getAbsolutePath(), "755");
        } catch (Throwable th) {
            StringBuilder o = f.b.a.a.a.o("shareTbsCore tbsShareDir error is ");
            o.append(th.getMessage());
            o.append(" ## ");
            o.append(th.getCause());
            TbsLog.i("TbsShareManager", o.toString());
            th.printStackTrace();
        }
    }

    public static void b(Context context) {
        try {
            a(context, new TbsLinuxToolsJni(context), l.a().p(context));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String c(Context context) {
        j(context);
        return f2479d;
    }

    public static int d(Context context) {
        return a(context, true);
    }

    public static Context e(Context context) {
        j(context);
        String str = f2481f;
        Context context2 = null;
        if (str != null) {
            Context packageContext = getPackageContext(context, str, true);
            if (l.a().f(packageContext)) {
                context2 = packageContext;
            }
        }
        return f2478c != null ? a : context2;
    }

    public static synchronized String f(Context context) {
        BufferedInputStream bufferedInputStream;
        synchronized (TbsShareManager.class) {
            try {
                File tbsShareFile = getTbsShareFile(context, "core_info");
                if (tbsShareFile == null) {
                    return null;
                }
                bufferedInputStream = new BufferedInputStream(new FileInputStream(tbsShareFile));
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    String property = properties.getProperty("core_packagename", "");
                    if (!"".equals(property)) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception unused) {
                        }
                        return property;
                    }
                    try {
                        bufferedInputStream.close();
                    } catch (Exception unused2) {
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    th.printStackTrace();
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
            }
        }
    }

    public static int findCoreForThirdPartyApp(Context context) {
        n(context);
        TbsLog.i("TbsShareManager", "core_info mAvailableCoreVersion is " + f2480e + " mAvailableCorePath is " + f2479d + " mSrcPackageName is " + f2481f);
        if (f2481f == null) {
            TbsLog.e("TbsShareManager", "mSrcPackageName is null !!!");
        }
        String str = f2481f;
        if (str != null && str.equals("AppDefined")) {
            if (f2480e != l.a().a(f2478c)) {
                f2480e = 0;
                f2479d = null;
                f2481f = null;
                StringBuilder o = f.b.a.a.a.o("check AppDefined core is error src is ");
                o.append(f2480e);
                o.append(" dest is ");
                o.append(l.a().a(f2478c));
                TbsLog.i("TbsShareManager", o.toString());
            }
        } else if (!k(context) && !l(context)) {
            f2480e = 0;
            f2479d = null;
            f2481f = null;
            TbsLog.i("TbsShareManager", "core_info error checkCoreInfo is false and checkCoreInOthers is false ");
        }
        if (f2480e > 0) {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if ((!("com.tencent.android.qqdownloader".equals(applicationInfo.packageName) || "com.jd.jrapp".equals(applicationInfo.packageName)) ? QbSdk.a(context, f2480e) : false) || f2482g) {
                f2480e = 0;
                f2479d = null;
                f2481f = null;
                TbsLog.i("TbsShareManager", "core_info error QbSdk.isX5Disabled ");
            }
        }
        return f2480e;
    }

    public static boolean forceLoadX5FromTBSDemo(Context context) {
        int sharedTbsCoreVersion;
        if (context == null || l.a().a(context, (File[]) null) || (sharedTbsCoreVersion = getSharedTbsCoreVersion(context, TbsConfig.APP_DEMO)) <= 0) {
            return false;
        }
        writeProperties(context, Integer.toString(sharedTbsCoreVersion), TbsConfig.APP_DEMO, l.a().q(getPackageContext(context, TbsConfig.APP_DEMO, true)).getAbsolutePath(), UMRTLog.RTLOG_ENABLE);
        return true;
    }

    public static void forceToLoadX5ForThirdApp(Context context, boolean z) {
        File r;
        int a2;
        try {
            if (QbSdk.isNeedInitX5FirstTime() && isThirdPartyApp(context) && !QbSdk.getOnlyDownload() && (r = l.a().r(context)) != null) {
                if (z && new File(r, "core_info").exists()) {
                    return;
                }
                if (f2478c != null && (a2 = l.a().a(f2478c)) > 0) {
                    f2479d = f2478c;
                    f2481f = "AppDefined";
                    f2480e = a2;
                    TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp #1 -- mAvailableCoreVersion: " + f2480e + " " + Log.getStackTraceString(new Throwable("#")));
                    writeProperties(context, Integer.toString(f2480e), f2481f, f2479d, Integer.toString(1));
                    return;
                }
                TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp #1");
                int h2 = h(context);
                int i2 = l.a().i(context);
                TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp coreVersionFromConfig is " + h2);
                TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp coreVersionFromCoreShare is " + i2);
                String[] coreProviderAppList = getCoreProviderAppList();
                for (String str : coreProviderAppList) {
                    int coreShareDecoupleCoreVersion = getCoreShareDecoupleCoreVersion(context, str);
                    if (coreShareDecoupleCoreVersion >= h2 && coreShareDecoupleCoreVersion >= i2 && coreShareDecoupleCoreVersion > 0) {
                        f2479d = l.a().c(context, getPackageContext(context, str, true)).getAbsolutePath();
                        f2481f = str;
                        f2480e = coreShareDecoupleCoreVersion;
                        TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp #2 -- mAvailableCoreVersion: " + f2480e + " " + Log.getStackTraceString(new Throwable("#")));
                        if (QbSdk.canLoadX5FirstTimeThirdApp(context)) {
                            int b2 = com.tencent.smtt.utils.b.b(context);
                            TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp #2");
                            writeProperties(context, Integer.toString(f2480e), f2481f, f2479d, Integer.toString(b2));
                            return;
                        }
                        f2480e = 0;
                        f2479d = null;
                        f2481f = null;
                    }
                }
                for (String str2 : coreProviderAppList) {
                    int sharedTbsCoreVersion = getSharedTbsCoreVersion(context, str2);
                    if (sharedTbsCoreVersion >= h2 && sharedTbsCoreVersion >= i2 && sharedTbsCoreVersion > 0) {
                        f2479d = l.a().b(context, getPackageContext(context, str2, true)).getAbsolutePath();
                        f2481f = str2;
                        f2480e = sharedTbsCoreVersion;
                        TbsLog.i("TbsShareManager", "forceToLoadX5ForThirdApp #3 -- mAvailableCoreVersion: " + f2480e + " " + Log.getStackTraceString(new Throwable("#")));
                        if (QbSdk.canLoadX5FirstTimeThirdApp(context)) {
                            writeProperties(context, Integer.toString(f2480e), f2481f, f2479d, Integer.toString(com.tencent.smtt.utils.b.b(context)));
                            return;
                        }
                        f2480e = 0;
                        f2479d = null;
                        f2481f = null;
                    }
                }
                if (TbsPVConfig.getInstance(a).isDisableHostBackupCore()) {
                    return;
                }
                if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                    for (String str3 : coreProviderAppList) {
                        int backupCoreVersion = getBackupCoreVersion(context, str3);
                        if (backupCoreVersion >= h2 && backupCoreVersion >= i2 && backupCoreVersion > 0) {
                            TbsLog.i("TbsShareManager", "find host backup core to unzip forceload coreVersion is " + backupCoreVersion + " packageName is " + str3);
                            l.a().a(context, getBackupCoreFile(context, str3), backupCoreVersion);
                            TbsLog.i("TbsShareManager", "find host backup core to unzip forceload after unzip ");
                            return;
                        }
                        int backupDecoupleCoreVersion = getBackupDecoupleCoreVersion(context, str3);
                        if (backupDecoupleCoreVersion >= h2 && backupDecoupleCoreVersion >= i2 && backupDecoupleCoreVersion > 0) {
                            TbsLog.i("TbsShareManager", "find host backup core to unzip forceload decouple coreVersion is " + backupDecoupleCoreVersion + " packageName is " + str3);
                            l.a().a(context, getBackupCoreFile(context, str3), backupDecoupleCoreVersion);
                            TbsLog.i("TbsShareManager", "find host backup decouple core to unzip forceload after unzip ");
                            return;
                        }
                    }
                    return;
                }
                TbsLog.i("TbsShareManager", "in mainthread so do not find host backup core to install ");
            }
        } catch (Exception unused) {
        }
    }

    public static String g(Context context) {
        try {
            n(context);
            if (f2479d != null && !TextUtils.isEmpty(f2479d)) {
                return f2479d + File.separator + "res.apk";
            }
            return null;
        } catch (Throwable th) {
            Log.getStackTraceString(th);
            return null;
        }
    }

    public static File getBackupCoreFile(Context context, String str) {
        try {
            File file = new File(new File(com.tencent.smtt.utils.f.a(getPackageContext(context, str, false), 4)), "x5.tbs.org");
            if (file.exists()) {
                return file;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int getBackupCoreVersion(Context context, String str) {
        try {
            File file = new File(new File(com.tencent.smtt.utils.f.a(getPackageContext(context, str, false), 4)), "x5.tbs.org");
            if (file.exists()) {
                return com.tencent.smtt.utils.a.b(file);
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    public static File getBackupDecoupleCoreFile(Context context, String str) {
        try {
            File file = new File(new File(com.tencent.smtt.utils.f.a(getPackageContext(context, str, true), 4)), "x5.tbs.decouple");
            if (file.exists()) {
                return file;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int getBackupDecoupleCoreVersion(Context context, String str) {
        try {
            File file = new File(new File(com.tencent.smtt.utils.f.a(getPackageContext(context, str, false), 4)), "x5.tbs.decouple");
            if (file.exists()) {
                return com.tencent.smtt.utils.a.b(file);
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    public static boolean getCoreDisabled() {
        return f2482g;
    }

    public static boolean getCoreFormOwn() {
        return f2486k;
    }

    public static String[] getCoreProviderAppList() {
        return new String[]{TbsConfig.APP_DEMO, TbsConfig.APP_WX, TbsConfig.APP_QQ, TbsConfig.APP_QZONE};
    }

    public static int getCoreShareDecoupleCoreVersion(Context context, String str) {
        Context packageContext = getPackageContext(context, str, true);
        if (packageContext != null) {
            return l.a().h(packageContext);
        }
        return 0;
    }

    public static String getHostCorePathAppDefined() {
        return f2478c;
    }

    public static long getHostCoreVersions(Context context) {
        String[] coreProviderAppList;
        long sharedTbsCoreVersion;
        long j2;
        long j3 = 0;
        for (String str : getCoreProviderAppList()) {
            if (str.equalsIgnoreCase(TbsConfig.APP_WX)) {
                sharedTbsCoreVersion = getSharedTbsCoreVersion(context, str);
                j2 = 10000000000L;
            } else if (str.equalsIgnoreCase(TbsConfig.APP_QQ)) {
                sharedTbsCoreVersion = getSharedTbsCoreVersion(context, str);
                j2 = 100000;
            } else {
                if (str.equalsIgnoreCase(TbsConfig.APP_QZONE)) {
                    j3 += getSharedTbsCoreVersion(context, str);
                }
            }
            j3 = (sharedTbsCoreVersion * j2) + j3;
        }
        return j3;
    }

    public static Context getPackageContext(Context context, String str, boolean z) {
        if (z) {
            try {
                if (!context.getPackageName().equals(str) && TbsPVConfig.getInstance(context).isEnableNoCoreGray()) {
                    TbsLog.i("TbsShareManager", "gray no core app,skip get context");
                    return null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return context.createPackageContext(str, 2);
    }

    public static int getSharedTbsCoreVersion(Context context, String str) {
        Context packageContext = getPackageContext(context, str, true);
        if (packageContext != null) {
            return l.a().i(packageContext);
        }
        return 0;
    }

    public static File getTbsShareFile(Context context, String str) {
        File r = l.a().r(context);
        if (r == null) {
            return null;
        }
        File file = new File(r, str);
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

    public static synchronized int h(Context context) {
        synchronized (TbsShareManager.class) {
            TbsLog.i("TbsShareManager", "readCoreVersionFromConfig #1");
            BufferedInputStream bufferedInputStream = null;
            try {
                File tbsShareFile = getTbsShareFile(context, "core_info");
                if (tbsShareFile == null) {
                    TbsLog.i("TbsShareManager", "readCoreVersionFromConfig #2");
                    return 0;
                }
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(tbsShareFile));
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream2);
                    String property = properties.getProperty("core_version", "");
                    if (!"".equals(property)) {
                        TbsLog.i("TbsShareManager", "readCoreVersionFromConfig #3");
                        int max = Math.max(Integer.parseInt(property), 0);
                        try {
                            bufferedInputStream2.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        return max;
                    }
                    TbsLog.i("TbsShareManager", "readCoreVersionFromConfig #4");
                    try {
                        bufferedInputStream2.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    return 0;
                } catch (Throwable th) {
                    bufferedInputStream = bufferedInputStream2;
                    th = th;
                    th.printStackTrace();
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    TbsLog.i("TbsShareManager", "readCoreVersionFromConfig #5");
                    return -2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static boolean i(Context context) {
        try {
            if (f2480e == 0) {
                findCoreForThirdPartyApp(context);
            }
            if (f2480e == 0) {
                TbsLog.addLog(TbsLog.TBSLOG_CODE_SDK_NO_SHARE_X5CORE, null, new Object[0]);
                return false;
            }
            if (f2478c == null) {
                if (f2480e != 0 && getSharedTbsCoreVersion(context, f2481f) == f2480e) {
                    return true;
                }
            } else if (f2480e != 0 && l.a().a(f2478c) == f2480e) {
                return true;
            }
            if (l(context)) {
                return true;
            }
            TbsCoreLoadStat tbsCoreLoadStat = TbsCoreLoadStat.getInstance();
            tbsCoreLoadStat.a(context, TbsListener.ErrorCode.INFO_CORE_EXIST_NOT_LOAD, new Throwable("mAvailableCoreVersion=" + f2480e + "; mSrcPackageName=" + f2481f + "; getSharedTbsCoreVersion(ctx, mSrcPackageName) is " + getSharedTbsCoreVersion(context, f2481f) + "; getHostCoreVersions is " + getHostCoreVersions(context)));
            f2479d = null;
            f2480e = 0;
            TbsLog.addLog(TbsLog.TBSLOG_CODE_SDK_CONFLICT_X5CORE, null, new Object[0]);
            QbSdk.a(context, "TbsShareManager::isShareTbsCoreAvailableInner forceSysWebViewInner!");
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            TbsLog.addLog(TbsLog.TBSLOG_CODE_SDK_UNAVAIL_X5CORE, null, new Object[0]);
            return false;
        }
    }

    public static boolean isThirdPartyApp(Context context) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (a != null && a.equals(context.getApplicationContext())) {
            return b;
        }
        Context applicationContext = context.getApplicationContext();
        a = applicationContext;
        String packageName = applicationContext.getPackageName();
        for (String str : getCoreProviderAppList()) {
            if (packageName.equals(str)) {
                b = false;
                return false;
            }
        }
        b = true;
        return true;
    }

    public static boolean j(Context context) {
        return b(context, true);
    }

    public static boolean k(Context context) {
        String str = f2481f;
        if (str == null) {
            return false;
        }
        return f2480e == getSharedTbsCoreVersion(context, str) || f2480e == getCoreShareDecoupleCoreVersion(context, f2481f);
    }

    public static boolean l(Context context) {
        if (QbSdk.getOnlyDownload()) {
            return false;
        }
        String[] coreProviderAppList = getCoreProviderAppList();
        for (String str : coreProviderAppList) {
            int i2 = f2480e;
            if (i2 > 0 && i2 == getSharedTbsCoreVersion(context, str)) {
                Context packageContext = getPackageContext(context, str, true);
                if (l.a().f(context)) {
                    f2479d = l.a().b(context, packageContext).getAbsolutePath();
                    f2481f = str;
                    return true;
                }
            }
        }
        for (String str2 : coreProviderAppList) {
            int i3 = f2480e;
            if (i3 > 0 && i3 == getCoreShareDecoupleCoreVersion(context, str2)) {
                Context packageContext2 = getPackageContext(context, str2, true);
                if (l.a().f(context)) {
                    f2479d = l.a().c(context, packageContext2).getAbsolutePath();
                    f2481f = str2;
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean m(Context context) {
        if (context == null) {
            return false;
        }
        writeProperties(context, Integer.toString(0), "", "", Integer.toString(0));
        return true;
    }

    public static void n(Context context) {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        File tbsShareFile;
        if (f2487l) {
            return;
        }
        synchronized (TbsShareManager.class) {
            if (f2487l) {
                return;
            }
            try {
                tbsShareFile = getTbsShareFile(context, "core_info");
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
            }
            if (tbsShareFile == null) {
                return;
            }
            bufferedInputStream = new BufferedInputStream(new FileInputStream(tbsShareFile));
            try {
                Properties properties = new Properties();
                properties.load(bufferedInputStream);
                String property = properties.getProperty("core_version", "");
                if (!"".equals(property)) {
                    f2480e = Math.max(Integer.parseInt(property), 0);
                    TbsLog.i("TbsShareManager", "loadProperties -- mAvailableCoreVersion: " + f2480e + " " + Log.getStackTraceString(new Throwable("#")));
                }
                String property2 = properties.getProperty("core_packagename", "");
                if (!"".equals(property2)) {
                    f2481f = property2;
                }
                if (f2481f != null && a != null) {
                    if (f2481f.equals(a.getPackageName())) {
                        f2486k = true;
                    } else {
                        f2486k = false;
                    }
                }
                String property3 = properties.getProperty("core_path", "");
                if (!"".equals(property3)) {
                    f2479d = property3;
                }
                String property4 = properties.getProperty("app_version", "");
                if (!"".equals(property4)) {
                    f2485j = property4;
                }
                f2482g = Boolean.parseBoolean(properties.getProperty("core_disabled", "false"));
                f2487l = true;
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
    }

    public static void setHostCorePathAppDefined(String str) {
        f2478c = str;
    }

    public static synchronized void writeCoreInfoForThirdPartyApp(Context context, int i2, boolean z) {
        synchronized (TbsShareManager.class) {
            TbsLog.i("TbsShareManager", "writeCoreInfoForThirdPartyApp coreVersion is " + i2);
            if (i2 == 0) {
                m(context);
                TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-401);
                return;
            }
            int h2 = h(context);
            TbsLog.i("TbsShareManager", "writeCoreInfoForThirdPartyApp coreVersionFromConfig is " + h2);
            if (h2 < 0) {
                TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-402);
            } else if (i2 == h2) {
                if (d(context) == 0 && !z) {
                    a(context, i2);
                }
                c(context, z);
                TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-403);
            } else if (i2 < h2) {
                m(context);
                TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-404);
            } else {
                int i3 = l.a().i(context);
                TbsLog.i("TbsShareManager", "writeCoreInfoForThirdPartyApp coreVersionFromCoreShare is " + i3);
                if (i2 < i3) {
                    m(context);
                    TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-404);
                    return;
                }
                String[] d2 = d(context, z);
                boolean z2 = false;
                if (f2478c != null) {
                    if (i2 == l.a().a(f2478c)) {
                        writeProperties(context, Integer.toString(i2), "AppDefined", f2478c, Integer.toString(1));
                        File tbsShareFile = getTbsShareFile(context, "core_info");
                        if (!f2484i && tbsShareFile != null) {
                            TbsLinuxToolsJni tbsLinuxToolsJni = new TbsLinuxToolsJni(a);
                            tbsLinuxToolsJni.a(tbsShareFile.getAbsolutePath(), "644");
                            tbsLinuxToolsJni.a(l.a().r(context).getAbsolutePath(), "755");
                            f2484i = true;
                        }
                        return;
                    } else if (i2 > l.a().a(f2478c)) {
                        for (String str : d2) {
                            if (i2 == getSharedTbsCoreVersion(context, str)) {
                                Context packageContext = getPackageContext(context, str, true);
                                String absolutePath = l.a().q(packageContext).getAbsolutePath();
                                com.tencent.smtt.utils.b.b(context);
                                if (l.a().f(packageContext)) {
                                    com.tencent.smtt.utils.f.a(new File(absolutePath), new File(f2478c), new FileFilter() { // from class: com.tencent.smtt.sdk.TbsShareManager.1
                                        @Override // java.io.FileFilter
                                        public boolean accept(File file) {
                                            return !file.getName().endsWith(MultiDexExtractor.DEX_SUFFIX);
                                        }
                                    });
                                    writeProperties(context, Integer.toString(i2), "AppDefined", f2478c, Integer.toString(1));
                                    File tbsShareFile2 = getTbsShareFile(context, "core_info");
                                    if (!f2484i && tbsShareFile2 != null) {
                                        TbsLinuxToolsJni tbsLinuxToolsJni2 = new TbsLinuxToolsJni(a);
                                        tbsLinuxToolsJni2.a(tbsShareFile2.getAbsolutePath(), "644");
                                        tbsLinuxToolsJni2.a(l.a().r(context).getAbsolutePath(), "755");
                                        f2484i = true;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                }
                for (String str2 : d2) {
                    if (i2 == getSharedTbsCoreVersion(context, str2)) {
                        Context packageContext2 = getPackageContext(context, str2, true);
                        String absolutePath2 = l.a().q(packageContext2).getAbsolutePath();
                        int b2 = com.tencent.smtt.utils.b.b(context);
                        if (l.a().f(packageContext2)) {
                            if (!str2.equals(context.getApplicationContext().getPackageName())) {
                                TbsLog.i("TbsShareManager", "thirdAPP pre--> delete old core_share Directory:" + i2);
                                j.a(a).a("remove_old_core", 1);
                            }
                            writeProperties(context, Integer.toString(i2), str2, absolutePath2, Integer.toString(b2));
                            File tbsShareFile3 = getTbsShareFile(context, "core_info");
                            if (!f2484i && tbsShareFile3 != null) {
                                TbsLinuxToolsJni tbsLinuxToolsJni3 = new TbsLinuxToolsJni(a);
                                tbsLinuxToolsJni3.a(tbsShareFile3.getAbsolutePath(), "644");
                                tbsLinuxToolsJni3.a(l.a().r(context).getAbsolutePath(), "755");
                                f2484i = true;
                            }
                            z2 = true;
                        }
                    } else {
                        if (i2 == getCoreShareDecoupleCoreVersion(context, str2)) {
                            Context packageContext3 = getPackageContext(context, str2, true);
                            String absolutePath3 = l.a().p(packageContext3).getAbsolutePath();
                            int b3 = com.tencent.smtt.utils.b.b(context);
                            if (l.a().f(packageContext3)) {
                                if (!str2.equals(context.getApplicationContext().getPackageName())) {
                                    TbsLog.i("TbsShareManager", "thirdAPP pre--> delete old core_share Directory:" + i2);
                                    com.tencent.smtt.utils.f.b(l.a().q(context));
                                    TbsLog.i("TbsShareManager", "thirdAPP success--> delete old core_share Directory");
                                }
                                writeProperties(context, Integer.toString(i2), str2, absolutePath3, Integer.toString(b3));
                                File tbsShareFile4 = getTbsShareFile(context, "core_info");
                                if (!f2484i && tbsShareFile4 != null) {
                                    TbsLinuxToolsJni tbsLinuxToolsJni4 = new TbsLinuxToolsJni(a);
                                    tbsLinuxToolsJni4.a(tbsShareFile4.getAbsolutePath(), "644");
                                    tbsLinuxToolsJni4.a(l.a().r(context).getAbsolutePath(), "755");
                                    f2484i = true;
                                }
                                z2 = true;
                            }
                        } else {
                            continue;
                        }
                    }
                    if (!z2 && !z) {
                        a(context, i2);
                    }
                }
                if (!z2) {
                    a(context, i2);
                }
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:55:0x00e4). Please submit an issue!!! */
    public static void writeProperties(Context context, String str, String str2, String str3, String str4) {
        BufferedOutputStream bufferedOutputStream;
        File tbsShareFile;
        Properties properties;
        int i2;
        BufferedOutputStream bufferedOutputStream2;
        TbsLog.i("TbsShareManager", "writeProperties coreVersion is " + str + " corePackageName is " + str2 + " corePath is " + str3);
        StringBuilder sb = new StringBuilder();
        sb.append("writeProperties -- stack: ");
        sb.append(Log.getStackTraceString(new Throwable("#")));
        TbsLog.i("TbsShareManager", sb.toString());
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                tbsShareFile = getTbsShareFile(context, "core_info");
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (tbsShareFile == null) {
            TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-405);
            return;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(tbsShareFile));
        try {
            properties = new Properties();
            properties.load(bufferedInputStream2);
            try {
                i2 = Integer.parseInt(str);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 != 0) {
                properties.setProperty("core_version", str);
                properties.setProperty("core_disabled", String.valueOf(false));
                properties.setProperty("core_packagename", str2);
                properties.setProperty("core_path", str3);
                properties.setProperty("app_version", str4);
            } else {
                properties.setProperty("core_disabled", String.valueOf(true));
            }
            bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(tbsShareFile));
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
            bufferedInputStream = bufferedInputStream2;
        }
        try {
            properties.store(bufferedOutputStream2, (String) null);
            f2487l = false;
            TbsDownloadConfig.getInstance(a).setDownloadInterruptCode(-406);
            try {
                bufferedInputStream2.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            bufferedOutputStream2.close();
        } catch (Throwable th3) {
            bufferedInputStream = bufferedInputStream2;
            bufferedOutputStream = bufferedOutputStream2;
            th = th3;
            try {
                th.printStackTrace();
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
            } catch (Throwable th4) {
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                if (bufferedOutputStream != null) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
                throw th4;
            }
        }
    }

    public static String[] d(Context context, boolean z) {
        if (QbSdk.getOnlyDownload()) {
            return new String[]{context.getApplicationContext().getPackageName()};
        }
        return z ? new String[]{context.getApplicationContext().getPackageName()} : getCoreProviderAppList();
    }

    public static void c(Context context, boolean z) {
        BufferedOutputStream bufferedOutputStream;
        File tbsShareFile;
        Properties properties;
        BufferedInputStream bufferedInputStream = null;
        try {
            tbsShareFile = getTbsShareFile(context, "core_info");
        } catch (Throwable th) {
            th = th;
            bufferedOutputStream = null;
        }
        if (tbsShareFile == null) {
            return;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(tbsShareFile));
        try {
            properties = new Properties();
            properties.load(bufferedInputStream2);
            properties.setProperty("core_disabled", String.valueOf(false));
            if (z) {
                String absolutePath = l.a().q(context).getAbsolutePath();
                String packageName = context.getApplicationContext().getPackageName();
                int b2 = com.tencent.smtt.utils.b.b(context);
                properties.setProperty("core_packagename", packageName);
                properties.setProperty("core_path", absolutePath);
                properties.setProperty("app_version", String.valueOf(b2));
            }
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(tbsShareFile));
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
        try {
            properties.store(bufferedOutputStream, (String) null);
            try {
                bufferedInputStream2.close();
            } catch (Exception unused) {
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = bufferedInputStream2;
            try {
                th.printStackTrace();
                if (bufferedOutputStream == null) {
                    return;
                }
                bufferedOutputStream.close();
            } finally {
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                if (bufferedOutputStream != null) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception unused3) {
                    }
                }
            }
        }
        try {
            bufferedOutputStream.close();
        } catch (Exception unused4) {
        }
    }

    public static boolean b(Context context, boolean z) {
        if (i(context)) {
            return true;
        }
        if (z) {
            QbSdk.a(context, "TbsShareManager::isShareTbsCoreAvailable forceSysWebViewInner!");
            return false;
        }
        return false;
    }

    public static void a(Context context, TbsLinuxToolsJni tbsLinuxToolsJni, File file) {
        File[] listFiles;
        TbsLog.i("TbsShareManager", "shareAllDirsAndFiles #1");
        if (file != null && file.exists() && file.isDirectory()) {
            StringBuilder o = f.b.a.a.a.o("shareAllDirsAndFiles dir is ");
            o.append(file.getAbsolutePath());
            TbsLog.i("TbsShareManager", o.toString());
            tbsLinuxToolsJni.a(file.getAbsolutePath(), "755");
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    if (file2.getAbsolutePath().indexOf(".so") > 0) {
                        tbsLinuxToolsJni.a(file2.getAbsolutePath(), "755");
                    } else {
                        tbsLinuxToolsJni.a(file2.getAbsolutePath(), "644");
                    }
                } else if (file2.isDirectory()) {
                    a(context, tbsLinuxToolsJni, file2);
                } else {
                    TbsLog.e("TbsShareManager", "unknown file type.", true);
                }
            }
        }
    }

    public static String a() {
        return f2479d;
    }

    public static int a(Context context, boolean z) {
        b(context, z);
        return f2480e;
    }

    public static void a(Context context, int i2) {
        if (TbsPVConfig.getInstance(a).isDisableHostBackupCore() || !l.a().t(context)) {
            return;
        }
        String[] strArr = {TbsConfig.APP_DEMO, TbsConfig.APP_WX, TbsConfig.APP_QQ, TbsConfig.APP_QZONE, context.getPackageName()};
        StringBuilder o = f.b.a.a.a.o("find host backup core to unzip #1");
        o.append(Log.getStackTraceString(new Throwable()));
        TbsLog.i("TbsShareManager", o.toString());
        int i3 = 0;
        while (true) {
            if (i3 >= 5) {
                break;
            }
            String str = strArr[i3];
            if (i2 == getBackupCoreVersion(context, str)) {
                if (l.a().f(getPackageContext(context, str, false))) {
                    File backupCoreFile = getBackupCoreFile(context, str);
                    if (com.tencent.smtt.utils.a.a(context, backupCoreFile, 0L, i2)) {
                        TbsLog.i("TbsShareManager", "find host backup core to unzip normal coreVersion is " + i2 + " packageName is " + str);
                        l.a().b(context, backupCoreFile, i2);
                        break;
                    }
                } else {
                    continue;
                }
                i3++;
            } else {
                if (i2 == getBackupDecoupleCoreVersion(context, str) && l.a().f(getPackageContext(context, str, false))) {
                    File backupDecoupleCoreFile = getBackupDecoupleCoreFile(context, str);
                    if (com.tencent.smtt.utils.a.a(context, backupDecoupleCoreFile, 0L, i2)) {
                        TbsLog.i("TbsShareManager", "find host backup core to unzip decouple coreVersion is " + i2 + " packageName is " + str);
                        l.a().b(context, backupDecoupleCoreFile, i2);
                        break;
                    }
                }
                i3++;
            }
        }
        l.a().b();
    }
}
