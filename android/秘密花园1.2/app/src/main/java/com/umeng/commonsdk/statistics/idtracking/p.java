package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* compiled from: UMTTZeroTracker.java */
/* loaded from: classes.dex */
public class p extends a {
    public static final String a = "umtt0";
    public Context b;

    public p(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return (String) cls.getMethod("getUmtt0", Context.class).invoke(cls, this.b);
        } catch (Throwable unused) {
            return null;
        }
    }
}
