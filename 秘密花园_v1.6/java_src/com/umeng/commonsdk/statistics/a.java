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
    public static int f3243c;

    /* renamed from: d  reason: collision with root package name */
    public static String f3244d;

    public static String a(Context context) {
        if (TextUtils.isEmpty(f3244d)) {
            f3244d = d.a(context).b();
        }
        return f3244d;
    }
}
