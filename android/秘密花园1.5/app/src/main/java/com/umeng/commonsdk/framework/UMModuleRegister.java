package com.umeng.commonsdk.framework;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public class UMModuleRegister {
    public static final String ANALYTICS = "analytics";
    public static final String INNER = "internal";
    public static final int INNER_EVENT_VALUE_HIGH = 36864;
    public static final int INNER_EVENT_VALUE_LOW = 32769;
    public static final String PROCESS = "process";
    public static final int PROCESS_EVENT_VALUE_HIGH = 37120;
    public static final int PROCESS_EVENT_VALUE_LOW = 36945;
    public static final String PUSH = "push";
    public static final int PUSH_EVENT_VALUE_HIGH = 20480;
    public static final int PUSH_EVENT_VALUE_LOW = 16385;
    public static final String SHARE = "share";
    public static final int SHARE_EVENT_VALUE_HIGH = 28672;
    public static final int SHARE_EVENT_VALUE_LOW = 24577;
    public static Context mModuleAppContext;
    public static HashMap<String, UMLogDataProtocol> mModuleMap;

    public static String eventType2ModuleName(int i2) {
        String str = (i2 < 16385 || i2 > 20480) ? "analytics" : "push";
        if (i2 >= 24577 && i2 <= 28672) {
            str = "share";
        }
        if (i2 >= 32769 && i2 <= 36864) {
            str = INNER;
        }
        return (i2 < 36945 || i2 > 37120) ? str : PROCESS;
    }

    public static Context getAppContext() {
        return mModuleAppContext;
    }

    public static UMLogDataProtocol getCallbackFromModuleName(String str) {
        if (mModuleMap.containsKey(str)) {
            return mModuleMap.get(str);
        }
        return null;
    }

    public static void registerAppContext(Context context) {
        if (mModuleAppContext == null) {
            mModuleAppContext = context.getApplicationContext();
        }
    }

    public static boolean registerCallback(int i2, UMLogDataProtocol uMLogDataProtocol) {
        if (mModuleMap == null) {
            mModuleMap = new HashMap<>();
        }
        String eventType2ModuleName = eventType2ModuleName(i2);
        if (mModuleMap.containsKey(eventType2ModuleName)) {
            return true;
        }
        mModuleMap.put(eventType2ModuleName, uMLogDataProtocol);
        return true;
    }
}
