package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.s;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.e;
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
        c cVar;
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
            cVar = c.a(context, UMUtils.getAppkey(context), bArr);
        } else if (i2 == 1) {
            ULog.i("walle", "[stateless] build envelope, codexValue is 1");
            cVar = c.b(context, UMUtils.getAppkey(context), bArr);
        } else if (isEncryptEnabled) {
            ULog.i("walle", "[stateless] build envelope, isEncryptEnabled is true");
            cVar = c.b(context, UMUtils.getAppkey(context), bArr);
        } else {
            ULog.i("walle", "[stateless] build envelope, isEncryptEnabled is false");
            cVar = c.a(context, UMUtils.getAppkey(context), bArr);
        }
        return cVar;
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

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: ClassNotFoundException -> 0x0215
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:130)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.attachHandlers(AttachTryCatchVisitor.java:118)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:42)
        */
    public synchronized org.json.JSONObject buildSLBaseHeader(android.content.Context r10) {
        /*
        // Method dump skipped, instructions count: 695
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.UMSLEnvelopeBuild.buildSLBaseHeader(android.content.Context):org.json.JSONObject");
    }

    public synchronized JSONObject buildSLEnvelope(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        ULog.i("walle", "[stateless] build envelope, heade is " + jSONObject.toString());
        ULog.i("walle", "[stateless] build envelope, body is " + jSONObject2.toString());
        ULog.i("walle", "[stateless] build envelope, thread is " + Thread.currentThread());
        if (context == null || str == null) {
            ULog.i("walle", "[stateless] build envelope, context is null or header is null or body is null");
            return makeErrorResult(110, null);
        }
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
            e a = e.a(applicationContext);
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
        if (f.a((long) jSONObject.toString().getBytes().length, a.f3116c)) {
            ULog.i("walle", "[stateless] build envelope, json overstep!!!! size is " + jSONObject.toString().getBytes().length);
            return makeErrorResult(113, jSONObject);
        }
        ULog.i("walle", "[stateless] build envelope, json size is " + jSONObject.toString().getBytes().length);
        c constructEnvelope = constructEnvelope(applicationContext, jSONObject.toString().getBytes());
        if (constructEnvelope == null) {
            ULog.i("walle", "[stateless] build envelope, envelope is null !!!!");
            return makeErrorResult(111, jSONObject);
        } else if (constructEnvelope == null || !f.a((long) constructEnvelope.b().length, a.f3117d)) {
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
        } else {
            ULog.i("walle", "[stateless] build envelope, envelope overstep!!!! size is " + constructEnvelope.b().length);
            return makeErrorResult(114, jSONObject);
        }
    }
}
