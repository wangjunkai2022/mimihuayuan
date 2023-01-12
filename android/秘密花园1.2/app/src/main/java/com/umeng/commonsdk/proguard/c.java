package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: UMSysLocationCache.java */
/* loaded from: classes.dex */
public class c {
    public static final String a = "lng";
    public static final String b = "lat";

    /* renamed from: c  reason: collision with root package name */
    public static final String f3126c = "ts";

    /* renamed from: d  reason: collision with root package name */
    public static final long f3127d = 30000;

    /* renamed from: e  reason: collision with root package name */
    public static final int f3128e = 200;

    /* renamed from: f  reason: collision with root package name */
    public static final String f3129f = "UMSysLocationCache";

    /* renamed from: g  reason: collision with root package name */
    public static boolean f3130g = true;

    public static JSONArray b(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.internal.a.p, 0);
        JSONArray jSONArray = null;
        if (sharedPreferences == null) {
            return null;
        }
        try {
            String string = sharedPreferences.getString(com.umeng.commonsdk.internal.a.q, "");
            if (!TextUtils.isEmpty(string)) {
                jSONArray = new JSONArray(string);
            }
        } catch (JSONException e2) {
            ULog.i(f3129f, "e is " + e2);
        } catch (Throwable th) {
            ULog.i(f3129f, "e is " + th);
        }
        if (jSONArray != null) {
            StringBuilder o = f.b.a.a.a.o("get json str is ");
            o.append(jSONArray.toString());
            ULog.i(f3129f, o.toString());
        }
        return jSONArray;
    }

    public static void c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.internal.a.p, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(com.umeng.commonsdk.internal.a.q, "");
                edit.commit();
                ULog.i(f3129f, "delete is ok~~");
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(final Context context) {
        ULog.i(f3129f, "begin location");
        if (context == null) {
            return;
        }
        try {
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.c.1
                @Override // java.lang.Runnable
                public void run() {
                    while (c.f3130g) {
                        try {
                            JSONArray b2 = c.b(context);
                            if (b2 != null && b2.length() >= 200) {
                                boolean unused = c.f3130g = false;
                                return;
                            }
                            ULog.i(c.f3129f, "location status is ok, time is " + System.currentTimeMillis());
                            final b bVar = new b(context);
                            bVar.a(new d() { // from class: com.umeng.commonsdk.proguard.c.1.1
                                /* JADX WARN: Multi-variable type inference failed */
                                /* JADX WARN: Type inference failed for: r2v4 */
                                /* JADX WARN: Type inference failed for: r2v8 */
                                @Override // com.umeng.commonsdk.proguard.d
                                public void a(Location location) {
                                    int i2;
                                    String str = com.umeng.commonsdk.internal.a.s;
                                    if (location != null) {
                                        try {
                                            double longitude = location.getLongitude();
                                            double latitude = location.getLatitude();
                                            float accuracy = location.getAccuracy();
                                            double altitude = location.getAltitude();
                                            ULog.i(c.f3129f, "lon is " + longitude + ", lat is " + latitude + ", acc is " + accuracy + ", alt is " + altitude);
                                            if (longitude != 0.0d && latitude != 0.0d) {
                                                long time = location.getTime();
                                                JSONObject jSONObject = new JSONObject();
                                                try {
                                                    jSONObject.put("lng", longitude);
                                                    jSONObject.put("lat", latitude);
                                                    jSONObject.put("ts", time);
                                                    jSONObject.put("acc", accuracy);
                                                    jSONObject.put("alt", altitude);
                                                } catch (JSONException e2) {
                                                    ULog.i(c.f3129f, "e is " + e2);
                                                }
                                                ULog.i(c.f3129f, "locationJSONObject is " + jSONObject.toString());
                                                SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.internal.a.p, 0);
                                                if (sharedPreferences != null) {
                                                    String string = sharedPreferences.getString(com.umeng.commonsdk.internal.a.r, "");
                                                    String string2 = sharedPreferences.getString(com.umeng.commonsdk.internal.a.s, "");
                                                    ULog.i(c.f3129f, "--->>> get lon is " + string + ", lat is " + string2);
                                                    try {
                                                        if (!TextUtils.isEmpty(string) && Double.parseDouble(string) == longitude && !TextUtils.isEmpty(string2) && Double.parseDouble(string2) == latitude) {
                                                            Object[] objArr = new Object[1];
                                                            objArr[0] = "location same";
                                                            ULog.i(c.f3129f, objArr);
                                                            str = "location same";
                                                        } else {
                                                            JSONArray b3 = c.b(context);
                                                            if (b3 == null) {
                                                                b3 = new JSONArray();
                                                            }
                                                            b3.put(jSONObject);
                                                            SharedPreferences.Editor edit = sharedPreferences.edit();
                                                            edit.putString(com.umeng.commonsdk.internal.a.r, String.valueOf(longitude));
                                                            edit.putString(com.umeng.commonsdk.internal.a.s, String.valueOf(latitude));
                                                            edit.putString(com.umeng.commonsdk.internal.a.q, b3.toString());
                                                            edit.commit();
                                                            Object[] objArr2 = new Object[1];
                                                            objArr2[0] = "location put is ok~~";
                                                            ULog.i(c.f3129f, objArr2);
                                                            str = "location put is ok~~";
                                                        }
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        i2 = str;
                                                        Object[] objArr3 = new Object[i2];
                                                        StringBuilder o = f.b.a.a.a.o("");
                                                        o.append(th.getMessage());
                                                        objArr3[0] = o.toString();
                                                        ULog.i(c.f3129f, objArr3);
                                                        bVar.a();
                                                    }
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            i2 = 1;
                                        }
                                    }
                                    bVar.a();
                                }
                            });
                            try {
                                Thread.sleep(c.f3127d);
                            } catch (Exception unused2) {
                            }
                        } catch (Throwable unused3) {
                            return;
                        }
                    }
                }
            }).start();
        } catch (Exception unused) {
        }
    }
}
