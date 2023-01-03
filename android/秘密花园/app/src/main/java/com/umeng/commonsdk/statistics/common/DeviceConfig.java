package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.idtracking.b;
import com.umeng.commonsdk.utils.UMUtils;
import f.b.a.a.a;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Calendar;
import java.util.Locale;
import java.util.Properties;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public class DeviceConfig {
    public static final int DEFAULT_TIMEZONE = 8;
    public static final String KEY_EMUI_VERSION_CODE = "ro.build.hw_emui_api_level";
    public static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    public static final String LOG_TAG = "com.umeng.commonsdk.statistics.common.DeviceConfig";
    public static final String MOBILE_NETWORK = "2G/3G";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";

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
            sb.append(hexString.toUpperCase(Locale.getDefault()));
            if (i2 < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
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
            } catch (Throwable unused) {
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String getAndroidId(Context context) {
        if (context != null) {
            try {
                return Settings.Secure.getString(context.getContentResolver(), b.a);
            } catch (Exception unused) {
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.w("can't read android id");
                }
            }
        }
        return null;
    }

    public static String getAppHashKey(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures;
            if (signatureArr.length <= 0) {
                return null;
            }
            Signature signature = signatureArr[0];
            MessageDigest instance = MessageDigest.getInstance("SHA");
            instance.update(signature.toByteArray());
            return Base64.encodeToString(instance.digest(), 0).trim();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppMD5Signature(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return byte2HexFormatted(MessageDigest.getInstance("MD5").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            MLog.i(LOG_TAG, th);
            return null;
        }
    }

    public static String getAppSHA1Key(Context context) {
        try {
            return byte2HexFormatted(MessageDigest.getInstance("SHA1").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getAppVersionCode(Context context) {
        return UMUtils.getAppVersionCode(context);
    }

    public static String getAppVersionName(Context context) {
        return UMUtils.getAppVersionName(context);
    }

    public static String getApplicationLable(Context context) {
        return context == null ? "" : context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static Properties getBuildProp() {
        Properties properties;
        try {
            properties = new Properties();
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                try {
                    properties.load(fileInputStream2);
                    fileInputStream2.close();
                } catch (Throwable unused) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return properties;
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
        }
        return properties;
    }

    public static String getCPU() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            str = bufferedReader.readLine();
            bufferedReader.close();
            fileReader.close();
        } catch (FileNotFoundException e2) {
            MLog.e(LOG_TAG, "Could not open file /proc/cpuinfo", e2);
        }
        return str != null ? str.substring(str.indexOf(58) + 1).trim() : "";
    }

    public static String getDBencryptID(Context context) {
        String str = null;
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                str = telephonyManager.getDeviceId();
            }
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            String string = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            if (Build.VERSION.SDK_INT < 26) {
                return Build.SERIAL;
            }
            Class<?> cls = Class.forName("android.os.Build");
            return (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getDeviceId(Context context) {
        if (AnalyticsConstants.getDeviceType() == 2) {
            return getDeviceIdForBox(context);
        }
        return getDeviceIdForGeneral(context);
    }

    public static String getDeviceIdForBox(Context context) {
        if (context == null) {
            return "";
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            String string = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, ANDROID_ID: ", string));
            }
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String macBySystemInterface = getMacBySystemInterface(context);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, MAC: ", macBySystemInterface));
            }
            if (!TextUtils.isEmpty(macBySystemInterface)) {
                return macBySystemInterface;
            }
            String serialNo = getSerialNo();
            if (TextUtils.isEmpty(serialNo)) {
                return getIMEI(context);
            }
            return serialNo;
        } else if (i2 == 23) {
            String string2 = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, ANDROID_ID: ", string2));
            }
            if (!TextUtils.isEmpty(string2)) {
                return string2;
            }
            String macByJavaAPI = getMacByJavaAPI();
            if (TextUtils.isEmpty(macByJavaAPI)) {
                if (AnalyticsConstants.CHECK_DEVICE) {
                    macByJavaAPI = getMacShell();
                } else {
                    macByJavaAPI = getMacBySystemInterface(context);
                }
            }
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, MAC: ", macByJavaAPI));
            }
            if (!TextUtils.isEmpty(macByJavaAPI)) {
                return macByJavaAPI;
            }
            String serialNo2 = getSerialNo();
            if (TextUtils.isEmpty(serialNo2)) {
                return getIMEI(context);
            }
            return serialNo2;
        } else {
            String string3 = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId: ANDROID_ID: ", string3));
            }
            if (!TextUtils.isEmpty(string3)) {
                return string3;
            }
            String serialNo3 = getSerialNo();
            if (!TextUtils.isEmpty(serialNo3)) {
                return serialNo3;
            }
            String imei = getIMEI(context);
            if (!TextUtils.isEmpty(imei)) {
                return imei;
            }
            String macByJavaAPI2 = getMacByJavaAPI();
            if (!TextUtils.isEmpty(macByJavaAPI2)) {
                return macByJavaAPI2;
            }
            String macBySystemInterface2 = getMacBySystemInterface(context);
            if (!AnalyticsConstants.UM_DEBUG) {
                return macBySystemInterface2;
            }
            MLog.i(LOG_TAG, a.f("getDeviceId, MAC: ", macBySystemInterface2));
            return macBySystemInterface2;
        }
    }

    public static String getDeviceIdForGeneral(Context context) {
        if (context == null) {
            return "";
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            String imei = getIMEI(context);
            if (!TextUtils.isEmpty(imei)) {
                return imei;
            }
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.w(LOG_TAG, "No IMEI.");
            }
            String macBySystemInterface = getMacBySystemInterface(context);
            if (!TextUtils.isEmpty(macBySystemInterface)) {
                return macBySystemInterface;
            }
            String string = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, ANDROID_ID: ", string));
            }
            if (TextUtils.isEmpty(string)) {
                return getSerialNo();
            }
            return string;
        } else if (i2 == 23) {
            String imei2 = getIMEI(context);
            if (!TextUtils.isEmpty(imei2)) {
                return imei2;
            }
            String macByJavaAPI = getMacByJavaAPI();
            if (TextUtils.isEmpty(macByJavaAPI)) {
                if (AnalyticsConstants.CHECK_DEVICE) {
                    macByJavaAPI = getMacShell();
                } else {
                    macByJavaAPI = getMacBySystemInterface(context);
                }
            }
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, MAC: ", macByJavaAPI));
            }
            if (!TextUtils.isEmpty(macByJavaAPI)) {
                return macByJavaAPI;
            }
            String string2 = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, ANDROID_ID: ", string2));
            }
            if (TextUtils.isEmpty(string2)) {
                return getSerialNo();
            }
            return string2;
        } else {
            String imei3 = getIMEI(context);
            if (!TextUtils.isEmpty(imei3)) {
                return imei3;
            }
            String serialNo = getSerialNo();
            if (!TextUtils.isEmpty(serialNo)) {
                return serialNo;
            }
            String string3 = Settings.Secure.getString(context.getContentResolver(), b.a);
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, a.f("getDeviceId, ANDROID_ID: ", string3));
            }
            if (!TextUtils.isEmpty(string3)) {
                return string3;
            }
            String macByJavaAPI2 = getMacByJavaAPI();
            if (!TextUtils.isEmpty(macByJavaAPI2)) {
                return macByJavaAPI2;
            }
            String macBySystemInterface2 = getMacBySystemInterface(context);
            if (!AnalyticsConstants.UM_DEBUG) {
                return macBySystemInterface2;
            }
            MLog.i(LOG_TAG, a.f("getDeviceId, MAC: ", macBySystemInterface2));
            return macBySystemInterface2;
        }
    }

    public static String getDeviceIdUmengMD5(Context context) {
        return HelperUtils.getUmengMD5(getDeviceId(context));
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                int i2 = displayMetrics.widthPixels;
                int i3 = displayMetrics.heightPixels;
                return String.valueOf(i3) + "*" + String.valueOf(i2);
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String getEmuiVersion(Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null);
        } catch (Exception unused) {
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
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.e(LOG_TAG, "Could not read gpu infor:", th);
            }
            return new String[0];
        }
    }

    public static String getIMEI(Context context) {
        TelephonyManager telephonyManager;
        String str;
        Throwable th;
        if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return "";
        }
        try {
        } catch (Throwable th2) {
            th = th2;
            str = "";
        }
        if (!checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        str = telephonyManager.getDeviceId();
        try {
            if (AnalyticsConstants.UM_DEBUG) {
                String str2 = LOG_TAG;
                MLog.i(str2, "getDeviceId, IMEI: " + str);
            }
        } catch (Throwable th3) {
            th = th3;
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.w(LOG_TAG, "No IMEI.", th);
            }
            return str;
        }
        return str;
    }

    public static String getImei(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null || !checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return null;
            }
            return telephonyManager.getDeviceId();
        } catch (Exception e2) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            MLog.w("No IMEI.", e2);
            return null;
        }
    }

    public static String getImeiNew(Context context) {
        String str = null;
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null || !checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return null;
            }
            if (Build.VERSION.SDK_INT < 26) {
                return telephonyManager.getDeviceId();
            }
            try {
                Method method = telephonyManager.getClass().getMethod("getImei", new Class[0]);
                method.setAccessible(true);
                str = (String) method.invoke(telephonyManager, new Object[0]);
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(str)) {
                return telephonyManager.getDeviceId();
            }
            return str;
        } catch (Exception e2) {
            while (true) {
                if (!AnalyticsConstants.UM_DEBUG) {
                    return null;
                }
                MLog.w("No IMEI.", e2);
                return null;
            }
        }
    }

    public static String getImsi(Context context) {
        if (context == null) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
            return null;
        }
        return telephonyManager.getSubscriberId();
    }

    public static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return Locale.getDefault();
        }
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            locale = configuration.locale;
        } catch (Throwable unused) {
            MLog.e(LOG_TAG, "fail to read user config locale");
            locale = null;
        }
        return locale == null ? Locale.getDefault() : locale;
    }

    public static String[] getLocaleInfo(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context == null) {
            return strArr;
        }
        try {
            Locale locale = getLocale(context);
            if (locale != null) {
                strArr[0] = locale.getCountry();
                strArr[1] = locale.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
            return strArr;
        } catch (Throwable th) {
            MLog.e(LOG_TAG, "error in getLocaleInfo", th);
            return strArr;
        }
    }

    public static String getMCCMNC(Context context) {
        if (context == null || getImsi(context) == null) {
            return null;
        }
        int i2 = context.getResources().getConfiguration().mcc;
        int i3 = context.getResources().getConfiguration().mnc;
        if (i2 == 0) {
            return null;
        }
        String valueOf = String.valueOf(i3);
        if (i3 < 10) {
            valueOf = String.format("%02d", Integer.valueOf(i3));
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(String.valueOf(i2));
        stringBuffer.append(valueOf);
        return stringBuffer.toString();
    }

    public static String getMac(Context context) {
        String str;
        if (context == null) {
            return "";
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            return getMacBySystemInterface(context);
        }
        if (i2 == 23) {
            str = getMacByJavaAPI();
            if (TextUtils.isEmpty(str)) {
                if (AnalyticsConstants.CHECK_DEVICE) {
                    return getMacShell();
                }
                return getMacBySystemInterface(context);
            }
        } else {
            str = getMacByJavaAPI();
            if (TextUtils.isEmpty(str)) {
                return getMacBySystemInterface(context);
            }
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:6:0x000b A[Catch: all -> 0x006e, TryCatch #0 {all -> 0x006e, blocks: (B:3:0x0001, B:4:0x0005, B:6:0x000b, B:8:0x001d, B:10:0x0029, B:12:0x002f, B:15:0x0033, B:18:0x003e, B:19:0x0054, B:21:0x005a, B:22:0x0062), top: B:25:0x0001 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getMacByJavaAPI() {
        /*
            r0 = 0
            java.util.Enumeration r1 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: all -> 0x006e
        L_0x0005:
            boolean r2 = r1.hasMoreElements()     // Catch: all -> 0x006e
            if (r2 == 0) goto L_0x006e
            java.lang.Object r2 = r1.nextElement()     // Catch: all -> 0x006e
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch: all -> 0x006e
            java.lang.String r3 = "wlan0"
            java.lang.String r4 = r2.getName()     // Catch: all -> 0x006e
            boolean r3 = r3.equals(r4)     // Catch: all -> 0x006e
            if (r3 != 0) goto L_0x0029
            java.lang.String r3 = "eth0"
            java.lang.String r4 = r2.getName()     // Catch: all -> 0x006e
            boolean r3 = r3.equals(r4)     // Catch: all -> 0x006e
            if (r3 == 0) goto L_0x0005
        L_0x0029:
            byte[] r1 = r2.getHardwareAddress()     // Catch: all -> 0x006e
            if (r1 == 0) goto L_0x006e
            int r2 = r1.length     // Catch: all -> 0x006e
            if (r2 != 0) goto L_0x0033
            goto L_0x006e
        L_0x0033:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: all -> 0x006e
            r2.<init>()     // Catch: all -> 0x006e
            int r3 = r1.length     // Catch: all -> 0x006e
            r4 = 0
            r5 = 0
        L_0x003b:
            r6 = 1
            if (r5 >= r3) goto L_0x0054
            byte r7 = r1[r5]     // Catch: all -> 0x006e
            java.lang.String r8 = "%02X:"
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: all -> 0x006e
            java.lang.Byte r7 = java.lang.Byte.valueOf(r7)     // Catch: all -> 0x006e
            r6[r4] = r7     // Catch: all -> 0x006e
            java.lang.String r6 = java.lang.String.format(r8, r6)     // Catch: all -> 0x006e
            r2.append(r6)     // Catch: all -> 0x006e
            int r5 = r5 + 1
            goto L_0x003b
        L_0x0054:
            int r1 = r2.length()     // Catch: all -> 0x006e
            if (r1 <= 0) goto L_0x0062
            int r1 = r2.length()     // Catch: all -> 0x006e
            int r1 = r1 - r6
            r2.deleteCharAt(r1)     // Catch: all -> 0x006e
        L_0x0062:
            java.lang.String r1 = r2.toString()     // Catch: all -> 0x006e
            java.util.Locale r2 = java.util.Locale.getDefault()     // Catch: all -> 0x006e
            java.lang.String r0 = r1.toLowerCase(r2)     // Catch: all -> 0x006e
        L_0x006e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getMacByJavaAPI():java.lang.String");
    }

    public static String getMacBySystemInterface(Context context) {
        if (context == null) {
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (!checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
                }
                return "";
            } else if (wifiManager != null) {
                return wifiManager.getConnectionInfo().getMacAddress();
            } else {
                return "";
            }
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                String str = LOG_TAG;
                StringBuilder o = a.o("Could not get mac address.");
                o.append(th.toString());
                MLog.w(str, o.toString());
            }
            return "";
        }
    }

    public static String getMacShell() {
        try {
            String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
            for (int i2 = 0; i2 < 3; i2++) {
                String reaMac = reaMac(strArr[i2]);
                if (reaMac != null) {
                    return reaMac;
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
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
            }
            return strArr;
        }
        strArr[0] = "Wi-Fi";
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String getPackageName(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperator();
    }

    public static int[] getResolutionArray(Context context) {
        int i2;
        int i3;
        if (context == null) {
            return null;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return null;
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            if ((context.getApplicationInfo().flags & 8192) == 0) {
                i2 = reflectMetrics(displayMetrics, "noncompatWidthPixels");
                i3 = reflectMetrics(displayMetrics, "noncompatHeightPixels");
            } else {
                i2 = -1;
                i3 = -1;
            }
            if (i2 == -1 || i3 == -1) {
                i2 = displayMetrics.widthPixels;
                i3 = displayMetrics.heightPixels;
            }
            int[] iArr = new int[2];
            if (i2 > i3) {
                iArr[0] = i3;
                iArr[1] = i2;
            } else {
                iArr[0] = i2;
                iArr[1] = i3;
            }
            return iArr;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.e(LOG_TAG, "read resolution fail", th);
            }
            return null;
        }
    }

    public static String getSerial() {
        if (Build.VERSION.SDK_INT < 26) {
            return Build.SERIAL;
        }
        try {
            Class<?> cls = Class.forName("android.os.Build");
            return (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSerialNo() {
        String str;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Class<?> cls = Class.forName("android.os.Build");
                str = (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
            } catch (Throwable unused) {
                str = "";
            }
        } else {
            str = Build.SERIAL;
        }
        if (AnalyticsConstants.UM_DEBUG) {
            MLog.i(LOG_TAG, a.f("getDeviceId, serial no: ", str));
        }
        return str;
    }

    public static String getSubOSName(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty("ro.miui.ui.version.name");
            if (!TextUtils.isEmpty(property)) {
                return "MIUI";
            }
            if (isFlyMe()) {
                return "Flyme";
            }
            if (isEmui(buildProp)) {
                return "Emui";
            }
            return !TextUtils.isEmpty(getYunOSVersion(buildProp)) ? "YunOS" : property;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        String str;
        Properties buildProp = getBuildProp();
        try {
            str = buildProp.getProperty("ro.miui.ui.version.name");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                if (isFlyMe()) {
                    return getFlymeVersion(buildProp);
                }
                if (isEmui(buildProp)) {
                    return getEmuiVersion(buildProp);
                }
                return getYunOSVersion(buildProp);
            } catch (Throwable unused) {
                return str;
            }
        } catch (Throwable unused2) {
            str = null;
            return null;
        }
    }

    public static int getTimeZone(Context context) {
        if (context == null) {
            return 8;
        }
        try {
            Calendar instance = Calendar.getInstance(getLocale(context));
            if (instance != null) {
                return instance.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (Throwable th) {
            MLog.i(LOG_TAG, "error in getTimeZone", th);
        }
        return 8;
    }

    public static String getYunOSVersion(Properties properties) {
        String property = properties.getProperty("ro.yunos.version");
        if (!TextUtils.isEmpty(property)) {
            return property;
        }
        return null;
    }

    public static boolean isChineseAera(Context context) {
        if (context == null) {
            return false;
        }
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, e.N, "");
        if (TextUtils.isEmpty(imprintProperty)) {
            if (getImsi(context) == null) {
                String str = getLocaleInfo(context)[0];
                if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase("cn")) {
                    return true;
                }
            } else {
                int i2 = context.getResources().getConfiguration().mcc;
                if (i2 == 460 || i2 == 461) {
                    return true;
                }
                if (i2 == 0) {
                    String str2 = getLocaleInfo(context)[0];
                    if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase("cn")) {
                        return true;
                    }
                }
            }
            return false;
        } else if (imprintProperty.equals("cn")) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isEmui(Properties properties) {
        return properties.getProperty(KEY_EMUI_VERSION_CODE, null) != null;
    }

    public static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            if (!(!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null)) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean isWiFiAvailable(Context context) {
        if (context == null) {
            return false;
        }
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    public static String reaMac(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        Throwable th;
        String str2 = null;
        try {
            fileReader = new FileReader(str);
        } catch (Throwable unused) {
        }
        try {
            bufferedReader = new BufferedReader(fileReader, 1024);
            try {
                str2 = bufferedReader.readLine();
                try {
                    fileReader.close();
                } catch (Throwable unused2) {
                }
                bufferedReader.close();
                return str2;
            } catch (Throwable th2) {
                th = th2;
                try {
                    fileReader.close();
                } catch (Throwable unused3) {
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    public static int reflectMetrics(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Throwable unused) {
            return -1;
        }
    }
}
