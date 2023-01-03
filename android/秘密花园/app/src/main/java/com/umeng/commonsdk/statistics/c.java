package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
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
import com.umeng.commonsdk.statistics.internal.a;
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
    public static final int f3170c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f3171d = 3;
    public static final String o = "thtstart";
    public static final String p = "gkvc";
    public static final String q = "ekvc";
    public String a;

    /* renamed from: f  reason: collision with root package name */
    public com.umeng.commonsdk.statistics.internal.c f3173f;

    /* renamed from: g  reason: collision with root package name */
    public ImprintHandler f3174g;

    /* renamed from: h  reason: collision with root package name */
    public e f3175h;

    /* renamed from: i  reason: collision with root package name */
    public ImprintHandler.a f3176i;

    /* renamed from: k  reason: collision with root package name */
    public Defcon f3178k;

    /* renamed from: l  reason: collision with root package name */
    public long f3179l;

    /* renamed from: m  reason: collision with root package name */
    public int f3180m;
    public int n;
    public Context r;

    /* renamed from: e  reason: collision with root package name */
    public final int f3172e = 1;

    /* renamed from: j  reason: collision with root package name */
    public ABTest f3177j = null;
    public ReportPolicy.ReportStrategy s = null;

    public c(Context context) {
        this.f3176i = null;
        this.f3178k = null;
        this.f3179l = 0;
        this.f3180m = 0;
        this.n = 0;
        this.a = null;
        this.r = context;
        this.f3176i = ImprintHandler.getImprintService(context).c();
        this.f3178k = Defcon.getService(this.r);
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.r);
        this.f3179l = sharedPreferences.getLong("thtstart", 0);
        this.f3180m = sharedPreferences.getInt("gkvc", 0);
        this.n = sharedPreferences.getInt("ekvc", 0);
        this.a = UMEnvelopeBuild.imprintProperty(this.r, "track_list", null);
        ImprintHandler imprintService = ImprintHandler.getImprintService(this.r);
        this.f3174g = imprintService;
        imprintService.a(new d() { // from class: com.umeng.commonsdk.statistics.c.1
            /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: ClassNotFoundException -> 0x0052
                	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
                	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:130)
                	at jadx.core.dex.visitors.AttachTryCatchVisitor.attachHandlers(AttachTryCatchVisitor.java:118)
                	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:54)
                	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:42)
                */
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a r8) {
                /*
                    r7 = this;
                    com.umeng.commonsdk.statistics.c r0 = com.umeng.commonsdk.statistics.c.this
                    com.umeng.commonsdk.statistics.c.a(r0)
                    r0 = move-result
                    r0.onImprintChanged(r8)
                    com.umeng.commonsdk.statistics.c r8 = com.umeng.commonsdk.statistics.c.this
                    com.umeng.commonsdk.statistics.c.b(r8)
                    r0 = move-result
                    java.lang.String r1 = "track_list"
                    r2 = 0
                    com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(r0, r1, r2)
                    r0 = move-result
                    r8.a = r0
                    com.umeng.commonsdk.statistics.c r8 = com.umeng.commonsdk.statistics.c.this     // Catch: ClassNotFoundException -> 0x0052
                    com.umeng.commonsdk.statistics.c.b(r8)     // Catch: ClassNotFoundException -> 0x0052
                    r8 = move-result     // Catch: ClassNotFoundException -> 0x0052
                    java.lang.String r0 = "umtt"     // Catch: ClassNotFoundException -> 0x0052
                    com.umeng.commonsdk.framework.a.a(r8, r0, r2)     // Catch: ClassNotFoundException -> 0x0052
                    r8 = move-result     // Catch: ClassNotFoundException -> 0x0052
                    android.text.TextUtils.isEmpty(r8)     // Catch: ClassNotFoundException -> 0x0052
                    r0 = move-result     // Catch: ClassNotFoundException -> 0x0052
                    if (r0 != 0) goto L_0x0052
                    java.lang.String r0 = "com.umeng.commonsdk.internal.utils.SDStorageAgent"
                    java.lang.Class.forName(r0)
                    r0 = move-result
                    java.lang.String r1 = "updateUMTT"
                    r2 = 2
                    java.lang.Class[] r3 = new java.lang.Class[r2]
                    java.lang.Class<android.content.Context> r4 = android.content.Context.class
                    r5 = 0
                    r3[r5] = r4
                    java.lang.Class<java.lang.String> r4 = java.lang.String.class
                    r6 = 1
                    r3[r6] = r4
                    r0.getMethod(r1, r3)
                    r1 = move-result
                    java.lang.Object[] r2 = new java.lang.Object[r2]
                    com.umeng.commonsdk.statistics.c r3 = com.umeng.commonsdk.statistics.c.this
                    com.umeng.commonsdk.statistics.c.b(r3)
                    r3 = move-result
                    r2[r5] = r3
                    r2[r6] = r8
                    r1.invoke(r0, r2)
                L_0x0052:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.c.AnonymousClass1.onImprintChanged(com.umeng.commonsdk.statistics.idtracking.ImprintHandler$a):void");
            }
        });
        this.f3175h = e.a(this.r);
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.r);
        this.f3173f = cVar;
        cVar.a(StatTracer.getInstance(this.r));
    }

    public boolean a(File file) {
        int i2;
        if (file == null) {
            return false;
        }
        try {
            byte[] byteArray = UMFrUtils.toByteArray(file.getPath());
            if (byteArray == null) {
                return false;
            }
            a.a(this.r).c(file.getName());
            byte[] a = this.f3173f.a(byteArray, a.a(this.r).a(file.getName()));
            if (a == null) {
                i2 = 1;
            } else {
                i2 = a(a);
            }
            if (i2 == 2) {
                this.f3175h.d();
                StatTracer.getInstance(this.r).saveSate();
            } else if (i2 == 3) {
                StatTracer.getInstance(this.r).saveSate();
            }
            if (i2 == 2) {
                return true;
            }
            return false;
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
                this.f3174g.b(response.getImprint());
                this.f3174g.d();
            }
            MLog.i("send log:" + response.getMsg());
            UMRTLog.i(UMRTLog.RTLOG_TAG, "send log: " + response.getMsg());
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.r, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }
}
