package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import io.realm.RealmFieldType;

/* loaded from: classes.dex */
public class OsObjectSchemaInfo implements i {
    public static final long b = nativeGetFinalizerPtr();
    public long a;

    /* loaded from: classes.dex */
    public static class b {
        public final String a;
        public final long[] b;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f6998d;

        /* renamed from: c  reason: collision with root package name */
        public int f6997c = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f6999e = 0;

        public b(String str, int i2, int i3) {
            this.a = str;
            this.b = new long[i2];
            this.f6998d = new long[i3];
        }

        public b a(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
            long nativeCreatePersistedProperty = Property.nativeCreatePersistedProperty(str, Property.a(realmFieldType, z3), z, z2);
            long[] jArr = this.b;
            int i2 = this.f6997c;
            jArr[i2] = nativeCreatePersistedProperty;
            this.f6997c = i2 + 1;
            return this;
        }

        public OsObjectSchemaInfo b() {
            if (this.f6997c != -1 && this.f6999e != -1) {
                OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo(this.a, null);
                OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.a, this.b, this.f6998d);
                this.f6997c = -1;
                this.f6999e = -1;
                return osObjectSchemaInfo;
            }
            throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
        }
    }

    public OsObjectSchemaInfo(String str, a aVar) {
        this.a = nativeCreateRealmObjectSchema(str);
        h.f6308c.a(this);
    }

    public static native void nativeAddProperties(long j2, long[] jArr, long[] jArr2);

    public static native long nativeCreateRealmObjectSchema(String str);

    public static native long nativeGetFinalizerPtr();

    public static native long nativeGetMaxColumnIndex(long j2);

    public static native long nativeGetPrimaryKeyProperty(long j2);

    public static native long nativeGetProperty(long j2, String str);

    public long a() {
        return nativeGetMaxColumnIndex(this.a);
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return b;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    public OsObjectSchemaInfo(long j2) {
        this.a = j2;
        h.f6308c.a(this);
    }
}
