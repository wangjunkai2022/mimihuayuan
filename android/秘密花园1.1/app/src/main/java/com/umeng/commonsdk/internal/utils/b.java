package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.ULog;

/* compiled from: BaseStationUtils.java */
/* loaded from: classes.dex */
public class b {
    public static final String b = "BaseStationUtils";

    /* renamed from: c  reason: collision with root package name */
    public static boolean f2941c = false;

    /* renamed from: d  reason: collision with root package name */
    public static Context f2942d;
    public PhoneStateListener a;

    /* renamed from: e  reason: collision with root package name */
    public TelephonyManager f2943e;

    /* compiled from: BaseStationUtils.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final b a = new b(b.f2942d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) f2942d.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            String simOperator = telephonyManager.getSimOperator();
            if (TextUtils.isEmpty(simOperator)) {
                return null;
            }
            if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
                if (simOperator.equals("46001")) {
                    return "中国联通";
                }
                if (simOperator.equals("46003")) {
                    return "中国电信";
                }
                return null;
            }
            return "中国移动";
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized void c() {
        ULog.e(b, "base station unRegisterListener");
        try {
            if (this.f2943e != null) {
                this.f2943e.listen(this.a, 0);
            }
            f2941c = false;
        } catch (Throwable unused) {
        }
    }

    public b(Context context) {
        this.a = new PhoneStateListener() { // from class: com.umeng.commonsdk.internal.utils.b.1
            @Override // android.telephony.PhoneStateListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                String sb;
                super.onSignalStrengthsChanged(signalStrength);
                ULog.e(b.b, "base station onSignalStrengthsChanged");
                try {
                    b.this.f2943e = (TelephonyManager) b.f2942d.getSystemService("phone");
                    String[] split = signalStrength.toString().split(" ");
                    String str = null;
                    if (b.this.f2943e == null || b.this.f2943e.getNetworkType() != 13) {
                        if (b.this.f2943e != null && (b.this.f2943e.getNetworkType() == 8 || b.this.f2943e.getNetworkType() == 10 || b.this.f2943e.getNetworkType() == 9 || b.this.f2943e.getNetworkType() == 3)) {
                            String e2 = b.this.e();
                            if (!TextUtils.isEmpty(e2) && e2.equals("中国移动")) {
                                str = "0";
                            } else if (!TextUtils.isEmpty(e2) && e2.equals("中国联通")) {
                                str = signalStrength.getCdmaDbm() + "";
                            } else if (!TextUtils.isEmpty(e2) && e2.equals("中国电信")) {
                                str = signalStrength.getEvdoDbm() + "";
                            }
                            sb = str;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append((signalStrength.getGsmSignalStrength() * 2) - 113);
                            sb2.append("");
                            sb = sb2.toString();
                        }
                    } else {
                        sb = "" + Integer.parseInt(split[9]);
                    }
                    ULog.e(b.b, "stationStrength is " + sb);
                    if (!TextUtils.isEmpty(sb)) {
                        try {
                            UMWorkDispatch.sendEvent(b.f2942d, com.umeng.commonsdk.internal.a.f2922h, com.umeng.commonsdk.internal.b.a(b.f2942d).a(), sb);
                        } catch (Throwable unused) {
                        }
                    }
                    b.this.c();
                } catch (Exception unused2) {
                }
            }
        };
        if (context != null) {
            try {
                this.f2943e = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized void b() {
        ULog.e(b, "base station registerListener");
        try {
            if (this.f2943e != null) {
                this.f2943e.listen(this.a, 256);
            }
            f2941c = true;
        } catch (Throwable unused) {
        }
    }

    public static b a(Context context) {
        if (f2942d == null && context != null) {
            f2942d = context.getApplicationContext();
        }
        return a.a;
    }

    public synchronized boolean a() {
        return f2941c;
    }
}
