package com.umeng.commonsdk.internal.utils;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.ActivityChooserModel;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ApplicationLayerUtil.java */
/* loaded from: classes.dex */
public class a {

    /* compiled from: ApplicationLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0021a {
        public String a;
        public String b;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* loaded from: classes.dex */
    public static class b {
        public String a = null;
        public int b = -1;

        /* renamed from: c  reason: collision with root package name */
        public String f3005c = null;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* loaded from: classes.dex */
    public static class c {
        public int a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f3006c;

        /* renamed from: d  reason: collision with root package name */
        public int f3007d;

        /* renamed from: e  reason: collision with root package name */
        public int f3008e;

        /* renamed from: f  reason: collision with root package name */
        public int f3009f;

        /* renamed from: g  reason: collision with root package name */
        public int f3010g;

        /* renamed from: h  reason: collision with root package name */
        public String f3011h;

        /* renamed from: i  reason: collision with root package name */
        public int f3012i;

        /* renamed from: j  reason: collision with root package name */
        public int f3013j;

        /* renamed from: k  reason: collision with root package name */
        public int f3014k;

        /* renamed from: l  reason: collision with root package name */
        public long f3015l;
    }

    public static long a(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e2) {
            UMCrashManager.reportCrash(context, e2);
            ULog.e("getAppFirstInstallTime" + e2.getMessage());
            return 0L;
        }
    }

    public static long b(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e2) {
            UMCrashManager.reportCrash(context, e2);
            ULog.e("getAppLastUpdateTime:" + e2.getMessage());
            return 0L;
        }
    }

    public static String c(Context context, String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
            ULog.e("getAppInstaller:" + e2.getMessage());
            return null;
        }
    }

    public static int d(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 0).applicationInfo;
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e2) {
            UMCrashManager.reportCrash(context, e2);
            ULog.e("getAppUid:" + e2.getMessage());
            return 0;
        }
    }

    public static JSONArray e(Context context) {
        if (context == null) {
            return null;
        }
        return f.b(context);
    }

    public static void f(Context context) {
        if (context == null) {
            return;
        }
        f.c(context);
    }

    public static int g(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return -1;
        }
        return wifiManager.getWifiState();
    }

    public static int h(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static int i(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static DisplayMetrics j(Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    public static String k(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        return telephonyManager.getSubscriberId();
    }

    public static String l(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null || !DeviceConfig.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return telephonyManager.getDeviceId();
        }
        try {
            String t = t(context);
            try {
                if (TextUtils.isEmpty(t)) {
                    t = telephonyManager.getDeviceId();
                }
            } catch (Throwable unused) {
            }
            return t;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static List<InputMethodInfo> m(Context context) {
        InputMethodManager inputMethodManager;
        if (context == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return null;
        }
        return inputMethodManager.getInputMethodList();
    }

    public static void n(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (DeviceConfig.checkPermission(context, "android.permission.BLUETOOTH")) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                b bVar = new b();
                if (defaultAdapter.isEnabled()) {
                    bVar.b = defaultAdapter.getState();
                    if (Build.VERSION.SDK_INT < 23) {
                        bVar.a = defaultAdapter.getAddress();
                    } else {
                        bVar.a = a(defaultAdapter);
                    }
                    bVar.f3005c = defaultAdapter.getName();
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f2998i, com.umeng.commonsdk.internal.b.a(context).a(), bVar);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static JSONObject o(Context context) {
        if (context == null) {
            return null;
        }
        return f.a(context);
    }

    public static List<C0021a> p(Context context) {
        String[] list;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (String str : list) {
                    if (str != null && !str.startsWith(".")) {
                        C0021a c0021a = new C0021a();
                        c0021a.a = str;
                        c0021a.b = e(context, str);
                        arrayList.add(c0021a);
                    }
                }
            }
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("getAppList:");
            o.append(e2.getMessage());
            ULog.e(o.toString());
        }
        return arrayList;
    }

    public static ActivityManager.MemoryInfo q(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static String r(Context context) {
        if (context == null) {
        }
        return null;
    }

    public static String s(Context context) {
        return null;
    }

    public static String t(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object invoke = Class.forName("android.telephony.TelephonyManager").getMethod("getMeid", new Class[0]).invoke(null, new Object[0]);
            if (invoke == null || !(invoke instanceof String)) {
                return null;
            }
            return (String) invoke;
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("meid:");
            o.append(e2.getMessage());
            ULog.e(o.toString());
            return null;
        }
    }

    public static String e() {
        return g.a("df");
    }

    public static long f() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public static boolean j() {
        String externalStorageState = Environment.getExternalStorageState();
        return "mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState);
    }

    public static String e(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                return (String) applicationInfo.loadLabel(context.getPackageManager());
            }
            return null;
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("getLabel:");
            o.append(e2.getMessage());
            ULog.e(o.toString());
            return null;
        }
    }

    public static WifiInfo c(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static String g() {
        try {
            Method declaredMethod = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            String obj = declaredMethod.invoke(null, "net.hostname").toString();
            return (obj == null || obj.equalsIgnoreCase("")) ? obj : HelperUtils.getUmengMD5(obj);
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("getHostName:");
            o.append(e2.getMessage());
            ULog.e(o.toString());
            return null;
        }
    }

    public static long h() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockSize() * statFs.getBlockCount();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long i() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockSize() * statFs.getAvailableBlocks();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static boolean a() {
        return h.a();
    }

    public static String b() {
        return new SimpleDateFormat().format(new Date());
    }

    public static float a(Context context) {
        if (context == null) {
            return 0.0f;
        }
        Configuration configuration = new Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            return configuration.fontScale;
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("getFontSize:");
            o.append(e2.getMessage());
            ULog.e(o.toString());
            return 0.0f;
        }
    }

    public static void d(Context context) {
        WifiInfo c2;
        if (context == null || (c2 = c(context)) == null) {
            return;
        }
        c cVar = new c();
        cVar.a = c2.describeContents();
        cVar.b = c2.getBSSID();
        cVar.f3006c = c2.getSSID();
        cVar.f3007d = c2.getFrequency();
        boolean z = true;
        if (c2.getHiddenSSID()) {
            cVar.f3008e = 1;
        } else {
            cVar.f3008e = 0;
        }
        cVar.f3009f = c2.getIpAddress();
        cVar.f3010g = c2.getLinkSpeed();
        cVar.f3011h = DeviceConfig.getMac(context);
        cVar.f3012i = c2.getNetworkId();
        cVar.f3013j = c2.getRssi();
        cVar.f3014k = g(context);
        cVar.f3015l = System.currentTimeMillis();
        try {
            JSONArray b2 = f.b(context);
            if (b2 != null && b2.length() > 0) {
                for (int i2 = 0; i2 < b2.length(); i2++) {
                    String optString = b2.optJSONObject(i2).optString(f.f3037h, null);
                    if (optString != null && optString.equals(cVar.f3006c)) {
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                return;
            }
            f.a(context, cVar);
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("wifiChange:");
            o.append(e2.getMessage());
            ULog.e(o.toString());
        }
    }

    public static List<ScanResult> b(Context context) {
        WifiManager wifiManager;
        List<ScanResult> list = null;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        if (!DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || ((!DeviceConfig.checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION") && !DeviceConfig.checkPermission(context, "android.permission.ACCESS_FINE_LOCATION")) || (list = wifiManager.getScanResults()) == null || list.size() != 0)) {
        }
        return list;
    }

    public static long c() {
        if (j()) {
            return Environment.getExternalStorageDirectory().getFreeSpace();
        }
        return 0L;
    }

    public static String a(BluetoothAdapter bluetoothAdapter) {
        if (bluetoothAdapter == null) {
            return null;
        }
        Class<?> cls = bluetoothAdapter.getClass();
        try {
            Class<?> cls2 = Class.forName("android.bluetooth.IBluetooth");
            Field declaredField = cls.getDeclaredField("mService");
            declaredField.setAccessible(true);
            Method method = cls2.getMethod("getAddress", new Class[0]);
            method.setAccessible(true);
            return (String) method.invoke(declaredField.get(bluetoothAdapter), new Object[0]);
        } catch (Exception unused) {
            return bluetoothAdapter.getAddress();
        }
    }

    public static long d() {
        if (j()) {
            return Environment.getExternalStorageDirectory().getTotalSpace();
        }
        return 0L;
    }
}
