package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* compiled from: UOPTracker.java */
/* loaded from: classes.dex */
public class q extends a {
    public static final String a = "uopdta";
    public static final String b = "uop";

    /* renamed from: c  reason: collision with root package name */
    public Context f3211c;

    public q(Context context) {
        super(b);
        this.f3211c = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f3211c);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(a, "");
        }
        return "";
    }
}
