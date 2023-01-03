package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.utils.TbsLog;
import java.io.File;

/* loaded from: classes.dex */
public class TbsLinuxToolsJni {
    public static boolean a = false;
    public static boolean b = false;

    public TbsLinuxToolsJni(Context context) {
        a(context);
    }

    private native int ChmodInner(String str, String str2);

    public int a(String str, String str2) {
        if (a) {
            return ChmodInner(str, str2);
        }
        TbsLog.e("TbsLinuxToolsJni", "jni not loaded!", true);
        return -1;
    }

    private void a(Context context) {
        File file;
        synchronized (TbsLinuxToolsJni.class) {
            TbsLog.i("TbsLinuxToolsJni", "TbsLinuxToolsJni init mbIsInited is " + b);
            if (!b) {
                b = true;
                if (TbsShareManager.isThirdPartyApp(context)) {
                    String a2 = TbsShareManager.a();
                    if (a2 == null) {
                        a2 = TbsShareManager.c(context);
                    }
                    file = new File(a2);
                } else {
                    file = l.a().q(context);
                }
                if (file != null) {
                    if (!new File(file.getAbsolutePath() + File.separator + "liblinuxtoolsfortbssdk_jni.so").exists() && !TbsShareManager.isThirdPartyApp(context)) {
                        file = l.a().p(context);
                    }
                    if (file != null) {
                        TbsLog.i("TbsLinuxToolsJni", "TbsLinuxToolsJni init tbsSharePath is " + file.getAbsolutePath());
                        System.load(file.getAbsolutePath() + File.separator + "liblinuxtoolsfortbssdk_jni.so");
                        a = true;
                    }
                }
                ChmodInner("/checkChmodeExists", "700");
            }
        }
    }
}
