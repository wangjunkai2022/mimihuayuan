package com.umeng.commonsdk.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import f.b.a.a.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public class UMUtils {
    public static final int DEFAULT_TIMEZONE = 8;
    public static final String KEY_APP_KEY = "appkey";
    public static final String KEY_CHANNEL = "channel";
    public static final String KEY_LAST_APP_KEY = "last_appkey";
    public static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    public static final String KEY_SHARED_PREFERENCES_NAME = "umeng_common_config";
    public static final String MOBILE_NETWORK = "2G/3G";
    public static final String SD_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    public static final String TAG = "UMUtils";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";
    public static final Pattern pattern = Pattern.compile("UTDID\">([^<]+)");
    public static Object spLock = new Object();

    public static String MD5(String str) {
        try {
            if (str == null) {
                return null;
            }
            try {
                try {
                    byte[] bytes = str.getBytes();
                    MessageDigest instance = MessageDigest.getInstance("MD5");
                    instance.reset();
                    instance.update(bytes);
                    byte[] digest = instance.digest();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (int i2 = 0; i2 < digest.length; i2++) {
                        stringBuffer.append(String.format("%02X", Byte.valueOf(digest[i2])));
                    }
                    return stringBuffer.toString();
                } catch (Exception e2) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        a.y("MD5 e is ", e2);
                    }
                    return null;
                }
            } catch (Exception unused) {
                return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
            }
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("MD5 e is ", th);
            }
            return null;
        }
    }

    public static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            String hexString = Integer.toHexString(bArr[i2]);
            int length = hexString.length();
            if (length == 1) {
                hexString = a.f("0", hexString);
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i2 < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static String bytes2Hex(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                str = a.f(str, "0");
            }
            str = a.f(str, hexString);
        }
        return str;
    }

    public static boolean checkAndroidManifest(Context context, String str) {
        try {
            context.getApplicationContext().getPackageManager().getActivityInfo(new ComponentName(context.getApplicationContext().getPackageName(), str), 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean checkIntentFilterData(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addCategory("android.intent.category.BROWSABLE");
        intent.setData(Uri.parse("tencent" + str + ":"));
        List<ResolveInfo> queryIntentActivities = context.getApplicationContext().getPackageManager().queryIntentActivities(intent, 64);
        if (queryIntentActivities.size() > 0) {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (activityInfo != null && activityInfo.packageName.equals(context.getApplicationContext().getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean checkMetaData(Context context, String str) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationContext().getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128);
            if (applicationInfo != null) {
                if (applicationInfo.metaData.get(str) != null) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean checkPath(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean checkPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (Exception e2) {
                UMCrashManager.reportCrash(context, e2);
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static boolean checkResource(Context context, String str, String str2) {
        return context.getApplicationContext().getResources().getIdentifier(str, str2, context.getApplicationContext().getPackageName()) > 0;
    }

    public static String encryptBySHA1(String str) {
        try {
            try {
                byte[] bytes = str.getBytes();
                try {
                    MessageDigest instance = MessageDigest.getInstance("SHA1");
                    instance.update(bytes);
                    return bytes2Hex(instance.digest());
                } catch (Exception unused) {
                    return null;
                }
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("encrypt by SHA1 e is ", th);
                }
                return null;
            }
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("encrypt by SHA1 e is ", e2);
            }
            return null;
        }
    }

    public static String getAppHashKey(Context context) {
        return DeviceConfig.getAppHashKey(context);
    }

    public static String getAppMD5Signature(Context context) {
        String appMD5Signature = DeviceConfig.getAppMD5Signature(context);
        return !TextUtils.isEmpty(appMD5Signature) ? appMD5Signature.replace(":", "").toLowerCase() : appMD5Signature;
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get app name e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get app name e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getAppSHA1Key(Context context) {
        return DeviceConfig.getAppSHA1Key(context);
    }

    public static String getAppVersinoCode(Context context, String str) {
        if (!(context == null || str == null)) {
            try {
                return String.valueOf(context.getPackageManager().getPackageInfo(str, 0).versionCode);
            } catch (Exception e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.y("get app version code e is ", e2);
                }
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("get app version code e is ", th);
                }
                return "";
            }
        }
        return "";
    }

    public static String getAppVersionCode(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get app version code e is ", e2);
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get app version code e is ", th);
            }
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                String str = "get app version name e is " + e2;
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get app version name e is ", th);
            }
            return "";
        }
    }

    public static String getAppkey(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return getMultiProcessSP(context, "appkey");
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get app key e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get app key e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getAppkeyByXML(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("UMENG_APPKEY");
            if (string != null) {
                return string.trim();
            }
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            MLog.i(AnalyticsConstants.LOG_TAG, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Properties getBuildProp() {
        Properties properties;
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2;
        try {
            properties = new Properties();
            fileInputStream = null;
            try {
                fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            } catch (IOException unused) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
        try {
            properties.load(fileInputStream2);
            fileInputStream2.close();
        } catch (IOException unused3) {
            fileInputStream = fileInputStream2;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return properties;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = fileInputStream2;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        return properties;
    }

    public static String getCPU() {
        String str = null;
        try {
            try {
                FileReader fileReader = new FileReader("/proc/cpuinfo");
                try {
                    BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                    str = bufferedReader.readLine();
                    bufferedReader.close();
                    fileReader.close();
                } catch (IOException e2) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str2 = "Could not read from file /proc/cpuinfo, e is " + e2;
                    }
                }
            } catch (FileNotFoundException e3) {
                if (AnalyticsConstants.UM_DEBUG) {
                    String str3 = "Could not read from file /proc/cpuinfo, e is " + e3;
                }
            }
            if (str != null) {
                return str.substring(str.indexOf(58) + 1).trim();
            }
            return "";
        } catch (Exception e4) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get cpu e is ", e4);
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get cpu e is ", th);
            }
            return "";
        }
    }

    public static String getChannel(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return getMultiProcessSP(context, "channel");
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get channel e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get channel e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getChannelByXML(Context context) {
        Object obj;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || (obj = applicationInfo.metaData.get("UMENG_CHANNEL")) == null) {
                return null;
            }
            String obj2 = obj.toString();
            if (obj2 != null) {
                return obj2.trim();
            }
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            MLog.i(AnalyticsConstants.LOG_TAG, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getDeviceToken(Context context) {
        Object invoke;
        Method method;
        Object invoke2;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            Class<?> cls = Class.forName("com.umeng.message.MessageSharedPrefs");
            Method method2 = cls.getMethod("getInstance", Context.class);
            if (method2 == null || (invoke = method2.invoke(cls, applicationContext)) == null || (method = cls.getMethod("getDeviceToken", new Class[0])) == null || (invoke2 = method.invoke(invoke, new Object[0])) == null || !(invoke2 instanceof String)) {
                return null;
            }
            return (String) invoke2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get device type e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get device type e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "";
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            return String.valueOf(i3) + "*" + String.valueOf(i2);
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get display resolution e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get display resolution e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return "";
        }
    }

    public static File getFile(Context context) {
        if (context != null && checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String getFileMD5(File file) {
        try {
            try {
                byte[] bArr = new byte[1024];
                try {
                    if (!file.isFile()) {
                        return "";
                    }
                    MessageDigest instance = MessageDigest.getInstance("MD5");
                    FileInputStream fileInputStream = new FileInputStream(file);
                    while (true) {
                        int read = fileInputStream.read(bArr, 0, 1024);
                        if (read != -1) {
                            instance.update(bArr, 0, read);
                        } else {
                            fileInputStream.close();
                            return String.format("%1$032x", new BigInteger(1, instance.digest()));
                        }
                    }
                } catch (Exception unused) {
                    return null;
                }
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("get file MD5 e is ", th);
                }
                return null;
            }
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get file MD5 e is ", e2);
            }
            return null;
        }
    }

    public static String getFlymeVersion(Properties properties) {
        try {
            String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(" ")[2];
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("Could not read gpu infor, e is ", e2);
            }
            return new String[0];
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("Could not read gpu infor, e is ", th);
            }
            return new String[0];
        }
    }

    public static String getImsi(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
                return null;
            }
            return telephonyManager.getSubscriberId();
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get imei e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get imei e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getLastAppkey(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return getMultiProcessSP(context, KEY_LAST_APP_KEY);
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get last app key e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get last app key e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return null;
        }
        try {
            try {
                Configuration configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(context.getContentResolver(), configuration);
                locale = configuration.locale;
            } catch (Exception e2) {
                try {
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str = "fail to read user config locale, e is " + e2;
                    }
                    locale = null;
                } catch (Exception e3) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        a.y("get locale e is ", e3);
                    }
                    UMCrashManager.reportCrash(context, e3);
                    return null;
                }
            }
            return locale == null ? Locale.getDefault() : locale;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get locale e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getMac(Context context) {
        if (context == null) {
            return null;
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager == null) {
                return null;
            }
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            boolean z = AnalyticsConstants.UM_DEBUG;
            return "";
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get mac e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get mac e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: Exception -> 0x0050
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:130)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.attachHandlers(AttachTryCatchVisitor.java:118)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:42)
        */
    public static java.lang.String getMultiProcessSP(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = 0
            java.lang.Object r1 = com.umeng.commonsdk.utils.UMUtils.spLock
            monitor-enter(r1)
            if (r5 == 0) goto L_0x004b
            android.text.TextUtils.isEmpty(r6)
            r2 = move-result
            if (r2 == 0) goto L_0x000d
            goto L_0x004b
            isMainProgress(r5)
            r2 = move-result
            r3 = 0
            if (r2 == 0) goto L_0x001f
            r5.getApplicationContext()
            r5 = move-result
            java.lang.String r2 = "umeng_common_config"
            r5.getSharedPreferences(r2, r3)
            r5 = move-result
            goto L_0x0041
            com.umeng.commonsdk.framework.UMFrUtils.getSubProcessName(r5)
            r2 = move-result
            r5.getApplicationContext()
            r5 = move-result
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r2)
            java.lang.String r2 = "_"
            r4.append(r2)
            java.lang.String r2 = "umeng_common_config"
            r4.append(r2)
            r4.toString()
            r2 = move-result
            r5.getSharedPreferences(r2, r3)
            r5 = move-result
            if (r5 == 0) goto L_0x0049
            r5.getString(r6, r0)
            r5 = move-result
            monitor-exit(r1)
            return r5
            monitor-exit(r1)
            return r0
            monitor-exit(r1)
            return r0
            r5 = move-exception
            monitor-exit(r1)
            throw r5
        L_0x0050:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.utils.UMUtils.getMultiProcessSP(android.content.Context, java.lang.String):java.lang.String");
    }

    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        try {
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get network access mode e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get network access mode e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr[0] = "";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo == null || networkInfo.getState() != NetworkInfo.State.CONNECTED) {
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
                strArr[0] = "2G/3G";
                strArr[1] = networkInfo2.getSubtypeName();
                return strArr;
            }
            return strArr;
        }
        strArr[0] = "Wi-Fi";
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
            return "";
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get network operator e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get network operator e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return "";
        }
    }

    public static String getOperator(Context context) {
        if (context == null) {
            return "Unknown";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return "Unknown";
            }
            return telephonyManager.getNetworkOperator();
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get get operator e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return "Unknown";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get get operator e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return "Unknown";
        }
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getNetworkOperator();
            }
            return null;
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get registered operator e is ", e2);
            }
            UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get registered operator e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static String getSubOSName(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    String property = buildProp.getProperty("ro.miui.ui.version.name");
                    if (!TextUtils.isEmpty(property)) {
                        str = "MIUI";
                    } else if (isFlyMe()) {
                        str = "Flyme";
                    } else if (TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                        return property;
                    } else {
                        str = "YunOS";
                    }
                    return str;
                } catch (Exception e2) {
                    UMCrashManager.reportCrash(context, e2);
                    return null;
                }
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("get sub os name e is ", th);
                }
                UMCrashManager.reportCrash(context, th);
                return null;
            }
        } catch (Exception e3) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.y("get sub os name e is ", e3);
            }
            UMCrashManager.reportCrash(context, e3);
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    String property = buildProp.getProperty("ro.miui.ui.version.name");
                    if (TextUtils.isEmpty(property)) {
                        try {
                            if (isFlyMe()) {
                                str = getFlymeVersion(buildProp);
                            } else {
                                str = getYunOSVersion(buildProp);
                            }
                            return str;
                        } catch (Exception unused) {
                        }
                    }
                    return property;
                } catch (Exception e2) {
                    UMCrashManager.reportCrash(context, e2);
                    return null;
                }
            } catch (Exception e3) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.y("get sub os version e is ", e3);
                }
                UMCrashManager.reportCrash(context, e3);
                return null;
            }
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get sub os version e is ", th);
            }
            UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static int getTargetSdkVersion(Context context) {
        return context.getApplicationInfo().targetSdkVersion;
    }

    public static String getUMId(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return UMEnvelopeBuild.imprintProperty(context.getApplicationContext(), e.f3059f, null);
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    public static String getUTDID(Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                try {
                    return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, context.getApplicationContext());
                } catch (Exception unused) {
                    return readUTDId(context);
                }
            } catch (Exception e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.y("get utiid e is ", e2);
                }
                return null;
            }
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                a.z("get utiid e is ", th);
            }
            return null;
        }
    }

    public static String getYunOSVersion(Properties properties) {
        String property = properties.getProperty("ro.yunos.version");
        if (!TextUtils.isEmpty(property)) {
            return property;
        }
        return null;
    }

    public static boolean isApplication(Context context) {
        try {
            String name = context.getApplicationContext().getClass().getSuperclass().getName();
            if (TextUtils.isEmpty(name)) {
                return false;
            }
            if (name.equals("android.app.Application")) {
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isDebug(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
            return false;
        }
    }

    public static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isMainProgress(Context context) {
        try {
            String currentProcessName = UMFrUtils.getCurrentProcessName(context);
            String packageName = context.getApplicationContext().getPackageName();
            if (TextUtils.isEmpty(currentProcessName) || TextUtils.isEmpty(packageName)) {
                return false;
            }
            if (currentProcessName.equals(packageName)) {
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isSdCardWrittenable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String parseId(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static String readStreamToString(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        StringWriter stringWriter = new StringWriter();
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (-1 == read) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, read);
        }
    }

    public static String readUTDId(Context context) {
        File file;
        if (!(context == null || (file = getFile(context)) == null || !file.exists())) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                String parseId = parseId(readStreamToString(fileInputStream));
                safeClose(fileInputStream);
                return parseId;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void safeClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void setAppkey(Context context, String str) {
        if (context != null && str != null) {
            try {
                setMultiProcessSP(context, "appkey", str);
            } catch (Exception e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.y("set app key e is ", e2);
                }
                UMCrashManager.reportCrash(context, e2);
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("set app key e is ", th);
                }
                UMCrashManager.reportCrash(context, th);
            }
        }
    }

    public static void setChannel(Context context, String str) {
        if (context != null && str != null) {
            try {
                setMultiProcessSP(context, "channel", str);
            } catch (Exception e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.y("set channel e is ", e2);
                }
                UMCrashManager.reportCrash(context, e2);
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("set channel e is ", th);
                }
                UMCrashManager.reportCrash(context, th);
            }
        }
    }

    public static void setLastAppkey(Context context, String str) {
        if (context != null && str != null) {
            try {
                setMultiProcessSP(context, KEY_LAST_APP_KEY, str);
            } catch (Exception e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.y("set last app key e is ", e2);
                }
                UMCrashManager.reportCrash(context, e2);
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("set last app key e is ", th);
                }
                UMCrashManager.reportCrash(context, th);
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: Exception -> 0x0056
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:130)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.attachHandlers(AttachTryCatchVisitor.java:118)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:42)
        */
    public static void setMultiProcessSP(android.content.Context r4, java.lang.String r5, java.lang.String r6) {
        /*
            java.lang.Object r0 = com.umeng.commonsdk.utils.UMUtils.spLock
            monitor-enter(r0)
            if (r4 == 0) goto L_0x0051
            android.text.TextUtils.isEmpty(r5)
            r1 = move-result
            if (r1 != 0) goto L_0x0051
            if (r6 != 0) goto L_0x000e
            goto L_0x0051
            isMainProgress(r4)
            r1 = move-result
            r2 = 0
            if (r1 == 0) goto L_0x0020
            r4.getApplicationContext()
            r4 = move-result
            java.lang.String r1 = "umeng_common_config"
            r4.getSharedPreferences(r1, r2)
            r4 = move-result
            goto L_0x0042
            com.umeng.commonsdk.framework.UMFrUtils.getSubProcessName(r4)
            r1 = move-result
            r4.getApplicationContext()
            r4 = move-result
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            java.lang.String r1 = "_"
            r3.append(r1)
            java.lang.String r1 = "umeng_common_config"
            r3.append(r1)
            r3.toString()
            r1 = move-result
            r4.getSharedPreferences(r1, r2)
            r4 = move-result
            if (r4 == 0) goto L_0x004f
            r4.edit()
            r4 = move-result
            r4.putString(r5, r6)
            r4 = move-result
            r4.commit()
            monitor-exit(r0)
            goto L_0x0056
            monitor-exit(r0)
            return
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        L_0x0056:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.utils.UMUtils.setMultiProcessSP(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public static String getAppVersionName(Context context, String str) {
        if (!(context == null || str == null)) {
            try {
                return context.getPackageManager().getPackageInfo(str, 0).versionName;
            } catch (PackageManager.NameNotFoundException e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    String str2 = "get app version name e is " + e2;
                }
                UMCrashManager.reportCrash(context, e2);
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    a.z("get app version name e is ", th);
                }
                UMCrashManager.reportCrash(context, th);
                return "";
            }
        }
        return "";
    }
}
