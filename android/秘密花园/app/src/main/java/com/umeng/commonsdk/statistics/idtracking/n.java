package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* compiled from: UMTTThreeTracker.java */
/* loaded from: classes.dex */
public class n extends a {
    public static final String a = "umtt3";
    public Context b;

    public n(Context context) {
        super(a);
        this.b = context;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: ClassNotFoundException -> 0x0021
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:130)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.attachHandlers(AttachTryCatchVisitor.java:118)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:42)
        */
    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        /*
            r6 = this;
            java.lang.String r0 = "com.umeng.commonsdk.internal.utils.SDStorageAgent"
            java.lang.Class.forName(r0)
            r0 = move-result
            java.lang.String r1 = "getUmtt3"
            r2 = 1
            java.lang.Class[] r3 = new java.lang.Class[r2]
            java.lang.Class<android.content.Context> r4 = android.content.Context.class
            r5 = 0
            r3[r5] = r4
            r0.getMethod(r1, r3)
            r1 = move-result
            java.lang.Object[] r2 = new java.lang.Object[r2]
            android.content.Context r3 = r6.b
            r2[r5] = r3
            r1.invoke(r0, r2)
            r0 = move-result
            java.lang.String r0 = (java.lang.String) r0
            goto L_0x0022
        L_0x0021:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.n.f():java.lang.String");
    }
}
