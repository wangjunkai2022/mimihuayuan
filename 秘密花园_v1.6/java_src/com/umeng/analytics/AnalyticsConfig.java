package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.z;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.utils.UMUtils;
/* loaded from: classes.dex */
public class AnalyticsConfig {
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    public static String b;

    /* renamed from: c  reason: collision with root package name */
    public static String f2786c;

    /* renamed from: d  reason: collision with root package name */
    public static String f2787d;

    /* renamed from: e  reason: collision with root package name */
    public static int f2788e;
    public static String mWrapperType;
    public static String mWrapperVersion;
    public static MobclickAgent.PageMode AUTO_ACTIVITY_PAGE_COLLECTION = MobclickAgent.PageMode.LEGACY_AUTO;
    public static boolean CHANGE_CATCH_EXCEPTION_NOTALLOW = false;
    public static boolean CATCH_EXCEPTION = true;
    public static long kContinueSessionMillis = com.umeng.commonsdk.proguard.c.f3131d;
    public static boolean CLEAR_EKV_BL = false;
    public static boolean CLEAR_EKV_WL = false;
    public static double[] a = null;

    public static void a(String str) {
        f2786c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static double[] getLocation() {
        return a;
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(f2787d)) {
            f2787d = z.a(context).c();
        }
        return f2787d;
    }

    public static int getVerticalType(Context context) {
        if (f2788e == 0) {
            f2788e = z.a(context).d();
        }
        return f2788e;
    }

    public static void a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            f2787d = str;
            z.a(context).a(f2787d);
            return;
        }
        UMLog.aq(h.A, 0, "\\|");
    }

    public static void a(Context context, int i2) {
        f2788e = i2;
        z.a(context).a(f2788e);
    }
}
