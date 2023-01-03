package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* compiled from: UMTTFiveTracker.java */
/* loaded from: classes.dex */
public class k extends a {
    public static final String a = "umtt5";
    public Context b;

    public k(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return (String) cls.getMethod("getUmtt5", Context.class).invoke(cls, this.b);
        } catch (Throwable unused) {
            return null;
        }
    }
}
