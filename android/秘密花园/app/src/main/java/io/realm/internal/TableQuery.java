package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;

/* loaded from: classes.dex */
public class TableQuery implements i {

    /* renamed from: d  reason: collision with root package name */
    public static final long f6954d = nativeGetFinalizerPtr();
    public final Table a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6955c = true;

    public TableQuery(h hVar, Table table, long j2) {
        this.a = table;
        this.b = j2;
        hVar.a(this);
    }

    public static native long nativeGetFinalizerPtr();

    public void a() {
        if (!this.f6955c) {
            String nativeValidateQuery = nativeValidateQuery(this.b);
            if (nativeValidateQuery.equals("")) {
                this.f6955c = true;
                return;
            }
            throw new UnsupportedOperationException(nativeValidateQuery);
        }
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f6954d;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.b;
    }

    public final native void nativeEqual(long j2, long[] jArr, long[] jArr2, String str, boolean z);

    public final native long nativeFind(long j2, long j3);

    public final native String nativeValidateQuery(long j2);
}
