package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* compiled from: IDFATracker.java */
/* loaded from: classes.dex */
public class c extends a {
    public static final String a = "idfa";
    public Context b;

    public c(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        String a2 = com.umeng.commonsdk.statistics.common.a.a(this.b);
        return a2 == null ? "" : a2;
    }
}
