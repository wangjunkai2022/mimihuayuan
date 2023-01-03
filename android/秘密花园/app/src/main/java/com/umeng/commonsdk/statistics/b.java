package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
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
import com.umeng.commonsdk.statistics.idtracking.j;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
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
        if (!(b2 == null || b2.toString() == null || b2.toString().getBytes() == null)) {
            long length = (long) b2.toString().getBytes().length;
            boolean z = ULog.DEBUG;
            j2 -= length;
        }
        boolean z2 = ULog.DEBUG;
        return j2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: ClassNotFoundException -> 0x021d
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:130)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.attachHandlers(AttachTryCatchVisitor.java:118)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:42)
        */
    public static org.json.JSONObject b(android.content.Context r14) {
        /*
        // Method dump skipped, instructions count: 659
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.b.b(android.content.Context):org.json.JSONObject");
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
        JSONObject jSONObject4;
        String str;
        Envelope envelope;
        String str2;
        if (!(!ULog.DEBUG || jSONObject == null || jSONObject2 == null)) {
            int length = jSONObject.toString().getBytes().length;
            int length2 = jSONObject2.toString().getBytes().length;
        }
        if (context == null || jSONObject2 == null) {
            return a(110, (JSONObject) null);
        }
        try {
            JSONObject b2 = b(context);
            if (!(b2 == null || jSONObject == null)) {
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
                            JSONObject jSONObject5 = b2.getJSONObject("header");
                            jSONObject5.put(e.V, encodeToString);
                            b2.put("header", jSONObject5);
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (b2 == null || !DataHelper.largeThanMaxSize((long) b2.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                if (b2 != null) {
                    envelope = a(context, b2.toString().getBytes());
                    if (envelope == null) {
                        return a(111, b2);
                    }
                } else {
                    envelope = null;
                }
                if (envelope != null && DataHelper.largeThanMaxSize((long) envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
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
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences != null) {
                sharedPreferences.edit().putInt(j.a, sharedPreferences.getInt(j.a, 1) + 1).commit();
            }
            return a(113, b2);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            if (jSONObject != null) {
                try {
                    jSONObject4 = new JSONObject();
                } catch (Exception e2) {
                    e = e2;
                    jSONObject3 = null;
                }
                try {
                    jSONObject4.put("header", jSONObject);
                } catch (JSONException unused3) {
                } catch (Exception e3) {
                    e = e3;
                    jSONObject3 = jSONObject4;
                    UMCrashManager.reportCrash(context, e);
                    return a(110, jSONObject3);
                }
                jSONObject3 = jSONObject4;
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

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (!(jSONObject == null || jSONObject2 == null || jSONObject.opt("header") == null || !(jSONObject.opt("header") instanceof JSONObject))) {
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
