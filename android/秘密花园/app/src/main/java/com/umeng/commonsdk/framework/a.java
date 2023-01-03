package com.umeng.commonsdk.framework;

import android.content.Context;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.b;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: UMEnvelopeBuildImpl.java */
/* loaded from: classes.dex */
public class a {
    public static long a(Context context) {
        if (context == null) {
            return 0;
        }
        return UMFrUtils.getLastSuccessfulBuildTime(context.getApplicationContext());
    }

    public static long b(Context context) {
        if (context == null) {
            return 0;
        }
        return UMFrUtils.getLastInstantBuildTime(context.getApplicationContext());
    }

    public static long c(Context context) {
        if (context == null) {
            return 0;
        }
        return b.a(context.getApplicationContext());
    }

    public static boolean a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        boolean z = false;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            boolean isOnline = UMFrUtils.isOnline(applicationContext);
            int envelopeFileNumber = UMFrUtils.envelopeFileNumber(applicationContext);
            if (isOnline) {
                if (b.a()) {
                    c.a((long) b.b());
                } else if (!UMFrUtils.hasEnvelopeFile(applicationContext, uMBusinessType)) {
                    z = true;
                }
            }
            if (isOnline && envelopeFileNumber > 0) {
                b.d();
            }
        }
        return z;
    }

    public static JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3;
        JSONException e2;
        ULog.d("--->>> buildEnvelopeFile Enter.");
        if (UMGlobalContext.getInstance().isMainProcess(context)) {
            return new b().a(context.getApplicationContext(), jSONObject, jSONObject2);
        }
        try {
            jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("exception", 101);
            } catch (JSONException e3) {
                e2 = e3;
                e2.printStackTrace();
                return jSONObject3;
            }
        } catch (JSONException e4) {
            e2 = e4;
            jSONObject3 = null;
        }
        return jSONObject3;
    }

    public static String a(Context context, String str, String str2) {
        return context == null ? str2 : ImprintHandler.getImprintService(context.getApplicationContext()).c().a(str, str2);
    }
}
