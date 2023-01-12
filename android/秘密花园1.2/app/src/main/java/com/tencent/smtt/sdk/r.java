package com.tencent.smtt.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.smtt.export.external.DexLoader;
import com.tencent.smtt.export.external.TbsCoreSettings;
import com.tencent.smtt.export.external.libwebp;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.TbsLog;
import java.util.Map;

/* compiled from: TbsWizard.java */
/* loaded from: classes.dex */
public class r {
    public Context a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public String f2673c;

    /* renamed from: d  reason: collision with root package name */
    public String[] f2674d;

    /* renamed from: e  reason: collision with root package name */
    public DexLoader f2675e;

    /* renamed from: f  reason: collision with root package name */
    public String f2676f;

    /* renamed from: g  reason: collision with root package name */
    public String f2677g = null;

    public r(Context context, Context context2, String str, String str2, String[] strArr, String str3) throws Exception {
        boolean z;
        boolean z2;
        this.a = null;
        this.b = null;
        this.f2673c = null;
        this.f2674d = null;
        this.f2675e = null;
        this.f2676f = "TbsDexOpt";
        TbsLog.i("TbsWizard", "construction start...");
        if (context != null && ((context2 != null || TbsShareManager.getHostCorePathAppDefined() != null) && !TextUtils.isEmpty(str) && strArr != null && strArr.length != 0)) {
            this.a = context.getApplicationContext();
            if (context2.getApplicationContext() != null) {
                this.b = context2.getApplicationContext();
            } else {
                this.b = context2;
            }
            this.f2673c = str;
            this.f2674d = strArr;
            this.f2676f = str2;
            for (int i2 = 0; i2 < this.f2674d.length; i2++) {
                StringBuilder p = f.b.a.a.a.p("#2 mDexFileList[", i2, "]: ");
                p.append(this.f2674d[i2]);
                TbsLog.i("TbsWizard", p.toString());
            }
            TbsLog.i("TbsWizard", "new DexLoader #2 libraryPath is " + str3 + " mCallerAppContext is " + this.a + " dexOutPutDir is " + str2);
            this.f2675e = new DexLoader(str3, this.a, this.f2674d, str2, QbSdk.n);
            System.currentTimeMillis();
            a(context);
            libwebp.loadWepLibraryIfNeed(context2, this.f2673c);
            if ("com.nd.android.pandahome2".equals(this.a.getApplicationInfo().packageName)) {
                this.f2675e.invokeStaticMethod("com.tencent.tbs.common.beacon.X5CoreBeaconUploader", "getInstance", new Class[]{Context.class}, this.a);
            }
            if (QbSdk.n != null) {
                try {
                    z = TbsPVConfig.getInstance(this.a).getTbsCoreSandboxModeEnable();
                } catch (Throwable unused) {
                    z = false;
                }
                try {
                    z2 = "true".equals(String.valueOf(QbSdk.n.get(TbsCoreSettings.TBS_SETTINGS_USE_SANDBOX)));
                } catch (Throwable th) {
                    th.printStackTrace();
                    z2 = false;
                }
                QbSdk.n.put(TbsCoreSettings.TBS_SETTINGS_USE_SANDBOX, Boolean.valueOf(z && z2));
                this.f2675e.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "initTbsSettings", new Class[]{Map.class}, QbSdk.n);
            }
            int b = b(context);
            if (b >= 0) {
                TbsLog.i("TbsWizard", "construction end...");
                return;
            }
            StringBuilder p2 = f.b.a.a.a.p("TbsWizard init error: ", b, "; msg: ");
            p2.append(this.f2677g);
            throw new Exception(p2.toString());
        }
        throw new Exception("TbsWizard paramter error:-1callerContext:" + context + "hostcontext" + context2 + "isEmpty" + TextUtils.isEmpty(str) + "dexfileList" + strArr);
    }

    private int b(Context context) {
        Object invokeStaticMethod;
        int i2;
        if (this.b == null && TbsShareManager.getHostCorePathAppDefined() != null) {
            DexLoader dexLoader = this.f2675e;
            invokeStaticMethod = dexLoader.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "initTesRuntimeEnvironment", new Class[]{Context.class, Context.class, DexLoader.class, String.class, String.class, String.class, Integer.TYPE, String.class, String.class}, context, this.b, dexLoader, this.f2673c, this.f2676f, TbsConfig.TBS_SDK_VERSIONNAME, 43697, QbSdk.a(), TbsShareManager.getHostCorePathAppDefined());
        } else {
            TbsLog.i("TbsWizard", "initTesRuntimeEnvironment callerContext is " + context + " mHostContext is " + this.b + " mDexLoader is " + this.f2675e + " mtbsInstallLocation is " + this.f2673c + " mDexOptPath is " + this.f2676f);
            DexLoader dexLoader2 = this.f2675e;
            invokeStaticMethod = dexLoader2.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "initTesRuntimeEnvironment", new Class[]{Context.class, Context.class, DexLoader.class, String.class, String.class, String.class, Integer.TYPE, String.class}, context, this.b, dexLoader2, this.f2673c, this.f2676f, TbsConfig.TBS_SDK_VERSIONNAME, 43697, QbSdk.a());
        }
        if (invokeStaticMethod == null) {
            c();
            d();
            DexLoader dexLoader3 = this.f2675e;
            invokeStaticMethod = dexLoader3.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "initTesRuntimeEnvironment", new Class[]{Context.class, Context.class, DexLoader.class, String.class, String.class}, context, this.b, dexLoader3, this.f2673c, this.f2676f);
        }
        if (invokeStaticMethod == null) {
            i2 = -3;
        } else if (invokeStaticMethod instanceof Integer) {
            i2 = ((Integer) invokeStaticMethod).intValue();
        } else if (invokeStaticMethod instanceof Throwable) {
            TbsCoreLoadStat.getInstance().a(this.a, TbsListener.ErrorCode.THROWABLE_INITTESRUNTIMEENVIRONMENT, (Throwable) invokeStaticMethod);
            i2 = -5;
        } else {
            i2 = -4;
        }
        if (i2 < 0) {
            Object invokeStaticMethod2 = this.f2675e.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "getLoadFailureDetails", new Class[0], new Object[0]);
            if (invokeStaticMethod2 instanceof Throwable) {
                Throwable th = (Throwable) invokeStaticMethod2;
                StringBuilder o = f.b.a.a.a.o("#");
                o.append(th.getMessage());
                o.append("; cause: ");
                o.append(th.getCause());
                o.append("; th: ");
                o.append(th);
                this.f2677g = o.toString();
            }
            if (invokeStaticMethod2 instanceof String) {
                this.f2677g = (String) invokeStaticMethod2;
            }
        } else {
            this.f2677g = null;
        }
        return i2;
    }

    private void c() {
        this.f2675e.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "setTesSdkVersionName", new Class[]{String.class}, TbsConfig.TBS_SDK_VERSIONNAME);
    }

    private void d() {
        this.f2675e.setStaticField("com.tencent.tbs.tbsshell.TBSShell", "VERSION", 43697);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.content.Context r3) {
        /*
            r2 = this;
            java.util.Map<java.lang.String, java.lang.Object> r0 = com.tencent.smtt.sdk.QbSdk.n
            if (r0 == 0) goto L15
            java.lang.String r1 = "check_tbs_validity"
            java.lang.Object r0 = r0.get(r1)
            boolean r1 = r0 instanceof java.lang.Boolean
            if (r1 == 0) goto L15
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            goto L16
        L15:
            r0 = 0
        L16:
            if (r0 == 0) goto L1b
            com.tencent.smtt.utils.m.b(r3)
        L1b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.r.a(android.content.Context):void");
    }

    public void a(Context context, Context context2, String str, String str2, String[] strArr, String str3) throws Exception {
        this.a = context.getApplicationContext();
        if (this.b.getApplicationContext() != null) {
            this.b = this.b.getApplicationContext();
        }
        this.f2673c = str;
        this.f2674d = strArr;
        this.f2676f = str2;
        libwebp.loadWepLibraryIfNeed(context2, str);
        Map<String, Object> map = QbSdk.n;
        if (map != null) {
            this.f2675e.invokeStaticMethod("com.tencent.tbs.tbsshell.TBSShell", "initTbsSettings", new Class[]{Map.class}, map);
        }
        int b = b(context);
        if (b >= 0) {
            return;
        }
        StringBuilder p = f.b.a.a.a.p("continueInit init error: ", b, "; msg: ");
        p.append(this.f2677g);
        throw new Exception(p.toString());
    }

    public String a() {
        String str = null;
        Object invokeStaticMethod = this.f2675e.invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "invokeStaticMethod", new Class[]{Boolean.TYPE, String.class, String.class, Class[].class, Object[].class}, Boolean.TRUE, "com.tencent.smtt.util.CrashTracker", "getCrashExtraInfo", null, new Object[0]);
        if (invokeStaticMethod == null) {
            invokeStaticMethod = this.f2675e.invokeStaticMethod("com.tencent.smtt.util.CrashTracker", "getCrashExtraInfo", null, new Object[0]);
        }
        if (invokeStaticMethod != null) {
            StringBuilder r = f.b.a.a.a.r(String.valueOf(invokeStaticMethod), " ReaderPackName=");
            r.append(TbsReaderView.gReaderPackName);
            r.append(" ReaderPackVersion=");
            r.append(TbsReaderView.gReaderPackVersion);
            str = r.toString();
        }
        return str == null ? "X5 core get nothing..." : str;
    }

    public DexLoader b() {
        return this.f2675e;
    }

    public boolean a(Context context, String str, String str2, Bundle bundle) {
        Object invokeStaticMethod = this.f2675e.invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "installLocalQbApk", new Class[]{Context.class, String.class, String.class, Bundle.class}, context, str, str2, bundle);
        if (invokeStaticMethod == null) {
            return false;
        }
        return ((Boolean) invokeStaticMethod).booleanValue();
    }
}
