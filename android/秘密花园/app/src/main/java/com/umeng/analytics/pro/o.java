package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EventTracker.java */
/* loaded from: classes.dex */
public class o {
    public static final String a = "fs_lc_tl_uapp";

    /* renamed from: f  reason: collision with root package name */
    public static final String f2851f = "-1";

    /* renamed from: g  reason: collision with root package name */
    public static Context f2852g;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2853c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2854d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2855e;

    /* renamed from: h  reason: collision with root package name */
    public JSONObject f2856h;

    /* compiled from: EventTracker.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final o a = new o();
    }

    public static o a(Context context) {
        if (f2852g == null && context != null) {
            f2852g = context.getApplicationContext();
        }
        return a.a;
    }

    private void b(Context context) {
        try {
            String string = PreferenceWrapper.getDefault(context).getString(a, null);
            if (!TextUtils.isEmpty(string)) {
                this.f2856h = new JSONObject(string);
            }
            a();
        } catch (Exception unused) {
        }
    }

    private void c(Context context) {
        try {
            if (this.f2856h != null) {
                PreferenceWrapper.getDefault(f2852g).edit().putString(a, this.f2856h.toString()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    public o() {
        this.b = 128;
        this.f2853c = 256;
        this.f2854d = 1024;
        this.f2855e = 10;
        this.f2856h = null;
        if (0 == 0) {
            try {
                b(f2852g);
            } catch (Throwable unused) {
            }
        }
    }

    private boolean c(String str) {
        if (str == null) {
            return true;
        }
        try {
            return str.trim().getBytes().length <= 1024;
        } catch (Exception unused) {
            return false;
        }
    }

    public void a(String str, String str2, long j2, int i2, String str3) {
        String str4;
        try {
            if (a(str) && b(str2)) {
                if (Arrays.asList(b.aD).contains(str)) {
                    MLog.e("key is " + str + ", please check key, illegal");
                    UMLog.aq(h.f2813m, 0, "\\|");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", currentTimeMillis);
                if (j2 > 0) {
                    jSONObject.put(b.V, j2);
                }
                jSONObject.put("__t", g.a);
                if (str2 == null) {
                    str2 = "";
                }
                jSONObject.put(str, str2);
                if (UMGlobalContext.getInstance().isMainProcess(f2852g)) {
                    str4 = u.a().d(UMGlobalContext.getAppContext(f2852g));
                } else {
                    str4 = u.a().a(UMGlobalContext.getAppContext(f2852g), currentTimeMillis);
                }
                if (TextUtils.isEmpty(str4)) {
                    str4 = "-1";
                }
                jSONObject.put("__i", str4);
                if (!TextUtils.isEmpty(str3)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str3);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(b.ar, jSONObject2);
                        }
                    } catch (JSONException unused) {
                    }
                }
                jSONObject.put(b.ac, 0);
                jSONObject.put(b.ad, UMGlobalContext.getInstance().getProcessName(f2852g));
                a();
                if (this.f2856h != null && this.f2856h.has(str) && !((Boolean) this.f2856h.get(str)).booleanValue()) {
                    jSONObject.put(b.X, 1);
                    this.f2856h.put(str, true);
                    c(f2852g);
                }
                UMWorkDispatch.sendEvent(f2852g, 4097, CoreProtocol.getInstance(f2852g), jSONObject);
                return;
            }
            UMLog.aq(h.f2812l, 0, "\\|");
        } catch (Throwable unused2) {
        }
    }

    private boolean b(String str) {
        if (str == null) {
            return true;
        }
        try {
            if (str.trim().getBytes().length <= 256) {
                return true;
            }
        } catch (Exception unused) {
        }
        MLog.e("value is " + str + ", please check value, illegal");
        return false;
    }

    private boolean b(Map<String, Object> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        if (!a(entry.getKey())) {
                            UMLog.aq(h.f2808h, 0, "\\|");
                            return false;
                        } else if (entry.getValue() == null) {
                            UMLog.aq(h.f2809i, 0, "\\|");
                            return false;
                        } else if (entry.getValue() instanceof String) {
                            if (b.aB.equals(entry.getKey())) {
                                if (!c(entry.getValue().toString())) {
                                    UMLog.aq(h.O, 0, "\\|");
                                    return false;
                                }
                            } else if (!b(entry.getValue().toString())) {
                                UMLog.aq(h.f2810j, 0, "\\|");
                                return false;
                            }
                        }
                    }
                    return true;
                }
            } catch (Exception unused) {
                return true;
            }
        }
        UMLog.aq(h.f2807g, 0, "\\|");
        return false;
    }

    public void a(String str, Map<String, Object> map, long j2, String str2) {
        String str3;
        try {
            if (!a(str)) {
                UMLog.aq(h.f2806f, 0, "\\|");
            } else if (b(map)) {
                if (map.size() > 10) {
                    MLog.e("map size is " + map.size() + ", please check");
                } else if (Arrays.asList(b.aD).contains(str)) {
                    MLog.e("key is " + str + ", please check key, illegal");
                    UMLog.aq(h.b, 0, "\\|");
                } else {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", str);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (j2 > 0) {
                        jSONObject.put(b.V, j2);
                    }
                    jSONObject.put("__t", g.a);
                    ULog.i("befort ekv map, event is " + jSONObject.toString());
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        if (!Arrays.asList(b.aD).contains(entry.getKey())) {
                            Object value = entry.getValue();
                            if (!(value instanceof String) && !(value instanceof Integer) && !(value instanceof Long) && !(value instanceof Short) && !(value instanceof Float) && !(value instanceof Double)) {
                                if (!value.getClass().isArray()) {
                                    MLog.e("please check key or value, illegal type!");
                                    return;
                                } else if (value instanceof int[]) {
                                    int[] iArr = (int[]) value;
                                    if (iArr.length > 10) {
                                        MLog.e("please check key or value, size overlength!");
                                        return;
                                    }
                                    JSONArray jSONArray = new JSONArray();
                                    for (int i2 : iArr) {
                                        jSONArray.put(i2);
                                    }
                                    jSONObject.put(entry.getKey(), jSONArray);
                                } else if (value instanceof double[]) {
                                    double[] dArr = (double[]) value;
                                    if (dArr.length > 10) {
                                        MLog.e("please check key or value, size overlength!");
                                        return;
                                    }
                                    JSONArray jSONArray2 = new JSONArray();
                                    for (double d2 : dArr) {
                                        jSONArray2.put(d2);
                                    }
                                    jSONObject.put(entry.getKey(), jSONArray2);
                                } else if (value instanceof long[]) {
                                    long[] jArr = (long[]) value;
                                    if (jArr.length > 10) {
                                        MLog.e("please check key or value, size overlength!");
                                        return;
                                    }
                                    JSONArray jSONArray3 = new JSONArray();
                                    for (long j3 : jArr) {
                                        jSONArray3.put(j3);
                                    }
                                    jSONObject.put(entry.getKey(), jSONArray3);
                                } else if (value instanceof float[]) {
                                    float[] fArr = (float[]) value;
                                    if (fArr.length > 10) {
                                        MLog.e("please check key or value, size overlength!");
                                        return;
                                    }
                                    JSONArray jSONArray4 = new JSONArray();
                                    for (float f2 : fArr) {
                                        jSONArray4.put((double) f2);
                                    }
                                    jSONObject.put(entry.getKey(), jSONArray4);
                                } else if (value instanceof short[]) {
                                    short[] sArr = (short[]) value;
                                    if (sArr.length > 10) {
                                        MLog.e("please check key or value, size overlength!");
                                        return;
                                    }
                                    JSONArray jSONArray5 = new JSONArray();
                                    for (short s : sArr) {
                                        jSONArray5.put((int) s);
                                    }
                                    jSONObject.put(entry.getKey(), jSONArray5);
                                } else if (value instanceof String[]) {
                                    String[] strArr = (String[]) value;
                                    if (strArr.length > 10) {
                                        MLog.e("please check key or value, size overlength!");
                                        return;
                                    }
                                    JSONArray jSONArray6 = new JSONArray();
                                    for (int i3 = 0; i3 < strArr.length; i3++) {
                                        if (strArr[i3] == null) {
                                            MLog.e("please check array, null item!");
                                            return;
                                        } else if (b(strArr[i3])) {
                                            jSONArray6.put(strArr[i3]);
                                        } else {
                                            return;
                                        }
                                    }
                                    jSONObject.put(entry.getKey(), jSONArray6);
                                } else {
                                    MLog.e("please check key or value, illegal type!");
                                    return;
                                }
                            }
                            jSONObject.put(entry.getKey(), value);
                        } else {
                            UMLog.aq(h.f2805e, 0, "\\|");
                            return;
                        }
                    }
                    if (UMGlobalContext.getInstance().isMainProcess(f2852g)) {
                        str3 = u.a().d(UMGlobalContext.getAppContext(f2852g));
                    } else {
                        str3 = u.a().a(UMGlobalContext.getAppContext(f2852g), jSONObject.getLong("ts"));
                    }
                    if (TextUtils.isEmpty(str3)) {
                        str3 = "-1";
                    }
                    jSONObject.put("__i", str3);
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            JSONObject jSONObject2 = new JSONObject(str2);
                            if (jSONObject2.length() > 0) {
                                jSONObject.put(b.ar, jSONObject2);
                            }
                        } catch (JSONException unused) {
                        }
                    }
                    jSONObject.put(b.ac, 0);
                    jSONObject.put(b.ad, UMGlobalContext.getInstance().getProcessName(f2852g));
                    a();
                    if (this.f2856h != null && this.f2856h.has(str) && !((Boolean) this.f2856h.get(str)).booleanValue()) {
                        jSONObject.put(b.X, 1);
                        this.f2856h.put(str, true);
                        c(f2852g);
                    }
                    ULog.i("----->>>>>ekv event json is " + jSONObject.toString());
                    UMWorkDispatch.sendEvent(f2852g, 4097, CoreProtocol.getInstance(f2852g), jSONObject);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public void a(String str, Map<String, Object> map, String str2) {
        try {
            if (a(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(b.V, 0);
                jSONObject.put("__t", g.b);
                ULog.i("befort gkv map, event is " + jSONObject.toString());
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i2 = 0; i2 < 10 && it.hasNext(); i2++) {
                    Map.Entry<String, Object> next = it.next();
                    if (!b.X.equals(next.getKey()) && !b.V.equals(next.getKey()) && !"id".equals(next.getKey()) && !"ts".equals(next.getKey())) {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String d2 = u.a().d(UMGlobalContext.getAppContext(f2852g));
                if (TextUtils.isEmpty(d2)) {
                    d2 = "-1";
                }
                jSONObject.put("__i", d2);
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str2);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(b.ar, jSONObject2);
                        }
                    } catch (JSONException unused) {
                    }
                }
                jSONObject.put(b.ac, 0);
                jSONObject.put(b.ad, UMGlobalContext.getInstance().getProcessName(f2852g));
                ULog.i("----->>>>>gkv event json is " + jSONObject.toString());
                UMWorkDispatch.sendEvent(f2852g, 4098, CoreProtocol.getInstance(f2852g), jSONObject);
            }
        } catch (Throwable unused2) {
        }
    }

    private void a() {
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f2852g, "track_list", "");
            if (!TextUtils.isEmpty(imprintProperty)) {
                String[] split = imprintProperty.split("!");
                JSONObject jSONObject = new JSONObject();
                int i2 = 0;
                if (this.f2856h != null) {
                    for (String str : split) {
                        String subStr = HelperUtils.subStr(str, 128);
                        if (this.f2856h.has(subStr)) {
                            jSONObject.put(subStr, this.f2856h.get(subStr));
                        }
                    }
                }
                this.f2856h = new JSONObject();
                if (split.length >= 10) {
                    while (i2 < 10) {
                        a(split[i2], jSONObject);
                        i2++;
                    }
                } else {
                    while (i2 < split.length) {
                        a(split[i2], jSONObject);
                        i2++;
                    }
                }
                c(f2852g);
            }
        } catch (Exception unused) {
        }
    }

    private void a(String str, JSONObject jSONObject) throws JSONException {
        String subStr = HelperUtils.subStr(str, 128);
        if (jSONObject.has(subStr)) {
            a(subStr, ((Boolean) jSONObject.get(subStr)).booleanValue());
        } else {
            a(subStr, false);
        }
    }

    private void a(String str, boolean z) {
        try {
            if (!b.X.equals(str) && !b.V.equals(str) && !"id".equals(str) && !"ts".equals(str) && !this.f2856h.has(str)) {
                this.f2856h.put(str, z);
            }
        } catch (Exception unused) {
        }
    }

    public void a(List<String> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    a();
                    if (this.f2856h == null) {
                        this.f2856h = new JSONObject();
                        int size = list.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            if (this.f2856h != null) {
                                if (this.f2856h.length() >= 5) {
                                    break;
                                }
                            } else {
                                this.f2856h = new JSONObject();
                            }
                            String str = list.get(i2);
                            if (!TextUtils.isEmpty(str)) {
                                a(HelperUtils.subStr(str, 128), false);
                            }
                        }
                        c(f2852g);
                        return;
                    } else if (this.f2856h.length() >= 5) {
                        MLog.d("already setFistLaunchEvent, igone.");
                        return;
                    } else {
                        for (int i3 = 0; i3 < list.size(); i3++) {
                            if (this.f2856h.length() >= 5) {
                                MLog.d(" add setFistLaunchEvent over.");
                                return;
                            } else {
                                a(HelperUtils.subStr(list.get(i3), 128), false);
                            }
                        }
                        c(f2852g);
                        return;
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
        UMLog.aq(h.aj, 0, "\\|");
    }

    private JSONObject a(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    String key = entry.getKey();
                    if (key != null) {
                        String subStr = HelperUtils.subStr(key, 128);
                        Object value = entry.getValue();
                        if (value != null) {
                            int i2 = 0;
                            if (value.getClass().isArray()) {
                                if (value instanceof int[]) {
                                    int[] iArr = (int[]) value;
                                    JSONArray jSONArray = new JSONArray();
                                    while (i2 < iArr.length) {
                                        jSONArray.put(iArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray);
                                } else if (value instanceof double[]) {
                                    double[] dArr = (double[]) value;
                                    JSONArray jSONArray2 = new JSONArray();
                                    while (i2 < dArr.length) {
                                        jSONArray2.put(dArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray2);
                                } else if (value instanceof long[]) {
                                    long[] jArr = (long[]) value;
                                    JSONArray jSONArray3 = new JSONArray();
                                    while (i2 < jArr.length) {
                                        jSONArray3.put(jArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray3);
                                } else if (value instanceof float[]) {
                                    float[] fArr = (float[]) value;
                                    JSONArray jSONArray4 = new JSONArray();
                                    while (i2 < fArr.length) {
                                        jSONArray4.put((double) fArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray4);
                                } else if (value instanceof short[]) {
                                    short[] sArr = (short[]) value;
                                    JSONArray jSONArray5 = new JSONArray();
                                    while (i2 < sArr.length) {
                                        jSONArray5.put((int) sArr[i2]);
                                        i2++;
                                    }
                                    jSONObject.put(subStr, jSONArray5);
                                }
                            } else if (value instanceof List) {
                                List list = (List) value;
                                JSONArray jSONArray6 = new JSONArray();
                                while (i2 < list.size()) {
                                    Object obj = list.get(i2);
                                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                                        jSONArray6.put(list.get(i2));
                                    }
                                    i2++;
                                }
                                if (jSONArray6.length() > 0) {
                                    jSONObject.put(subStr, jSONArray6);
                                }
                            } else if (value instanceof String) {
                                jSONObject.put(subStr, HelperUtils.subStr(value.toString(), 256));
                            } else {
                                if (!(value instanceof Long) && !(value instanceof Integer) && !(value instanceof Float) && !(value instanceof Double) && !(value instanceof Short)) {
                                    MLog.e("The param has not support type. please check !");
                                }
                                jSONObject.put(subStr, value);
                            }
                        }
                    }
                } catch (Exception e2) {
                    MLog.e(e2);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private boolean a(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length <= 128) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        MLog.e("key is " + str + ", please check key, illegal");
        return false;
    }
}
