package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.proguard.s;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.j;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EnvelopeManager.java */
/* loaded from: classes.dex */
public class b {
    public static String a = null;
    public static String b = "";

    /* renamed from: c  reason: collision with root package name */
    public static final String f3166c = "EnvelopeManager";

    /* renamed from: d  reason: collision with root package name */
    public static String f3167d;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f3168f;

    /* renamed from: e  reason: collision with root package name */
    public int f3169e = 0;

    public static long a(Context context) {
        long j2 = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        JSONObject b2 = b(context);
        if (b2 != null && b2.toString() != null && b2.toString().getBytes() != null) {
            long length = b2.toString().getBytes().length;
            boolean z = ULog.DEBUG;
            j2 -= length;
        }
        boolean z2 = ULog.DEBUG;
        return j2;
    }

    public static JSONObject b(Context context) {
        SharedPreferences sharedPreferences;
        JSONObject jSONObject;
        String str;
        int[] resolutionArray;
        try {
            sharedPreferences = PreferenceWrapper.getDefault(context);
            if (!TextUtils.isEmpty(f3167d)) {
                try {
                    jSONObject = new JSONObject(f3167d);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(e.o, DeviceConfig.getAppMD5Signature(context));
                jSONObject2.put(e.p, DeviceConfig.getAppSHA1Key(context));
                jSONObject2.put(e.q, DeviceConfig.getAppHashKey(context));
                jSONObject2.put("app_version", DeviceConfig.getAppVersionName(context));
                jSONObject2.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(context)));
                jSONObject2.put("idmd5", DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject2.put(e.v, DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(context);
                if (!TextUtils.isEmpty(mccmnc)) {
                    jSONObject2.put(e.A, mccmnc);
                    b = mccmnc;
                } else {
                    jSONObject2.put(e.A, "");
                }
                String subOSName = DeviceConfig.getSubOSName(context);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject2.put(e.J, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(context);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject2.put(e.K, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(context);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject2.put(e.af, deviceType);
                }
                jSONObject2.put(e.n, DeviceConfig.getPackageName(context));
                jSONObject2.put(e.t, "Android");
                jSONObject2.put("device_id", DeviceConfig.getDeviceId(context));
                jSONObject2.put("device_model", Build.MODEL);
                jSONObject2.put(e.D, Build.BOARD);
                jSONObject2.put(e.E, Build.BRAND);
                jSONObject2.put(e.F, Build.TIME);
                jSONObject2.put(e.G, Build.MANUFACTURER);
                jSONObject2.put(e.H, Build.ID);
                jSONObject2.put(e.I, Build.DEVICE);
                jSONObject2.put(e.w, "Android");
                jSONObject2.put(e.x, Build.VERSION.RELEASE);
                if (DeviceConfig.getResolutionArray(context) != null) {
                    jSONObject2.put(e.y, resolutionArray[1] + "*" + resolutionArray[0]);
                }
                jSONObject2.put(e.z, DeviceConfig.getMac(context));
                jSONObject2.put(e.L, DeviceConfig.getTimeZone(context));
                String[] localeInfo = DeviceConfig.getLocaleInfo(context);
                jSONObject2.put(e.N, localeInfo[0]);
                jSONObject2.put(e.M, localeInfo[1]);
                jSONObject2.put(e.O, DeviceConfig.getNetworkOperatorName(context));
                jSONObject2.put(e.r, DeviceConfig.getAppName(context));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    jSONObject2.put(e.P, "wifi");
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    jSONObject2.put(e.P, "2G/3G");
                } else {
                    jSONObject2.put(e.P, "unknow");
                }
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject2.put(e.Q, networkAccessMode[1]);
                }
                jSONObject2.put(e.b, SdkVersion.SDK_VERSION);
                jSONObject2.put(e.f3056c, SdkVersion.SDK_TYPE);
                if (!TextUtils.isEmpty(a)) {
                    jSONObject2.put(e.f3057d, a);
                }
                f3167d = jSONObject2.toString();
                jSONObject = jSONObject2;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
        if (jSONObject == null) {
            return null;
        }
        try {
            jSONObject.put(e.R, sharedPreferences.getInt(StatTracer.KEY_CLIENT_REQUEST_SUCCESS, 0));
            jSONObject.put(e.S, sharedPreferences.getInt(e.S, 0));
            jSONObject.put(e.T, sharedPreferences.getInt(StatTracer.KEY_CLIENT_REQUEST_LATENCY, 0));
        } catch (Exception unused2) {
        }
        jSONObject.put("channel", UMUtils.getChannel(context));
        jSONObject.put("appkey", UMUtils.getAppkey(context));
        try {
            String deviceToken = UMUtils.getDeviceToken(context);
            if (!TextUtils.isEmpty(deviceToken)) {
                jSONObject.put(e.a, deviceToken);
            }
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
        }
        try {
            if (SdkVersion.SDK_TYPE != 1) {
                try {
                    Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
                    str = (String) cls.getMethod("getUmtt", Context.class).invoke(cls, context);
                } catch (Throwable unused3) {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put(e.f3058e, str);
                }
            }
        } catch (Exception e3) {
            UMCrashManager.reportCrash(context, e3);
        }
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(context, e.f3059f, null);
            if (!TextUtils.isEmpty(imprintProperty)) {
                jSONObject.put(e.f3059f, imprintProperty);
            }
        } catch (Exception e4) {
            UMCrashManager.reportCrash(context, e4);
        }
        try {
            if (SdkVersion.SDK_TYPE != 1 && com.umeng.commonsdk.proguard.a.b(context) != null) {
                jSONObject.put(e.f3060g, com.umeng.commonsdk.proguard.a.b(context));
            }
        } catch (Exception unused4) {
        }
        try {
            jSONObject.put("wrapper_type", a.a);
            jSONObject.put("wrapper_version", a.b);
        } catch (Exception unused5) {
        }
        byte[] a2 = ImprintHandler.getImprintService(context).a();
        if (a2 != null && a2.length > 0) {
            try {
                jSONObject.put(e.U, Base64.encodeToString(a2, 0));
            } catch (JSONException e5) {
                UMCrashManager.reportCrash(context, e5);
            }
        }
        if (jSONObject.length() > 0) {
            return new JSONObject().put("header", jSONObject);
        }
        return null;
    }

    private JSONObject a(int i2, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("exception", i2);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("exception", i2);
        } catch (Exception unused2) {
        }
        return jSONObject2;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3;
        String str;
        Envelope envelope;
        String str2;
        if (ULog.DEBUG && jSONObject != null && jSONObject2 != null) {
            int length = jSONObject.toString().getBytes().length;
            int length2 = jSONObject2.toString().getBytes().length;
        }
        if (context != null && jSONObject2 != null) {
            try {
                JSONObject b2 = b(context);
                if (b2 != null && jSONObject != null) {
                    b2 = a(b2, jSONObject);
                }
                if (b2 != null) {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (next != null && (next instanceof String)) {
                            String str3 = next;
                            if (jSONObject2.opt(str3) != null) {
                                try {
                                    b2.put(str3, jSONObject2.opt(str3));
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                if (b2 != null) {
                    StringBuilder sb = new StringBuilder();
                    if (b2.length() > 0) {
                        if (b2.has("push")) {
                            String optString = b2.optJSONObject("header").optString(e.au);
                            if (!TextUtils.isEmpty(e.ao) && !TextUtils.isEmpty(optString)) {
                                sb.append(e.ao);
                                sb.append("==");
                                sb.append(optString);
                                sb.append("&=");
                            }
                        }
                        if (b2.has("share")) {
                            String optString2 = b2.optJSONObject("header").optString(e.av);
                            if (!TextUtils.isEmpty(e.ap) && !TextUtils.isEmpty(optString2)) {
                                sb.append(e.ap);
                                sb.append("==");
                                sb.append(optString2);
                                sb.append("&=");
                            }
                        }
                        if (b2.has("analytics")) {
                            if (b2.has("dplus")) {
                                str2 = e.an;
                            } else {
                                str2 = b2.optJSONObject("header").has("st") ? e.ar : "a";
                            }
                            String optString3 = b2.optJSONObject("header").optString("sdk_version");
                            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(optString3)) {
                                sb.append(str2);
                                sb.append("==");
                                sb.append(optString3);
                                sb.append("&=");
                            }
                        }
                        if (b2.has("dplus")) {
                            String optString4 = b2.optJSONObject("header").optString("sdk_version");
                            if (b2.has("analytics")) {
                                if (!sb.toString().contains(e.an) && !TextUtils.isEmpty(e.an) && !TextUtils.isEmpty(optString4)) {
                                    sb.append(e.an);
                                    sb.append("==");
                                    sb.append(optString4);
                                    sb.append("&=");
                                }
                            } else if (!TextUtils.isEmpty(e.am) && !TextUtils.isEmpty(optString4)) {
                                sb.append(e.am);
                                sb.append("==");
                                sb.append(optString4);
                                sb.append("&=");
                            }
                        }
                        if (b2.has(e.ak)) {
                            String optString5 = b2.optJSONObject("header").optString(e.aw);
                            if (!TextUtils.isEmpty(e.aq) && !TextUtils.isEmpty(optString5)) {
                                sb.append(e.aq);
                                sb.append("==");
                                sb.append(optString5);
                                sb.append("&=");
                            }
                        }
                    }
                    str = sb.toString();
                    if (TextUtils.isEmpty(str)) {
                        return a(101, b2);
                    }
                    if (str.endsWith("&=")) {
                        str = str.substring(0, str.length() - 2);
                    }
                } else {
                    str = null;
                }
                if (b2 != null) {
                    try {
                        com.umeng.commonsdk.statistics.idtracking.e a2 = com.umeng.commonsdk.statistics.idtracking.e.a(context);
                        if (a2 != null) {
                            a2.a();
                            String encodeToString = Base64.encodeToString(new s().a(a2.b()), 0);
                            if (!TextUtils.isEmpty(encodeToString)) {
                                JSONObject jSONObject4 = b2.getJSONObject("header");
                                jSONObject4.put(e.V, encodeToString);
                                b2.put("header", jSONObject4);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (b2 != null && DataHelper.largeThanMaxSize(b2.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                    SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putInt(j.a, sharedPreferences.getInt(j.a, 1) + 1).commit();
                    }
                    return a(113, b2);
                }
                if (b2 != null) {
                    envelope = a(context, b2.toString().getBytes());
                    if (envelope == null) {
                        return a(111, b2);
                    }
                } else {
                    envelope = null;
                }
                if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                    return a(114, b2);
                }
                int a3 = a(context, envelope, str, b2 != null ? b2.optJSONObject("header").optString("app_version") : null);
                if (a3 != 0) {
                    return a(a3, b2);
                }
                if (ULog.DEBUG) {
                    int length3 = b2.toString().getBytes().length;
                }
                return b2;
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
                if (jSONObject != null) {
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        try {
                            jSONObject5.put("header", jSONObject);
                        } catch (JSONException unused3) {
                        } catch (Exception e2) {
                            e = e2;
                            jSONObject3 = jSONObject5;
                            UMCrashManager.reportCrash(context, e);
                            return a(110, jSONObject3);
                        }
                        jSONObject3 = jSONObject5;
                    } catch (Exception e3) {
                        e = e3;
                        jSONObject3 = null;
                    }
                } else {
                    jSONObject3 = null;
                }
                if (jSONObject3 == null) {
                    try {
                        jSONObject3 = new JSONObject();
                    } catch (Exception e4) {
                        e = e4;
                        UMCrashManager.reportCrash(context, e);
                        return a(110, jSONObject3);
                    }
                }
                Iterator<String> keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    if (next2 != null && (next2 instanceof String)) {
                        String str4 = next2;
                        if (jSONObject2.opt(str4) != null) {
                            try {
                                jSONObject3.put(str4, jSONObject2.opt(str4));
                            } catch (Exception unused4) {
                            }
                        }
                    }
                }
                return a(110, jSONObject3);
            }
        }
        return a(110, (JSONObject) null);
    }

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt("header") != null && (jSONObject.opt("header") instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt("header");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && (next instanceof String)) {
                    String str = next;
                    if (jSONObject2.opt(str) != null) {
                        try {
                            jSONObject3.put(str, jSONObject2.opt(str));
                            if (str.equals(com.umeng.analytics.pro.b.f2736i) && (jSONObject2.opt(str) instanceof Integer)) {
                                this.f3169e = ((Integer) jSONObject2.opt(str)).intValue();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    private Envelope a(Context context, byte[] bArr) {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int i2 = -1;
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i2 = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e2) {
            UMCrashManager.reportCrash(context, e2);
        }
        if (i2 == 0) {
            return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (i2 == 1) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (f3168f) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    private int a(Context context, Envelope envelope, String str, String str2) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        return UMFrUtils.saveEnvelopeFile(context, str + "&&" + str2 + "_" + System.currentTimeMillis() + "_envelope.log", envelope.toBinary());
    }

    public static void a(boolean z) {
        f3168f = z;
    }
}
