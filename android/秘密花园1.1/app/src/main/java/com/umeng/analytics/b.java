package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.g;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.i;
import com.umeng.analytics.pro.j;
import com.umeng.analytics.pro.k;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.p;
import com.umeng.analytics.pro.q;
import com.umeng.analytics.pro.r;
import com.umeng.analytics.pro.u;
import com.umeng.analytics.pro.x;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InternalAgent.java */
/* loaded from: classes.dex */
public class b implements p {
    public static final String A = "umsp_3";
    public static final String B = "umsp_4";
    public static final String C = "umsp_5";

    /* renamed from: h  reason: collision with root package name */
    public static final String f2716h = "sp_uapp";

    /* renamed from: i  reason: collision with root package name */
    public static final String f2717i = "prepp_uapp";
    public static final int o = 128;
    public static final int p = 256;
    public static String q = "";
    public static String r = "";
    public static final String s = "ekv_bl";
    public static final String t = "ekv_bl_ver";
    public static final String v = "ekv_wl";
    public static final String w = "ekv_wl_ver";
    public static final String y = "umsp_1";
    public static final String z = "umsp_2";
    public Context a;
    public x b;

    /* renamed from: c  reason: collision with root package name */
    public l f2718c;

    /* renamed from: d  reason: collision with root package name */
    public r f2719d;

    /* renamed from: e  reason: collision with root package name */
    public i f2720e;

    /* renamed from: f  reason: collision with root package name */
    public q f2721f;

    /* renamed from: g  reason: collision with root package name */
    public j f2722g;

    /* renamed from: j  reason: collision with root package name */
    public boolean f2723j;

    /* renamed from: k  reason: collision with root package name */
    public volatile JSONObject f2724k;

    /* renamed from: l  reason: collision with root package name */
    public volatile JSONObject f2725l;

    /* renamed from: m  reason: collision with root package name */
    public volatile JSONObject f2726m;
    public boolean n;
    public com.umeng.analytics.filter.a u;
    public com.umeng.analytics.filter.b x;

    /* compiled from: InternalAgent.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final b a = new b();
    }

    public static b a() {
        return a.a;
    }

    private void i(Context context) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (this.f2724k == null) {
                this.f2724k = new JSONObject();
            }
            if (this.f2725l == null) {
                this.f2725l = new JSONObject();
            }
            String string = sharedPreferences.getString(f2717i, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.f2726m = new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            if (this.f2726m == null) {
                this.f2726m = new JSONObject();
            }
        } catch (Throwable unused2) {
        }
    }

    private void j(Context context) {
        try {
            Class.forName("com.umeng.visual.UMVisualAgent");
        } catch (ClassNotFoundException unused) {
            UMWorkDispatch.sendEvent(context, k.a.s, CoreProtocol.getInstance(context), Long.valueOf(System.currentTimeMillis()));
        }
    }

    public JSONObject b() {
        return this.f2724k;
    }

    public JSONObject c() {
        return this.f2726m;
    }

    public JSONObject d() {
        return this.f2725l;
    }

    public void e() {
        this.f2725l = null;
    }

    public String f() {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("getOnResumedActivityName can not be called in child process");
            return null;
        }
        return q;
    }

    public String g() {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("getOnPausedActivityName can not be called in child process");
            return null;
        }
        return r;
    }

    public void h() {
        try {
            if (this.a != null) {
                if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                    MLog.e("onStartSessionInternal can not be called in child process");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                UMWorkDispatch.sendEvent(this.a, k.a.f2839k, CoreProtocol.getInstance(this.a), Long.valueOf(currentTimeMillis));
                UMWorkDispatch.sendEvent(this.a, k.a.f2835g, CoreProtocol.getInstance(this.a), Long.valueOf(currentTimeMillis));
            }
            if (this.b != null) {
                this.b.a();
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void k() {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("unregisterSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (this.f2724k != null && this.a != null) {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.a).edit();
            edit.putString(f2716h, this.f2724k.toString());
            edit.commit();
        } else {
            this.f2724k = new JSONObject();
        }
    }

    public synchronized JSONObject l() {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("getSuperPropertiesJSONObject can not be called in child process");
            return null;
        }
        if (this.f2724k == null) {
            this.f2724k = new JSONObject();
        }
        return this.f2724k;
    }

    public synchronized void m() {
        try {
            if (this.a != null) {
                if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                    MLog.e("clearSuperPropertiesByCoreProtocol can not be called in child process");
                    return;
                }
                SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.a).edit();
                edit.remove(f2716h);
                edit.commit();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public b() {
        this.a = null;
        this.f2718c = new l();
        this.f2719d = new r();
        this.f2720e = new i();
        this.f2721f = q.a();
        this.f2722g = null;
        this.f2723j = false;
        this.f2724k = null;
        this.f2725l = null;
        this.f2726m = null;
        this.n = false;
        this.u = null;
        this.x = null;
        this.f2718c.a(this);
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (this.u == null) {
                com.umeng.analytics.filter.a aVar = new com.umeng.analytics.filter.a("ekv_bl", "ekv_bl_ver");
                this.u = aVar;
                aVar.register(this.a);
            }
            if (this.x == null) {
                com.umeng.analytics.filter.b bVar = new com.umeng.analytics.filter.b("ekv_wl", "ekv_wl_ver");
                this.x = bVar;
                bVar.register(this.a);
            }
            if (UMGlobalContext.getInstance().isMainProcess(this.a)) {
                if (!this.f2723j) {
                    this.f2723j = true;
                    i(this.a);
                }
                synchronized (this) {
                    if (!this.n) {
                        j jVar = new j(context);
                        this.f2722g = jVar;
                        if (jVar.a()) {
                            this.n = true;
                        }
                    }
                }
                if (UMConfigure.isDebugLog()) {
                    UMLog.mutlInfo(h.B, 3, "", null, null);
                }
                UMWorkDispatch.sendEvent(this.a, k.a.w, CoreProtocol.getInstance(this.a), Long.valueOf(System.currentTimeMillis()));
                UMWorkDispatch.registerConnStateObserver(CoreProtocol.getInstance(this.a));
            }
        } catch (Throwable unused) {
        }
    }

    public void b(String str) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("onPageEnd can not be called in child process");
            return;
        }
        try {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f2719d.b(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void c(Context context) {
        if (context == null) {
            UMLog.aq(h.p, 0, "\\|");
        } else if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
        } else {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onPause can not be called in child process");
                return;
            }
            if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
                UMLog.aq(h.q, 2, "\\|");
            }
            try {
                if (!this.f2723j || !this.n) {
                    a(context);
                }
                if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                    this.f2720e.b(context.getClass().getName());
                }
                i();
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e("Exception occurred in Mobclick.onRause(). ", th);
                }
            }
            if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                r = context.getClass().getName();
            }
        }
    }

    public void d(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onKillProcess can not be called in child process");
                return;
            }
            if (this.f2722g != null) {
                this.f2722g.c();
            }
            if (this.f2720e != null) {
                this.f2720e.b();
            }
            if (this.f2719d != null) {
                this.f2719d.b();
            }
            if (this.a != null) {
                if (this.f2721f != null) {
                    this.f2721f.c(this.a, Long.valueOf(System.currentTimeMillis()));
                }
                k.a(this.a).d();
                r.a(this.a);
                j.a(this.a);
                PreferenceWrapper.getDefault(this.a).edit().commit();
            }
            UMWorkDispatch.Quit();
        } catch (Throwable unused) {
        }
    }

    public synchronized Object e(Context context, String str) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            UMLog.aq(h.ah, 0, "\\|");
            return null;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("getSuperProperty can not be called in child process");
            return null;
        } else if (TextUtils.isEmpty(str)) {
            UMLog.aq(h.af, 0, "\\|");
            return null;
        } else if (!str.equals(y) && !str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C)) {
            MLog.e("please check key or value, must be correct!");
            return null;
        } else {
            if (this.f2724k != null) {
                if (this.f2724k.has(str)) {
                    return this.f2724k.opt(str);
                }
            } else {
                this.f2724k = new JSONObject();
            }
            return null;
        }
    }

    public synchronized void f(Context context) {
        if (context == null) {
            UMLog.aq(h.ag, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("clearSuperProperties can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        this.f2724k = new JSONObject();
        UMWorkDispatch.sendEvent(this.a, k.a.q, CoreProtocol.getInstance(this.a), null);
    }

    public synchronized void g(Context context) {
        if (context == null) {
            UMLog.aq(h.ao, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("clearPreProperties can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        if (this.f2726m.length() > 0) {
            UMWorkDispatch.sendEvent(this.a, k.a.v, CoreProtocol.getInstance(this.a), null);
        }
        this.f2726m = new JSONObject();
    }

    public void j() {
        try {
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onProfileSignOff can not be called in child process");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", currentTimeMillis);
            k.a(this.a).a((Object) null, true);
            UMWorkDispatch.sendEvent(this.a, k.a.f2834f, CoreProtocol.getInstance(this.a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    public void b(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onResume");
        } else if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
        } else {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onResume can not be called in child process");
                return;
            }
            if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
                UMLog.aq(h.o, 2, "\\|");
            }
            try {
                if (!this.f2723j || !this.n) {
                    a(context);
                }
                if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                    this.f2720e.a(context.getClass().getName());
                }
                h();
                j(this.a);
                if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                    q = context.getClass().getName();
                }
            } catch (Throwable th) {
                MLog.e("Exception occurred in Mobclick.onResume(). ", th);
            }
        }
    }

    public synchronized JSONObject h(Context context) {
        if (context == null) {
            UMLog.aq(h.ap, 0, "\\|");
            return null;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("getPreProperties can not be called in child process");
            return null;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        if (this.f2726m == null) {
            this.f2726m = new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        if (this.f2726m.length() > 0) {
            try {
                jSONObject = new JSONObject(this.f2726m.toString());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public void i() {
        try {
            if (this.a != null) {
                if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                    MLog.e("onEndSessionInternal can not be called in child process");
                    return;
                }
                UMWorkDispatch.sendEvent(this.a, k.a.f2836h, CoreProtocol.getInstance(this.a), Long.valueOf(System.currentTimeMillis()));
                UMWorkDispatch.sendEvent(this.a, k.a.f2832d, CoreProtocol.getInstance(this.a), null);
                UMWorkDispatch.sendEvent(this.a, 4099, CoreProtocol.getInstance(this.a), null);
                UMWorkDispatch.sendEvent(this.a, k.a.f2837i, CoreProtocol.getInstance(this.a), null);
            }
        } catch (Throwable unused) {
        }
        x xVar = this.b;
        if (xVar != null) {
            xVar.b();
        }
    }

    public synchronized void f(Context context, String str) {
        if (context == null) {
            UMLog.aq(h.am, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("unregisterPreProperty can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        if (this.f2726m == null) {
            this.f2726m = new JSONObject();
        }
        if (str != null && str.length() > 0) {
            if (this.f2726m.has(str)) {
                this.f2726m.remove(str);
                UMWorkDispatch.sendEvent(this.a, k.a.u, CoreProtocol.getInstance(this.a), this.f2726m.toString());
            } else if (UMConfigure.isDebugLog()) {
                UMLog.aq(h.an, 0, "\\|");
            }
            return;
        }
        MLog.e("please check propertics, property is null!");
    }

    public synchronized void d(Context context, String str) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            UMLog.aq(h.ag, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("unregisterSuperProperty can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(h.af, 0, "\\|");
        } else if (!str.equals(y) && !str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C)) {
            MLog.e("please check key or value, must be correct!");
        } else {
            if (this.f2724k == null) {
                this.f2724k = new JSONObject();
            }
            if (this.f2724k.has(str)) {
                this.f2724k.remove(str);
                UMWorkDispatch.sendEvent(this.a, k.a.r, CoreProtocol.getInstance(this.a), str);
            }
        }
    }

    private boolean c(String str) {
        if (this.u.enabled() && this.u.matchHit(str)) {
            return true;
        }
        if (this.x.enabled()) {
            if (this.x.matchHit(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> white list match! id = " + str);
                return false;
            }
            return true;
        }
        return false;
    }

    public void b(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(h.M, 0, "\\|");
                return;
            }
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onDeepLinkReceived can not be called in child process");
                return;
            }
            if (!this.f2723j || !this.n) {
                a(this.a);
            }
            if (!TextUtils.isEmpty(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put(com.umeng.analytics.pro.b.aB, str);
                b(this.a, com.umeng.analytics.pro.b.aA, hashMap, -1L);
                return;
            }
            UMLog.aq(h.N, 0, "\\|");
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public synchronized String e(Context context) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            UMLog.aq(h.ah, 0, "\\|");
            return null;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("getSuperProperties can not be called in child process");
            return null;
        } else if (this.f2724k != null) {
            return this.f2724k.toString();
        } else {
            this.f2724k = new JSONObject();
            return null;
        }
    }

    public void c(Context context, String str) {
        if (context == null) {
            UMLog.aq(h.z, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setSecret can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        AnalyticsConfig.a(this.a, str);
    }

    public void a(String str) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("onPageStart can not be called in child process");
            return;
        }
        try {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f2719d.a(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(x xVar) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setSysListener can not be called in child process");
        } else {
            this.b = xVar;
        }
    }

    public void a(Context context, int i2) {
        if (context == null) {
            MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setVerticalType can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        AnalyticsConfig.a(this.a, i2);
    }

    private void b(Context context, String str, Map<String, Object> map, long j2) {
        try {
            if (context == null) {
                MLog.e("context is null in onEventNoCheck, please check!");
                return;
            }
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!this.f2723j || !this.n) {
                a(this.a);
            }
            if (c(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String str2 = "";
            if (this.f2724k == null) {
                this.f2724k = new JSONObject();
            } else {
                str2 = this.f2724k.toString();
            }
            o.a(this.a).a(str, map, j2, str2);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(Context context, String str, HashMap<String, Object> hashMap) {
        if (context == null) {
            return;
        }
        try {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onGKVEvent can not be called in child process");
                return;
            }
            if (!this.f2723j || !this.n) {
                a(this.a);
            }
            String str2 = "";
            if (this.f2724k == null) {
                this.f2724k = new JSONObject();
            } else {
                str2 = this.f2724k.toString();
            }
            o.a(this.a).a(str, hashMap, str2);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public synchronized void b(Object obj) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("updateNativePrePropertiesByCoreProtocol can not be called in child process");
            return;
        }
        SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.a).edit();
        if (obj != null) {
            String str = (String) obj;
            if (edit != null && !TextUtils.isEmpty(str)) {
                edit.putString(f2717i, str).commit();
            }
        } else if (edit != null) {
            edit.remove(f2717i).commit();
        }
    }

    public void a(Context context, String str) {
        if (context == null) {
            UMLog.aq(h.w, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("reportError can not be called in child process");
        } else if (TextUtils.isEmpty(str)) {
            if (UMConfigure.isDebugLog()) {
                UMLog.aq(h.x, 0, "\\|");
            }
        } else {
            try {
                if (!this.f2723j || !this.n) {
                    a(this.a);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(com.umeng.analytics.pro.b.P, 2);
                jSONObject.put(com.umeng.analytics.pro.b.Q, str);
                jSONObject.put("__ii", this.f2721f.c());
                UMWorkDispatch.sendEvent(this.a, k.a.f2838j, CoreProtocol.getInstance(this.a), jSONObject);
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e(th);
                }
            }
        }
    }

    private boolean b(String str, Object obj) {
        int i2;
        if (TextUtils.isEmpty(str)) {
            MLog.e("key is " + str + ", please check key, illegal");
            return false;
        }
        try {
            i2 = str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            i2 = 0;
        }
        if (i2 > 128) {
            MLog.e("key length is " + i2 + ", please check key, illegal");
            return false;
        } else if (obj instanceof String) {
            if (((String) obj).getBytes("UTF-8").length > 256) {
                MLog.e("value length is " + ((String) obj).getBytes("UTF-8").length + ", please check value, illegal");
                return false;
            }
            return true;
        } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float)) {
            return true;
        } else {
            MLog.e("value is " + obj + ", please check value, type illegal");
            return false;
        }
    }

    public void a(Context context, Throwable th) {
        if (context != null && th != null) {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("reportError can not be called in child process");
                return;
            }
            try {
                if (!this.f2723j || !this.n) {
                    a(this.a);
                }
                a(this.a, DataHelper.convertExceptionToString(th));
                return;
            } catch (Exception e2) {
                if (MLog.DEBUG) {
                    MLog.e(e2);
                    return;
                }
                return;
            }
        }
        UMLog.aq(h.y, 0, "\\|");
    }

    public void a(Context context, String str, String str2, long j2, int i2) {
        if (context == null) {
            return;
        }
        try {
            if (this.a == null) {
                this.a = context.getApplicationContext();
            }
            if (!this.f2723j || !this.n) {
                a(this.a);
            }
            if (c(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String str3 = "";
            if (this.f2724k == null) {
                this.f2724k = new JSONObject();
            } else {
                str3 = this.f2724k.toString();
            }
            o.a(this.a).a(str, str2, j2, i2, str3);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(Context context, String str, Map<String, Object> map, long j2) {
        try {
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            if (Arrays.asList(com.umeng.analytics.pro.b.aC).contains(str)) {
                UMLog.aq(h.b, 0, "\\|");
                return;
            } else if (map.isEmpty()) {
                UMLog.aq(h.f2804d, 0, "\\|");
                return;
            } else {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (Arrays.asList(com.umeng.analytics.pro.b.aC).contains(entry.getKey())) {
                        UMLog.aq(h.f2805e, 0, "\\|");
                        return;
                    }
                }
                b(context, str, map, j2);
                return;
            }
        }
        UMLog.aq(h.f2803c, 0, "\\|");
    }

    @Override // com.umeng.analytics.pro.p
    public void a(Throwable th) {
        try {
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onAppCrash can not be called in child process");
                UMWorkDispatch.Quit();
                return;
            }
            if (this.f2719d != null) {
                this.f2719d.b();
            }
            if (this.f2720e != null) {
                this.f2720e.b();
            }
            if (this.f2722g != null) {
                this.f2722g.c();
            }
            if (this.a != null) {
                if (this.f2721f != null) {
                    this.f2721f.c(this.a, Long.valueOf(System.currentTimeMillis()));
                }
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(com.umeng.analytics.pro.b.P, 1);
                    jSONObject.put(com.umeng.analytics.pro.b.Q, DataHelper.convertExceptionToString(th));
                    g.a(this.a).a(this.f2721f.c(), jSONObject.toString(), 1);
                }
                k.a(this.a).d();
                r.a(this.a);
                j.a(this.a);
                PreferenceWrapper.getDefault(this.a).edit().commit();
            }
            UMWorkDispatch.Quit();
        } catch (Exception e2) {
            if (MLog.DEBUG) {
                MLog.e("Exception in onAppCrash", e2);
            }
        }
    }

    public void a(String str, String str2) {
        try {
            if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
                MLog.e("onProfileSignIn can not be called in child process");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.analytics.pro.b.L, str);
            jSONObject.put("uid", str2);
            jSONObject.put("ts", currentTimeMillis);
            k.a(this.a).a((Object) null, true);
            UMWorkDispatch.sendEvent(this.a, k.a.f2833e, CoreProtocol.getInstance(this.a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    public void a(boolean z2) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setCatchUncaughtExceptions can not be called in child process");
        } else if (AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW) {
        } else {
            AnalyticsConfig.CATCH_EXCEPTION = z2;
        }
    }

    public void a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    public void a(MobclickAgent.PageMode pageMode) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setPageCollectionMode can not be called in child process");
        } else {
            AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION = pageMode;
        }
    }

    public void a(double d2, double d3) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setLocation can not be called in child process");
            return;
        }
        if (AnalyticsConfig.a == null) {
            AnalyticsConfig.a = new double[2];
        }
        double[] dArr = AnalyticsConfig.a;
        dArr[0] = d2;
        dArr[1] = d3;
    }

    public void a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.e("unexpected null context in setScenarioType");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setScenarioType can not be called in child process");
            return;
        }
        if (eScenarioType != null) {
            a(this.a, eScenarioType.toValue());
        }
        if (this.f2723j && this.n) {
            return;
        }
        a(this.a);
    }

    public void a(long j2) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setSessionContinueMillis can not be called in child process");
            return;
        }
        AnalyticsConfig.kContinueSessionMillis = j2;
        u.a().a(AnalyticsConfig.kContinueSessionMillis);
    }

    public synchronized void a(Context context, String str, Object obj) {
        int i2 = 0;
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            UMLog.aq(h.ae, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("registerSuperProperty can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        if (!TextUtils.isEmpty(str) && obj != null) {
            if (!str.equals(y) && !str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C)) {
                MLog.e("property name is " + str + ", please check key, must be correct!");
                return;
            } else if ((obj instanceof String) && !HelperUtils.checkStrLen(obj.toString(), 256)) {
                MLog.e("property value is " + obj + ", please check value, lawless!");
                return;
            } else {
                try {
                    if (this.f2724k == null) {
                        this.f2724k = new JSONObject();
                    }
                    new JSONObject();
                    if (obj.getClass().isArray()) {
                        if (obj instanceof String[]) {
                            String[] strArr = (String[]) obj;
                            if (strArr.length > 10) {
                                MLog.e("please check value, size is " + strArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray = new JSONArray();
                            while (i2 < strArr.length) {
                                if (strArr[i2] != null && HelperUtils.checkStrLen(strArr[i2], 256)) {
                                    jSONArray.put(strArr[i2]);
                                    i2++;
                                }
                                MLog.e("please check value, length is " + strArr[i2].length() + ", overlength 256!");
                                return;
                            }
                            this.f2724k.put(str, jSONArray);
                        } else if (obj instanceof long[]) {
                            long[] jArr = (long[]) obj;
                            if (jArr.length > 10) {
                                MLog.e("please check value, size is " + jArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray2 = new JSONArray();
                            while (i2 < jArr.length) {
                                jSONArray2.put(jArr[i2]);
                                i2++;
                            }
                            this.f2724k.put(str, jSONArray2);
                        } else if (obj instanceof int[]) {
                            int[] iArr = (int[]) obj;
                            if (iArr.length > 10) {
                                MLog.e("please check value, size is " + iArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray3 = new JSONArray();
                            while (i2 < iArr.length) {
                                jSONArray3.put(iArr[i2]);
                                i2++;
                            }
                            this.f2724k.put(str, jSONArray3);
                        } else if (obj instanceof float[]) {
                            float[] fArr = (float[]) obj;
                            if (fArr.length > 10) {
                                MLog.e("please check value, size is " + fArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray4 = new JSONArray();
                            while (i2 < fArr.length) {
                                jSONArray4.put(fArr[i2]);
                                i2++;
                            }
                            this.f2724k.put(str, jSONArray4);
                        } else if (obj instanceof double[]) {
                            double[] dArr = (double[]) obj;
                            if (dArr.length > 10) {
                                MLog.e("please check value, size is " + dArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray5 = new JSONArray();
                            while (i2 < dArr.length) {
                                jSONArray5.put(dArr[i2]);
                                i2++;
                            }
                            this.f2724k.put(str, jSONArray5);
                        } else if (obj instanceof short[]) {
                            short[] sArr = (short[]) obj;
                            if (sArr.length > 10) {
                                MLog.e("please check value, size is " + sArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray6 = new JSONArray();
                            while (i2 < sArr.length) {
                                jSONArray6.put((int) sArr[i2]);
                                i2++;
                            }
                            this.f2724k.put(str, jSONArray6);
                        } else {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                    } else {
                        if (!(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short)) {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                        this.f2724k.put(str, obj);
                    }
                } catch (Throwable unused) {
                }
                UMWorkDispatch.sendEvent(this.a, k.a.p, CoreProtocol.getInstance(this.a), this.f2724k.toString());
                return;
            }
        }
        UMLog.aq(h.af, 0, "\\|");
    }

    private void a(String str, Object obj) {
        try {
            if (this.f2724k == null) {
                this.f2724k = new JSONObject();
            }
            new JSONObject();
            int i2 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    if (strArr.length > 10) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    while (i2 < strArr.length) {
                        if (strArr[i2] != null && !HelperUtils.checkStrLen(strArr[i2], 256)) {
                            jSONArray.put(strArr[i2]);
                        }
                        i2++;
                    }
                    this.f2724k.put(str, jSONArray);
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    JSONArray jSONArray2 = new JSONArray();
                    while (i2 < jArr.length) {
                        jSONArray2.put(jArr[i2]);
                        i2++;
                    }
                    this.f2724k.put(str, jSONArray2);
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    JSONArray jSONArray3 = new JSONArray();
                    while (i2 < iArr.length) {
                        jSONArray3.put(iArr[i2]);
                        i2++;
                    }
                    this.f2724k.put(str, jSONArray3);
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    JSONArray jSONArray4 = new JSONArray();
                    while (i2 < fArr.length) {
                        jSONArray4.put(fArr[i2]);
                        i2++;
                    }
                    this.f2724k.put(str, jSONArray4);
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    JSONArray jSONArray5 = new JSONArray();
                    while (i2 < dArr.length) {
                        jSONArray5.put(dArr[i2]);
                        i2++;
                    }
                    this.f2724k.put(str, jSONArray5);
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    JSONArray jSONArray6 = new JSONArray();
                    while (i2 < sArr.length) {
                        jSONArray6.put((int) sArr[i2]);
                        i2++;
                    }
                    this.f2724k.put(str, jSONArray6);
                }
            } else if (obj instanceof List) {
                List list = (List) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i2 < list.size()) {
                    Object obj2 = list.get(i2);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray7.put(list.get(i2));
                    }
                    i2++;
                }
                this.f2724k.put(str, jSONArray7);
            } else if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                this.f2724k.put(str, obj);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void a(Object obj) {
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("registerSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (obj != null && this.a != null) {
            String str = (String) obj;
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.a).edit();
            if (edit != null && !TextUtils.isEmpty(str)) {
                edit.putString(f2716h, this.f2724k.toString()).commit();
            }
        }
    }

    public synchronized void a(Context context, List<String> list) {
        try {
        } catch (Throwable th) {
            MLog.e(th);
        }
        if (context == null) {
            UMLog.aq(h.ai, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("setFirstLaunchEvent can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        o.a(this.a).a(list);
    }

    public synchronized void a(Context context, JSONObject jSONObject) {
        String obj;
        Object obj2;
        if (context == null) {
            UMLog.aq(h.ak, 0, "\\|");
            return;
        }
        if (this.a == null) {
            this.a = context.getApplicationContext();
        }
        if (!UMGlobalContext.getInstance().isMainProcess(this.a)) {
            MLog.e("registerPreProperties can not be called in child process");
            return;
        }
        if (!this.f2723j || !this.n) {
            a(this.a);
        }
        if (this.f2726m == null) {
            this.f2726m = new JSONObject();
        }
        if (jSONObject != null && jSONObject.length() > 0) {
            JSONObject jSONObject2 = null;
            try {
                jSONObject2 = new JSONObject(this.f2726m.toString());
            } catch (Exception unused) {
            }
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            Iterator<String> keys = jSONObject.keys();
            if (keys != null) {
                while (keys.hasNext()) {
                    try {
                        obj = keys.next().toString();
                        obj2 = jSONObject.get(obj);
                    } catch (Exception unused2) {
                    }
                    if (b(obj, obj2)) {
                        jSONObject2.put(obj, obj2);
                        if (jSONObject2.length() > 10) {
                            MLog.e("please check propertics, size overlength!");
                            return;
                        }
                        continue;
                    } else {
                        return;
                    }
                }
            }
            this.f2726m = jSONObject2;
            if (this.f2726m.length() > 0) {
                UMWorkDispatch.sendEvent(this.a, k.a.t, CoreProtocol.getInstance(this.a), this.f2726m.toString());
            }
            return;
        }
        UMLog.aq(h.al, 0, "\\|");
    }
}
