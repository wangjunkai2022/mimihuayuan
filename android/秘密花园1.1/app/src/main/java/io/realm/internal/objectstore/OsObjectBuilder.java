package io.realm.internal.objectstore;

import g.a.f1.h;
import g.a.m;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import java.io.Closeable;
import java.util.Set;

/* loaded from: classes.dex */
public class OsObjectBuilder implements Closeable {
    public final Table a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6958c;

    /* renamed from: d  reason: collision with root package name */
    public final long f6959d;

    /* renamed from: e  reason: collision with root package name */
    public final h f6960e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6961f;

    public OsObjectBuilder(Table table, long j2, Set<m> set) {
        OsSharedRealm osSharedRealm = table.f6953c;
        this.b = osSharedRealm.getNativePtr();
        this.a = table;
        this.f6959d = table.a;
        this.f6958c = nativeCreateBuilder(j2 + 1);
        this.f6960e = osSharedRealm.context;
        this.f6961f = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
    }

    public static native void nativeAddBoolean(long j2, long j3, boolean z);

    public static native void nativeAddDouble(long j2, long j3, double d2);

    public static native void nativeAddFloat(long j2, long j3, float f2);

    public static native void nativeAddInteger(long j2, long j3, long j4);

    public static native void nativeAddNull(long j2, long j3);

    public static native void nativeAddString(long j2, long j3, String str);

    public static native long nativeCreateBuilder(long j2);

    public static native long nativeCreateOrUpdate(long j2, long j3, long j4, boolean z, boolean z2);

    public static native void nativeDestroyBuilder(long j2);

    public UncheckedRow E() {
        try {
            return new UncheckedRow(this.f6960e, this.a, nativeCreateOrUpdate(this.b, this.f6959d, this.f6958c, false, false));
        } finally {
            nativeDestroyBuilder(this.f6958c);
        }
    }

    public void F() {
        try {
            nativeCreateOrUpdate(this.b, this.f6959d, this.f6958c, true, this.f6961f);
        } finally {
            nativeDestroyBuilder(this.f6958c);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        nativeDestroyBuilder(this.f6958c);
    }

    public void d(long j2, Boolean bool) {
        if (bool == null) {
            nativeAddNull(this.f6958c, j2);
        } else {
            nativeAddBoolean(this.f6958c, j2, bool.booleanValue());
        }
    }

    public void e(long j2, Integer num) {
        if (num == null) {
            nativeAddNull(this.f6958c, j2);
        } else {
            nativeAddInteger(this.f6958c, j2, num.intValue());
        }
    }

    public void f(long j2, Long l2) {
        if (l2 == null) {
            nativeAddNull(this.f6958c, j2);
        } else {
            nativeAddInteger(this.f6958c, j2, l2.longValue());
        }
    }

    public void g(long j2, String str) {
        if (str == null) {
            nativeAddNull(this.f6958c, j2);
        } else {
            nativeAddString(this.f6958c, j2, str);
        }
    }
}
