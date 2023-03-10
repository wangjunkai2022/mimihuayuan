package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.umeng.commonsdk.statistics.common.ULog;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
/* compiled from: AliUMIDManager.java */
/* loaded from: classes.dex */
public class a {
    public static Object a = new Object();
    public static String b;

    public static void a(Context context) {
        Object newInstance;
        try {
            Class<?>[] clsArr = {Context.class};
            try {
                Class<?> cls = Class.forName("com.wireless.security.securityenv.sdk.SecurityEnvSDK");
                Constructor<?> constructor = cls.getConstructor(clsArr);
                if (constructor == null || (newInstance = constructor.newInstance(context)) == null) {
                    return;
                }
                Method declaredMethod = cls.getDeclaredMethod("initSync", new Class[0]);
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(newInstance, new Object[0]);
                }
                Method declaredMethod2 = cls.getDeclaredMethod("getToken", new Class[0]);
                if (declaredMethod2 != null) {
                    declaredMethod2.setAccessible(true);
                    String str = (String) declaredMethod2.invoke(newInstance, new Object[0]);
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    synchronized (a) {
                        b = str;
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Exception e2) {
            ULog.e(UMModuleRegister.INNER, "e is " + e2);
        }
    }

    public static String b(Context context) {
        String str;
        synchronized (a) {
            str = b;
        }
        return str;
    }
}
