package io.realm.internal.core;

import g.a.f1.i;
/* loaded from: classes.dex */
public class DescriptorOrdering implements i {
    public static final long b = nativeGetFinalizerMethodPtr();
    public final long a = nativeCreate();

    public static native long nativeCreate();

    public static native long nativeGetFinalizerMethodPtr();

    public static native boolean nativeIsEmpty(long j2);

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return b;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }
}
