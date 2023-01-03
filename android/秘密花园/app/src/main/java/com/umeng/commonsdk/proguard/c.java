package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.text.TextUtils;
import com.umeng.commonsdk.internal.a;
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
    public static final String f3051c = "ts";

    /* renamed from: d  reason: collision with root package name */
    public static final long f3052d = 30000;

    /* renamed from: e  reason: collision with root package name */
    public static final int f3053e = 200;

    /* renamed from: f  reason: collision with root package name */
    public static final String f3054f = "UMSysLocationCache";

    /* renamed from: g  reason: collision with root package name */
    public static boolean f3055g = true;

    public static JSONArray b(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(a.p, 0);
        JSONArray jSONArray = null;
        if (sharedPreferences == null) {
            return null;
        }
        try {
            String string = sharedPreferences.getString(a.q, "");
            if (!TextUtils.isEmpty(string)) {
                jSONArray = new JSONArray(string);
            }
        } catch (JSONException e2) {
            ULog.i(f3054f, "e is " + e2);
        } catch (Throwable th) {
            ULog.i(f3054f, "e is " + th);
        }
        if (jSONArray != null) {
            StringBuilder o = f.b.a.a.a.o("get json str is ");
            o.append(jSONArray.toString());
            ULog.i(f3054f, o.toString());
        }
        return jSONArray;
    }

    public static void c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(a.p, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(a.q, "");
                edit.commit();
                ULog.i(f3054f, "delete is ok~~");
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(final Context context) {
        ULog.i(f3054f, "begin location");
        if (context != null) {
            try {
                new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        while (c.f3055g) {
                            try {
                                JSONArray b2 = c.b(context);
                                if (b2 == null || b2.length() < 200) {
                                    ULog.i(c.f3054f, "location status is ok, time is " + System.currentTimeMillis());
                                    final b bVar = new b(context);
                                    bVar.a(new d() { // from class: com.umeng.commonsdk.proguard.c.1.1
                                        /* JADX DEBUG: Failed to insert an additional move for type inference into block B:44:? */
                                        /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: java.lang.String */
                                        /* JADX DEBUG: Multi-variable search result rejected for r2v13, resolved type: java.lang.String */
                                        /* JADX WARN: Multi-variable type inference failed */
                                        /* JADX WARN: Type inference failed for: r2v4 */
                                        @Override // com.umeng.commonsdk.proguard.d
                                        public void a(Location location) {
                                            int i2;
                                            Throwable th;
                                            String str = a.s;
                                            str = str;
                                            if (location != null) {
                                                try {
                                                    double longitude = location.getLongitude();
                                                    double latitude = location.getLatitude();
                                                    float accuracy = location.getAccuracy();
                                                    double altitude = location.getAltitude();
                                                    ULog.i(c.f3054f, "lon is " + longitude + ", lat is " + latitude + ", acc is " + accuracy + ", alt is " + altitude);
                                                    str = str;
                                                    if (longitude != 0.0d) {
                                                        str = str;
                                                        if (latitude != 0.0d) {
                                                            long time = location.getTime();
                                                            JSONObject jSONObject = new JSONObject();
                                                            try {
                                                                jSONObject.put("lng", longitude);
                                                                jSONObject.put("lat", latitude);
                                                                jSONObject.put("ts", time);
                                                                jSONObject.put("acc", (double) accuracy);
                                                                jSONObject.put("alt", altitude);
                                                            } catch (JSONException e2) {
                                                                ULog.i(c.f3054f, "e is " + e2);
                                                            }
                                                            ULog.i(c.f3054f, "locationJSONObject is " + jSONObject.toString());
                                                            SharedPreferences sharedPreferences = context.getSharedPreferences(a.p, 0);
                                                            str = str;
                                                            if (sharedPreferences != null) {
                                                                String string = sharedPreferences.getString(a.r, "");
                                                                String string2 = sharedPreferences.getString(str, "");
                                                                ULog.i(c.f3054f, "--->>> get lon is " + string + ", lat is " + string2);
                                                                try {
                                                                    if (TextUtils.isEmpty(string) || Double.parseDouble(string) != longitude || TextUtils.isEmpty(string2) || Double.parseDouble(string2) != latitude) {
                                                                        JSONArray b3 = c.b(context);
                                                                        if (b3 == null) {
                                                                            b3 = new JSONArray();
                                                                        }
                                                                        b3.put(jSONObject);
                                                                        SharedPreferences.Editor edit = sharedPreferences.edit();
                                                                        edit.putString(a.r, String.valueOf(longitude));
                                                                        edit.putString(str, String.valueOf(latitude));
                                                                        edit.putString(a.q, b3.toString());
                                                                        edit.commit();
                                                                        Object[] objArr = new Object[1];
                                                                        String str2 = "location put is ok~~";
                                                                        objArr[0] = str2;
                                                                        ULog.i(c.f3054f, objArr);
                                                                        str = str2;
                                                                    } else {
                                                                        Object[] objArr2 = new Object[1];
                                                                        String str3 = "location same";
                                                                        objArr2[0] = str3;
                                                                        ULog.i(c.f3054f, objArr2);
                                                                        str = str3;
                                                                    }
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    i2 = str;
                                                                    Object[] objArr3 = new Object[i2];
                                                                    StringBuilder o = f.b.a.a.a.o("");
                                                                    o.append(th.getMessage());
                                                                    objArr3[0] = o.toString();
                                                                    ULog.i(c.f3054f, objArr3);
                                                                    str = objArr3;
                                                                    bVar.a();
                                                                }
                                                            }
                                                        }
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    i2 = 1;
                                                    Object[] objArr3 = new Object[i2];
                                                    StringBuilder o = f.b.a.a.a.o("");
                                                    o.append(th.getMessage());
                                                    objArr3[0] = o.toString();
                                                    ULog.i(c.f3054f, objArr3);
                                                    str = objArr3;
                                                    bVar.a();
                                                }
                                            }
                                            bVar.a();
                                        }
                                    });
                                    try {
                                        Thread.sleep(c.f3052d);
                                    } catch (Exception unused) {
                                    }
                                } else {
                                    boolean unused2 = c.f3055g = false;
                                    return;
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
}
