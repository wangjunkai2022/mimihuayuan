package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.e;

/* compiled from: NewUMIDTracker.java */
/* loaded from: classes.dex */
public class h extends a {
    public static final String a = "newumid";
    public Context b;

    public h(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return UMEnvelopeBuild.imprintProperty(this.b, e.f3059f, null);
    }
}
