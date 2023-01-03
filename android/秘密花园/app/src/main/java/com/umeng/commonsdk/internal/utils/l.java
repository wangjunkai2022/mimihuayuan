package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.core.os.EnvironmentCompat;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* compiled from: UMProbe.java */
/* loaded from: classes.dex */
public class l {
    public static final String a = "UM_PROBE_DATA";
    public static final String b = "_dsk_s";

    /* renamed from: c  reason: collision with root package name */
    public static final String f2985c = "_thm_z";

    /* renamed from: d  reason: collision with root package name */
    public static final String f2986d = "_gdf_r";

    /* renamed from: e  reason: collision with root package name */
    public static Object f2987e = new Object();

    public static void b(final Context context) {
        if (!c(context)) {
            final String[] strArr = {EnvironmentCompat.MEDIA_UNKNOWN, EnvironmentCompat.MEDIA_UNKNOWN, EnvironmentCompat.MEDIA_UNKNOWN};
            new Thread() { // from class: com.umeng.commonsdk.internal.utils.l.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    try {
                        strArr[0] = l.c();
                        strArr[1] = l.a();
                        strArr[2] = l.b();
                        ULog.i("diskType = " + strArr[0] + "; ThremalZone = " + strArr[1] + "; GoldFishRc = " + strArr[2]);
                        l.b(context, strArr);
                    } catch (Throwable th) {
                        UMCrashManager.reportCrash(context, th);
                    }
                }
            }.start();
        }
    }

    public static boolean c(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null || TextUtils.isEmpty(sharedPreferences.getString(b, ""))) {
            return false;
        }
        return true;
    }

    public static String a(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
            if (sharedPreferences == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            synchronized (f2987e) {
                jSONObject.put(b, sharedPreferences.getString(b, ""));
                jSONObject.put(f2985c, sharedPreferences.getString(f2985c, ""));
                jSONObject.put(f2986d, sharedPreferences.getString(f2986d, ""));
            }
            return jSONObject.toString();
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    public static void b(Context context, String[] strArr) {
        SharedPreferences sharedPreferences;
        if (context != null && (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) != null) {
            synchronized (f2987e) {
                sharedPreferences.edit().putString(b, strArr[0]).putString(f2985c, strArr[1]).putString(f2986d, strArr[2]).commit();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c() {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: all -> 0x0034
            java.io.FileReader r2 = new java.io.FileReader     // Catch: all -> 0x0034
            java.lang.String r3 = "/proc/diskstats"
            r2.<init>(r3)     // Catch: all -> 0x0034
            r1.<init>(r2)     // Catch: all -> 0x0034
        L_0x000d:
            java.lang.String r0 = r1.readLine()     // Catch: all -> 0x0033
            java.lang.String r2 = "mtd"
            java.lang.String r3 = "sda"
            java.lang.String r4 = "mmcblk"
            if (r0 == 0) goto L_0x0030
            boolean r5 = r0.contains(r4)     // Catch: all -> 0x0033
            if (r5 == 0) goto L_0x0021
            r2 = r4
            goto L_0x0037
        L_0x0021:
            boolean r4 = r0.contains(r3)     // Catch: all -> 0x0033
            if (r4 == 0) goto L_0x0029
            r2 = r3
            goto L_0x0037
        L_0x0029:
            boolean r0 = r0.contains(r2)     // Catch: all -> 0x0033
            if (r0 == 0) goto L_0x000d
            goto L_0x0037
        L_0x0030:
            java.lang.String r2 = "unknown"
            goto L_0x0037
        L_0x0033:
            r0 = r1
        L_0x0034:
            java.lang.String r2 = "noper"
            r1 = r0
        L_0x0037:
            if (r1 == 0) goto L_0x003c
            r1.close()     // Catch: all -> 0x003c
        L_0x003c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.l.c():java.lang.String");
    }

    public static String b() {
        int i2;
        try {
            i2 = a("ls /", "goldfish");
        } catch (Throwable unused) {
            i2 = -1;
        }
        if (i2 > 0) {
            return "goldfish";
        }
        return i2 < 0 ? "noper" : EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public static int a(String str, String str2) throws IOException {
        int i2;
        Process exec = Runtime.getRuntime().exec(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                if (readLine.contains(str2)) {
                    i2 = 1;
                    break;
                }
            } else {
                i2 = -1;
                break;
            }
        }
        try {
            if (exec.waitFor() != 0) {
                return -1;
            }
            return i2;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    public static String a() {
        int i2;
        try {
            i2 = a("ls /sys/class/thermal", "thermal_zone");
        } catch (Throwable unused) {
            i2 = -1;
        }
        if (i2 > 0) {
            return "thermal_zone";
        }
        return i2 < 0 ? "noper" : EnvironmentCompat.MEDIA_UNKNOWN;
    }
}
