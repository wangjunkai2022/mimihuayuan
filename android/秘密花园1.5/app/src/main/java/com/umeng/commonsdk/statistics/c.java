package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.ab;
import com.umeng.commonsdk.proguard.m;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.e;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.internal.d;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.proto.Response;
import java.io.File;

/* compiled from: NetWorkManager.java */
/* loaded from: classes.dex */
public class c {
    public static final int b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f3245c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f3246d = 3;
    public static final String o = "thtstart";
    public static final String p = "gkvc";
    public static final String q = "ekvc";
    public String a;

    /* renamed from: f  reason: collision with root package name */
    public com.umeng.commonsdk.statistics.internal.c f3248f;

    /* renamed from: g  reason: collision with root package name */
    public ImprintHandler f3249g;

    /* renamed from: h  reason: collision with root package name */
    public e f3250h;

    /* renamed from: i  reason: collision with root package name */
    public ImprintHandler.a f3251i;

    /* renamed from: k  reason: collision with root package name */
    public Defcon f3253k;

    /* renamed from: l  reason: collision with root package name */
    public long f3254l;

    /* renamed from: m  reason: collision with root package name */
    public int f3255m;
    public int n;
    public Context r;

    /* renamed from: e  reason: collision with root package name */
    public final int f3247e = 1;

    /* renamed from: j  reason: collision with root package name */
    public ABTest f3252j = null;
    public ReportPolicy.ReportStrategy s = null;

    public c(Context context) {
        this.f3251i = null;
        this.f3253k = null;
        this.f3254l = 0L;
        this.f3255m = 0;
        this.n = 0;
        this.a = null;
        this.r = context;
        this.f3251i = ImprintHandler.getImprintService(context).c();
        this.f3253k = Defcon.getService(this.r);
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.r);
        this.f3254l = sharedPreferences.getLong("thtstart", 0L);
        this.f3255m = sharedPreferences.getInt("gkvc", 0);
        this.n = sharedPreferences.getInt("ekvc", 0);
        this.a = UMEnvelopeBuild.imprintProperty(this.r, "track_list", null);
        ImprintHandler imprintService = ImprintHandler.getImprintService(this.r);
        this.f3249g = imprintService;
        imprintService.a(new d() { // from class: com.umeng.commonsdk.statistics.c.1
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(ImprintHandler.a aVar) {
                c.this.f3253k.onImprintChanged(aVar);
                c cVar = c.this;
                cVar.a = UMEnvelopeBuild.imprintProperty(cVar.r, "track_list", null);
                try {
                    String a = com.umeng.commonsdk.framework.a.a(c.this.r, com.umeng.commonsdk.proguard.e.f3133e, (String) null);
                    if (TextUtils.isEmpty(a)) {
                        return;
                    }
                    Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
                    cls.getMethod("updateUMTT", Context.class, String.class).invoke(cls, c.this.r, a);
                } catch (Throwable unused) {
                }
            }
        });
        this.f3250h = e.a(this.r);
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.r);
        this.f3248f = cVar;
        cVar.a(StatTracer.getInstance(this.r));
    }

    public boolean a(File file) {
        if (file == null) {
            return false;
        }
        try {
            byte[] byteArray = UMFrUtils.toByteArray(file.getPath());
            if (byteArray == null) {
                return false;
            }
            com.umeng.commonsdk.statistics.internal.a.a(this.r).c(file.getName());
            byte[] a = this.f3248f.a(byteArray, com.umeng.commonsdk.statistics.internal.a.a(this.r).a(file.getName()));
            int a2 = a == null ? 1 : a(a);
            if (a2 == 2) {
                this.f3250h.d();
                StatTracer.getInstance(this.r).saveSate();
            } else if (a2 == 3) {
                StatTracer.getInstance(this.r).saveSate();
            }
            return a2 == 2;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.r, th);
            return false;
        }
    }

    private int a(byte[] bArr) {
        Response response = new Response();
        try {
            new m(new ab.a()).a(response, bArr);
            if (response.resp_code == 1) {
                this.f3249g.b(response.getImprint());
                this.f3249g.d();
            }
            MLog.i("send log:" + response.getMsg());
            UMRTLog.i(UMRTLog.RTLOG_TAG, "send log: " + response.getMsg());
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.r, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }
}
