package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* compiled from: SPHelper.java */
/* loaded from: classes.dex */
public final class z {
    public static z a = null;
    public static Context b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f2873c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final String f2874d = "mobclick_agent_user_";

    /* compiled from: SPHelper.java */
    /* loaded from: classes.dex */
    public static final class a {
        public static final z a = new z();
    }

    public static synchronized z a(Context context) {
        z zVar;
        synchronized (z.class) {
            if (b == null && context != null) {
                b = context.getApplicationContext();
            }
            if (b != null) {
                f2873c = context.getPackageName();
            }
            zVar = a.a;
        }
        return zVar;
    }

    private SharedPreferences e() {
        Context context = b;
        if (context == null) {
            return null;
        }
        StringBuilder o = f.b.a.a.a.o("mobclick_agent_user_");
        o.append(f2873c);
        return context.getSharedPreferences(o.toString(), 0);
    }

    public void b() {
        SharedPreferences e2 = e();
        if (e2 != null) {
            e2.edit().remove("au_p").remove("au_u").commit();
        }
    }

    public String c() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    public int d() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        SharedPreferences.Editor edit = e().edit();
        edit.putString("au_p", str);
        edit.putString("au_u", str2);
        edit.commit();
    }

    public String[] a() {
        SharedPreferences e2 = e();
        if (e2 != null) {
            String string = e2.getString("au_p", null);
            String string2 = e2.getString("au_u", null);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                return null;
            }
            return new String[]{string, string2};
        }
        return null;
    }

    public void a(String str) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    public void a(int i2) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i2).commit();
        }
    }
}
