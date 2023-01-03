package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.b;
import com.umeng.commonsdk.statistics.common.ULog;

/* compiled from: UMConfigureInternation.java */
/* loaded from: classes.dex */
public class a {
    public static boolean a = false;

    public static synchronized void a(final Context context) {
        synchronized (a.class) {
            if (context != null) {
                try {
                    if (!a) {
                        new Thread(new Runnable() { // from class: com.umeng.commonsdk.a.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    String currentProcessName = UMFrUtils.getCurrentProcessName(context);
                                    String packageName = context.getPackageName();
                                    if (!TextUtils.isEmpty(currentProcessName) && !TextUtils.isEmpty(packageName) && currentProcessName.equals(packageName) && UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                                        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f2927m, b.a(context).a(), null);
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                        }).start();
                        a = true;
                    }
                } catch (Throwable th) {
                    try {
                        ULog.e(UMModuleRegister.INNER, "e is " + th.getMessage());
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }
}
