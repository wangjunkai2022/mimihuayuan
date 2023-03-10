package io.realm.internal;
/* loaded from: classes.dex */
public class OsObjectStore {
    public static String a(OsSharedRealm osSharedRealm, String str) {
        return nativeGetPrimaryKeyForObject(osSharedRealm.getNativePtr(), str);
    }

    public static native boolean nativeCallWithLock(String str, Runnable runnable);

    public static native String nativeGetPrimaryKeyForObject(long j2, String str);

    public static native long nativeGetSchemaVersion(long j2);

    public static native void nativeSetSchemaVersion(long j2, long j3);
}
