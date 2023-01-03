package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.common.d;

/* compiled from: AnalyticsConfig.java */
/* loaded from: classes.dex */
public class a {
    public static String a = "native";
    public static String b = "";

    /* renamed from: c  reason: collision with root package name */
    public static int f3164c;

    /* renamed from: d  reason: collision with root package name */
    public static String f3165d;

    public static String a(Context context) {
        if (TextUtils.isEmpty(f3165d)) {
            f3165d = d.a(context).b();
        }
        return f3165d;
    }
}
