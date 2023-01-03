package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.g;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ViewPageTracker.java */
/* loaded from: classes.dex */
public class r {
    public static final int b = 5;

    /* renamed from: c  reason: collision with root package name */
    public static JSONArray f2864c = new JSONArray();

    /* renamed from: d  reason: collision with root package name */
    public static Object f2865d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, Long> f2866e = new HashMap();
    public Stack<String> a = new Stack<>();

    public static void a(Context context) {
        String jSONArray;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f2865d) {
                    jSONArray = f2864c.toString();
                    f2864c = new JSONArray();
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("__a", new JSONArray(jSONArray));
                    if (jSONObject.length() > 0) {
                        g.a(context).a(q.a().c(), jSONObject, g.a.PAGE);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public int a() {
        return 2;
    }

    public void b(String str) {
        Long l2;
        Context appContext;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f2866e.containsKey(str)) {
            synchronized (this.f2866e) {
                l2 = this.f2866e.get(str);
            }
            if (l2 == null) {
                return;
            }
            if (UMConfigure.isDebugLog() && this.a.size() > 0 && str.equals(this.a.peek())) {
                this.a.pop();
            }
            long currentTimeMillis = System.currentTimeMillis() - l2.longValue();
            synchronized (f2865d) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(b.u, str);
                    jSONObject.put("duration", currentTimeMillis);
                    jSONObject.put(b.w, l2);
                    jSONObject.put("type", a());
                    f2864c.put(jSONObject);
                    if (f2864c.length() >= 5 && (appContext = UMGlobalContext.getAppContext(null)) != null) {
                        UMWorkDispatch.sendEvent(appContext, 4099, CoreProtocol.getInstance(appContext), null);
                    }
                } catch (Throwable unused) {
                }
            }
            if (!UMConfigure.isDebugLog() || this.a.size() == 0) {
                return;
            }
            UMLog.aq(h.E, 0, "\\|", new String[]{"@"}, new String[]{str}, null, null);
        } else if (UMConfigure.isDebugLog() && this.a.size() == 0) {
            UMLog.aq(h.G, 0, "\\|", new String[]{"@"}, new String[]{str}, null, null);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (UMConfigure.isDebugLog() && this.a.size() != 0) {
            UMLog.aq(h.F, 0, "\\|", new String[]{"@"}, new String[]{this.a.peek()}, null, null);
        }
        synchronized (this.f2866e) {
            this.f2866e.put(str, Long.valueOf(System.currentTimeMillis()));
            if (UMConfigure.isDebugLog()) {
                this.a.push(str);
            }
        }
    }

    public void b() {
        String str;
        synchronized (this.f2866e) {
            str = null;
            long j2 = 0;
            for (Map.Entry<String, Long> entry : this.f2866e.entrySet()) {
                if (entry.getValue().longValue() > j2) {
                    long longValue = entry.getValue().longValue();
                    str = entry.getKey();
                    j2 = longValue;
                }
            }
        }
        if (str != null) {
            b(str);
        }
    }
}
