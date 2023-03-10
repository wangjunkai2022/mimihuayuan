package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.c;
import com.umeng.analytics.pro.g;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AutoViewPageTracker.java */
/* loaded from: classes.dex */
public class j {
    public static String a;

    /* renamed from: e  reason: collision with root package name */
    public static JSONArray f2893e = new JSONArray();

    /* renamed from: f  reason: collision with root package name */
    public static Object f2894f = new Object();

    /* renamed from: g  reason: collision with root package name */
    public Application f2897g;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, Long> f2896d = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    public boolean f2898h = false;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public Application.ActivityLifecycleCallbacks f2895c = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.j.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.AUTO) {
                return;
            }
            j.this.b(activity);
            com.umeng.analytics.b.a().i();
            j.this.b = false;
            try {
                if (UMConfigure.isDebugLog()) {
                    String name = activity.getClass().getName();
                    if (name.equals(com.umeng.analytics.b.a().f())) {
                        return;
                    }
                    UMLog.aq(h.r, 0, "\\|", new String[]{"@"}, new String[]{name}, null, null);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO && activity != null) {
                j jVar = j.this;
                if (!jVar.b) {
                    jVar.a(activity);
                    com.umeng.analytics.b.a().h();
                    return;
                }
                jVar.b = false;
                if (!TextUtils.isEmpty(j.a)) {
                    String str = j.a;
                    if (str.equals(activity.getPackageName() + "." + activity.getLocalClassName())) {
                        return;
                    }
                    j.this.a(activity);
                    com.umeng.analytics.b.a().h();
                    return;
                }
                j.a = activity.getPackageName() + "." + activity.getLocalClassName();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.AUTO) {
                return;
            }
            try {
                if (UMConfigure.isDebugLog()) {
                    String name = activity.getClass().getName();
                    if (name.equals(com.umeng.analytics.b.a().g())) {
                        return;
                    }
                    UMLog.aq(h.s, 0, "\\|", new String[]{"@"}, new String[]{name.substring(0, name.length() - 1)}, null, null);
                }
            } catch (Throwable unused) {
            }
        }
    };

    public j(Context context) {
        this.f2897g = null;
        synchronized (this) {
            if (this.f2897g == null && context != null) {
                if (context instanceof Activity) {
                    this.f2897g = ((Activity) context).getApplication();
                } else if (context instanceof Application) {
                    this.f2897g = (Application) context;
                }
                if (this.f2897g != null) {
                    b(context);
                }
            }
        }
    }

    public void c() {
        b((Activity) null);
        b();
    }

    private void b(Context context) {
        if (this.f2898h) {
            return;
        }
        this.f2898h = true;
        Application application = this.f2897g;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(this.f2895c);
        }
    }

    public boolean a() {
        return this.f2898h;
    }

    public static void a(Context context) {
        String jSONArray;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f2894f) {
                    jSONArray = f2893e.toString();
                    f2893e = new JSONArray();
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put(c.d.a.f2845c, new JSONArray(jSONArray));
                    g.a(context).a(q.a().c(), jSONObject, g.a.AUTOPAGE);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b() {
        this.f2898h = false;
        Application application = this.f2897g;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.f2895c);
            this.f2897g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        long j2;
        long j3;
        try {
            synchronized (this.f2896d) {
                if (a == null && activity != null) {
                    a = activity.getPackageName() + "." + activity.getLocalClassName();
                }
                j2 = 0;
                if (TextUtils.isEmpty(a) || !this.f2896d.containsKey(a)) {
                    j3 = 0;
                } else {
                    long longValue = this.f2896d.get(a).longValue();
                    this.f2896d.remove(a);
                    j2 = System.currentTimeMillis() - longValue;
                    j3 = longValue;
                }
            }
            synchronized (f2894f) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(b.u, a);
                    jSONObject.put("duration", j2);
                    jSONObject.put(b.w, j3);
                    jSONObject.put("type", 0);
                    f2893e.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        a = activity.getPackageName() + "." + activity.getLocalClassName();
        synchronized (this.f2896d) {
            this.f2896d.put(a, Long.valueOf(System.currentTimeMillis()));
        }
    }
}
