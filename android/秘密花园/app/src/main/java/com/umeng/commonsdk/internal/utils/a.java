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
    public static class C0015a {
        public String a;
        public String b;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* loaded from: classes.dex */
    public static class b {
        public String a = null;
        public int b = -1;

        /* renamed from: c  reason: collision with root package name */
        public String f2930c = null;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* loaded from: classes.dex */
    public static class c {
        public int a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f2931c;

        /* renamed from: d  reason: collision with root package name */
        public int f2932d;

        /* renamed from: e  reason: collision with root package name */
        public int f2933e;

        /* renamed from: f  reason: collision with root package name */
        public int f2934f;

        /* renamed from: g  reason: collision with root package name */
        public int f2935g;

        /* renamed from: h  reason: collision with root package name */
        public String f2936h;

        /* renamed from: i  reason: collision with root package name */
        public int f2937i;

        /* renamed from: j  reason: collision with root package name */
        public int f2938j;

        /* renamed from: k  reason: collision with root package name */
        public int f2939k;

        /* renamed from: l  reason: collision with root package name */
        public long f2940l;
    }

    public static long a(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e2) {
            UMCrashManager.reportCrash(context, e2);
            ULog.e("getAppFirstInstallTime" + e2.getMessage());
            return 0;
        }
    }

    public static long b(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e2) {
            UMCrashManager.reportCrash(context, e2);
            ULog.e("getAppLastUpdateTime:" + e2.getMessage());
            return 0;
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
        if (context != null) {
            f.c(context);
        }
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
        if (context != null) {
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
                        bVar.f2930c = defaultAdapter.getName();
                        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f2923i, com.umeng.commonsdk.internal.b.a(context).a(), bVar);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static JSONObject o(Context context) {
        if (context == null) {
            return null;
        }
        return f.a(context);
    }

    public static List<C0015a> p(Context context) {
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
                        C0015a aVar = new C0015a();
                        aVar.a = str;
                        aVar.b = e(context, str);
                        arrayList.add(aVar);
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
            if (obj == null || obj.equalsIgnoreCase("")) {
                return obj;
            }
            return HelperUtils.getUmengMD5(obj);
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
            return ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static long i() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
        } catch (Exception unused) {
            return 0;
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
        if (context != null && (c2 = c(context)) != null) {
            c cVar = new c();
            cVar.a = c2.describeContents();
            cVar.b = c2.getBSSID();
            cVar.f2931c = c2.getSSID();
            cVar.f2932d = c2.getFrequency();
            boolean z = true;
            if (c2.getHiddenSSID()) {
                cVar.f2933e = 1;
            } else {
                cVar.f2933e = 0;
            }
            cVar.f2934f = c2.getIpAddress();
            cVar.f2935g = c2.getLinkSpeed();
            cVar.f2936h = DeviceConfig.getMac(context);
            cVar.f2937i = c2.getNetworkId();
            cVar.f2938j = c2.getRssi();
            cVar.f2939k = g(context);
            cVar.f2940l = System.currentTimeMillis();
            try {
                JSONArray b2 = f.b(context);
                if (b2 != null && b2.length() > 0) {
                    for (int i2 = 0; i2 < b2.length(); i2++) {
                        String optString = b2.optJSONObject(i2).optString(f.f2962h, null);
                        if (optString != null && optString.equals(cVar.f2931c)) {
                            break;
                        }
                    }
                }
                z = false;
                if (!z) {
                    f.a(context, cVar);
                }
            } catch (Exception e2) {
                StringBuilder o = f.b.a.a.a.o("wifiChange:");
                o.append(e2.getMessage());
                ULog.e(o.toString());
            }
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
        return 0;
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
        return 0;
    }
}
