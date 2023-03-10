package com.tencent.smtt.sdk;

import android.os.HandlerThread;
/* compiled from: TbsHandlerThread.java */
/* loaded from: classes.dex */
public class k extends HandlerThread {
    public static k a;

    public k(String str) {
        super(str);
    }

    public static synchronized k a() {
        k kVar;
        synchronized (k.class) {
            if (a == null) {
                k kVar2 = new k("TbsHandlerThread");
                a = kVar2;
                kVar2.start();
            }
            kVar = a;
        }
        return kVar;
    }
}
