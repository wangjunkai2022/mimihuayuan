package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.internal.utils.a;
import com.umeng.commonsdk.statistics.common.ULog;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: InfoPreference.java */
/* loaded from: classes.dex */
public class f {
    public static final String a = "info";
    public static final String b = "a_na";

    /* renamed from: c  reason: collision with root package name */
    public static final String f2957c = "a_st";

    /* renamed from: d  reason: collision with root package name */
    public static final String f2958d = "a_ad";

    /* renamed from: e  reason: collision with root package name */
    public static final String f2959e = "blueinfo";

    /* renamed from: f  reason: collision with root package name */
    public static final String f2960f = "a_dc";

    /* renamed from: g  reason: collision with root package name */
    public static final String f2961g = "bssid";

    /* renamed from: h  reason: collision with root package name */
    public static final String f2962h = "ssid";

    /* renamed from: i  reason: collision with root package name */
    public static final String f2963i = "a_fcy";

    /* renamed from: j  reason: collision with root package name */
    public static final String f2964j = "a_hssid";

    /* renamed from: k  reason: collision with root package name */
    public static final String f2965k = "a_ip";

    /* renamed from: l  reason: collision with root package name */
    public static final String f2966l = "a_ls";

    /* renamed from: m  reason: collision with root package name */
    public static final String f2967m = "a_mac";
    public static final String n = "a_nid";
    public static final String o = "rssi";
    public static final String p = "sta";
    public static final String q = "ts";
    public static final String r = "wifiinfo";
    public static final String s = "ua";

    public static JSONObject a(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences == null) {
            return null;
        }
        try {
            String string = sharedPreferences.getString(f2959e, null);
            if (string != null) {
                return new JSONObject(string);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONArray b(Context context) {
        String string;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
            if (sharedPreferences == null || (string = sharedPreferences.getString(r, null)) == null) {
                return null;
            }
            return new JSONArray(string);
        } catch (Exception e2) {
            ULog.e(e2.getMessage());
            return null;
        }
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove(r).commit();
        }
    }

    public static String d(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(s, null);
        }
        return null;
    }

    public static void a(Context context, Object obj) {
        if (obj != null) {
            try {
                a.b bVar = (a.b) obj;
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
                String str = null;
                if (sharedPreferences != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(b, bVar.f2930c);
                    jSONObject.put(f2957c, bVar.b);
                    jSONObject.put(f2958d, bVar.a);
                    jSONObject.put("ts", System.currentTimeMillis());
                    str = jSONObject.toString();
                }
                if (str != null) {
                    sharedPreferences.edit().putString(f2959e, str).commit();
                }
            } catch (Exception e2) {
                StringBuilder o2 = f.b.a.a.a.o("saveBluetoothInfo:");
                o2.append(e2.getMessage());
                ULog.e(o2.toString());
            }
        }
    }

    public static void a(Context context, a.c cVar) {
        JSONArray jSONArray;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
            String str = null;
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString(r, null);
                if (string == null) {
                    jSONArray = new JSONArray();
                } else {
                    jSONArray = new JSONArray(string);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f2960f, cVar.a);
                jSONObject.put(f2961g, cVar.b);
                jSONObject.put(f2962h, cVar.f2931c);
                jSONObject.put(f2963i, cVar.f2932d);
                jSONObject.put(f2964j, cVar.f2933e);
                jSONObject.put(f2965k, cVar.f2934f);
                jSONObject.put(f2966l, cVar.f2935g);
                jSONObject.put(f2967m, cVar.f2936h);
                jSONObject.put(n, cVar.f2937i);
                jSONObject.put(o, cVar.f2938j);
                jSONObject.put(p, cVar.f2939k);
                jSONObject.put("ts", cVar.f2940l);
                jSONArray.put(jSONObject);
                str = jSONArray.toString();
            }
            if (str != null) {
                sharedPreferences.edit().putString(r, str).commit();
            }
        } catch (Exception e2) {
            ULog.e(e2.getMessage());
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(s, str).commit();
        }
    }
}
