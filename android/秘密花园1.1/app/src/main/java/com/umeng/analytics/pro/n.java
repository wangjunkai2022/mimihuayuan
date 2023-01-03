package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: DefconProcesser.java */
/* loaded from: classes.dex */
public class n {
    public static final int a = 0;
    public static final int b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f2848c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f2849d = 3;

    /* renamed from: e  reason: collision with root package name */
    public final long f2850e;

    /* compiled from: DefconProcesser.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final n a = new n();
    }

    public static n a() {
        return a.a;
    }

    private JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", u.a().d(UMGlobalContext.getAppContext(null)));
            jSONObject.put(b.p, currentTimeMillis);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }

    public void b(JSONObject jSONObject, Context context) {
        int a2 = a(context);
        if (a2 == 1) {
            if (jSONObject.has(b.K)) {
                jSONObject.remove(b.K);
            }
            if (jSONObject.has(b.n)) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray(b.n);
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        if (jSONObject2.has(b.ar)) {
                            jSONObject2.remove(b.ar);
                        }
                        if (jSONObject2.has(b.as)) {
                            jSONObject2.remove(b.as);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
            g.a(context).a(false, true);
        } else if (a2 == 2) {
            if (jSONObject.has(b.K)) {
                jSONObject.remove(b.K);
            }
            if (jSONObject.has(b.n)) {
                jSONObject.remove(b.n);
            }
            try {
                jSONObject.put(b.n, c());
            } catch (Exception unused2) {
            }
            g.a(context).a(false, true);
        } else if (a2 == 3) {
            if (jSONObject.has(b.K)) {
                jSONObject.remove(b.K);
            }
            jSONObject.remove(b.n);
            g.a(context).a(false, true);
        }
    }

    public n() {
        this.f2850e = 60000L;
    }

    public int a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", String.valueOf(0))).intValue();
    }

    private void a(JSONObject jSONObject, boolean z) {
        if (!z && jSONObject.has(b.n)) {
            jSONObject.remove(b.n);
        }
        if (jSONObject.has(b.K)) {
            jSONObject.remove(b.K);
        }
        if (jSONObject.has(b.N)) {
            jSONObject.remove(b.N);
        }
        if (jSONObject.has(b.R)) {
            jSONObject.remove(b.R);
        }
        if (jSONObject.has(b.S)) {
            jSONObject.remove(b.S);
        }
        if (jSONObject.has(b.K)) {
            jSONObject.remove(b.K);
        }
        if (jSONObject.has("userlevel")) {
            jSONObject.remove("userlevel");
        }
    }

    public void a(JSONObject jSONObject, Context context) {
        int a2 = a(context);
        if (a2 == 1) {
            a(jSONObject, true);
            g.a(context).b(false, true);
        } else if (a2 == 2) {
            jSONObject.remove(b.n);
            try {
                jSONObject.put(b.n, b());
            } catch (Exception unused) {
            }
            a(jSONObject, true);
            g.a(context).b(false, true);
        } else if (a2 == 3) {
            a(jSONObject, false);
            g.a(context).b(false, true);
        }
    }

    private JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", u.a().a(UMGlobalContext.getAppContext(null)));
            jSONObject.put(b.p, currentTimeMillis);
            jSONObject.put(b.q, currentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
            jSONArray.put(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONArray;
    }
}
