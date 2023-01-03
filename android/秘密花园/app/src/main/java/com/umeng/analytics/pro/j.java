package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.b;
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
    public static JSONArray f2814e = new JSONArray();

    /* renamed from: f  reason: collision with root package name */
    public static Object f2815f = new Object();

    /* renamed from: g  reason: collision with root package name */
    public Application f2818g;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, Long> f2817d = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    public boolean f2819h = false;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public Application.ActivityLifecycleCallbacks f2816c = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.j.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                j.this.b(activity);
                b.a().i();
                j.this.b = false;
                try {
                    if (UMConfigure.isDebugLog()) {
                        String name = activity.getClass().getName();
                        if (!name.equals(b.a().f())) {
                            UMLog.aq(h.r, 0, "\\|", new String[]{"@"}, new String[]{name}, null, null);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO && activity != null) {
                j jVar = j.this;
                if (jVar.b) {
                    jVar.b = false;
                    if (!TextUtils.isEmpty(j.a)) {
                        String str = j.a;
                        if (!str.equals(activity.getPackageName() + "." + activity.getLocalClassName())) {
                            j.this.a(activity);
                            b.a().h();
                            return;
                        }
                        return;
                    }
                    j.a = activity.getPackageName() + "." + activity.getLocalClassName();
                    return;
                }
                jVar.a(activity);
                b.a().h();
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
            if (AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                try {
                    if (UMConfigure.isDebugLog()) {
                        String name = activity.getClass().getName();
                        if (!name.equals(b.a().g())) {
                            UMLog.aq(h.s, 0, "\\|", new String[]{"@"}, new String[]{name.substring(0, name.length() - 1)}, null, null);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
    };

    public j(Context context) {
        this.f2818g = null;
        synchronized (this) {
            if (this.f2818g == null && context != null) {
                if (context instanceof Activity) {
                    this.f2818g = ((Activity) context).getApplication();
                } else if (context instanceof Application) {
                    this.f2818g = (Application) context;
                }
                if (this.f2818g != null) {
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
        if (!this.f2819h) {
            this.f2819h = true;
            Application application = this.f2818g;
            if (application != null) {
                application.registerActivityLifecycleCallbacks(this.f2816c);
            }
        }
    }

    public boolean a() {
        return this.f2819h;
    }

    public static void a(Context context) {
        String jSONArray;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f2815f) {
                    jSONArray = f2814e.toString();
                    f2814e = new JSONArray();
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put(c.d.a.f2766c, new JSONArray(jSONArray));
                    g.a(context).a(q.a().c(), jSONObject, g.a.AUTOPAGE);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b() {
        this.f2819h = false;
        Application application = this.f2818g;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.f2816c);
            this.f2818g = null;
        }
    }

    /* access modifiers changed from: private */
    public void b(Activity activity) {
        long j2;
        long j3;
        try {
            synchronized (this.f2817d) {
                if (a == null && activity != null) {
                    a = activity.getPackageName() + "." + activity.getLocalClassName();
                }
                j2 = 0;
                if (TextUtils.isEmpty(a) || !this.f2817d.containsKey(a)) {
                    j3 = 0;
                } else {
                    long longValue = this.f2817d.get(a).longValue();
                    this.f2817d.remove(a);
                    j2 = System.currentTimeMillis() - longValue;
                    j3 = longValue;
                }
            }
            synchronized (f2815f) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(b.u, a);
                    jSONObject.put("duration", j2);
                    jSONObject.put(b.w, j3);
                    jSONObject.put("type", 0);
                    f2814e.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    /* access modifiers changed from: private */
    public void a(Activity activity) {
        a = activity.getPackageName() + "." + activity.getLocalClassName();
        synchronized (this.f2817d) {
            this.f2817d.put(a, Long.valueOf(System.currentTimeMillis()));
        }
    }
}
