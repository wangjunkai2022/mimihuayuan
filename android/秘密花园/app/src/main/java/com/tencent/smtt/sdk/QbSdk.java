package com.tencent.smtt.sdk;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.ValueCallback;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.os.EnvironmentCompat;
import androidx.core.provider.FontsContractCompat;
import com.tencent.smtt.export.external.DexClassLoaderProvider;
import com.tencent.smtt.export.external.DexLoader;
import com.tencent.smtt.export.external.interfaces.IX5WebViewBase;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsDownloadUpload;
import com.tencent.smtt.sdk.TbsDownloader;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.sdk.a.c;
import com.tencent.smtt.sdk.b.a.d;
import com.tencent.smtt.utils.FileProvider;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.TbsLogClient;
import com.tencent.smtt.utils.f;
import com.tencent.smtt.utils.k;
import com.tencent.smtt.utils.m;
import f.b.a.a.a;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class QbSdk {
    public static String A = null;
    public static boolean B = false;
    public static boolean C = true;
    public static TbsListener D = null;
    public static TbsListener E = null;
    public static final int EXTENSION_INIT_FAILURE = -99999;
    public static boolean F = false;
    public static final String FILERADER_MENUDATA = "menuData";
    public static boolean G = false;
    public static final String LOGIN_TYPE_KEY_PARTNER_CALL_POS = "PosID";
    public static final String LOGIN_TYPE_KEY_PARTNER_ID = "ChannelID";
    public static final String PARAM_KEY_FEATUREID = "param_key_featureid";
    public static final String PARAM_KEY_FUNCTIONID = "param_key_functionid";
    public static final String PARAM_KEY_POSITIONID = "param_key_positionid";
    public static final int QBMODE = 2;
    public static final String SVNVERSION = "jnizz";
    public static final int TBSMODE = 1;
    public static final String TID_QQNumber_Prefix = "QQ:";
    public static final int VERSION = 1;
    public static boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f2407c = true;

    /* renamed from: d  reason: collision with root package name */
    public static String f2408d = null;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f2409e = false;

    /* renamed from: f  reason: collision with root package name */
    public static long f2410f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static long f2411g = 0;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2413i = true;
    public static boolean isDefaultDialog = false;

    /* renamed from: j  reason: collision with root package name */
    public static boolean f2414j = true;

    /* renamed from: k  reason: collision with root package name */
    public static boolean f2415k = false;
    public static boolean mDisableUseHostBackupCore = false;
    public static int o = 0;
    public static String p = "";
    public static Class<?> q = null;
    public static Object r = null;
    public static boolean s = false;
    public static boolean sIsVersionPrinted = false;
    public static String[] t = null;
    public static String u = "NULL";
    public static String v = "UNKNOWN";
    public static boolean w = false;
    public static int x = 0;
    public static int y = 170;
    public static String z;

    /* renamed from: h  reason: collision with root package name */
    public static Object f2412h = new Object();
    public static boolean a = false;

    /* renamed from: l  reason: collision with root package name */
    public static volatile boolean f2416l = a;

    /* renamed from: m  reason: collision with root package name */
    public static TbsListener f2417m = new TbsListener() { // from class: com.tencent.smtt.sdk.QbSdk.7
        @Override // com.tencent.smtt.sdk.TbsListener
        public void onDownloadFinish(int i2) {
            if (TbsDownloader.needDownloadDecoupleCore()) {
                TbsLog.i("QbSdk", "onDownloadFinish needDownloadDecoupleCore is true", true);
                TbsDownloader.a = true;
                return;
            }
            TbsLog.i("QbSdk", "onDownloadFinish needDownloadDecoupleCore is false", true);
            TbsDownloader.a = false;
            if (QbSdk.D != null) {
                QbSdk.D.onDownloadFinish(i2);
            }
            if (QbSdk.E != null) {
                QbSdk.E.onDownloadFinish(i2);
            }
        }

        @Override // com.tencent.smtt.sdk.TbsListener
        public void onDownloadProgress(int i2) {
            if (QbSdk.E != null) {
                QbSdk.E.onDownloadProgress(i2);
            }
            if (QbSdk.D != null) {
                QbSdk.D.onDownloadProgress(i2);
            }
        }

        @Override // com.tencent.smtt.sdk.TbsListener
        public void onInstallFinish(int i2) {
            if (i2 != 200) {
            }
            QbSdk.setTBSInstallingStatus(false);
            TbsDownloader.a = false;
            if (TbsDownloader.startDecoupleCoreIfNeeded()) {
                TbsDownloader.a = true;
            } else {
                TbsDownloader.a = false;
            }
            if (QbSdk.D != null) {
                QbSdk.D.onInstallFinish(i2);
            }
            if (QbSdk.E != null) {
                QbSdk.E.onInstallFinish(i2);
            }
        }
    };
    public static String KEY_SET_SENDREQUEST_AND_UPLOAD = "SET_SENDREQUEST_AND_UPLOAD";
    public static Map<String, Object> n = null;

    /* loaded from: classes.dex */
    public interface PreInitCallback {
        void onCoreInitFinished();

        void onViewInitFinished(boolean z);
    }

    public static boolean b(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null) {
            return false;
        }
        try {
            if (!context.getApplicationInfo().packageName.contains("com.tencent.portfolio")) {
                return true;
            }
            TbsLog.i("QbSdk", "clearPluginConfigFile #1");
            String string = TbsDownloadConfig.getInstance(context).mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_APP_VERSIONNAME, null);
            String str = context.getPackageManager().getPackageInfo("com.tencent.portfolio", 0).versionName;
            TbsLog.i("QbSdk", "clearPluginConfigFile oldAppVersionName is " + string + " newAppVersionName is " + str);
            if (string == null || string.contains(str) || (sharedPreferences = context.getSharedPreferences("plugin_setting", 0)) == null) {
                return true;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.clear();
            edit.commit();
            TbsLog.i("QbSdk", "clearPluginConfigFile done");
            return true;
        } catch (Throwable th) {
            StringBuilder o2 = a.o("clearPluginConfigFile error is ");
            o2.append(th.getMessage());
            TbsLog.i("QbSdk", o2.toString());
            return false;
        }
    }

    public static boolean canLoadVideo(Context context) {
        Object a2 = k.a(r, "canLoadVideo", new Class[]{Integer.TYPE}, 0);
        if (a2 == null) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_CANLOADVIDEO_RETURN_NULL);
        } else if (!((Boolean) a2).booleanValue()) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_CANLOADVIDEO_RETURN_FALSE);
        }
        if (a2 == null) {
            return false;
        }
        return ((Boolean) a2).booleanValue();
    }

    public static boolean canLoadX5(Context context) {
        return a(context, false, false);
    }

    public static boolean canLoadX5FirstTimeThirdApp(Context context) {
        String str;
        try {
            context.getApplicationInfo().packageName.contains("com.moji.mjweather");
            if (q == null) {
                File q2 = l.a().q(context);
                if (q2 == null) {
                    TbsLog.e("QbSdk", "QbSdk canLoadX5FirstTimeThirdApp (false) optDir == null");
                    return false;
                }
                File file = new File(TbsShareManager.c(context), "tbs_sdk_extension_dex.jar");
                if (!file.exists()) {
                    TbsLog.e("QbSdk", "QbSdk canLoadX5FirstTimeThirdApp (false) dexFile.exists()=false", true);
                    return false;
                }
                if (TbsShareManager.getHostCorePathAppDefined() != null) {
                    str = TbsShareManager.getHostCorePathAppDefined();
                } else {
                    str = q2.getAbsolutePath();
                }
                TbsLog.i("QbSdk", "QbSdk init optDirExtension #2 is " + str);
                TbsLog.i("QbSdk", "new DexLoader #2 dexFile is " + file.getAbsolutePath());
                t.a().b(context);
                m.a(context);
                q = new DexLoader(file.getParent(), context, new String[]{file.getAbsolutePath()}, str, getSettings()).loadClass("com.tencent.tbs.sdk.extension.TbsSDKExtension");
                if (r == null) {
                    if (TbsShareManager.e(context) == null && TbsShareManager.getHostCorePathAppDefined() == null) {
                        TbsLogReport.getInstance(context.getApplicationContext()).setLoadErrorCode(TbsListener.ErrorCode.HOST_CONTEXT_IS_NULL, "host context is null!");
                        return false;
                    }
                    loadTBSSDKExtension(context, file.getParent());
                }
            }
            Object a2 = k.a(r, "canLoadX5CoreForThirdApp", new Class[0], new Object[0]);
            if (a2 == null || !(a2 instanceof Boolean)) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        } catch (Throwable th) {
            StringBuilder o2 = a.o("canLoadX5FirstTimeThirdApp sys WebView: ");
            o2.append(Log.getStackTraceString(th));
            TbsLog.e("QbSdk", o2.toString());
            return false;
        }
    }

    public static void canOpenFile(final Context context, final String str, final ValueCallback<Boolean> valueCallback) {
        new Thread() { // from class: com.tencent.smtt.sdk.QbSdk.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                t a2 = t.a();
                a2.a(context);
                final boolean a3 = a2.b() ? a2.c().a(context, str) : false;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.smtt.sdk.QbSdk.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        valueCallback.onReceiveValue(Boolean.valueOf(a3));
                    }
                });
            }
        }.start();
    }

    public static boolean canOpenMimeFileType(Context context, String str) {
        if (!a(context, false)) {
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.util.Properties] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean canOpenWebPlus(android.content.Context r8) {
        /*
        // Method dump skipped, instructions count: 292
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.QbSdk.canOpenWebPlus(android.content.Context):boolean");
    }

    public static boolean canUseVideoFeatrue(Context context, int i2) {
        Object a2 = k.a(r, "canUseVideoFeatrue", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        if (a2 == null || !(a2 instanceof Boolean)) {
            return false;
        }
        return ((Boolean) a2).booleanValue();
    }

    public static boolean checkApkExist(Context context, String str) {
        if (str != null && !"".equals(str)) {
            try {
                context.getPackageManager().getApplicationInfo(str, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static boolean checkContentProviderPrivilage(Context context) {
        if (context == null || context.getApplicationInfo().targetSdkVersion < 24 || Build.VERSION.SDK_INT < 24 || TbsConfig.APP_QQ.equals(context.getApplicationInfo().packageName)) {
            return true;
        }
        try {
            if (!TextUtils.isEmpty(context.getPackageManager().getProviderInfo(new ComponentName(context.getPackageName(), "androidx.core.content.FileProvider"), 0).authority)) {
                return true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.resolveContentProvider(context.getApplicationInfo().packageName + ".provider", 128) != null) {
            return true;
        }
        return false;
    }

    public static void checkTbsValidity(Context context) {
        if (context != null && !m.b(context)) {
            TbsLog.e("QbSdk", "sys WebView: SysWebViewForcedBy checkTbsValidity");
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CORE_CHECK_VALIDITY_FALSE);
            forceSysWebView();
        }
    }

    public static void clear(Context context) {
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void clearAllWebViewCache(android.content.Context r5, boolean r6) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "clearAllWebViewCache("
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = ", "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "QbSdk"
            com.tencent.smtt.utils.TbsLog.i(r1, r0)
            r0 = 1
            r2 = 0
            com.tencent.smtt.sdk.WebView r3 = new com.tencent.smtt.sdk.WebView     // Catch: all -> 0x0048
            r3.<init>(r5)     // Catch: all -> 0x0048
            com.tencent.smtt.export.external.extension.interfaces.IX5WebViewClientExtension r3 = r3.getWebViewClientExtension()     // Catch: all -> 0x0048
            if (r3 == 0) goto L_0x005f
            com.tencent.smtt.sdk.t r2 = com.tencent.smtt.sdk.t.a()     // Catch: all -> 0x0045
            if (r2 == 0) goto L_0x0043
            boolean r3 = r2.b()     // Catch: all -> 0x0045
            if (r3 == 0) goto L_0x0043
            com.tencent.smtt.sdk.u r2 = r2.c()     // Catch: all -> 0x0045
            r2.a(r5, r6)     // Catch: all -> 0x0045
        L_0x0043:
            r2 = 1
            goto L_0x005f
        L_0x0045:
            r2 = move-exception
            r3 = 1
            goto L_0x004a
        L_0x0048:
            r2 = move-exception
            r3 = 0
        L_0x004a:
            java.lang.String r4 = "clearAllWebViewCache exception 2 -- "
            java.lang.StringBuilder r4 = f.b.a.a.a.o(r4)
            java.lang.String r2 = android.util.Log.getStackTraceString(r2)
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            com.tencent.smtt.utils.TbsLog.e(r1, r2)
            r2 = r3
        L_0x005f:
            if (r2 == 0) goto L_0x0067
            java.lang.String r5 = "is_in_x5_mode --> no need to clear system webview!"
            com.tencent.smtt.utils.TbsLog.i(r1, r5)
            return
        L_0x0067:
            android.webkit.WebView r2 = new android.webkit.WebView     // Catch: all -> 0x00ae
            r2.<init>(r5)     // Catch: all -> 0x00ae
            java.lang.String r3 = "searchBoxJavaBridge_"
            r2.removeJavascriptInterface(r3)     // Catch: all -> 0x00ae
            java.lang.String r3 = "accessibility"
            r2.removeJavascriptInterface(r3)     // Catch: all -> 0x00ae
            java.lang.String r3 = "accessibilityTraversal"
            r2.removeJavascriptInterface(r3)     // Catch: all -> 0x00ae
            r2.clearCache(r0)     // Catch: all -> 0x00ae
            if (r6 == 0) goto L_0x008a
            android.webkit.CookieSyncManager.createInstance(r5)     // Catch: all -> 0x00ae
            android.webkit.CookieManager r6 = android.webkit.CookieManager.getInstance()     // Catch: all -> 0x00ae
            r6.removeAllCookie()     // Catch: all -> 0x00ae
        L_0x008a:
            android.webkit.WebViewDatabase r6 = android.webkit.WebViewDatabase.getInstance(r5)     // Catch: all -> 0x00ae
            r6.clearUsernamePassword()     // Catch: all -> 0x00ae
            android.webkit.WebViewDatabase r6 = android.webkit.WebViewDatabase.getInstance(r5)     // Catch: all -> 0x00ae
            r6.clearHttpAuthUsernamePassword()     // Catch: all -> 0x00ae
            android.webkit.WebViewDatabase r5 = android.webkit.WebViewDatabase.getInstance(r5)     // Catch: all -> 0x00ae
            r5.clearFormData()     // Catch: all -> 0x00ae
            android.webkit.WebStorage r5 = android.webkit.WebStorage.getInstance()     // Catch: all -> 0x00ae
            r5.deleteAllData()     // Catch: all -> 0x00ae
            android.webkit.WebIconDatabase r5 = android.webkit.WebIconDatabase.getInstance()     // Catch: all -> 0x00ae
            r5.removeAllIcons()     // Catch: all -> 0x00ae
            goto L_0x00c3
        L_0x00ae:
            r5 = move-exception
            java.lang.String r6 = "clearAllWebViewCache exception 1 -- "
            java.lang.StringBuilder r6 = f.b.a.a.a.o(r6)
            java.lang.String r5 = android.util.Log.getStackTraceString(r5)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            com.tencent.smtt.utils.TbsLog.e(r1, r5)
        L_0x00c3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.QbSdk.clearAllWebViewCache(android.content.Context, boolean):void");
    }

    public static void closeFileReader(Context context) {
        t a2 = t.a();
        a2.a(context);
        if (a2.b()) {
            a2.c().p();
        }
    }

    public static void continueLoadSo(Context context) {
        if (TbsConfig.APP_WX.equals(getCurrentProcessName(context)) && WebView.mWebViewCreated) {
            k.a(r, "continueLoadSo", new Class[0], new Object[0]);
        }
    }

    public static boolean createMiniQBShortCut(Context context, String str, String str2, Drawable drawable) {
        t a2;
        if (!(context == null || TbsDownloader.getOverSea(context) || isMiniQBShortCutExist(context, str, str2) || (a2 = t.a()) == null || !a2.b())) {
            Bitmap bitmap = null;
            if (drawable instanceof BitmapDrawable) {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
            }
            DexLoader b2 = a2.c().b();
            TbsLog.e("QbSdk", "qbsdk createMiniQBShortCut");
            Object invokeStaticMethod = b2.invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "createMiniQBShortCut", new Class[]{Context.class, String.class, String.class, Bitmap.class}, context, str, str2, bitmap);
            TbsLog.e("QbSdk", "qbsdk after createMiniQBShortCut ret: " + invokeStaticMethod);
            if (invokeStaticMethod != null) {
                return true;
            }
        }
        return false;
    }

    public static boolean deleteMiniQBShortCut(Context context, String str, String str2) {
        t a2;
        if (context == null || TbsDownloader.getOverSea(context) || (a2 = t.a()) == null || !a2.b() || a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "deleteMiniQBShortCut", new Class[]{Context.class, String.class, String.class}, context, str, str2) == null) {
            return false;
        }
        return true;
    }

    public static void disAllowThirdAppDownload() {
        f2407c = false;
    }

    public static void disableAutoCreateX5Webview() {
        f2414j = false;
    }

    public static void fileInfoDetect(Context context, String str, ValueCallback<String> valueCallback) {
        t a2 = t.a();
        if (a2 != null && a2.b()) {
            try {
                a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "fileInfoDetect", new Class[]{Context.class, String.class, ValueCallback.class}, context, str, valueCallback);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void forceSysWebView() {
        b = true;
        StringBuilder o2 = a.o("SysWebViewForcedByOuter: ");
        o2.append(Log.getStackTraceString(new Throwable()));
        u = o2.toString();
        TbsLog.e("QbSdk", "sys WebView: SysWebViewForcedByOuter");
    }

    public static long getApkFileSize(Context context) {
        if (context != null) {
            return TbsDownloadConfig.getInstance(context.getApplicationContext()).mPreferences.getLong(TbsDownloadConfig.TbsConfigKey.KEY_TBSAPKFILESIZE, 0);
        }
        return 0;
    }

    public static String getCurrentProcessName(Context context) {
        try {
            int myPid = Process.myPid();
            String str = "";
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getApplicationContext().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == myPid) {
                    str = runningAppProcessInfo.processName;
                }
            }
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String[] getDexLoaderFileList(Context context, Context context2, String str) {
        String[] strArr = t;
        if (strArr instanceof String[]) {
            int length = strArr.length;
            String[] strArr2 = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                StringBuilder o2 = a.o(str);
                o2.append(t[i2]);
                strArr2[i2] = o2.toString();
            }
            return strArr2;
        }
        Object a2 = k.a(r, "getJarFiles", new Class[]{Context.class, Context.class, String.class}, context, context2, str);
        if (!(a2 instanceof String[])) {
            a2 = new String[]{""};
        }
        return (String[]) a2;
    }

    public static boolean getDownloadWithoutWifi() {
        return F;
    }

    public static boolean getIsSysWebViewForcedByOuter() {
        return b;
    }

    public static boolean getJarFilesAndLibraryPath(Context context) {
        Object obj = r;
        if (obj == null) {
            TbsLog.i("QbSdk", "getJarFilesAndLibraryPath sExtensionObj is null");
            return false;
        }
        Bundle bundle = (Bundle) k.a(obj, "canLoadX5CoreAndNotLoadSo", new Class[]{Integer.TYPE}, 43697);
        if (bundle == null) {
            StringBuilder o2 = a.o("getJarFilesAndLibraryPath bundle is null and coreverison is ");
            o2.append(l.a().a(true, context));
            TbsLog.i("QbSdk", o2.toString());
            return false;
        }
        t = bundle.getStringArray("tbs_jarfiles");
        f2408d = bundle.getString("tbs_librarypath");
        return true;
    }

    public static String getMiniQBVersion(Context context) {
        t a2 = t.a();
        a2.a(context);
        if (a2.b()) {
            return a2.c().f();
        }
        return null;
    }

    public static boolean getOnlyDownload() {
        return f2415k;
    }

    public static String getQQBuildNumber() {
        return A;
    }

    public static Map<String, Object> getSettings() {
        return n;
    }

    public static boolean getTBSInstalling() {
        return G;
    }

    public static String getTID() {
        return z;
    }

    public static String getTbsResourcesPath(Context context) {
        return TbsShareManager.g(context);
    }

    public static int getTbsSdkVersion() {
        return 43697;
    }

    public static int getTbsVersion(Context context) {
        if (TbsShareManager.isThirdPartyApp(context)) {
            return TbsShareManager.a(context, false);
        }
        return l.a().i(context);
    }

    public static int getTbsVersionForCrash(Context context) {
        if (TbsShareManager.isThirdPartyApp(context)) {
            return TbsShareManager.a(context, false);
        }
        int j2 = l.a().j(context);
        if (j2 == 0 && j.a(context).c() == 3) {
            reset(context);
        }
        return j2;
    }

    public static int getTmpDirTbsVersion(Context context) {
        if (j.a(context).c() == 2) {
            return l.a().e(context, 0);
        }
        if (j.a(context).b("copy_status") == 1) {
            return l.a().e(context, 1);
        }
        return 0;
    }

    public static void initBuglyAsync(boolean z2) {
        f2413i = z2;
    }

    public static void initForinitAndNotLoadSo(Context context) {
        File q2;
        if (q == null && (q2 = l.a().q(context)) != null) {
            File file = new File(q2, "tbs_sdk_extension_dex.jar");
            if (file.exists()) {
                String absolutePath = q2.getAbsolutePath();
                t.a().b(context);
                m.a(context);
                q = new DexLoader(file.getParent(), context, new String[]{file.getAbsolutePath()}, absolutePath, getSettings()).loadClass("com.tencent.tbs.sdk.extension.TbsSDKExtension");
            }
        }
    }

    public static void initTbsSettings(Map<String, Object> map) {
        Map<String, Object> map2 = n;
        if (map2 == null) {
            n = map;
            return;
        }
        try {
            map2.putAll(map);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void initX5Environment(final Context context, final PreInitCallback preInitCallback) {
        if (context == null) {
            TbsLog.e("QbSdk", "initX5Environment,context=null");
            return;
        }
        b(context);
        E = new TbsListener() { // from class: com.tencent.smtt.sdk.QbSdk.5
            @Override // com.tencent.smtt.sdk.TbsListener
            public void onDownloadFinish(int i2) {
            }

            @Override // com.tencent.smtt.sdk.TbsListener
            public void onDownloadProgress(int i2) {
            }

            @Override // com.tencent.smtt.sdk.TbsListener
            public void onInstallFinish(int i2) {
                QbSdk.preInit(context, preInitCallback);
            }
        };
        if (TbsShareManager.isThirdPartyApp(context)) {
            l.a().b(context, d.a == 0);
        }
        TbsDownloader.needDownload(context, false, false, true, new TbsDownloader.TbsDownloaderCallback() { // from class: com.tencent.smtt.sdk.QbSdk.6
            @Override // com.tencent.smtt.sdk.TbsDownloader.TbsDownloaderCallback
            public void onNeedDownloadFinish(boolean z2, int i2) {
                if (TbsShareManager.findCoreForThirdPartyApp(context) == 0 && !TbsShareManager.getCoreDisabled()) {
                    TbsShareManager.forceToLoadX5ForThirdApp(context, false);
                }
                if (QbSdk.f2413i && TbsShareManager.isThirdPartyApp(context)) {
                    TbsExtensionFunctionManager.getInstance().initTbsBuglyIfNeed(context);
                }
                QbSdk.preInit(context, preInitCallback);
            }
        });
    }

    public static boolean installLocalQbApk(Context context, String str, String str2, Bundle bundle) {
        d a2 = d.a(true);
        a2.a(context, false, false);
        if (a2.b()) {
            return a2.a().a(context, str, str2, bundle);
        }
        return false;
    }

    public static boolean intentDispatch(WebView webView, Intent intent, String str, String str2) {
        String str3;
        if (webView == null) {
            return false;
        }
        if (str.startsWith("mttbrowser://miniqb/ch=icon?")) {
            Context context = webView.getContext();
            int indexOf = str.indexOf("url=");
            String substring = indexOf > 0 ? str.substring(indexOf + 4) : null;
            HashMap hashMap = new HashMap();
            try {
                str3 = context.getApplicationInfo().packageName;
            } catch (Exception e2) {
                e2.printStackTrace();
                str3 = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            hashMap.put(LOGIN_TYPE_KEY_PARTNER_ID, str3);
            hashMap.put(LOGIN_TYPE_KEY_PARTNER_CALL_POS, "14004");
            if (c.a(context, "miniqb://home".equals(substring) ? "qb://navicard/addCard?cardId=168&cardName=168" : substring, hashMap, "QbSdk.startMiniQBToLoadUrl", null) != 0) {
                t a2 = t.a();
                if (a2 != null && a2.b() && a2.c().a(context, substring, null, str2, null) == 0) {
                    return true;
                }
                webView.loadUrl(substring);
            }
        } else {
            webView.loadUrl(str);
        }
        return false;
    }

    public static boolean isMiniQBShortCutExist(Context context, String str, String str2) {
        t a2;
        Object invokeStaticMethod;
        if (context == null || TbsDownloader.getOverSea(context) || (a2 = t.a()) == null || !a2.b() || (invokeStaticMethod = a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "isMiniQBShortCutExist", new Class[]{Context.class, String.class}, context, str)) == null) {
            return false;
        }
        Boolean bool = Boolean.FALSE;
        if (invokeStaticMethod instanceof Boolean) {
            bool = (Boolean) invokeStaticMethod;
        }
        return bool.booleanValue();
    }

    public static boolean isNeedInitX5FirstTime() {
        return w;
    }

    public static boolean isSuportOpenFile(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String[] strArr = {"rar", "zip", "tar", "bz2", "gz", "7z", "doc", "docx", "ppt", "pptx", "xls", "xlsx", "txt", "pdf", "epub", "chm", "html", "htm", "xml", "mht", TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, "ini", "log", "bat", "php", "js", "lrc", "jpg", "jpeg", "png", "gif", "bmp", "tiff", "webp", "mp3", "m4a", "aac", "amr", "wav", "ogg", "mid", "ra", "wma", "mpga", "ape", "flac", "RTSP", "RTP", "SDP", "RTMP", "mp4", "flv", "avi", "3gp", "3gpp", "webm", "ts", "ogv", "m3u8", "asf", "wmv", "rmvb", "rm", "f4v", "dat", "mov", "mpg", "mkv", "mpeg", "mpeg1", "mpeg2", "xvid", "dvd", "vcd", "vob", "divx"};
        String[] strArr2 = {"doc", "docx", "ppt", "pptx", "xls", "xlsx", "txt", "pdf", "epub"};
        if (i2 == 1) {
            return Arrays.asList(strArr2).contains(str.toLowerCase());
        }
        if (i2 != 2) {
            return false;
        }
        return Arrays.asList(strArr).contains(str.toLowerCase());
    }

    public static boolean isTbsCoreInited() {
        d a2 = d.a(false);
        if (a2 == null || !a2.g()) {
            return false;
        }
        return true;
    }

    public static boolean isX5DisabledSync(Context context) {
        if (j.a(context).c() == 2) {
            return false;
        }
        if (!c(context)) {
            return true;
        }
        int i2 = l.a().i(context);
        Object obj = r;
        Class cls = Integer.TYPE;
        Object a2 = k.a(obj, "isX5DisabledSync", new Class[]{cls, cls}, Integer.valueOf(i2), 43697);
        if (a2 != null) {
            return ((Boolean) a2).booleanValue();
        }
        return true;
    }

    public static void loadTBSSDKExtension(Context context, String str) {
        boolean z2;
        Constructor<?> constructor;
        if (r == null) {
            synchronized (QbSdk.class) {
                if (r == null) {
                    if (q == null) {
                        TbsLog.i("QbSdk", "QbSdk loadTBSSDKExtension sExtensionClass is null");
                    }
                    try {
                        constructor = q.getConstructor(Context.class, Context.class, String.class, String.class, String.class);
                        z2 = true;
                    } catch (Throwable unused) {
                        constructor = null;
                        z2 = false;
                    }
                    if (TbsShareManager.isThirdPartyApp(context)) {
                        Context e2 = TbsShareManager.e(context);
                        if (e2 == null && TbsShareManager.getHostCorePathAppDefined() == null) {
                            TbsLogReport.getInstance(context.getApplicationContext()).setLoadErrorCode(TbsListener.ErrorCode.HOST_CONTEXT_IS_NULL, "host context is null!");
                        } else if (z2) {
                            r = constructor.newInstance(context, e2, TbsShareManager.getHostCorePathAppDefined(), str, null);
                        } else if (e2 == null) {
                            r = q.getConstructor(Context.class, Context.class, String.class).newInstance(context, e2, TbsShareManager.getHostCorePathAppDefined(), str, null);
                        } else {
                            r = q.getConstructor(Context.class, Context.class).newInstance(context, e2);
                        }
                    } else if (!z2) {
                        Constructor<?> constructor2 = q.getConstructor(Context.class, Context.class);
                        if (context.getApplicationContext() != null) {
                            context = context.getApplicationContext();
                        }
                        r = constructor2.newInstance(context, context);
                    } else {
                        String str2 = (!TbsConfig.APP_WX.equals(getCurrentProcessName(context)) || WebView.mWebViewCreated) ? null : "notLoadSo";
                        if (context.getApplicationContext() != null) {
                            context = context.getApplicationContext();
                        }
                        r = constructor.newInstance(context, context, null, str, str2);
                    }
                }
            }
        }
    }

    public static void openBrowserList(Context context, String str, ValueCallback<String> valueCallback) {
        openBrowserList(context, str, null, valueCallback);
    }

    public static int openFileReader(Context context, String str, HashMap<String, String> hashMap, ValueCallback<String> valueCallback) {
        TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_FILEREADER_OPENFILEREADER_COUNTS);
        if (!checkContentProviderPrivilage(context)) {
            return -5;
        }
        if (str != null) {
            String substring = str.substring(str.lastIndexOf(".") + 1, str.length());
            if ("apk".equalsIgnoreCase(substring)) {
                Intent intent = new Intent("android.intent.action.VIEW");
                if (context != null && context.getApplicationInfo().targetSdkVersion >= 24 && Build.VERSION.SDK_INT >= 24) {
                    intent.addFlags(1);
                }
                Uri a2 = FileProvider.a(context, str);
                if (a2 == null) {
                    valueCallback.onReceiveValue("uri failed");
                    return -6;
                }
                intent.setDataAndType(a2, "application/vnd.android.package-archive");
                context.startActivity(intent);
                TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_FILEREADER_OPENFILEREADER_APKFILE);
                return 4;
            }
            if (c.b(context)) {
                if (!a(context, str, substring)) {
                    openFileReaderListWithQBDownload(context, str, valueCallback);
                    TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_FILEREADER_OPENFILEREADER_NOTSUPPORT);
                    return 3;
                } else if (startQBForDoc(context, str, 4, 0, substring, a(context, hashMap))) {
                    if (valueCallback != null) {
                        valueCallback.onReceiveValue("open QB");
                    }
                    TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_FILEREADER_OPENFILEREADER_NOTSUPPORT);
                    return 1;
                }
            }
            if (hashMap == null) {
                hashMap = new HashMap<>();
            }
            hashMap.put("local", "true");
            TbsLog.setWriteLogJIT(true);
            int startMiniQBToLoadUrl = startMiniQBToLoadUrl(context, str, hashMap, valueCallback);
            if (startMiniQBToLoadUrl != 0) {
                openFileReaderListWithQBDownload(context, str, valueCallback);
                TbsLogReport instance = TbsLogReport.getInstance(context);
                instance.setLoadErrorCode(511, "" + startMiniQBToLoadUrl);
                return 3;
            }
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_FILEREADER_OPENFILEREADER_MINIQBSUCCESS);
            return 2;
        }
        if (valueCallback != null) {
            valueCallback.onReceiveValue("filepath error");
        }
        TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_FILEREADER_OPENFILEREADER_FILEPATHISNULL);
        return -1;
    }

    public static void openFileReaderListWithQBDownload(Context context, String str, ValueCallback<String> valueCallback) {
        openFileReaderListWithQBDownload(context, str, null, valueCallback);
    }

    public static synchronized void preInit(Context context) {
        synchronized (QbSdk.class) {
            preInit(context, null);
        }
    }

    public static void reset(Context context) {
        reset(context, false);
    }

    public static void resetDecoupleCore(Context context) {
        TbsLog.e("QbSdk", "QbSdk resetDecoupleCore!", true);
        try {
            f.b(l.a().p(context));
        } catch (Throwable th) {
            StringBuilder o2 = a.o("QbSdk resetDecoupleCore exception:");
            o2.append(Log.getStackTraceString(th));
            TbsLog.e("QbSdk", o2.toString());
        }
    }

    public static void setCurrentID(String str) {
        if (str != null && str.startsWith(TID_QQNumber_Prefix)) {
            String substring = str.substring(3);
            z = "0000000000000000".substring(substring.length()) + substring;
        }
    }

    public static void setDisableUnpreinitBySwitch(boolean z2) {
        B = z2;
        StringBuilder o2 = a.o("setDisableUnpreinitBySwitch -- mDisableUnpreinitBySwitch is ");
        o2.append(B);
        TbsLog.i("QbSdk", o2.toString());
    }

    public static void setDisableUseHostBackupCoreBySwitch(boolean z2) {
        mDisableUseHostBackupCore = z2;
        StringBuilder o2 = a.o("setDisableUseHostBackupCoreBySwitch -- mDisableUseHostBackupCore is ");
        o2.append(mDisableUseHostBackupCore);
        TbsLog.i("QbSdk", o2.toString());
    }

    public static void setDownloadWithoutWifi(boolean z2) {
        F = z2;
    }

    public static void setNeedInitX5FirstTime(boolean z2) {
        w = z2;
    }

    public static void setOnlyDownload(boolean z2) {
        f2415k = z2;
    }

    public static void setQQBuildNumber(String str) {
        A = str;
    }

    public static void setTBSInstallingStatus(boolean z2) {
        G = z2;
    }

    public static void setTbsListener(TbsListener tbsListener) {
        D = tbsListener;
    }

    public static void setTbsLogClient(TbsLogClient tbsLogClient) {
        TbsLog.setTbsLogClient(tbsLogClient);
    }

    public static void setUploadCode(Context context, int i2) {
        if (i2 >= 130 && i2 <= 139) {
            TbsDownloadUpload instance = TbsDownloadUpload.getInstance(context);
            instance.a.put(TbsDownloadUpload.TbsUploadKey.KEY_NEEDDOWNLOAD_CODE, Integer.valueOf(i2));
            instance.commit();
        } else if (i2 >= 150 && i2 <= 159) {
            TbsDownloadUpload instance2 = TbsDownloadUpload.getInstance(context);
            instance2.a.put(TbsDownloadUpload.TbsUploadKey.KEY_STARTDOWNLOAD_CODE, Integer.valueOf(i2));
            instance2.commit();
        }
    }

    public static int startMiniQBToLoadUrl(Context context, String str, HashMap<String, String> hashMap, ValueCallback<String> valueCallback) {
        TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_COUNTS);
        if (context == null) {
            return -100;
        }
        t a2 = t.a();
        a2.a(context);
        if (!a2.b()) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_ISNOTX5CORE);
            return -102;
        } else if (context.getApplicationInfo().packageName.equals("com.nd.android.pandahome2") && getTbsVersion(context) < 25487) {
            return -101;
        } else {
            int a3 = a2.c().a(context, str, hashMap, null, valueCallback);
            if (a3 == 0) {
                TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_SUCCESS);
            } else {
                TbsLogReport instance = TbsLogReport.getInstance(context);
                instance.setLoadErrorCode(TbsListener.ErrorCode.INFO_CODE_MINIQB_STARTMINIQBTOLOADURL_FAILED, "" + a3);
            }
            return a3;
        }
    }

    public static boolean startQBForDoc(Context context, String str, int i2, int i3, String str2, Bundle bundle) {
        HashMap hashMap = new HashMap();
        hashMap.put(LOGIN_TYPE_KEY_PARTNER_ID, context.getApplicationContext().getApplicationInfo().processName);
        hashMap.put(LOGIN_TYPE_KEY_PARTNER_CALL_POS, Integer.toString(i2));
        return c.a(context, str, i3, str2, hashMap, bundle);
    }

    public static boolean startQBForVideo(Context context, String str, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put(LOGIN_TYPE_KEY_PARTNER_ID, context.getApplicationInfo().processName);
        hashMap.put(LOGIN_TYPE_KEY_PARTNER_CALL_POS, Integer.toString(i2));
        return c.a(context, str, hashMap);
    }

    public static boolean startQBToLoadurl(Context context, String str, int i2, WebView webView) {
        t a2;
        Object invokeStaticMethod;
        HashMap hashMap = new HashMap();
        hashMap.put(LOGIN_TYPE_KEY_PARTNER_ID, context.getApplicationInfo().processName);
        hashMap.put(LOGIN_TYPE_KEY_PARTNER_CALL_POS, Integer.toString(i2));
        if (webView == null) {
            try {
                String str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
                if ((str2 == TbsConfig.APP_WX || str2 == TbsConfig.APP_QQ) && (a2 = t.a()) != null && a2.b() && (invokeStaticMethod = a2.c().b().invokeStaticMethod("com.tencent.smtt.webkit.WebViewList", "getCurrentMainWebviewJustForQQandWechat", new Class[0], new Object[0])) != null) {
                    webView = (WebView) ((IX5WebViewBase) invokeStaticMethod).getView().getParent();
                }
            } catch (Exception unused) {
            }
        }
        if (c.a(context, str, hashMap, "QbSdk.startQBToLoadurl", webView) == 0) {
            return true;
        }
        return false;
    }

    public static boolean startQBWithBrowserlist(Context context, String str, int i2) {
        boolean startQBToLoadurl = startQBToLoadurl(context, str, i2, null);
        if (!startQBToLoadurl) {
            openBrowserList(context, str, null);
        }
        return startQBToLoadurl;
    }

    public static boolean startQbOrMiniQBToLoadUrl(Context context, String str, HashMap<String, String> hashMap, ValueCallback<String> valueCallback) {
        if (context == null) {
            return false;
        }
        t a2 = t.a();
        a2.a(context);
        if (hashMap != null && "5".equals(hashMap.get(LOGIN_TYPE_KEY_PARTNER_CALL_POS)) && a2.b()) {
            Bundle bundle = (Bundle) a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "getAdWebViewInfoFromX5Core", new Class[0], new Object[0]);
        }
        if (c.a(context, str, hashMap, "QbSdk.startMiniQBToLoadUrl", null) == 0) {
            return true;
        }
        if (!a2.b() || ((context.getApplicationInfo().packageName.equals("com.nd.android.pandahome2") && getTbsVersion(context) < 25487) || a2.c().a(context, str, hashMap, null, valueCallback) != 0)) {
            return false;
        }
        return true;
    }

    public static void unForceSysWebView() {
        b = false;
        TbsLog.e("QbSdk", "sys WebView: unForceSysWebView called");
    }

    public static synchronized boolean unPreInit(Context context) {
        synchronized (QbSdk.class) {
        }
        return true;
    }

    public static boolean useSoftWare() {
        Object obj = r;
        if (obj == null) {
            return false;
        }
        Object a2 = k.a(obj, "useSoftWare", new Class[0], new Object[0]);
        if (a2 == null) {
            a2 = k.a(r, "useSoftWare", new Class[]{Integer.TYPE}, Integer.valueOf(a.a()));
        }
        if (a2 == null) {
            return false;
        }
        return ((Boolean) a2).booleanValue();
    }

    @SuppressLint({"NewApi"})
    public static boolean a(Context context, boolean z2) {
        File file;
        String str;
        int i2;
        TbsLog.initIfNeed(context);
        if (!sIsVersionPrinted) {
            TbsLog.i("QbSdk", "svn revision: jnizz; SDK_VERSION_CODE: 43697; SDK_VERSION_NAME: 4.3.0.1148");
            sIsVersionPrinted = true;
        }
        if (a && !z2) {
            StringBuilder o2 = a.o("QbSdk init: ");
            o2.append(v);
            TbsLog.e("QbSdk", o2.toString(), false);
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_SDKINIT_IS_SYS_FORCED, new Throwable(v));
            return false;
        } else if (b) {
            TbsLog.e("QbSdk", "QbSdk init mIsSysWebViewForcedByOuter = true", true);
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_FORCE_SYSTEM_WEBVIEW_OUTER, new Throwable(u));
            return false;
        } else {
            if (!C) {
                d(context);
            }
            try {
                File q2 = l.a().q(context);
                if (q2 == null) {
                    TbsLog.e("QbSdk", "QbSdk init (false) optDir == null");
                    TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_TBSCORE_SHARE_DIR, new Throwable("QbSdk.init (false) TbsCoreShareDir is null"));
                    return false;
                }
                if (!TbsShareManager.isThirdPartyApp(context)) {
                    if (o != 0) {
                        i2 = l.a().a(true, context);
                        if (o != i2) {
                            q = null;
                            r = null;
                            TbsLog.e("QbSdk", "QbSdk init (false) not isThirdPartyApp tbsCoreInstalledVer=" + i2, true);
                            TbsLog.e("QbSdk", "QbSdk init (false) not isThirdPartyApp sTbsVersion=" + o, true);
                            TbsCoreLoadStat instance = TbsCoreLoadStat.getInstance();
                            instance.a(context, TbsListener.ErrorCode.ERROR_UNMATCH_TBSCORE_VER, new Throwable("sTbsVersion: " + o + "; tbsCoreInstalledVer: " + i2));
                            return false;
                        }
                    } else {
                        i2 = 0;
                    }
                    o = i2;
                } else if (o == 0 || o == TbsShareManager.d(context)) {
                    o = TbsShareManager.d(context);
                } else {
                    q = null;
                    r = null;
                    TbsLog.e("QbSdk", "QbSdk init (false) ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY!");
                    TbsCoreLoadStat instance2 = TbsCoreLoadStat.getInstance();
                    instance2.a(context, TbsListener.ErrorCode.ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY, new Throwable("sTbsVersion: " + o + "; AvailableTbsCoreVersion: " + TbsShareManager.d(context)));
                    return false;
                }
                if (q != null && r != null) {
                    return true;
                }
                if (!TbsShareManager.isThirdPartyApp(context)) {
                    file = new File(l.a().q(context), "tbs_sdk_extension_dex.jar");
                } else if (TbsShareManager.j(context)) {
                    file = new File(TbsShareManager.c(context), "tbs_sdk_extension_dex.jar");
                } else {
                    TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_HOST_UNAVAILABLE, new Throwable("isShareTbsCoreAvailable false!"));
                    return false;
                }
                if (!file.exists()) {
                    TbsLog.e("QbSdk", "QbSdk init (false) tbs_sdk_extension_dex.jar is not exist!");
                    int i3 = l.a().i(context);
                    if (new File(file.getParentFile(), DexClassLoaderProvider.LAST_DEX_NAME).exists()) {
                        if (i3 > 0) {
                            TbsCoreLoadStat instance3 = TbsCoreLoadStat.getInstance();
                            instance3.a(context, TbsListener.ErrorCode.INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITH_CORE, new Exception("tbs_sdk_extension_dex not exist(with fusion dex)!" + i3));
                        } else {
                            TbsCoreLoadStat instance4 = TbsCoreLoadStat.getInstance();
                            instance4.a(context, TbsListener.ErrorCode.INFO_MISS_SDKEXTENSION_JAR_WITH_FUSION_DEX_WITHOUT_CORE, new Exception("tbs_sdk_extension_dex not exist(with fusion dex)!" + i3));
                        }
                    } else if (i3 > 0) {
                        TbsCoreLoadStat instance5 = TbsCoreLoadStat.getInstance();
                        instance5.a(context, TbsListener.ErrorCode.INFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITH_CORE, new Exception("tbs_sdk_extension_dex not exist(without fusion dex)!" + i3));
                    } else {
                        TbsCoreLoadStat instance6 = TbsCoreLoadStat.getInstance();
                        instance6.a(context, TbsListener.ErrorCode.INFO_INFO_MISS_SDKEXTENSION_JAR_WITHOUT_FUSION_DEX_WITHOUT_CORE, new Exception("tbs_sdk_extension_dex not exist(without fusion dex)!" + i3));
                    }
                    return false;
                }
                if (TbsShareManager.getHostCorePathAppDefined() != null) {
                    str = TbsShareManager.getHostCorePathAppDefined();
                } else {
                    str = q2.getAbsolutePath();
                }
                TbsLog.i("QbSdk", "QbSdk init optDirExtension #1 is " + str);
                TbsLog.i("QbSdk", "new DexLoader #1 dexFile is " + file.getAbsolutePath());
                t.a().b(context);
                m.a(context);
                q = new DexLoader(file.getParent(), context, new String[]{file.getAbsolutePath()}, str, getSettings()).loadClass("com.tencent.tbs.sdk.extension.TbsSDKExtension");
                loadTBSSDKExtension(context, file.getParent());
                k.a(r, "setClientVersion", new Class[]{Integer.TYPE}, 1);
                return true;
            } catch (Throwable th) {
                StringBuilder o3 = a.o("QbSdk init Throwable: ");
                o3.append(Log.getStackTraceString(th));
                TbsLog.e("QbSdk", o3.toString());
                TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.THROWABLE_QBSDK_INIT, th);
                return false;
            }
        }
    }

    public static boolean c(Context context) {
        File file;
        String str;
        try {
            if (q != null) {
                return true;
            }
            File q2 = l.a().q(context);
            if (q2 == null) {
                TbsLog.e("QbSdk", "QbSdk initForX5DisableConfig (false) optDir == null");
                return false;
            }
            if (!TbsShareManager.isThirdPartyApp(context)) {
                file = new File(l.a().q(context), "tbs_sdk_extension_dex.jar");
            } else if (TbsShareManager.j(context)) {
                file = new File(TbsShareManager.c(context), "tbs_sdk_extension_dex.jar");
            } else {
                TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_HOST_UNAVAILABLE);
                return false;
            }
            if (!file.exists()) {
                TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_MISS_SDKEXTENSION_JAR_OLD, new Exception("initForX5DisableConfig failure -- tbs_sdk_extension_dex.jar is not exist!"));
                return false;
            }
            if (TbsShareManager.getHostCorePathAppDefined() != null) {
                str = TbsShareManager.getHostCorePathAppDefined();
            } else {
                str = q2.getAbsolutePath();
            }
            TbsLog.i("QbSdk", "QbSdk init optDirExtension #3 is " + str);
            TbsLog.i("QbSdk", "new DexLoader #4 dexFile is " + file.getAbsolutePath());
            t.a().b(context);
            m.a(context);
            q = new DexLoader(file.getParent(), context, new String[]{file.getAbsolutePath()}, str, getSettings()).loadClass("com.tencent.tbs.sdk.extension.TbsSDKExtension");
            loadTBSSDKExtension(context, file.getParent());
            k.a(r, "setClientVersion", new Class[]{Integer.TYPE}, 1);
            return true;
        } catch (Throwable th) {
            StringBuilder o2 = a.o("initForX5DisableConfig sys WebView: ");
            o2.append(Log.getStackTraceString(th));
            TbsLog.e("QbSdk", o2.toString());
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void d(android.content.Context r10) {
        /*
        // Method dump skipped, instructions count: 312
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.QbSdk.d(android.content.Context):void");
    }

    public static void openBrowserList(Context context, String str, Bundle bundle, final ValueCallback<String> valueCallback) {
        if (context != null) {
            String string = bundle != null ? bundle.getString("ChannelId") : "";
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse(str));
            String c2 = d.c(str);
            isDefaultDialog = false;
            com.tencent.smtt.sdk.b.a.c cVar = new com.tencent.smtt.sdk.b.a.c(context, "选择其它应用打开", intent, valueCallback, c2, string);
            String a2 = cVar.a();
            if (a2 != null && !TextUtils.isEmpty(a2)) {
                if (TbsConfig.APP_QB.equals(a2)) {
                    intent.putExtra(LOGIN_TYPE_KEY_PARTNER_ID, context.getApplicationContext().getPackageName());
                    intent.putExtra(LOGIN_TYPE_KEY_PARTNER_CALL_POS, "4");
                }
                intent.setPackage(a2);
                intent.putExtra("big_brother_source_key", string);
                context.startActivity(intent);
                if (valueCallback != null) {
                    valueCallback.onReceiveValue("default browser:" + a2);
                }
            } else if (isDefaultDialog) {
                new AlertDialog.Builder(context).setTitle("提示").setMessage("此文件无法打开").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.tencent.smtt.sdk.QbSdk.10
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).show();
                if (valueCallback != null) {
                    valueCallback.onReceiveValue("can not open");
                }
            } else {
                cVar.show();
                cVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.tencent.smtt.sdk.QbSdk.2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        ValueCallback valueCallback2 = valueCallback;
                        if (valueCallback2 != null) {
                            valueCallback2.onReceiveValue("TbsReaderDialogClosed");
                        }
                    }
                });
            }
        }
    }

    public static void openFileReaderListWithQBDownload(Context context, String str, Bundle bundle, final ValueCallback<String> valueCallback) {
        if (context != null && !context.getApplicationInfo().packageName.equals("com.tencent.qim") && !context.getApplicationInfo().packageName.equals("com.tencent.tim") && !context.getApplicationInfo().packageName.equals("com.tencent.androidqqmail")) {
            String string = bundle != null ? bundle.getString("ChannelId") : "";
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            String c2 = d.c(str);
            if (context.getApplicationInfo().targetSdkVersion >= 24 && Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(1);
            }
            Uri a2 = FileProvider.a(context, str);
            if (a2 == null) {
                valueCallback.onReceiveValue("uri failed");
                return;
            }
            intent.setDataAndType(a2, c2);
            isDefaultDialog = false;
            com.tencent.smtt.sdk.b.a.c cVar = new com.tencent.smtt.sdk.b.a.c(context, "选择其它应用打开", intent, valueCallback, c2, string);
            String a3 = cVar.a();
            if (a3 != null && !TextUtils.isEmpty(a3) && checkApkExist(context, a3)) {
                if (TbsConfig.APP_QB.equals(a3)) {
                    intent.putExtra(LOGIN_TYPE_KEY_PARTNER_ID, context.getApplicationContext().getPackageName());
                    intent.putExtra(LOGIN_TYPE_KEY_PARTNER_CALL_POS, "4");
                }
                if (!TextUtils.isEmpty(string)) {
                    intent.putExtra("big_brother_source_key", string);
                }
                intent.setPackage(a3);
                context.startActivity(intent);
                if (valueCallback != null) {
                    valueCallback.onReceiveValue("default browser:" + a3);
                }
            } else if ("com.tencent.rtxlite".equalsIgnoreCase(context.getApplicationContext().getPackageName()) && isDefaultDialog) {
                new AlertDialog.Builder(context).setTitle("提示").setMessage("此文件无法打开").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.tencent.smtt.sdk.QbSdk.8
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).show();
            } else if (!isDefaultDialog) {
                try {
                    cVar.show();
                    cVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.tencent.smtt.sdk.QbSdk.9
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            ValueCallback valueCallback2 = valueCallback;
                            if (valueCallback2 != null) {
                                valueCallback2.onReceiveValue("TbsReaderDialogClosed");
                            }
                        }
                    });
                } catch (Exception e2) {
                    e2.printStackTrace();
                    valueCallback.onReceiveValue("TbsReaderDialogClosed");
                }
            } else if (valueCallback != null) {
                valueCallback.onReceiveValue("can not open");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x005b A[Catch: all -> 0x007b, TryCatch #0 {all -> 0x007b, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0014, B:12:0x002e, B:14:0x005b, B:16:0x0060), top: B:20:0x0008 }] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0060 A[Catch: all -> 0x007b, TRY_LEAVE, TryCatch #0 {all -> 0x007b, blocks: (B:3:0x0008, B:5:0x000e, B:7:0x0014, B:12:0x002e, B:14:0x005b, B:16:0x0060), top: B:20:0x0008 }] */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void reset(android.content.Context r5, boolean r6) {
        /*
            java.lang.String r0 = "QbSdk"
            java.lang.String r1 = "QbSdk reset!"
            r2 = 1
            com.tencent.smtt.utils.TbsLog.e(r0, r1, r2)
            com.tencent.smtt.sdk.TbsDownloader.stopDownload()     // Catch: all -> 0x007b
            r1 = 0
            if (r6 == 0) goto L_0x002d
            boolean r6 = com.tencent.smtt.sdk.TbsShareManager.isThirdPartyApp(r5)     // Catch: all -> 0x007b
            if (r6 != 0) goto L_0x002d
            com.tencent.smtt.sdk.l r6 = com.tencent.smtt.sdk.l.a()     // Catch: all -> 0x007b
            int r6 = r6.h(r5)     // Catch: all -> 0x007b
            com.tencent.smtt.sdk.l r3 = com.tencent.smtt.sdk.l.a()     // Catch: all -> 0x007b
            int r3 = r3.i(r5)     // Catch: all -> 0x007b
            r4 = 43300(0xa924, float:6.0676E-41)
            if (r6 <= r4) goto L_0x002d
            if (r6 == r3) goto L_0x002d
            r6 = 1
            goto L_0x002e
        L_0x002d:
            r6 = 0
        L_0x002e:
            com.tencent.smtt.sdk.TbsDownloader.c(r5)     // Catch: all -> 0x007b
            java.lang.String r3 = "tbs"
            java.io.File r3 = r5.getDir(r3, r1)     // Catch: all -> 0x007b
            java.lang.String r4 = "core_share_decouple"
            com.tencent.smtt.utils.f.a(r3, r1, r4)     // Catch: all -> 0x007b
            java.lang.String r3 = "delete downloaded apk success"
            com.tencent.smtt.utils.TbsLog.i(r0, r3, r2)     // Catch: all -> 0x007b
            java.lang.ThreadLocal<java.lang.Integer> r2 = com.tencent.smtt.sdk.l.a     // Catch: all -> 0x007b
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: all -> 0x007b
            r2.set(r3)     // Catch: all -> 0x007b
            java.io.File r2 = new java.io.File     // Catch: all -> 0x007b
            java.io.File r3 = r5.getFilesDir()     // Catch: all -> 0x007b
            java.lang.String r4 = "bugly_switch.txt"
            r2.<init>(r3, r4)     // Catch: all -> 0x007b
            boolean r3 = r2.exists()     // Catch: all -> 0x007b
            if (r3 == 0) goto L_0x005e
            r2.delete()     // Catch: all -> 0x007b
        L_0x005e:
            if (r6 == 0) goto L_0x0090
            com.tencent.smtt.sdk.l r6 = com.tencent.smtt.sdk.l.a()     // Catch: all -> 0x007b
            java.io.File r6 = r6.p(r5)     // Catch: all -> 0x007b
            com.tencent.smtt.sdk.l r2 = com.tencent.smtt.sdk.l.a()     // Catch: all -> 0x007b
            java.io.File r1 = r2.f(r5, r1)     // Catch: all -> 0x007b
            com.tencent.smtt.utils.f.b(r6, r1)     // Catch: all -> 0x007b
            com.tencent.smtt.sdk.l r6 = com.tencent.smtt.sdk.l.a()     // Catch: all -> 0x007b
            r6.b(r5)     // Catch: all -> 0x007b
            goto L_0x0090
        L_0x007b:
            r5 = move-exception
            java.lang.String r6 = "QbSdk reset exception:"
            java.lang.StringBuilder r6 = f.b.a.a.a.o(r6)
            java.lang.String r5 = android.util.Log.getStackTraceString(r5)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            com.tencent.smtt.utils.TbsLog.e(r0, r5)
        L_0x0090:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.QbSdk.reset(android.content.Context, boolean):void");
    }

    public static synchronized void preInit(final Context context, final PreInitCallback preInitCallback) {
        synchronized (QbSdk.class) {
            TbsLog.initIfNeed(context);
            TbsLog.i("QbSdk", "preInit -- processName: " + getCurrentProcessName(context));
            TbsLog.i("QbSdk", "preInit -- stack: " + Log.getStackTraceString(new Throwable("#")));
            f2416l = a;
            if (!s) {
                final AnonymousClass3 r1 = new Handler(Looper.getMainLooper()) { // from class: com.tencent.smtt.sdk.QbSdk.3
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        u c2;
                        PreInitCallback preInitCallback2;
                        int i2 = message.what;
                        if (i2 == 1) {
                            boolean unused = QbSdk.B = TbsExtensionFunctionManager.getInstance().canUseFunction(context, TbsExtensionFunctionManager.DISABLE_UNPREINIT);
                            if (QbSdk.f2414j && (c2 = t.a().c()) != null) {
                                c2.a(context);
                            }
                            PreInitCallback preInitCallback3 = preInitCallback;
                            if (preInitCallback3 != null) {
                                preInitCallback3.onViewInitFinished(true);
                            }
                            TbsLog.writeLogToDisk();
                        } else if (i2 == 2) {
                            PreInitCallback preInitCallback4 = preInitCallback;
                            if (preInitCallback4 != null) {
                                preInitCallback4.onViewInitFinished(false);
                            }
                            TbsLog.writeLogToDisk();
                        } else if (i2 == 3 && (preInitCallback2 = preInitCallback) != null) {
                            preInitCallback2.onCoreInitFinished();
                        }
                    }
                };
                AnonymousClass4 r6 = new Thread() { // from class: com.tencent.smtt.sdk.QbSdk.4
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        int a2 = l.a().a(true, context);
                        TbsDownloader.setAppContext(context);
                        TbsLog.i("QbSdk", "QbSdk preinit ver is " + a2);
                        if (a2 == 0) {
                            l.a().b(context, true);
                        }
                        TbsLog.i("QbSdk", "preInit -- prepare initAndLoadSo");
                        d.a(true).a(context, false, false);
                        t a3 = t.a();
                        a3.a(context);
                        boolean b2 = a3.b();
                        r1.sendEmptyMessage(3);
                        if (!b2) {
                            r1.sendEmptyMessage(2);
                        } else {
                            r1.sendEmptyMessage(1);
                        }
                    }
                };
                r6.setName("tbs_preinit");
                r6.setPriority(10);
                r6.start();
                s = true;
            }
        }
    }

    public static String b() {
        Object invokeStaticMethod;
        t a2 = t.a();
        if (a2 == null || !a2.b() || (invokeStaticMethod = a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "getGUID", new Class[0], new Object[0])) == null || !(invokeStaticMethod instanceof String)) {
            return null;
        }
        return (String) invokeStaticMethod;
    }

    public static boolean a(Context context) {
        try {
            if (q != null) {
                return true;
            }
            File q2 = l.a().q(context);
            if (q2 == null) {
                TbsLog.e("QbSdk", "QbSdk initExtension (false) optDir == null");
                return false;
            }
            File file = new File(q2, "tbs_sdk_extension_dex.jar");
            if (!file.exists()) {
                TbsLog.e("QbSdk", "QbSdk initExtension (false) dexFile.exists()=false", true);
                return false;
            }
            TbsLog.i("QbSdk", "new DexLoader #3 dexFile is " + file.getAbsolutePath());
            t.a().b(context);
            m.a(context);
            q = new DexLoader(file.getParent(), context, new String[]{file.getAbsolutePath()}, q2.getAbsolutePath(), getSettings()).loadClass("com.tencent.tbs.sdk.extension.TbsSDKExtension");
            loadTBSSDKExtension(context, file.getParent());
            return true;
        } catch (Throwable th) {
            StringBuilder o2 = a.o("initExtension sys WebView: ");
            o2.append(Log.getStackTraceString(th));
            TbsLog.e("QbSdk", o2.toString());
            return false;
        }
    }

    public static Bundle a(Context context, Bundle bundle) throws Exception {
        if (!a(context)) {
            TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.INCR_UPDATE_ERROR, "initForPatch return false!");
            return null;
        }
        Object a2 = k.a(r, "incrUpdate", new Class[]{Context.class, Bundle.class}, context, bundle);
        if (a2 != null) {
            return (Bundle) a2;
        }
        TbsLogReport.getInstance(context).setInstallErrorCode(TbsListener.ErrorCode.INCR_UPDATE_ERROR, "incrUpdate return null!");
        return null;
    }

    public static boolean a(Context context, int i2) {
        return a(context, i2, 20000);
    }

    public static boolean a(Context context, int i2, int i3) {
        Map<String, Object> map = n;
        if (map == null || !map.containsKey(KEY_SET_SENDREQUEST_AND_UPLOAD) || !n.get(KEY_SET_SENDREQUEST_AND_UPLOAD).equals("false")) {
            l.a().b(context, d.a == 0);
            if (!c(context)) {
                return true;
            }
            Object obj = r;
            Class cls = Integer.TYPE;
            Object a2 = k.a(obj, "isX5Disabled", new Class[]{cls, cls, cls}, Integer.valueOf(i2), 43697, Integer.valueOf(i3));
            if (a2 != null) {
                return ((Boolean) a2).booleanValue();
            }
            Object obj2 = r;
            Class cls2 = Integer.TYPE;
            Object a3 = k.a(obj2, "isX5Disabled", new Class[]{cls2, cls2}, Integer.valueOf(i2), 43697);
            if (a3 != null) {
                return ((Boolean) a3).booleanValue();
            }
            return true;
        }
        TbsLog.i("QbSdk", "[QbSdk.isX5Disabled] -- SET_SENDREQUEST_AND_UPLOAD is false");
        return true;
    }

    public static boolean a(Context context, boolean z2, boolean z3) {
        int i2;
        int disabledCoreVersion = TbsPVConfig.getInstance(context).getDisabledCoreVersion();
        boolean z4 = false;
        if (disabledCoreVersion != 0 && disabledCoreVersion == l.a().i(context)) {
            TbsLog.e("QbSdk", "force use sys by remote switch");
            return false;
        } else if (TbsShareManager.isThirdPartyApp(context) && !TbsShareManager.i(context)) {
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY);
            return false;
        } else if (!a(context, z2)) {
            TbsLog.e("QbSdk", "QbSdk.init failure!");
            return false;
        } else {
            boolean z5 = true;
            Object a2 = k.a(r, "canLoadX5Core", new Class[]{Integer.TYPE}, 43697);
            if (a2 == null) {
                Object a3 = k.a(r, "canLoadX5", new Class[]{Integer.TYPE}, Integer.valueOf(a.a()));
                if (a3 == null) {
                    TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_CANLOADX5_RETURN_NULL);
                } else if ((a3 instanceof String) && ((String) a3).equalsIgnoreCase("AuthenticationFail")) {
                    return false;
                } else {
                    if (a3 instanceof Boolean) {
                        o = d.d();
                        boolean a4 = a(context, d.d());
                        Boolean bool = (Boolean) a3;
                        if (bool.booleanValue() && !a4) {
                            z4 = true;
                        }
                        if (!z4) {
                            TbsLog.e(TbsListener.tag_load_error, "318");
                            TbsLog.w(TbsListener.tag_load_error, "isX5Disable:" + a4);
                            TbsLog.w(TbsListener.tag_load_error, "(Boolean) ret:" + bool);
                        }
                        return z4;
                    }
                }
            } else if ((a2 instanceof String) && ((String) a2).equalsIgnoreCase("AuthenticationFail")) {
                return false;
            } else {
                if (!(a2 instanceof Bundle)) {
                    TbsCoreLoadStat instance = TbsCoreLoadStat.getInstance();
                    instance.a(context, TbsListener.ErrorCode.ERROR_QBSDK_INIT_ERROR_RET_TYPE_NOT_BUNDLE, new Throwable("" + a2));
                    TbsLog.e(TbsListener.tag_load_error, "ret not instance of bundle");
                    return false;
                }
                Bundle bundle = (Bundle) a2;
                if (bundle.isEmpty()) {
                    TbsCoreLoadStat instance2 = TbsCoreLoadStat.getInstance();
                    instance2.a(context, TbsListener.ErrorCode.ERROR_QBSDK_INIT_ERROR_EMPTY_BUNDLE, new Throwable("" + a2));
                    TbsLog.e(TbsListener.tag_load_error, "empty bundle");
                    return false;
                }
                try {
                    i2 = bundle.getInt(FontsContractCompat.Columns.RESULT_CODE, -1);
                } catch (Exception e2) {
                    StringBuilder o2 = a.o("bundle.getInt(KEY_RESULT_CODE) error : ");
                    o2.append(e2.toString());
                    TbsLog.e("QbSdk", o2.toString());
                    i2 = -1;
                }
                boolean z6 = i2 == 0;
                if (TbsShareManager.isThirdPartyApp(context)) {
                    d.a(TbsShareManager.d(context));
                    String valueOf = String.valueOf(TbsShareManager.d(context));
                    p = valueOf;
                    if (valueOf.length() == 5) {
                        StringBuilder o3 = a.o("0");
                        o3.append(p);
                        p = o3.toString();
                    }
                    if (p.length() != 6) {
                        p = "";
                    }
                } else {
                    try {
                        p = bundle.getString("tbs_core_version", "0");
                    } catch (Exception unused) {
                        p = "0";
                    }
                    try {
                        o = Integer.parseInt(p);
                    } catch (NumberFormatException unused2) {
                        o = 0;
                    }
                    d.a(o);
                    int i3 = o;
                    if (i3 == 0) {
                        TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_CANLOADX5_RETURN_FALSE, new Throwable("sTbsVersion is 0"));
                        return false;
                    }
                    if ((i3 <= 0 || i3 > 25442) && o != 25472) {
                        z5 = false;
                    }
                    if (z5) {
                        StringBuilder o4 = a.o("is_obsolete --> delete old core:");
                        o4.append(o);
                        TbsLog.e(TbsDownloader.LOGTAG, o4.toString());
                        f.b(l.a().q(context));
                        TbsCoreLoadStat instance3 = TbsCoreLoadStat.getInstance();
                        StringBuilder o5 = a.o("is_obsolete --> delete old core:");
                        o5.append(o);
                        instance3.a(context, TbsListener.ErrorCode.ERROR_CANLOADX5_RETURN_FALSE, new Throwable(o5.toString()));
                        return false;
                    }
                }
                try {
                    String[] stringArray = bundle.getStringArray("tbs_jarfiles");
                    t = stringArray;
                    if (!(stringArray instanceof String[])) {
                        TbsCoreLoadStat instance4 = TbsCoreLoadStat.getInstance();
                        StringBuilder o6 = a.o("sJarFiles not instanceof String[]: ");
                        o6.append(t);
                        instance4.a(context, TbsListener.ErrorCode.ERROR_CANLOADX5_RETURN_FALSE, new Throwable(o6.toString()));
                        return false;
                    }
                    try {
                        f2408d = bundle.getString("tbs_librarypath");
                        Object obj = null;
                        if (i2 != 0) {
                            try {
                                obj = k.a(r, "getErrorCodeForLogReport", new Class[0], new Object[0]);
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (i2 != -2) {
                            if (i2 != -1) {
                                if (i2 != 0) {
                                    TbsCoreLoadStat instance5 = TbsCoreLoadStat.getInstance();
                                    instance5.a(context, TbsListener.ErrorCode.INFO_INITX5_FALSE_DEFAULT, new Throwable("detail: " + obj + "errcode" + i2));
                                }
                            } else if (obj instanceof Integer) {
                                TbsCoreLoadStat instance6 = TbsCoreLoadStat.getInstance();
                                int intValue = ((Integer) obj).intValue();
                                instance6.a(context, intValue, new Throwable("detail: " + obj));
                            } else {
                                TbsCoreLoadStat instance7 = TbsCoreLoadStat.getInstance();
                                instance7.a(context, TbsListener.ErrorCode.ERROR_CANLOADX5_RETURN_FALSE, new Throwable("detail: " + obj));
                            }
                        } else if (obj instanceof Integer) {
                            TbsCoreLoadStat instance8 = TbsCoreLoadStat.getInstance();
                            int intValue2 = ((Integer) obj).intValue();
                            instance8.a(context, intValue2, new Throwable("detail: " + obj));
                        } else {
                            TbsCoreLoadStat instance9 = TbsCoreLoadStat.getInstance();
                            instance9.a(context, TbsListener.ErrorCode.INFO_DISABLE_X5, new Throwable("detail: " + obj));
                        }
                        z4 = z6;
                    } catch (Exception unused3) {
                        return false;
                    }
                } catch (Throwable th) {
                    TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.ERROR_GETSTRINGARRAY_JARFILE, th);
                    return false;
                }
            }
            if (!z4) {
                TbsLog.e(TbsListener.tag_load_error, "319");
            }
            return z4;
        }
    }

    public static synchronized void a(Context context, String str) {
        synchronized (QbSdk.class) {
            if (!a) {
                a = true;
                v = "forceSysWebViewInner: " + str;
                TbsLog.e("QbSdk", "QbSdk.SysWebViewForcedInner..." + v);
                TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_FORCE_SYSTEM_WEBVIEW_INNER, new Throwable(v));
            }
        }
    }

    public static String a() {
        return p;
    }

    public static boolean a(Context context, String str, String str2) {
        return isSuportOpenFile(str2, 2);
    }

    public static Bundle a(Context context, Map<String, String> map) {
        if (map == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("style", map.get("style") == null ? "0" : map.get("style"));
            try {
                bundle.putInt("topBarBgColor", Color.parseColor(map.get("topBarBgColor")));
            } catch (Exception unused) {
            }
            if (map.containsKey(FILERADER_MENUDATA)) {
                JSONObject jSONObject = new JSONObject(map.get(FILERADER_MENUDATA));
                JSONArray jSONArray = jSONObject.getJSONArray("menuItems");
                if (jSONArray != null) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                    int i2 = 0;
                    while (i2 < jSONArray.length() && i2 < 5) {
                        try {
                            JSONObject jSONObject2 = (JSONObject) jSONArray.get(i2);
                            arrayList.add(i2, BitmapFactory.decodeResource(context.getResources(), jSONObject2.getInt("iconResId")));
                            jSONObject2.put("iconResId", i2);
                        } catch (Exception unused2) {
                        }
                        i2++;
                    }
                    bundle.putParcelableArrayList("resArray", arrayList);
                }
                bundle.putString(FILERADER_MENUDATA, jSONObject.toString());
            }
            return bundle;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Object a(Context context, String str, Bundle bundle) {
        if (!a(context)) {
            return Integer.valueOf((int) EXTENSION_INIT_FAILURE);
        }
        Object a2 = k.a(r, "miscCall", new Class[]{String.class, Bundle.class}, str, bundle);
        if (a2 != null) {
            return a2;
        }
        return null;
    }
}
