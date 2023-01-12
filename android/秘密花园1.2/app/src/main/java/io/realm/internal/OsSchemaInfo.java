package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import java.util.Collection;

/* loaded from: classes.dex */
public class OsSchemaInfo implements i {

    /* renamed from: c  reason: collision with root package name */
    public static final long f7025c = nativeGetFinalizerPtr();
    public long a;
    public final OsSharedRealm b;

    public OsSchemaInfo(Collection<OsObjectSchemaInfo> collection) {
        long[] jArr = new long[collection.size()];
        int i2 = 0;
        for (OsObjectSchemaInfo osObjectSchemaInfo : collection) {
            jArr[i2] = osObjectSchemaInfo.a;
            i2++;
        }
        this.a = nativeCreateFromList(jArr);
        h.f6308c.a(this);
    }

    public static native long nativeCreateFromList(long[] jArr);

    public static native long nativeGetFinalizerPtr();

    public static native long nativeGetObjectSchemaInfo(long j2, String str);

    public OsObjectSchemaInfo a(String str) {
        return new OsObjectSchemaInfo(nativeGetObjectSchemaInfo(this.a, str));
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f7025c;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    public OsSchemaInfo(long j2, OsSharedRealm osSharedRealm) {
        this.a = j2;
        this.b = osSharedRealm;
    }
}
