package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.s;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UMSLEnvelopeBuild {
    public static final String TAG = "UMSLEnvelopeBuild";
    public static String cacheSystemheader;
    public static boolean isEncryptEnabled;
    public static Context mContext;
    public static String module;

    private synchronized c constructEnvelope(Context context, byte[] bArr) {
        c a;
        int i2 = -1;
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "slcodex", null);
        ULog.i("walle", "[stateless] build envelope, codexStr is " + imprintProperty);
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i2 = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e2) {
            UMCrashManager.reportCrash(context, e2);
        }
        if (i2 == 0) {
            ULog.i("walle", "[stateless] build envelope, codexValue is 0");
            a = c.a(context, UMUtils.getAppkey(context), bArr);
        } else if (i2 == 1) {
            ULog.i("walle", "[stateless] build envelope, codexValue is 1");
            a = c.b(context, UMUtils.getAppkey(context), bArr);
        } else if (isEncryptEnabled) {
            ULog.i("walle", "[stateless] build envelope, isEncryptEnabled is true");
            a = c.b(context, UMUtils.getAppkey(context), bArr);
        } else {
            ULog.i("walle", "[stateless] build envelope, isEncryptEnabled is false");
            a = c.a(context, UMUtils.getAppkey(context), bArr);
        }
        return a;
    }

    private synchronized JSONObject makeErrorResult(int i2, JSONObject jSONObject) {
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

    public static void setEncryptEnabled(boolean z) {
        isEncryptEnabled = z;
    }

    public synchronized JSONObject buildSLBaseHeader(Context context) {
        JSONObject jSONObject;
        String str;
        int[] resolutionArray;
        ULog.i("walle", "[stateless] begin build hader, thread is " + Thread.currentThread());
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (!TextUtils.isEmpty(cacheSystemheader)) {
            try {
                jSONObject = new JSONObject(cacheSystemheader);
            } catch (Exception unused) {
                jSONObject = null;
            }
        } else {
            jSONObject = new JSONObject();
            jSONObject.put(com.umeng.commonsdk.proguard.e.o, DeviceConfig.getAppMD5Signature(applicationContext));
            jSONObject.put(com.umeng.commonsdk.proguard.e.p, DeviceConfig.getAppSHA1Key(applicationContext));
            jSONObject.put(com.umeng.commonsdk.proguard.e.q, DeviceConfig.getAppHashKey(applicationContext));
            jSONObject.put("app_version", DeviceConfig.getAppVersionName(applicationContext));
            jSONObject.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(applicationContext)));
            jSONObject.put("idmd5", DeviceConfig.getDeviceIdUmengMD5(applicationContext));
            jSONObject.put(com.umeng.commonsdk.proguard.e.v, DeviceConfig.getCPU());
            String mccmnc = DeviceConfig.getMCCMNC(applicationContext);
            if (!TextUtils.isEmpty(mccmnc)) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.A, mccmnc);
            } else {
                jSONObject.put(com.umeng.commonsdk.proguard.e.A, "");
            }
            String subOSName = DeviceConfig.getSubOSName(applicationContext);
            if (!TextUtils.isEmpty(subOSName)) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.J, subOSName);
            }
            String subOSVersion = DeviceConfig.getSubOSVersion(applicationContext);
            if (!TextUtils.isEmpty(subOSVersion)) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.K, subOSVersion);
            }
            String deviceType = DeviceConfig.getDeviceType(applicationContext);
            if (!TextUtils.isEmpty(deviceType)) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.af, deviceType);
            }
            jSONObject.put(com.umeng.commonsdk.proguard.e.n, DeviceConfig.getPackageName(applicationContext));
            jSONObject.put(com.umeng.commonsdk.proguard.e.t, "Android");
            jSONObject.put("device_id", DeviceConfig.getDeviceId(applicationContext));
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put(com.umeng.commonsdk.proguard.e.D, Build.BOARD);
            jSONObject.put(com.umeng.commonsdk.proguard.e.E, Build.BRAND);
            jSONObject.put(com.umeng.commonsdk.proguard.e.F, Build.TIME);
            jSONObject.put(com.umeng.commonsdk.proguard.e.G, Build.MANUFACTURER);
            jSONObject.put(com.umeng.commonsdk.proguard.e.H, Build.ID);
            jSONObject.put(com.umeng.commonsdk.proguard.e.I, Build.DEVICE);
            jSONObject.put(com.umeng.commonsdk.proguard.e.w, "Android");
            jSONObject.put(com.umeng.commonsdk.proguard.e.x, Build.VERSION.RELEASE);
            if (DeviceConfig.getResolutionArray(applicationContext) != null) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.y, resolutionArray[1] + "*" + resolutionArray[0]);
            }
            jSONObject.put(com.umeng.commonsdk.proguard.e.z, DeviceConfig.getMac(applicationContext));
            jSONObject.put(com.umeng.commonsdk.proguard.e.L, DeviceConfig.getTimeZone(applicationContext));
            String[] localeInfo = DeviceConfig.getLocaleInfo(applicationContext);
            jSONObject.put(com.umeng.commonsdk.proguard.e.N, localeInfo[0]);
            jSONObject.put(com.umeng.commonsdk.proguard.e.M, localeInfo[1]);
            jSONObject.put(com.umeng.commonsdk.proguard.e.O, DeviceConfig.getNetworkOperatorName(applicationContext));
            jSONObject.put(com.umeng.commonsdk.proguard.e.r, DeviceConfig.getAppName(applicationContext));
            String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(applicationContext);
            if ("Wi-Fi".equals(networkAccessMode[0])) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.P, "wifi");
            } else if ("2G/3G".equals(networkAccessMode[0])) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.P, "2G/3G");
            } else {
                jSONObject.put(com.umeng.commonsdk.proguard.e.P, "unknow");
            }
            if (!"".equals(networkAccessMode[1])) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.Q, networkAccessMode[1]);
            }
            jSONObject.put(com.umeng.commonsdk.proguard.e.b, SdkVersion.SDK_VERSION);
            jSONObject.put(com.umeng.commonsdk.proguard.e.f3131c, SdkVersion.SDK_TYPE);
            if (!TextUtils.isEmpty(module)) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.f3132d, module);
            }
            cacheSystemheader = jSONObject.toString();
        }
        if (jSONObject == null) {
            return null;
        }
        jSONObject.put("channel", UMUtils.getChannel(applicationContext));
        jSONObject.put("appkey", UMUtils.getAppkey(applicationContext));
        try {
            if (SdkVersion.SDK_TYPE != 1) {
                try {
                    Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
                    str = (String) cls.getMethod("getUmtt", Context.class).invoke(cls, applicationContext);
                } catch (Throwable unused2) {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put(com.umeng.commonsdk.proguard.e.f3133e, str);
                }
            }
        } catch (Exception unused3) {
        }
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(applicationContext, com.umeng.commonsdk.proguard.e.f3134f, null);
            if (!TextUtils.isEmpty(imprintProperty)) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.f3134f, imprintProperty);
            }
        } catch (Exception unused4) {
        }
        try {
            if (SdkVersion.SDK_TYPE != 1 && com.umeng.commonsdk.proguard.a.b(applicationContext) != null) {
                jSONObject.put(com.umeng.commonsdk.proguard.e.f3135g, com.umeng.commonsdk.proguard.a.b(applicationContext));
            }
        } catch (Exception unused5) {
        }
        try {
            jSONObject.put("wrapper_type", a.a);
            jSONObject.put("wrapper_version", a.b);
        } catch (Exception unused6) {
        }
        if (jSONObject.length() > 0) {
            JSONObject jSONObject2 = new JSONObject();
            ULog.i("walle", "[stateless] build header end , header is " + jSONObject.toString() + ", thread is " + Thread.currentThread());
            return jSONObject2.put("header", jSONObject);
        }
        ULog.i("walle", "[stateless] build header end , header is null !!! thread is " + Thread.currentThread());
        return null;
    }

    public synchronized JSONObject buildSLEnvelope(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        ULog.i("walle", "[stateless] build envelope, heade is " + jSONObject.toString());
        ULog.i("walle", "[stateless] build envelope, body is " + jSONObject2.toString());
        ULog.i("walle", "[stateless] build envelope, thread is " + Thread.currentThread());
        if (context != null && str != null) {
            Context applicationContext = context.getApplicationContext();
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && (next instanceof String)) {
                    String str2 = next;
                    if (jSONObject2.opt(str2) != null) {
                        try {
                            jSONObject.put(str2, jSONObject2.opt(str2));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            try {
                com.umeng.commonsdk.statistics.idtracking.e a = com.umeng.commonsdk.statistics.idtracking.e.a(applicationContext);
                if (a != null) {
                    a.a();
                    String encodeToString = Base64.encodeToString(new s().a(a.b()), 0);
                    if (!TextUtils.isEmpty(encodeToString)) {
                        JSONObject jSONObject3 = jSONObject.getJSONObject("header");
                        jSONObject3.put(com.umeng.commonsdk.proguard.e.V, encodeToString);
                        jSONObject.put("header", jSONObject3);
                    }
                }
            } catch (Exception unused2) {
            }
            if (f.a(jSONObject.toString().getBytes().length, a.f3191c)) {
                ULog.i("walle", "[stateless] build envelope, json overstep!!!! size is " + jSONObject.toString().getBytes().length);
                return makeErrorResult(113, jSONObject);
            }
            ULog.i("walle", "[stateless] build envelope, json size is " + jSONObject.toString().getBytes().length);
            c constructEnvelope = constructEnvelope(applicationContext, jSONObject.toString().getBytes());
            if (constructEnvelope == null) {
                ULog.i("walle", "[stateless] build envelope, envelope is null !!!!");
                return makeErrorResult(111, jSONObject);
            } else if (constructEnvelope != null && f.a(constructEnvelope.b().length, a.f3192d)) {
                ULog.i("walle", "[stateless] build envelope, envelope overstep!!!! size is " + constructEnvelope.b().length);
                return makeErrorResult(114, jSONObject);
            } else {
                String encodeToString2 = Base64.encodeToString(str.getBytes(), 0);
                if (!f.a(applicationContext, encodeToString2, Base64.encodeToString((str + "_" + System.currentTimeMillis()).getBytes(), 0), constructEnvelope.b())) {
                    ULog.i("walle", "[stateless] build envelope, save fail ----->>>>>");
                    return makeErrorResult(101, jSONObject);
                }
                ULog.i("walle", "[stateless] build envelope, save ok ----->>>>>");
                ULog.i("walle", "[stateless] envelope file size is " + jSONObject.toString().getBytes().length);
                new d(applicationContext);
                d.b(273);
                ULog.i("walle", "[stateless] build envelope end, thread is " + Thread.currentThread());
                return jSONObject;
            }
        }
        ULog.i("walle", "[stateless] build envelope, context is null or header is null or body is null");
        return makeErrorResult(110, null);
    }
}
