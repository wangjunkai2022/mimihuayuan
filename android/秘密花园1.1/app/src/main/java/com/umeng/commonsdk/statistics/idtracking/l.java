package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* compiled from: UMTTFourTracker.java */
/* loaded from: classes.dex */
public class l extends a {
    public static final String a = "umtt4";
    public Context b;

    public l(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return (String) cls.getMethod("getUmtt4", Context.class).invoke(cls, this.b);
        } catch (Throwable unused) {
            return null;
        }
    }
}
