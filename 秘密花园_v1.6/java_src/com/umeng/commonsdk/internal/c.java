package com.umeng.commonsdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.common.ULog;
import org.json.JSONObject;
/* compiled from: UMInternalDataProtocol.java */
/* loaded from: classes.dex */
public class c implements UMLogDataProtocol {
    public static final String b = "info";

    /* renamed from: c  reason: collision with root package name */
    public static final String f3008c = "stat";
    public Context a;

    public c(Context context) {
        if (context != null) {
            this.a = context.getApplicationContext();
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j2) {
        return null;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i2) {
        ULog.i("walle", "[internal] workEvent");
        switch (i2) {
            case 32769:
                ULog.i("walle", "[internal] workEvent send envelope");
                Class<?> cls = Class.forName("com.umeng.commonsdk.internal.UMInternalManagerAgent");
                cls.getMethod("sendInternalEnvelopeByStateful2", Context.class).invoke(cls, this.a);
            case a.f2999f /* 32770 */:
            default:
                return;
            case a.f3000g /* 32771 */:
                StringBuilder o = f.b.a.a.a.o("[internal] workEvent cache battery, event is ");
                o.append(obj.toString());
                ULog.i("walle", o.toString());
                Class<?> cls2 = Class.forName("com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent");
                cls2.getMethod("saveBattery", Context.class, String.class).invoke(cls2, this.a, (String) obj);
                return;
            case a.f3001h /* 32772 */:
                StringBuilder o2 = f.b.a.a.a.o("[internal] workEvent cache station, event is ");
                o2.append(obj.toString());
                ULog.i("walle", o2.toString());
                Class<?> cls3 = Class.forName("com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent");
                cls3.getMethod("saveBaseStationStrength", Context.class, String.class).invoke(cls3, this.a, (String) obj);
                return;
            case a.f3002i /* 32773 */:
                Class<?> cls4 = Class.forName("com.umeng.commonsdk.internal.utils.InfoPreferenceAgent");
                cls4.getMethod("saveBluetoothInfo", Context.class, Object.class).invoke(cls4, this.a, obj);
                return;
            case a.f3003j /* 32774 */:
                Class<?> cls5 = Class.forName("com.umeng.commonsdk.internal.utils.ApplicationLayerUtilAgent");
                cls5.getMethod("wifiChange", Context.class).invoke(cls5, this.a);
                return;
            case a.f3004k /* 32775 */:
                Class<?> cls6 = Class.forName("com.umeng.commonsdk.internal.utils.InfoPreferenceAgent");
                cls6.getMethod("saveUA", Context.class, String.class).invoke(cls6, this.a, (String) obj);
                return;
            case a.f3005l /* 32776 */:
                SharedPreferences sharedPreferences = this.a.getApplicationContext().getSharedPreferences("info", 0);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putString("stat", (String) obj).commit();
                    return;
                }
                return;
            case a.f3006m /* 32777 */:
                try {
                    ULog.i("walle", "[internal] workEvent send envelope");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(e.aw, a.f2997d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(e.ak, new JSONObject());
                    JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(this.a, jSONObject, jSONObject2);
                    if (buildEnvelopeWithExtHeader == null || buildEnvelopeWithExtHeader.has("exception")) {
                        return;
                    }
                    ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
                    return;
                } catch (Throwable unused) {
                    return;
                }
        }
    }
}
