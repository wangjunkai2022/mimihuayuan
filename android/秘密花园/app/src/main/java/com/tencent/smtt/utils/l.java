package com.tencent.smtt.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.smtt.sdk.TbsConfig;
import com.tencent.smtt.sdk.WebView;
import f.b.a.a.a;

/* compiled from: SysCoreQUA2Utils.java */
/* loaded from: classes.dex */
public class l {
    public static String a = null;
    public static String b = "GA";

    /* renamed from: c  reason: collision with root package name */
    public static String f2685c = "GE";

    /* renamed from: d  reason: collision with root package name */
    public static String f2686d = "9422";

    /* renamed from: e  reason: collision with root package name */
    public static String f2687e = "0";

    /* renamed from: f  reason: collision with root package name */
    public static String f2688f = "";

    /* renamed from: g  reason: collision with root package name */
    public static boolean f2689g = false;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f2690h = false;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2691i = false;

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String a2 = a(context, String.valueOf(WebView.getTbsSDKVersion(context)), "0", b, f2685c, f2686d, f2687e, f2688f, f2689g);
        a = a2;
        return a2;
    }

    public static int b(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay != null) {
            return defaultDisplay.getWidth();
        }
        return -1;
    }

    public static int c(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay != null) {
            return defaultDisplay.getHeight();
        }
        return -1;
    }

    public static boolean d(Context context) {
        if (f2690h) {
            return f2691i;
        }
        try {
            boolean z = (Math.min(b(context), c(context)) * 160) / e(context) >= 700;
            f2691i = z;
            f2690h = true;
            return z;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int e(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay == null) {
            return 160;
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00c5  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x010a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.Context r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, boolean r19) {
        /*
        // Method dump skipped, instructions count: 298
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.utils.l.a(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    public static void a(StringBuilder sb, String str, String str2) {
        a.C(sb, "&", str, "=", str2);
    }

    public static String a(String str) {
        if (TbsConfig.APP_WX.equals(str)) {
            return "WX";
        }
        if (TbsConfig.APP_QQ.equals(str)) {
            return "QQ";
        }
        if (TbsConfig.APP_QZONE.equals(str)) {
            return "QZ";
        }
        return TbsConfig.APP_QB.equals(str) ? "QB" : "TRD";
    }

    public static String a() {
        StringBuilder o = a.o(" ");
        o.append(Build.MODEL.replaceAll("[ |\\/|\\_|\\&|\\|]", ""));
        o.append(" ");
        return o.toString();
    }
}
