package com.umeng.commonsdk.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.os.EnvironmentCompat;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.internal.utils.a;
import com.umeng.commonsdk.internal.utils.d;
import com.umeng.commonsdk.internal.utils.j;
import com.umeng.commonsdk.internal.utils.k;
import com.umeng.commonsdk.internal.utils.l;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.proguard.s;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.stateless.f;
import com.umeng.commonsdk.statistics.common.ULog;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMInternalManager.java */
/* loaded from: classes.dex */
public class d {
    public static void a(Context context) {
        try {
            ULog.i("walle", "[internal] workEvent send envelope");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(e.aw, a.f2997d);
            JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, e(context));
            if (buildEnvelopeWithExtHeader == null || buildEnvelopeWithExtHeader.has("exception")) {
                return;
            }
            ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
            com.umeng.commonsdk.internal.utils.a.f(context);
            j.d(context);
            com.umeng.commonsdk.proguard.c.c(context);
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
        }
    }

    public static void b(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            try {
                if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                    UMWorkDispatch.sendEvent(context, 32769, b.a(context).a(), null);
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
            }
        }
    }

    public static void c(Context context) {
        if (context != null) {
            try {
                ULog.i("walle", "[internal] begin by not stateful--->>>");
                context = context.getApplicationContext();
                f.a(context, context.getFilesDir() + "/" + com.umeng.commonsdk.stateless.a.f3197e + "/" + Base64.encodeToString(a.a.getBytes(), 0), 10);
                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                JSONObject buildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context);
                if (buildSLBaseHeader != null && buildSLBaseHeader.has("header")) {
                    try {
                        JSONObject jSONObject = (JSONObject) buildSLBaseHeader.opt("header");
                        if (jSONObject != null) {
                            jSONObject.put(e.aw, a.f2997d);
                        }
                    } catch (Exception unused) {
                    }
                }
                ULog.i("walle", "[internal] header is " + buildSLBaseHeader.toString());
                JSONObject d2 = d(context);
                ULog.i("walle", "[internal] body is " + d2.toString());
                ULog.i("walle", uMSLEnvelopeBuild.buildSLEnvelope(context, buildSLBaseHeader, d2, a.a).toString());
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
            }
        }
    }

    public static JSONObject d(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                try {
                    JSONArray p = p(applicationContext);
                    if (p != null && p.length() > 0) {
                        jSONObject2.put("run_server", p);
                    }
                } catch (Exception e2) {
                    UMCrashManager.reportCrash(applicationContext, e2);
                }
                try {
                    String k2 = com.umeng.commonsdk.internal.utils.a.k(applicationContext);
                    if (!TextUtils.isEmpty(k2)) {
                        jSONObject2.put("imsi", k2);
                    }
                } catch (Exception e3) {
                    UMCrashManager.reportCrash(applicationContext, e3);
                }
                try {
                    String l2 = com.umeng.commonsdk.internal.utils.a.l(applicationContext);
                    if (!TextUtils.isEmpty(l2)) {
                        jSONObject2.put("meid", l2);
                    }
                } catch (Exception e4) {
                    UMCrashManager.reportCrash(applicationContext, e4);
                }
                try {
                    jSONObject.put(UMModuleRegister.INNER, jSONObject2);
                } catch (JSONException e5) {
                    UMCrashManager.reportCrash(applicationContext, e5);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static JSONObject e(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                JSONArray p = p(applicationContext);
                if (p != null && p.length() > 0) {
                    jSONObject2.put("rs", p);
                }
            } catch (Exception e2) {
                UMCrashManager.reportCrash(applicationContext, e2);
            }
            try {
                JSONArray q = q(applicationContext);
                if (q != null && q.length() > 0) {
                    jSONObject2.put("bstn", q);
                }
            } catch (Exception e3) {
                UMCrashManager.reportCrash(applicationContext, e3);
            }
            try {
                JSONArray r = r(applicationContext);
                if (r != null && r.length() > 0) {
                    jSONObject2.put("by", r);
                }
            } catch (Exception e4) {
                UMCrashManager.reportCrash(applicationContext, e4);
            }
            try {
                a(applicationContext, jSONObject2);
            } catch (Exception e5) {
                UMCrashManager.reportCrash(applicationContext, e5);
            }
            try {
                b(applicationContext, jSONObject2);
            } catch (Exception e6) {
                UMCrashManager.reportCrash(applicationContext, e6);
            }
            try {
                JSONObject a = a();
                if (a != null && a.length() > 0) {
                    jSONObject2.put("sd", a);
                }
            } catch (Exception e7) {
                UMCrashManager.reportCrash(applicationContext, e7);
            }
            try {
                JSONObject b = b();
                if (b != null && b.length() > 0) {
                    jSONObject2.put("build", b);
                }
            } catch (Exception e8) {
                UMCrashManager.reportCrash(applicationContext, e8);
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                JSONArray g2 = g(applicationContext);
                if (g2 != null && g2.length() > 0) {
                    try {
                        jSONObject3.put("a_sr", g2);
                    } catch (JSONException unused) {
                    }
                }
                JSONArray c2 = j.c(applicationContext);
                if (c2 != null && c2.length() > 0) {
                    try {
                        jSONObject3.put("stat", c2);
                    } catch (JSONException unused2) {
                    }
                }
                jSONObject2.put("sr", jSONObject3);
            } catch (Exception e9) {
                UMCrashManager.reportCrash(applicationContext, e9);
            }
            try {
                JSONObject h2 = h(applicationContext);
                if (h2 != null && h2.length() > 0) {
                    jSONObject2.put("scr", h2);
                }
            } catch (Exception e10) {
                UMCrashManager.reportCrash(applicationContext, e10);
            }
            try {
                JSONObject i2 = i(applicationContext);
                if (i2 != null && i2.length() > 0) {
                    jSONObject2.put("sinfo", i2);
                }
            } catch (Exception e11) {
                UMCrashManager.reportCrash(applicationContext, e11);
            }
            try {
                JSONObject jSONObject4 = new JSONObject();
                JSONArray e12 = com.umeng.commonsdk.internal.utils.a.e(applicationContext);
                if (e12 != null && e12.length() > 0) {
                    try {
                        jSONObject4.put("wl", e12);
                    } catch (JSONException unused3) {
                    }
                }
                JSONArray j2 = j(applicationContext);
                if (j2 != null && j2.length() > 0) {
                    try {
                        jSONObject4.put("a_wls", j2);
                    } catch (JSONException unused4) {
                    }
                }
                jSONObject2.put("winfo", jSONObject4);
            } catch (Exception e13) {
                UMCrashManager.reportCrash(applicationContext, e13);
            }
            try {
                JSONArray k2 = k(applicationContext);
                if (k2 != null && k2.length() > 0) {
                    jSONObject2.put("input", k2);
                }
            } catch (Exception e14) {
                UMCrashManager.reportCrash(applicationContext, e14);
            }
            try {
                JSONObject o = com.umeng.commonsdk.internal.utils.a.o(applicationContext);
                if (o != null && o.length() > 0) {
                    jSONObject2.put("bt", o);
                }
            } catch (Exception e15) {
                UMCrashManager.reportCrash(applicationContext, e15);
            }
            try {
                JSONArray l2 = l(applicationContext);
                if (l2 != null && l2.length() > 0) {
                    jSONObject2.put("cam", l2);
                }
            } catch (Exception e16) {
                UMCrashManager.reportCrash(applicationContext, e16);
            }
            try {
                JSONArray m2 = m(applicationContext);
                if (m2 != null && m2.length() > 0) {
                    jSONObject2.put("appls", m2);
                }
            } catch (Exception e17) {
                UMCrashManager.reportCrash(applicationContext, e17);
            }
            try {
                JSONObject n = n(applicationContext);
                if (n != null && n.length() > 0) {
                    jSONObject2.put("mem", n);
                }
            } catch (Exception e18) {
                UMCrashManager.reportCrash(applicationContext, e18);
            }
            try {
                JSONArray o2 = o(applicationContext);
                if (o2 != null && o2.length() > 0) {
                    jSONObject2.put("lbs", o2);
                }
            } catch (Exception e19) {
                UMCrashManager.reportCrash(applicationContext, e19);
            }
            try {
                JSONObject d2 = d();
                if (d2 != null && d2.length() > 0) {
                    jSONObject2.put(e.v, d2);
                }
            } catch (Exception unused5) {
            }
            try {
                JSONObject c3 = c();
                if (c3 != null && c3.length() > 0) {
                    jSONObject2.put("rom", c3);
                }
            } catch (Exception unused6) {
            }
            try {
                jSONObject.put(e.ak, jSONObject2);
            } catch (JSONException e20) {
                UMCrashManager.reportCrash(applicationContext, e20);
            }
        }
        return jSONObject;
    }

    public static String f(Context context) {
        try {
            com.umeng.commonsdk.statistics.idtracking.e a = com.umeng.commonsdk.statistics.idtracking.e.a(context);
            if (a != null) {
                a.a();
                String encodeToString = Base64.encodeToString(new s().a(a.b()), 0);
                if (TextUtils.isEmpty(encodeToString)) {
                    return null;
                }
                return encodeToString;
            }
            return null;
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    public static JSONArray g(Context context) {
        if (context != null) {
            return k.g(context.getApplicationContext());
        }
        return null;
    }

    public static JSONObject h(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", com.umeng.commonsdk.internal.utils.a.h(context));
                jSONObject.put("a_nav_h", com.umeng.commonsdk.internal.utils.a.i(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (Exception e2) {
                UMCrashManager.reportCrash(context, e2);
            }
        }
        return jSONObject;
    }

    public static JSONObject i(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", com.umeng.commonsdk.internal.utils.a.a(applicationContext, packageName));
                jSONObject.put("a_alut", com.umeng.commonsdk.internal.utils.a.b(applicationContext, packageName));
                jSONObject.put("a_c", com.umeng.commonsdk.internal.utils.a.c(applicationContext, packageName));
                jSONObject.put("a_uid", com.umeng.commonsdk.internal.utils.a.d(applicationContext, packageName));
                if (com.umeng.commonsdk.internal.utils.a.a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("tf", com.umeng.commonsdk.internal.utils.a.b());
                jSONObject.put("s_fs", com.umeng.commonsdk.internal.utils.a.a(applicationContext));
                jSONObject.put("a_meid", com.umeng.commonsdk.internal.utils.a.l(applicationContext));
                jSONObject.put("a_imsi", com.umeng.commonsdk.internal.utils.a.k(applicationContext));
                jSONObject.put("st", com.umeng.commonsdk.internal.utils.a.f());
                String b = k.b(applicationContext);
                if (!TextUtils.isEmpty(b)) {
                    try {
                        jSONObject.put("a_iccid", b);
                    } catch (Exception unused) {
                    }
                }
                String c2 = k.c(applicationContext);
                if (!TextUtils.isEmpty(c2)) {
                    try {
                        jSONObject.put("a_simei", c2);
                    } catch (Exception unused2) {
                    }
                }
                jSONObject.put("hn", com.umeng.commonsdk.internal.utils.a.g());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e2) {
                UMCrashManager.reportCrash(applicationContext, e2);
            }
        }
        return jSONObject;
    }

    public static JSONArray j(Context context) {
        Context applicationContext;
        List<ScanResult> b;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (b = com.umeng.commonsdk.internal.utils.a.b((applicationContext = context.getApplicationContext()))) != null && b.size() > 0) {
            for (ScanResult scanResult : b) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_bssid", scanResult.BSSID);
                    jSONObject.put("a_ssid", scanResult.SSID);
                    jSONObject.put("a_cap", scanResult.capabilities);
                    jSONObject.put(com.umeng.commonsdk.internal.utils.f.f3042i, scanResult.frequency);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject.put("a_c0", scanResult.centerFreq0);
                        jSONObject.put("a_c1", scanResult.centerFreq1);
                        jSONObject.put("a_cw", scanResult.channelWidth);
                        if (scanResult.is80211mcResponder()) {
                            jSONObject.put("a_is80211", 1);
                        } else {
                            jSONObject.put("a_is80211", 0);
                        }
                        if (scanResult.isPasspointNetwork()) {
                            jSONObject.put("a_isppn", 1);
                        } else {
                            jSONObject.put("a_isppn", 0);
                        }
                        jSONObject.put("a_ofn", scanResult.operatorFriendlyName);
                        jSONObject.put("a_vn", scanResult.venueName);
                    }
                    jSONObject.put(com.umeng.commonsdk.internal.utils.f.f3039f, scanResult.describeContents());
                    jSONArray.put(jSONObject);
                } catch (Exception e2) {
                    UMCrashManager.reportCrash(applicationContext, e2);
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray k(Context context) {
        Context applicationContext;
        List<InputMethodInfo> m2;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m2 = com.umeng.commonsdk.internal.utils.a.m((applicationContext = context.getApplicationContext()))) != null) {
            for (InputMethodInfo inputMethodInfo : m2) {
                try {
                    CharSequence loadLabel = inputMethodInfo.loadLabel(applicationContext.getPackageManager());
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_la", loadLabel);
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                } catch (Exception e2) {
                    UMCrashManager.reportCrash(applicationContext, e2);
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray l(Context context) {
        Context applicationContext;
        List<j.a> e2;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (e2 = j.e((applicationContext = context.getApplicationContext()))) != null && !e2.isEmpty()) {
            for (j.a aVar : e2) {
                if (aVar != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_w", aVar.a);
                        jSONObject.put("a_h", aVar.b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e3) {
                        UMCrashManager.reportCrash(applicationContext, e3);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray m(Context context) {
        Context applicationContext;
        List<a.C0021a> p;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (p = com.umeng.commonsdk.internal.utils.a.p((applicationContext = context.getApplicationContext()))) != null && !p.isEmpty()) {
            for (a.C0021a c0021a : p) {
                if (c0021a != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", c0021a.a);
                        jSONObject.put("a_la", c0021a.b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e2) {
                        UMCrashManager.reportCrash(applicationContext, e2);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject n(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo q;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (q = com.umeng.commonsdk.internal.utils.a.q((applicationContext = context.getApplicationContext()))) != null) {
            try {
                jSONObject.put(e.ar, q.totalMem);
                jSONObject.put("f", q.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e2) {
                UMCrashManager.reportCrash(applicationContext, e2);
            }
        }
        return jSONObject;
    }

    public static JSONArray o(Context context) {
        if (context != null) {
            return com.umeng.commonsdk.proguard.c.b(context.getApplicationContext());
        }
        return null;
    }

    public static JSONArray p(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray = null;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (activityManager == null || (runningServices = activityManager.getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) == null || runningServices.isEmpty()) {
                return null;
            }
            for (int i2 = 0; i2 < runningServices.size(); i2++) {
                if (runningServices.get(i2) != null && runningServices.get(i2).service != null && runningServices.get(i2).service.getClassName() != null && runningServices.get(i2).service.getPackageName() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("sn", runningServices.get(i2).service.getClassName().toString());
                        jSONObject.put(com.umeng.analytics.pro.b.ad, runningServices.get(i2).service.getPackageName().toString());
                        if (jSONArray == null) {
                            jSONArray = new JSONArray();
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
            }
            if (jSONArray != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ts", System.currentTimeMillis());
                    jSONObject2.put("ls", jSONArray);
                } catch (JSONException unused2) {
                }
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sers", jSONObject2);
                } catch (JSONException unused3) {
                }
                JSONArray jSONArray2 = new JSONArray();
                try {
                    jSONArray2.put(jSONObject3);
                    return jSONArray2;
                } catch (Throwable th) {
                    th = th;
                    jSONArray = jSONArray2;
                    UMCrashManager.reportCrash(context, th);
                    return jSONArray;
                }
            }
            return jSONArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static JSONArray q(Context context) {
        JSONArray jSONArray = new JSONArray();
        JSONObject d2 = k.d(context);
        if (d2 != null) {
            try {
                String e2 = k.e(context);
                if (!TextUtils.isEmpty(e2)) {
                    d2.put("sig", e2);
                }
                jSONArray.put(d2);
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    public static JSONArray r(Context context) {
        JSONArray jSONArray = new JSONArray();
        String f2 = k.f(context);
        if (!TextUtils.isEmpty(f2)) {
            try {
                jSONArray.put(new JSONObject(f2));
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.json.JSONObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0 */
    public static JSONArray s(Context context) {
        ?? jSONArray = new JSONArray();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String a = k.a(applicationContext);
            JSONObject jSONObject = 0;
            jSONObject = null;
            if (!TextUtils.isEmpty(a)) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(e.X, a);
                    } catch (Exception unused) {
                    }
                    jSONObject = jSONObject2;
                } catch (Exception unused2) {
                }
            }
            String b = k.b(applicationContext);
            if (!TextUtils.isEmpty(b)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused3) {
                    }
                }
                jSONObject.put(e.Y, b);
            }
            String c2 = k.c(applicationContext);
            if (!TextUtils.isEmpty(c2)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused4) {
                    }
                }
                jSONObject.put(e.Z, c2);
            }
            ?? d2 = k.d(applicationContext);
            if (d2 != null) {
                try {
                    String e2 = k.e(applicationContext);
                    if (!TextUtils.isEmpty(e2)) {
                        d2.put("signalscale", e2);
                    }
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put(e.ab, (Object) d2);
                } catch (Exception unused5) {
                }
            }
            String f2 = k.f(applicationContext);
            if (!TextUtils.isEmpty(f2)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception unused6) {
                    }
                }
                jSONObject.put(e.W, new JSONObject(f2));
            }
            if (jSONObject != null) {
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    public static void b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String a = l.a(context);
            if (TextUtils.isEmpty(a)) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(a);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (jSONObject2.has(l.f3065d)) {
                    jSONObject.put(l.f3065d, jSONObject2.opt(l.f3065d));
                }
                if (jSONObject2.has(l.f3064c)) {
                    jSONObject.put(l.f3064c, jSONObject2.opt(l.f3064c));
                }
                if (jSONObject2.has(l.b)) {
                    jSONObject.put(l.b, jSONObject2.opt(l.b));
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
        a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    public static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_pr", Build.PRODUCT);
            jSONObject.put("a_bl", Build.BOOTLOADER);
            jSONObject.put("a_rv", Build.getRadioVersion());
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < Build.SUPPORTED_32_BIT_ABIS.length; i2++) {
                jSONArray.put(Build.SUPPORTED_32_BIT_ABIS[i2]);
            }
            if (jSONArray.length() > 0) {
                jSONObject.put("a_s32", jSONArray);
            }
            JSONArray jSONArray2 = new JSONArray();
            for (int i3 = 0; i3 < Build.SUPPORTED_64_BIT_ABIS.length; i3++) {
                jSONArray2.put(Build.SUPPORTED_64_BIT_ABIS[i3]);
            }
            if (jSONArray2.length() > 0) {
                jSONObject.put("a_s64", jSONArray2);
            }
            JSONArray jSONArray3 = new JSONArray();
            for (int i4 = 0; i4 < Build.SUPPORTED_ABIS.length; i4++) {
                jSONArray3.put(Build.SUPPORTED_ABIS[i4]);
            }
            if (jSONArray3.length() > 0) {
                jSONObject.put("a_sa", jSONArray3);
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", EnvironmentCompat.MEDIA_UNKNOWN);
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tot_s", com.umeng.commonsdk.internal.utils.a.h());
            jSONObject.put("ava_s", com.umeng.commonsdk.internal.utils.a.i());
            jSONObject.put("ts", System.currentTimeMillis());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject d() {
        try {
            d.a a = com.umeng.commonsdk.internal.utils.d.a();
            if (a != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("pro", a.a);
                    jSONObject.put("pla", a.b);
                    jSONObject.put("cpus", a.f3025c);
                    jSONObject.put("fea", a.f3026d);
                    jSONObject.put("imp", a.f3027e);
                    jSONObject.put("arc", a.f3028f);
                    jSONObject.put("var", a.f3029g);
                    jSONObject.put("par", a.f3030h);
                    jSONObject.put("rev", a.f3031i);
                    jSONObject.put("har", a.f3032j);
                    jSONObject.put("rev", a.f3033k);
                    jSONObject.put("ser", a.f3034l);
                    jSONObject.put("cur_cpu", com.umeng.commonsdk.internal.utils.d.d());
                    jSONObject.put("max_cpu", com.umeng.commonsdk.internal.utils.d.b());
                    jSONObject.put("min_cpu", com.umeng.commonsdk.internal.utils.d.c());
                    jSONObject.put("ts", System.currentTimeMillis());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static void a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (z) {
                jSONObject.put(str, 1);
            } else {
                jSONObject.put(str, 0);
            }
        } catch (Exception unused) {
        }
    }

    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("f", com.umeng.commonsdk.internal.utils.a.c());
            jSONObject.put(e.ar, com.umeng.commonsdk.internal.utils.a.d());
            jSONObject.put("ts", System.currentTimeMillis());
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
