package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.smtt.sdk.TbsReaderView;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.process.UMProcessDBHelper;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.utils.JSONArraySortUtil;
import com.umeng.commonsdk.utils.UMUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: CoreProtocolImpl.java */
/* loaded from: classes.dex */
public class k {
    public static Context a = null;

    /* renamed from: l  reason: collision with root package name */
    public static final String f2820l = "first_activate_time";

    /* renamed from: m  reason: collision with root package name */
    public static final String f2821m = "ana_is_f";
    public static final String n = "thtstart";
    public static final String o = "dstk_last_time";
    public static final String p = "dstk_cnt";
    public static final String q = "gkvc";
    public static final String r = "ekvc";
    public static final String t = "-1";
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public SharedPreferences f2822c;

    /* renamed from: d  reason: collision with root package name */
    public String f2823d;

    /* renamed from: e  reason: collision with root package name */
    public String f2824e;

    /* renamed from: f  reason: collision with root package name */
    public int f2825f;

    /* renamed from: g  reason: collision with root package name */
    public JSONArray f2826g;

    /* renamed from: h  reason: collision with root package name */
    public final int f2827h;

    /* renamed from: i  reason: collision with root package name */
    public int f2828i;

    /* renamed from: j  reason: collision with root package name */
    public int f2829j;

    /* renamed from: k  reason: collision with root package name */
    public long f2830k;
    public final long s;
    public boolean u;
    public boolean v;
    public Object w;

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final int a = 4097;
        public static final int b = 4098;

        /* renamed from: c  reason: collision with root package name */
        public static final int f2831c = 4099;

        /* renamed from: d  reason: collision with root package name */
        public static final int f2832d = 4100;

        /* renamed from: e  reason: collision with root package name */
        public static final int f2833e = 4101;

        /* renamed from: f  reason: collision with root package name */
        public static final int f2834f = 4102;

        /* renamed from: g  reason: collision with root package name */
        public static final int f2835g = 4103;

        /* renamed from: h  reason: collision with root package name */
        public static final int f2836h = 4104;

        /* renamed from: i  reason: collision with root package name */
        public static final int f2837i = 4105;

        /* renamed from: j  reason: collision with root package name */
        public static final int f2838j = 4106;

        /* renamed from: k  reason: collision with root package name */
        public static final int f2839k = 4352;

        /* renamed from: l  reason: collision with root package name */
        public static final int f2840l = 4353;

        /* renamed from: m  reason: collision with root package name */
        public static final int f2841m = 4354;
        public static final int n = 8193;
        public static final int o = 8194;
        public static final int p = 8195;
        public static final int q = 8196;
        public static final int r = 8197;
        public static final int s = 8198;
        public static final int t = 8199;
        public static final int u = 8200;
        public static final int v = 8201;
        public static final int w = 8202;
    }

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes.dex */
    public static class b {
        public static final k a = new k();
    }

    public static k a(Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return b.a;
    }

    private void e(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (a(this.f2830k, this.f2828i)) {
                    this.f2828i++;
                } else {
                    return;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (a(this.f2830k, this.f2829j)) {
                    this.f2829j++;
                } else {
                    return;
                }
            }
            if (this.f2826g.length() >= this.f2825f) {
                g.a(a).a(this.f2826g);
                this.f2826g = new JSONArray();
            }
            if (this.f2830k == 0) {
                this.f2830k = System.currentTimeMillis();
            }
            this.f2826g.put(jSONObject);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    private void h() {
        try {
            Class.forName("com.umeng.analytics.vismode.event.VisualHelper").getMethod("loadNativeData", Context.class).invoke(null, a);
        } catch (Exception unused) {
        }
    }

    private void i() {
        try {
            Class.forName("com.umeng.analytics.vismode.event.VisualHelper").getMethod("processCommond", Context.class, String.class).invoke(null, a, AnalyticsConfig.getAppkey(a));
        } catch (Exception unused) {
        }
    }

    private void j() {
        JSONObject b2 = b(UMEnvelopeBuild.maxDataSpace(a));
        if (b2 != null && b2.length() >= 1) {
            JSONObject jSONObject = (JSONObject) b2.opt("header");
            JSONObject jSONObject2 = (JSONObject) b2.opt("content");
            if (a != null && jSONObject != null && jSONObject2 != null) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructInstantMessage: request build envelope.");
                JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(a, jSONObject, jSONObject2);
                if (buildEnvelopeWithExtHeader != null) {
                    try {
                        if (buildEnvelopeWithExtHeader.has("exception")) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + buildEnvelopeWithExtHeader.getInt("exception"));
                        }
                    } catch (Throwable unused) {
                    }
                    b((Object) buildEnvelopeWithExtHeader);
                }
            }
        }
    }

    private void k() {
        JSONObject buildEnvelopeWithExtHeader;
        JSONObject a2 = a(UMEnvelopeBuild.maxDataSpace(a));
        if (a2 != null && a2.length() >= 1) {
            JSONObject jSONObject = (JSONObject) a2.opt("header");
            JSONObject jSONObject2 = (JSONObject) a2.opt("content");
            Context context = a;
            if (context != null && jSONObject != null && jSONObject2 != null && (buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, jSONObject2)) != null) {
                try {
                    if (buildEnvelopeWithExtHeader.has("exception")) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + buildEnvelopeWithExtHeader.getInt("exception"));
                    }
                } catch (Throwable unused) {
                }
                c(buildEnvelopeWithExtHeader);
                a((Object) buildEnvelopeWithExtHeader);
            }
        }
    }

    private JSONObject l() {
        JSONObject m2 = m();
        if (m2 != null) {
            try {
                m2.put("st", UMRTLog.RTLOG_ENABLE);
            } catch (Throwable unused) {
            }
        }
        return m2;
    }

    private JSONObject m() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!(AnalyticsConfig.mWrapperType == null || AnalyticsConfig.mWrapperVersion == null)) {
                jSONObject.put("wrapper_version", AnalyticsConfig.mWrapperVersion);
                jSONObject.put("wrapper_type", AnalyticsConfig.mWrapperType);
            }
            jSONObject.put(b.f2736i, AnalyticsConfig.getVerticalType(a));
            jSONObject.put("sdk_version", v.a);
            String MD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(a));
            if (!TextUtils.isEmpty(MD5)) {
                jSONObject.put("secret", MD5);
            }
            String imprintProperty = UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            String imprintProperty2 = UMEnvelopeBuild.imprintProperty(a, "ekv_bl_ver", "");
            if (!TextUtils.isEmpty(imprintProperty2)) {
                if (AnalyticsConfig.CLEAR_EKV_BL) {
                    jSONObject.put(b.am, "");
                } else {
                    jSONObject.put(b.am, imprintProperty2);
                }
            }
            String imprintProperty3 = UMEnvelopeBuild.imprintProperty(a, "ekv_wl_ver", "");
            if (!TextUtils.isEmpty(imprintProperty3)) {
                if (AnalyticsConfig.CLEAR_EKV_WL) {
                    jSONObject.put(b.an, "");
                } else {
                    jSONObject.put(b.an, imprintProperty3);
                }
            }
            jSONObject.put(b.ae, "1.0.0");
            if (t()) {
                jSONObject.put(b.ag, UMRTLog.RTLOG_ENABLE);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putLong(f2821m, 0).commit();
                }
            }
            jSONObject.put(b.f2739l, n());
            jSONObject.put(b.f2740m, o());
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("vers_name", "");
                if (!TextUtils.isEmpty(string)) {
                    String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (TextUtils.isEmpty(imprintProperty)) {
                        jSONObject.put(b.f2739l, sharedPreferences.getString("vers_pre_version", "0"));
                        jSONObject.put(b.f2740m, sharedPreferences.getString("vers_date", format));
                    }
                    sharedPreferences.edit().putString("pre_version", string).putString("cur_version", DeviceConfig.getAppVersionName(a)).putString("pre_date", format).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version").commit();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private String n() {
        String str = null;
        try {
            str = UMEnvelopeBuild.imprintProperty(a, "pr_ve", null);
            if (TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(this.f2823d)) {
                    return this.f2823d;
                }
                if (this.f2822c == null) {
                    this.f2822c = PreferenceWrapper.getDefault(a);
                }
                String string = this.f2822c.getString("pre_version", "");
                String appVersionName = DeviceConfig.getAppVersionName(a);
                if (TextUtils.isEmpty(string)) {
                    this.f2822c.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                    str = "0";
                } else {
                    String string2 = this.f2822c.getString("cur_version", "");
                    if (!appVersionName.equals(string2)) {
                        this.f2822c.edit().putString("pre_version", string2).putString("cur_version", appVersionName).commit();
                        str = string2;
                    } else {
                        str = string;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.f2823d = str;
        return str;
    }

    private String o() {
        String str = null;
        try {
            str = UMEnvelopeBuild.imprintProperty(a, "ud_da", null);
            if (TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(this.f2824e)) {
                    return this.f2824e;
                }
                if (this.f2822c == null) {
                    this.f2822c = PreferenceWrapper.getDefault(a);
                }
                String string = this.f2822c.getString("pre_date", "");
                if (TextUtils.isEmpty(string)) {
                    string = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    this.f2822c.edit().putString("pre_date", string).commit();
                } else {
                    String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (!string.equals(format)) {
                        this.f2822c.edit().putString("pre_date", format).commit();
                        str = format;
                    }
                }
                str = string;
            }
        } catch (Throwable unused) {
        }
        this.f2824e = str;
        return str;
    }

    private void p() {
        try {
            this.f2828i = 0;
            this.f2829j = 0;
            this.f2830k = System.currentTimeMillis();
            PreferenceWrapper.getDefault(a).edit().putLong(o, System.currentTimeMillis()).putInt(p, 0).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean q() {
        try {
            if (!TextUtils.isEmpty(q.a().b())) {
                b(a);
            }
            if (this.f2826g.length() <= 0) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2826g.length(); i2++) {
                JSONObject optJSONObject = this.f2826g.optJSONObject(i2);
                if (optJSONObject != null && optJSONObject.length() > 0) {
                    String optString = optJSONObject.optString("__i");
                    if (TextUtils.isEmpty(optString) || "-1".equals(optString)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void r() {
        if (this.f2826g.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < this.f2826g.length(); i2++) {
                try {
                    JSONObject jSONObject = this.f2826g.getJSONObject(i2);
                    if (jSONObject == null || jSONObject.length() <= 0) {
                        jSONArray.put(jSONObject);
                    } else {
                        String optString = jSONObject.optString("__i");
                        String str = "-1";
                        if (TextUtils.isEmpty(optString) || str.equals(optString)) {
                            String b2 = q.a().b();
                            if (!TextUtils.isEmpty(b2)) {
                                str = b2;
                            }
                            jSONObject.put("__i", str);
                        }
                        jSONArray.put(jSONObject);
                    }
                } catch (Throwable unused) {
                }
            }
            this.f2826g = jSONArray;
        }
    }

    private void s() {
        SharedPreferences sharedPreferences;
        try {
            if (t() && a != null && (sharedPreferences = PreferenceWrapper.getDefault(a)) != null && sharedPreferences.getLong("first_activate_time", 0) == 0) {
                sharedPreferences.edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean t() {
        SharedPreferences sharedPreferences;
        try {
            if (a == null || (sharedPreferences = PreferenceWrapper.getDefault(a)) == null) {
                return false;
            }
            return sharedPreferences.getLong(f2821m, -1) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public JSONObject b(long j2) {
        if (TextUtils.isEmpty(u.a().d(UMGlobalContext.getAppContext(a)))) {
            return null;
        }
        JSONObject b2 = g.a(UMGlobalContext.getAppContext(a)).b(false);
        String[] a2 = com.umeng.analytics.c.a(a);
        if (a2 != null && !TextUtils.isEmpty(a2[0]) && !TextUtils.isEmpty(a2[1])) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(b.L, a2[0]);
                jSONObject.put(b.M, a2[1]);
                if (jSONObject.length() > 0) {
                    b2.put(b.K, jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        int a3 = n.a().a(a);
        if (b2.length() == 1 && b2.optJSONObject(b.K) != null && a3 != 3) {
            return null;
        }
        n.a().b(b2, a);
        if (b2.length() <= 0 && a3 != 3) {
            return null;
        }
        JSONObject l2 = l();
        if (l2 != null) {
            a(l2);
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            if (a3 == 3) {
                jSONObject3.put("analytics", new JSONObject());
            } else if (b2.length() > 0) {
                jSONObject3.put("analytics", b2);
            }
            if (l2 != null && l2.length() > 0) {
                jSONObject2.put("header", l2);
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("content", jSONObject3);
            }
            return b(jSONObject2, j2);
        } catch (Throwable unused2) {
            return jSONObject2;
        }
    }

    public void b() {
    }

    public void c() {
        b(a);
        d();
        a(true);
    }

    public void d() {
        try {
            if (this.f2826g.length() > 0) {
                g.a(a).a(this.f2826g);
                this.f2826g = new JSONArray();
            }
            PreferenceWrapper.getDefault(a).edit().putLong("thtstart", this.f2830k).putInt("gkvc", this.f2828i).putInt("ekvc", this.f2829j).commit();
        } catch (Throwable unused) {
        }
    }

    public long f() {
        SharedPreferences sharedPreferences;
        try {
            if (a == null || (sharedPreferences = PreferenceWrapper.getDefault(a)) == null) {
                return 0;
            }
            long j2 = sharedPreferences.getLong("first_activate_time", 0);
            if (j2 == 0) {
                try {
                    long currentTimeMillis = System.currentTimeMillis();
                    sharedPreferences.edit().putLong("first_activate_time", currentTimeMillis).commit();
                    return currentTimeMillis;
                } catch (Throwable unused) {
                }
            }
            return j2;
        } catch (Throwable unused2) {
            return 0;
        }
    }

    public k() {
        this.b = null;
        this.f2822c = null;
        this.f2823d = null;
        this.f2824e = null;
        this.f2825f = 10;
        this.f2826g = new JSONArray();
        this.f2827h = TbsReaderView.ReaderCallback.GET_BAR_ANIMATING;
        this.f2828i = 0;
        this.f2829j = 0;
        this.f2830k = 0;
        this.s = Defcon.MILLIS_8_HOURS;
        this.u = false;
        this.v = false;
        this.w = new Object();
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            this.f2830k = sharedPreferences.getLong("thtstart", 0);
            this.f2828i = sharedPreferences.getInt("gkvc", 0);
            this.f2829j = sharedPreferences.getInt("ekvc", 0);
            this.b = new c();
        } catch (Throwable unused) {
        }
    }

    private void g(Object obj) {
        try {
            b(a);
            d();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String string = jSONObject.getString(b.L);
                String string2 = jSONObject.getString("uid");
                long j2 = jSONObject.getLong("ts");
                String[] a2 = com.umeng.analytics.c.a(a);
                if (a2 == null || !string.equals(a2[0]) || !string2.equals(a2[1])) {
                    q.a().a(a, j2);
                    String c2 = u.a().c(a);
                    boolean b2 = q.a().b(a, j2);
                    com.umeng.analytics.c.a(a, string, string2);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + c2);
                    q.a().a(a, j2, true);
                    if (b2) {
                        q.a().c(a, j2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes.dex */
    public static class c {
        public ReportPolicy.ReportStrategy a = null;
        public int b = -1;

        /* renamed from: c  reason: collision with root package name */
        public int f2842c = -1;

        /* renamed from: d  reason: collision with root package name */
        public int f2843d = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f2844e = -1;

        /* renamed from: f  reason: collision with root package name */
        public ABTest f2845f;

        public c() {
            this.f2845f = null;
            this.f2845f = ABTest.getService(k.a);
        }

        public void a() {
            try {
                int[] a = a(-1, -1);
                this.b = a[0];
                this.f2842c = a[1];
            } catch (Throwable unused) {
            }
        }

        public void b() {
            int i2;
            Defcon service = Defcon.getService(k.a);
            if (service.isOpen()) {
                ReportPolicy.ReportStrategy reportStrategy = this.a;
                this.a = (reportStrategy instanceof ReportPolicy.DefconPolicy) && reportStrategy.isValid() ? this.a : new ReportPolicy.DefconPolicy(StatTracer.getInstance(k.a), service);
            } else {
                boolean z = Integer.valueOf(UMEnvelopeBuild.imprintProperty(k.a, "integrated_test", "-1")).intValue() == 1;
                if (UMConfigure.isDebugLog() && z && !MLog.DEBUG) {
                    UMLog.mutlInfo(h.J, 3, "\\|", null, null);
                }
                if (MLog.DEBUG && z) {
                    this.a = new ReportPolicy.DebugPolicy(StatTracer.getInstance(k.a));
                } else if (!this.f2845f.isInTest() || !"RPT".equals(this.f2845f.getTestName())) {
                    int i3 = this.f2843d;
                    int i4 = this.f2844e;
                    int i5 = this.b;
                    if (i5 != -1) {
                        i4 = this.f2842c;
                        i3 = i5;
                    }
                    this.a = b(i3, i4);
                } else {
                    if (this.f2845f.getTestPolicy() == 6) {
                        if (Integer.valueOf(UMEnvelopeBuild.imprintProperty(k.a, "test_report_interval", "-1")).intValue() != -1) {
                            i2 = a(90000);
                        } else {
                            i2 = this.f2842c;
                            if (i2 <= 0) {
                                i2 = this.f2844e;
                            }
                        }
                    } else {
                        i2 = 0;
                    }
                    this.a = b(this.f2845f.getTestPolicy(), i2);
                }
            }
            if (UMConfigure.isDebugLog()) {
                try {
                    if (this.a instanceof ReportPolicy.ReportAtLaunch) {
                        UMLog.mutlInfo(h.H, 3, "", null, null);
                    } else if (this.a instanceof ReportPolicy.ReportByInterval) {
                        UMLog.mutlInfo(h.I, 3, "", new String[]{"@"}, new String[]{String.valueOf(((ReportPolicy.ReportByInterval) this.a).getReportInterval() / 1000)});
                    } else if (this.a instanceof ReportPolicy.DebugPolicy) {
                        UMLog.mutlInfo(h.K, 3, "", null, null);
                    } else if (this.a instanceof ReportPolicy.ReportQuasiRealtime) {
                        String[] strArr = {String.valueOf(((ReportPolicy.ReportQuasiRealtime) this.a).getReportInterval() / 1000)};
                        UMLog uMLog = UMConfigure.umDebugLog;
                        UMLog.mutlInfo(h.L, 3, "", new String[]{"@"}, strArr);
                    } else {
                        boolean z2 = this.a instanceof ReportPolicy.DefconPolicy;
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public ReportPolicy.ReportStrategy c() {
            b();
            return this.a;
        }

        public int[] a(int i2, int i3) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(k.a, com.umeng.commonsdk.framework.b.p, "-1")).intValue();
            int intValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(k.a, com.umeng.commonsdk.framework.b.q, "-1")).intValue();
            if (intValue == -1 || !ReportPolicy.isValid(intValue)) {
                return new int[]{i2, i3};
            }
            if (6 == intValue) {
                if (intValue2 == -1 || intValue2 < 90 || intValue2 > 86400) {
                    intValue2 = 90;
                }
                return new int[]{intValue, intValue2 * 1000};
            } else if (11 != intValue) {
                return new int[]{i2, i3};
            } else {
                if (intValue2 == -1 || intValue2 < 15 || intValue2 > 3600) {
                    intValue2 = 15;
                }
                return new int[]{intValue, intValue2 * 1000};
            }
        }

        public int a(int i2) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(k.a, "test_report_interval", "-1")).intValue();
            return (intValue == -1 || intValue < 90 || intValue > 86400) ? i2 : intValue * 1000;
        }

        private ReportPolicy.ReportStrategy b(int i2, int i3) {
            if (i2 == 0) {
                ReportPolicy.ReportStrategy reportStrategy = this.a;
                return reportStrategy instanceof ReportPolicy.ReportRealtime ? reportStrategy : new ReportPolicy.ReportRealtime();
            } else if (i2 == 1) {
                ReportPolicy.ReportStrategy reportStrategy2 = this.a;
                if (reportStrategy2 instanceof ReportPolicy.ReportAtLaunch) {
                    return reportStrategy2;
                }
                return new ReportPolicy.ReportAtLaunch();
            } else if (i2 == 4) {
                ReportPolicy.ReportStrategy reportStrategy3 = this.a;
                if (reportStrategy3 instanceof ReportPolicy.ReportDaily) {
                    return reportStrategy3;
                }
                return new ReportPolicy.ReportDaily(StatTracer.getInstance(k.a));
            } else if (i2 == 5) {
                ReportPolicy.ReportStrategy reportStrategy4 = this.a;
                if (reportStrategy4 instanceof ReportPolicy.ReportWifiOnly) {
                    return reportStrategy4;
                }
                return new ReportPolicy.ReportWifiOnly(k.a);
            } else if (i2 == 6) {
                ReportPolicy.ReportStrategy reportStrategy5 = this.a;
                if (!(reportStrategy5 instanceof ReportPolicy.ReportByInterval)) {
                    return new ReportPolicy.ReportByInterval(StatTracer.getInstance(k.a), (long) i3);
                }
                ((ReportPolicy.ReportByInterval) reportStrategy5).setReportInterval((long) i3);
                return reportStrategy5;
            } else if (i2 == 8) {
                ReportPolicy.ReportStrategy reportStrategy6 = this.a;
                if (reportStrategy6 instanceof ReportPolicy.SmartPolicy) {
                    return reportStrategy6;
                }
                return new ReportPolicy.SmartPolicy(StatTracer.getInstance(k.a));
            } else if (i2 != 11) {
                ReportPolicy.ReportStrategy reportStrategy7 = this.a;
                if (reportStrategy7 instanceof ReportPolicy.ReportAtLaunch) {
                    return reportStrategy7;
                }
                return new ReportPolicy.ReportAtLaunch();
            } else {
                ReportPolicy.ReportStrategy reportStrategy8 = this.a;
                if (reportStrategy8 instanceof ReportPolicy.ReportQuasiRealtime) {
                    ((ReportPolicy.ReportQuasiRealtime) reportStrategy8).setReportInterval((long) i3);
                    return reportStrategy8;
                }
                ReportPolicy.ReportQuasiRealtime reportQuasiRealtime = new ReportPolicy.ReportQuasiRealtime();
                reportQuasiRealtime.setReportInterval((long) i3);
                return reportQuasiRealtime;
            }
        }
    }

    private boolean c(boolean z) {
        if (t()) {
            return true;
        }
        if (this.b == null) {
            this.b = new c();
        }
        this.b.a();
        ReportPolicy.ReportStrategy c2 = this.b.c();
        StringBuilder o2 = f.b.a.a.a.o("Report policy : ");
        o2.append(c2.getClass().getSimpleName());
        MLog.d(o2.toString());
        boolean shouldSendMessage = c2.shouldSendMessage(z);
        if (shouldSendMessage) {
            if (((c2 instanceof ReportPolicy.ReportByInterval) || (c2 instanceof ReportPolicy.DebugPolicy) || (c2 instanceof ReportPolicy.ReportQuasiRealtime)) && q()) {
                d();
            }
            if ((c2 instanceof ReportPolicy.DefconPolicy) && q()) {
                d();
            }
        }
        return shouldSendMessage;
    }

    private void h(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0 && jSONObject.has("__ii")) {
                String optString = jSONObject.optString("__ii");
                jSONObject.remove("__ii");
                if (!TextUtils.isEmpty(optString)) {
                    g.a(a).a(optString, obj.toString(), 2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void a() {
        if (a != null) {
            synchronized (this.w) {
                if (this.u) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> network is now available, rebuild instant session data packet.");
                    UMWorkDispatch.sendEvent(a, a.f2840l, CoreProtocol.getInstance(a), null);
                }
            }
            synchronized (this.w) {
                if (this.v) {
                    UMWorkDispatch.sendEvent(a, a.f2841m, CoreProtocol.getInstance(a), null);
                }
            }
        }
    }

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes.dex */
    public static class d {
        public Map<String, Object> a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f2846c;

        /* renamed from: d  reason: collision with root package name */
        public long f2847d;

        public d() {
            this.a = null;
            this.b = null;
            this.f2846c = null;
            this.f2847d = 0;
        }

        public Map<String, Object> a() {
            return this.a;
        }

        public String b() {
            return this.f2846c;
        }

        public String c() {
            return this.b;
        }

        public long d() {
            return this.f2847d;
        }

        public d(String str, Map<String, Object> map, String str2, long j2) {
            this.a = null;
            this.b = null;
            this.f2846c = null;
            this.f2847d = 0;
            this.a = map;
            this.b = str;
            this.f2847d = j2;
            this.f2846c = str2;
        }
    }

    private void f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                long j2 = jSONObject.getLong("ts");
                b(a);
                d();
                String[] a2 = com.umeng.analytics.c.a(a);
                if (a2 != null && !TextUtils.isEmpty(a2[0]) && !TextUtils.isEmpty(a2[1])) {
                    q.a().a(a, j2);
                    String c2 = u.a().c(a);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + c2);
                    boolean b2 = q.a().b(a, j2);
                    com.umeng.analytics.c.b(a);
                    q.a().a(a, j2, true);
                    if (b2) {
                        q.a().c(a, j2);
                    }
                }
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    private void d(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        try {
            if (jSONObject.getJSONObject("header").has(b.ay)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("analytics");
                    if (jSONObject2.has(b.n) && (optJSONObject2 = jSONObject2.getJSONArray(b.n).optJSONObject(0)) != null) {
                        String optString = optJSONObject2.optString("id");
                        if (!TextUtils.isEmpty(optString)) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: really delete instant session data");
                            g.a(a).b(optString);
                        }
                    }
                }
                g.a(a).b();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE.");
                UMWorkDispatch.sendEvent(a, a.f2840l, CoreProtocol.getInstance(a), null);
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has("analytics") && (optJSONObject = jSONObject.optJSONObject("analytics")) != null && optJSONObject.length() > 0 && optJSONObject.has(b.n)) {
                g.a(a).a(true, false);
            }
            g.a(a).b();
        } catch (Exception unused) {
        }
    }

    private void e(JSONObject jSONObject) {
        JSONObject optJSONObject;
        try {
            if (jSONObject.getJSONObject("header").has(b.ay)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (!jSONObject.has("analytics")) {
                    return;
                }
                if (jSONObject.getJSONObject("analytics").has(b.n)) {
                    g.a(a).i();
                    g.a(a).h();
                    g.a(a).b(true, false);
                    g.a(a).a();
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Error, Should not go to this branch.");
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has("analytics") && (optJSONObject = jSONObject.optJSONObject("analytics")) != null && optJSONObject.length() > 0) {
                if (optJSONObject.has(b.n)) {
                    g.a(a).b(true, false);
                }
                if (optJSONObject.has(b.R) || optJSONObject.has(b.S)) {
                    g.a(a).h();
                }
                if (optJSONObject.has(b.N)) {
                    g.a(a).i();
                }
            }
            g.a(a).a();
        } catch (Exception unused) {
        }
    }

    private void c(JSONObject jSONObject) {
        String str;
        JSONObject jSONObject2;
        if (jSONObject != null) {
            try {
                if (jSONObject.length() > 0) {
                    JSONObject jSONObject3 = new JSONObject();
                    if (jSONObject.has("analytics")) {
                        JSONObject jSONObject4 = jSONObject.getJSONObject("analytics");
                        if (jSONObject4.has(b.R)) {
                            str = "version_code";
                            jSONObject3.put(b.R, jSONObject4.getJSONArray(b.R));
                        } else {
                            str = "version_code";
                        }
                        if (jSONObject4.has(b.S)) {
                            jSONObject3.put(b.S, jSONObject4.getJSONArray(b.S));
                        }
                        if (jSONObject4.has(b.N)) {
                            jSONObject3.put(b.N, jSONObject4.getJSONArray(b.N));
                        }
                        if (jSONObject4.has(b.n)) {
                            JSONArray jSONArray = jSONObject4.getJSONArray(b.n);
                            JSONArray jSONArray2 = new JSONArray();
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                JSONObject jSONObject5 = jSONArray.getJSONObject(i2);
                                if (jSONObject5 != null && jSONObject5.length() > 0) {
                                    if (jSONObject5.has(b.t)) {
                                        jSONObject5.remove(b.t);
                                    }
                                    jSONArray2.put(jSONObject5);
                                }
                            }
                            jSONObject3.put(b.n, jSONArray2);
                        }
                        if (jSONObject4.has(b.H)) {
                            jSONObject3.put(b.H, jSONObject4.getJSONObject(b.H));
                        }
                        if (jSONObject4.has(b.K)) {
                            jSONObject3.put(b.K, jSONObject4.getJSONObject(b.K));
                        }
                    } else {
                        str = "version_code";
                    }
                    if (jSONObject.has("dplus")) {
                        jSONObject3.put("dplus", jSONObject.getJSONObject("dplus"));
                    }
                    if (jSONObject.has("header") && jSONObject.has("header") && (jSONObject2 = jSONObject.getJSONObject("header")) != null && jSONObject2.length() > 0) {
                        if (jSONObject2.has("sdk_version")) {
                            jSONObject3.put("sdk_version", jSONObject2.getString("sdk_version"));
                        }
                        if (jSONObject2.has("device_id")) {
                            jSONObject3.put("device_id", jSONObject2.getString("device_id"));
                        }
                        if (jSONObject2.has("device_model")) {
                            jSONObject3.put("device_model", jSONObject2.getString("device_model"));
                        }
                        if (jSONObject2.has(str)) {
                            jSONObject3.put("version", jSONObject2.getInt(str));
                        }
                        if (jSONObject2.has("appkey")) {
                            jSONObject3.put("appkey", jSONObject2.getString("appkey"));
                        }
                        if (jSONObject2.has("channel")) {
                            jSONObject3.put("channel", jSONObject2.getString("channel"));
                        }
                    }
                    if (jSONObject3.length() > 0) {
                        MLog.d("constructMessage:" + jSONObject3.toString());
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "constructMessage: " + jSONObject3.toString());
                    }
                }
            } catch (Throwable th) {
                MLog.e(th);
            }
        }
    }

    public void a(Object obj, int i2) {
        try {
            switch (i2) {
                case 4097:
                    if (UMGlobalContext.getInstance().isMainProcess(a)) {
                        if (obj != null) {
                            e(obj);
                        }
                        if (!"-1".equals(((JSONObject) obj).optString("__i"))) {
                            a(false);
                            return;
                        }
                        return;
                    }
                    UMProcessDBHelper.getInstance(a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(a), new JSONArray().put(obj));
                    return;
                case 4098:
                    if (obj != null) {
                        e(obj);
                    }
                    if (!"-1".equals(((JSONObject) obj).optString("__i"))) {
                        a(false);
                        return;
                    }
                    return;
                case 4099:
                    r.a(a);
                    return;
                case a.f2832d /* 4100 */:
                    j.a(a);
                    return;
                case a.f2833e /* 4101 */:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNIN");
                    g(obj);
                    return;
                case a.f2834f /* 4102 */:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNOFF");
                    f(obj);
                    return;
                case a.f2835g /* 4103 */:
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> START_SESSION");
                    q.a().a(a, obj);
                    synchronized (this.w) {
                        this.v = true;
                    }
                    return;
                case a.f2836h /* 4104 */:
                    q.a().c(a, obj);
                    return;
                case a.f2837i /* 4105 */:
                    d();
                    return;
                case a.f2838j /* 4106 */:
                    h(obj);
                    return;
                default:
                    switch (i2) {
                        case a.f2839k /* 4352 */:
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> INSTANT_SESSION_START");
                            q.a().b(a, obj);
                            synchronized (this.w) {
                                this.u = true;
                            }
                            return;
                        case a.f2840l /* 4353 */:
                            a(obj, true);
                            return;
                        case a.f2841m /* 4354 */:
                            c();
                            return;
                        default:
                            switch (i2) {
                                case a.p /* 8195 */:
                                    com.umeng.analytics.b.a().a(obj);
                                    return;
                                case a.q /* 8196 */:
                                    com.umeng.analytics.b.a().m();
                                    return;
                                case a.r /* 8197 */:
                                    com.umeng.analytics.b.a().k();
                                    return;
                                case a.s /* 8198 */:
                                    if (!TextUtils.isEmpty(q.a().b())) {
                                        i();
                                        return;
                                    }
                                    return;
                                case a.t /* 8199 */:
                                case a.u /* 8200 */:
                                    com.umeng.analytics.b.a().b(obj);
                                    return;
                                case a.v /* 8201 */:
                                    com.umeng.analytics.b.a().b((Object) null);
                                    return;
                                case a.w /* 8202 */:
                                    h();
                                    return;
                                default:
                                    return;
                            }
                    }
            }
        } catch (Throwable unused) {
        }
    }

    private JSONObject b(JSONObject jSONObject, long j2) {
        try {
            if (m.a(jSONObject) <= j2) {
                return jSONObject;
            }
            jSONObject = null;
            g.a(a).a(true, false);
            g.a(a).b();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Instant session packet overload !!! ");
            return null;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private void b(JSONObject jSONObject) {
        try {
            if (!g.a(a).e()) {
                JSONObject g2 = g.a(a).g();
                if (g2 != null) {
                    String optString = g2.optString("__av");
                    String optString2 = g2.optString("__vc");
                    if (TextUtils.isEmpty(optString)) {
                        jSONObject.put("app_version", UMUtils.getAppVersionName(a));
                    } else {
                        jSONObject.put("app_version", optString);
                    }
                    if (TextUtils.isEmpty(optString2)) {
                        jSONObject.put("version_code", UMUtils.getAppVersionCode(a));
                    } else {
                        jSONObject.put("version_code", optString2);
                    }
                }
            } else {
                jSONObject.put("app_version", UMUtils.getAppVersionName(a));
                jSONObject.put("version_code", UMUtils.getAppVersionCode(a));
            }
        } catch (Throwable unused) {
        }
    }

    public void d(Object obj) {
        s();
        n();
        o();
        a(true);
    }

    private boolean d(boolean z) {
        if (this.b == null) {
            this.b = new c();
        }
        ReportPolicy.ReportStrategy c2 = this.b.c();
        if (!(c2 instanceof ReportPolicy.DefconPolicy)) {
            return true;
        }
        if (z) {
            return ((ReportPolicy.DefconPolicy) c2).shouldSendMessageByInstant();
        }
        return c2.shouldSendMessage(false);
    }

    public void e() {
        if (d(false)) {
            k();
        }
    }

    public JSONObject b(boolean z) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject = null;
        try {
            jSONObject = g.a(a).a(z);
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            } else {
                try {
                    if (jSONObject.has(b.n)) {
                        JSONArray jSONArray3 = jSONObject.getJSONArray(b.n);
                        JSONArray jSONArray4 = new JSONArray();
                        int i2 = 0;
                        while (i2 < jSONArray3.length()) {
                            JSONObject jSONObject2 = (JSONObject) jSONArray3.get(i2);
                            JSONArray optJSONArray = jSONObject2.optJSONArray("pages");
                            JSONArray optJSONArray2 = jSONObject2.optJSONArray(b.t);
                            if (optJSONArray == null && optJSONArray2 != null) {
                                jSONObject2.put("pages", optJSONArray2);
                                jSONObject2.remove(b.t);
                            }
                            if (!(optJSONArray == null || optJSONArray2 == null)) {
                                ArrayList arrayList = new ArrayList();
                                for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                                    arrayList.add((JSONObject) optJSONArray.get(i3));
                                }
                                for (int i4 = 0; i4 < optJSONArray2.length(); i4++) {
                                    arrayList.add((JSONObject) optJSONArray2.get(i4));
                                }
                                JSONArraySortUtil jSONArraySortUtil = new JSONArraySortUtil();
                                jSONArraySortUtil.setCompareKey(b.w);
                                Collections.sort(arrayList, jSONArraySortUtil);
                                JSONArray jSONArray5 = new JSONArray();
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    jSONArray5.put((JSONObject) it.next());
                                }
                                jSONObject2.put("pages", jSONArray5);
                                jSONObject2.remove(b.t);
                            }
                            if (jSONObject2.has("pages")) {
                                JSONArray optJSONArray3 = jSONObject2.optJSONArray("pages");
                                int i5 = 0;
                                while (i5 < optJSONArray3.length()) {
                                    JSONObject jSONObject3 = optJSONArray3.getJSONObject(i5);
                                    if (jSONObject3.has(b.w)) {
                                        jSONArray2 = jSONArray3;
                                        jSONObject3.put("ts", jSONObject3.getLong(b.w));
                                        jSONObject3.remove(b.w);
                                    } else {
                                        jSONArray2 = jSONArray3;
                                    }
                                    i5++;
                                    jSONArray3 = jSONArray2;
                                }
                                jSONArray = jSONArray3;
                                jSONObject2.put("pages", optJSONArray3);
                                jSONObject2.put(b.y, optJSONArray3.length());
                            } else {
                                jSONArray = jSONArray3;
                                jSONObject2.put(b.y, 0);
                            }
                            jSONArray4.put(jSONObject2);
                            i2++;
                            jSONArray3 = jSONArray;
                        }
                        jSONObject.put(b.n, jSONArray4);
                    }
                } catch (Exception e2) {
                    MLog.e("merge pages error");
                    e2.printStackTrace();
                }
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put("userlevel", string);
                }
            }
            String[] a2 = com.umeng.analytics.c.a(a);
            if (a2 != null && !TextUtils.isEmpty(a2[0]) && !TextUtils.isEmpty(a2[1])) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(b.L, a2[0]);
                jSONObject4.put(b.M, a2[1]);
                if (jSONObject4.length() > 0) {
                    jSONObject.put(b.K, jSONObject4);
                }
            }
            if (ABTest.getService(a).isInTest()) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put(ABTest.getService(a).getTestName(), ABTest.getService(a).getGroupInfo());
                jSONObject.put(b.J, jSONObject5);
            }
            n.a().a(jSONObject, a);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public void a(boolean z) {
        if (!c(z)) {
            return;
        }
        if (this.b.c() instanceof ReportPolicy.ReportQuasiRealtime) {
            if (z) {
                if (UMEnvelopeBuild.isOnline(a)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send session start in policy ReportQuasiRealtime.");
                    k();
                }
            } else if (UMEnvelopeBuild.isReadyBuild(a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send normal data in policy ReportQuasiRealtime.");
                k();
            }
        } else if (UMEnvelopeBuild.isReadyBuild(a, UMLogDataProtocol.UMBusinessType.U_APP)) {
            k();
        }
    }

    public void c(Object obj) {
        b(a);
        d();
        if (d(false)) {
            k();
        }
    }

    public JSONObject a(long j2) {
        if (TextUtils.isEmpty(u.a().d(a))) {
            return null;
        }
        JSONObject b2 = b(false);
        int a2 = n.a().a(a);
        if (b2.length() <= 0) {
            if (a2 != 3) {
                return null;
            }
        } else if (b2.length() == 1) {
            if (b2.optJSONObject(b.K) != null && a2 != 3) {
                return null;
            }
            if (!TextUtils.isEmpty(b2.optString("userlevel")) && a2 != 3) {
                return null;
            }
        } else if (b2.length() == 2 && b2.optJSONObject(b.K) != null && !TextUtils.isEmpty(b2.optString("userlevel")) && a2 != 3) {
            return null;
        }
        JSONObject m2 = m();
        if (m2 != null) {
            b(m2);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (a2 == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (b2.length() > 0) {
                jSONObject2.put("analytics", b2);
            }
            if (m2 != null && m2.length() > 0) {
                jSONObject.put("header", m2);
            }
            if (jSONObject2.length() > 0) {
                jSONObject.put("content", jSONObject2);
            }
            return a(jSONObject, j2);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private void a(JSONObject jSONObject) {
        JSONObject f2;
        if (!g.a(UMGlobalContext.getAppContext(a)).c() && (f2 = g.a(UMGlobalContext.getAppContext(a)).f()) != null) {
            String optString = f2.optString("__av");
            String optString2 = f2.optString("__vc");
            try {
                if (TextUtils.isEmpty(optString)) {
                    jSONObject.put("app_version", UMUtils.getAppVersionName(a));
                } else {
                    jSONObject.put("app_version", optString);
                }
                if (TextUtils.isEmpty(optString2)) {
                    jSONObject.put("version_code", UMUtils.getAppVersionCode(a));
                } else {
                    jSONObject.put("version_code", optString2);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() <= 0) {
                    return;
                }
                if (!jSONObject.has("exception")) {
                    d(jSONObject);
                } else if (101 != jSONObject.getInt("exception")) {
                    d(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b(Context context) {
        try {
            g.a(context).d();
            r();
        } catch (Throwable unused) {
        }
    }

    private JSONObject a(JSONObject jSONObject, long j2) {
        try {
            if (m.a(jSONObject) <= j2) {
                return jSONObject;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("header");
            jSONObject2.put(b.ay, m.a(jSONObject));
            jSONObject.put("header", jSONObject2);
            return m.a(a, j2, jSONObject);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private boolean a(long j2, int i2) {
        if (j2 == 0) {
            return true;
        }
        if (System.currentTimeMillis() - j2 > Defcon.MILLIS_8_HOURS) {
            p();
            return true;
        } else if (i2 < 5000) {
            return true;
        } else {
            return false;
        }
    }

    public void a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() <= 0) {
                    return;
                }
                if (!jSONObject.has("exception")) {
                    e(jSONObject);
                } else if (101 != jSONObject.getInt("exception")) {
                    e(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(Object obj, boolean z) {
        if (z) {
            if (d(true)) {
                j();
            }
        } else if (UMEnvelopeBuild.isOnline(a) && d(true)) {
            j();
        }
    }
}
