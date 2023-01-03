package com.umeng.commonsdk.internal;

import android.content.Context;

/* compiled from: UMInternalData.java */
/* loaded from: classes.dex */
public class b {
    public static b b;
    public Context a;

    /* renamed from: c  reason: collision with root package name */
    public c f2928c;

    public b(Context context) {
        this.a = context;
        this.f2928c = new c(context);
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (b == null) {
                b = new b(context.getApplicationContext());
            }
            bVar = b;
        }
        return bVar;
    }

    public c a() {
        return this.f2928c;
    }
}
