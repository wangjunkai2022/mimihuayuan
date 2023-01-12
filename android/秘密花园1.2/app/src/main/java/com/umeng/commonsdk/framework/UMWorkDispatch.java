package com.umeng.commonsdk.framework;

import android.content.Context;

/* loaded from: classes.dex */
public class UMWorkDispatch {
    public static void Quit() {
        c.a();
    }

    public static boolean eventHasExist(int i2) {
        return c.a(i2);
    }

    public static void registerConnStateObserver(UMSenderStateNotify uMSenderStateNotify) {
        c.a(uMSenderStateNotify);
    }

    public static void sendEvent(Context context, int i2, UMLogDataProtocol uMLogDataProtocol, Object obj) {
        c.a(context, i2, uMLogDataProtocol, obj);
    }
}
