package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.pro.c;
import com.umeng.analytics.pro.g;
import com.umeng.analytics.pro.u;
import com.umeng.analytics.process.UMProcessDBDatasSender;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* compiled from: SessionTracker.java */
/* loaded from: classes.dex */
public class q implements u.a {
    public static final String a = "session_start_time";
    public static final String b = "session_end_time";

    /* renamed from: c  reason: collision with root package name */
    public static final String f2936c = "session_id";

    /* renamed from: d  reason: collision with root package name */
    public static final String f2937d = "pre_session_id";

    /* renamed from: e  reason: collision with root package name */
    public static final String f2938e = "a_start_time";

    /* renamed from: f  reason: collision with root package name */
    public static final String f2939f = "a_end_time";

    /* renamed from: g  reason: collision with root package name */
    public static String f2940g = null;

    /* renamed from: h  reason: collision with root package name */
    public static Context f2941h = null;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2942i = false;

    /* compiled from: SessionTracker.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final q a = new q();
    }

    public static q a() {
        return a.a;
    }

    public void b(Context context, Object obj) {
        long longValue;
        try {
            if (f2941h == null) {
                f2941h = UMGlobalContext.getAppContext(context);
            }
            if (obj == null) {
                longValue = System.currentTimeMillis();
            } else {
                longValue = ((Long) obj).longValue();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f2941h);
            if (sharedPreferences == null) {
                return;
            }
            String string = sharedPreferences.getString(b.aw, "");
            String appVersionName = UMUtils.getAppVersionName(f2941h);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (edit == null) {
                return;
            }
            if (!TextUtils.isEmpty(string) && !string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> requestNewInstantSessionIf: version upgrade");
                edit.putLong(a, longValue);
                edit.commit();
                k.a(f2941h).a((Object) null, true);
                String c2 = u.a().c(f2941h);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> force generate new session: session id = " + c2);
                f2942i = true;
                a(f2941h, longValue, true);
            } else if (u.a().e(f2941h)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> More then 30 sec from last session.");
                f2942i = true;
                edit.putLong(a, longValue);
                edit.commit();
                a(f2941h, longValue, false);
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> less then 30 sec from last session, do nothing.");
                f2942i = false;
            }
        } catch (Throwable unused) {
        }
    }

    public void c(Context context, Object obj) {
        try {
            if (f2941h == null && context != null) {
                f2941h = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong(f2938e, 0L) == 0) {
                MLog.e("onPause called before onResume");
                return;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onEndSessionInternal: write activity end time = " + longValue);
            edit.putLong(f2939f, longValue);
            edit.putLong(b, longValue);
            edit.commit();
        } catch (Throwable unused) {
        }
    }

    public q() {
        u.a().a(this);
    }

    public void a(Context context, long j2) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f2941h);
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putLong(a, j2);
        edit.commit();
    }

    public void a(Context context, Object obj) {
        SharedPreferences.Editor edit;
        try {
            if (f2941h == null && context != null) {
                f2941h = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f2941h);
            if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
                return;
            }
            String string = sharedPreferences.getString(b.aw, "");
            String appVersionName = UMUtils.getAppVersionName(f2941h);
            if (TextUtils.isEmpty(string)) {
                edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                edit.putString(b.aw, appVersionName);
                edit.commit();
            } else if (!string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onStartSessionInternal: upgrade version: " + string + "-> " + appVersionName);
                int i2 = sharedPreferences.getInt("versioncode", 0);
                String string2 = sharedPreferences.getString("pre_date", "");
                String string3 = sharedPreferences.getString("pre_version", "");
                String string4 = sharedPreferences.getString(b.aw, "");
                edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                edit.putString(b.aw, appVersionName);
                edit.putString("vers_date", string2);
                edit.putString("vers_pre_version", string3);
                edit.putString("cur_version", string4);
                edit.putInt("vers_code", i2);
                edit.putString("vers_name", string);
                if (longValue - sharedPreferences.getLong(f2939f, 0L) < u.a().b()) {
                    edit.putLong(f2939f, 0L);
                }
                edit.commit();
                if (f2942i) {
                    f2942i = false;
                    b(f2941h, longValue);
                    c(f2941h, longValue);
                    return;
                }
                return;
            }
            if (f2942i) {
                f2942i = false;
                f2940g = b(context);
                MLog.i("Start new session: " + f2940g);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "mSessionChanged flag has been set, Start new session: " + f2940g);
                return;
            }
            f2940g = sharedPreferences.getString(f2936c, null);
            edit.putLong(f2938e, longValue);
            edit.putLong(f2939f, 0L);
            edit.commit();
            MLog.i("Extend current session: " + f2940g);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "Extend current session: " + f2940g);
            c(context);
            k.a(f2941h).a(false);
        } catch (Throwable unused) {
        }
    }

    private void c(Context context) {
        k.a(context).b(context);
        k.a(context).d();
    }

    public void c(Context context, long j2) {
        if (PreferenceWrapper.getDefault(context) == null) {
            return;
        }
        try {
            k.a(f2941h).c((Object) null);
        } catch (Throwable unused) {
        }
    }

    public String c() {
        return a(f2941h);
    }

    private String b(Context context) {
        if (f2941h == null && context != null) {
            f2941h = context.getApplicationContext();
        }
        String d2 = u.a().d(f2941h);
        try {
            c(context);
            k.a(f2941h).d((Object) null);
        } catch (Throwable unused) {
        }
        return d2;
    }

    public boolean b(Context context, long j2) {
        SharedPreferences sharedPreferences;
        String a2;
        boolean z = false;
        try {
            sharedPreferences = PreferenceWrapper.getDefault(context);
        } catch (Throwable unused) {
        }
        if (sharedPreferences == null || (a2 = u.a().a(f2941h)) == null) {
            return false;
        }
        long j3 = sharedPreferences.getLong(f2938e, 0L);
        long j4 = sharedPreferences.getLong(f2939f, 0L);
        if (j3 > 0 && j4 == 0) {
            z = true;
            c(f2941h, Long.valueOf(j2));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(c.d.a.f2849g, j2);
            JSONObject b2 = com.umeng.analytics.b.a().b();
            if (b2 != null && b2.length() > 0) {
                jSONObject.put("__sp", b2);
            }
            JSONObject c2 = com.umeng.analytics.b.a().c();
            if (c2 != null && c2.length() > 0) {
                jSONObject.put("__pp", c2);
            }
            g.a(context).a(a2, jSONObject, g.a.END);
            k.a(f2941h).e();
        }
        return z;
    }

    public String b() {
        return f2940g;
    }

    public String a(Context context, long j2, boolean z) {
        String b2 = u.a().b(context);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onInstantSessionInternal: current session id = " + b2);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j2);
            JSONObject b3 = com.umeng.analytics.b.a().b();
            if (b3 != null && b3.length() > 0) {
                jSONObject.put("__sp", b3);
            }
            JSONObject c2 = com.umeng.analytics.b.a().c();
            if (c2 != null && c2.length() > 0) {
                jSONObject.put("__pp", c2);
            }
            g.a(context).a(b2, jSONObject, g.a.INSTANTSESSIONBEGIN);
            k.a(context).a(jSONObject, z);
        } catch (Throwable unused) {
        }
        return b2;
    }

    public String a(Context context) {
        try {
            if (f2940g == null) {
                return PreferenceWrapper.getDefault(context).getString(f2936c, null);
            }
        } catch (Throwable unused) {
        }
        return f2940g;
    }

    @Override // com.umeng.analytics.pro.u.a
    public void a(String str, String str2, long j2, long j3) {
        a(f2941h, str2, j2, j3);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "saveSessionToDB: complete");
        if (AnalyticsConstants.SUB_PROCESS_EVENT) {
            Context context = f2941h;
            UMWorkDispatch.sendEvent(context, 36945, UMProcessDBDatasSender.getInstance(context), Long.valueOf(System.currentTimeMillis()));
        }
    }

    @Override // com.umeng.analytics.pro.u.a
    public void a(String str, long j2, long j3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(str, j2);
    }

    private void a(Context context, String str, long j2, long j3) {
        if (TextUtils.isEmpty(f2940g)) {
            f2940g = u.a().a(f2941h);
        }
        if (TextUtils.isEmpty(str) || str.equals(f2940g)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(c.d.a.f2849g, j3);
            JSONObject b2 = com.umeng.analytics.b.a().b();
            if (b2 != null && b2.length() > 0) {
                jSONObject.put("__sp", b2);
            }
            JSONObject c2 = com.umeng.analytics.b.a().c();
            if (c2 != null && c2.length() > 0) {
                jSONObject.put("__pp", c2);
            }
            g.a(context).a(f2940g, jSONObject, g.a.END);
        } catch (Exception unused) {
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__e", j2);
            g.a(context).a(str, jSONObject2, g.a.BEGIN);
        } catch (Exception unused2) {
        }
        f2940g = str;
    }

    private void a(String str, long j2) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f2941h);
        if (sharedPreferences == null) {
            return;
        }
        long j3 = sharedPreferences.getLong(b, 0L);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", str);
            jSONObject.put("__e", j2);
            jSONObject.put(c.d.a.f2849g, j3);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("lat", location[0]);
                jSONObject2.put("lng", location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(c.d.a.f2847e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Method method = cls.getMethod("getUidRxBytes", Integer.TYPE);
            Method method2 = cls.getMethod("getUidTxBytes", Integer.TYPE);
            int i2 = f2941h.getApplicationInfo().uid;
            if (i2 == -1) {
                return;
            }
            long longValue = ((Long) method.invoke(null, Integer.valueOf(i2))).longValue();
            long longValue2 = ((Long) method2.invoke(null, Integer.valueOf(i2))).longValue();
            if (longValue > 0 && longValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(b.G, longValue);
                jSONObject3.put(b.F, longValue2);
                jSONObject.put(c.d.a.f2846d, jSONObject3);
            }
            g.a(f2941h).a(str, jSONObject, g.a.NEWSESSION);
            r.a(f2941h);
            j.a(f2941h);
        } catch (Throwable unused) {
        }
    }
}
