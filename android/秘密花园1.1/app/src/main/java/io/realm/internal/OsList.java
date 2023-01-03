package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import g.a.f1.k;
import io.realm.internal.ObservableCollection;

/* loaded from: classes.dex */
public class OsList implements i, ObservableCollection {

    /* renamed from: e  reason: collision with root package name */
    public static final long f6919e = nativeGetFinalizerPtr();
    public final long a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final Table f6920c;

    /* renamed from: d  reason: collision with root package name */
    public final k<ObservableCollection.b> f6921d = new k<>();

    public OsList(UncheckedRow uncheckedRow, long j2) {
        OsSharedRealm osSharedRealm = uncheckedRow.b.f6953c;
        long[] nativeCreate = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.f6957c, j2);
        this.a = nativeCreate[0];
        h hVar = osSharedRealm.context;
        this.b = hVar;
        hVar.a(this);
        if (nativeCreate[1] != 0) {
            this.f6920c = new Table(osSharedRealm, nativeCreate[1]);
        } else {
            this.f6920c = null;
        }
    }

    public static native void nativeAddBinary(long j2, byte[] bArr);

    public static native void nativeAddBoolean(long j2, boolean z);

    public static native void nativeAddDate(long j2, long j3);

    public static native void nativeAddDouble(long j2, double d2);

    public static native void nativeAddFloat(long j2, float f2);

    public static native void nativeAddLong(long j2, long j3);

    public static native void nativeAddNull(long j2);

    public static native void nativeAddRow(long j2, long j3);

    public static native void nativeAddString(long j2, String str);

    public static native long[] nativeCreate(long j2, long j3, long j4);

    public static native long nativeGetFinalizerPtr();

    public static native long nativeGetRow(long j2, long j3);

    public static native Object nativeGetValue(long j2, long j3);

    public static native void nativeInsertBinary(long j2, long j3, byte[] bArr);

    public static native void nativeInsertBoolean(long j2, long j3, boolean z);

    public static native void nativeInsertDate(long j2, long j3, long j4);

    public static native void nativeInsertDouble(long j2, long j3, double d2);

    public static native void nativeInsertFloat(long j2, long j3, float f2);

    public static native void nativeInsertLong(long j2, long j3, long j4);

    public static native void nativeInsertNull(long j2, long j3);

    public static native void nativeInsertRow(long j2, long j3, long j4);

    public static native void nativeInsertString(long j2, long j3, String str);

    public static native boolean nativeIsValid(long j2);

    public static native void nativeRemove(long j2, long j3);

    public static native void nativeRemoveAll(long j2);

    public static native void nativeSetBinary(long j2, long j3, byte[] bArr);

    public static native void nativeSetBoolean(long j2, long j3, boolean z);

    public static native void nativeSetDate(long j2, long j3, long j4);

    public static native void nativeSetDouble(long j2, long j3, double d2);

    public static native void nativeSetFloat(long j2, long j3, float f2);

    public static native void nativeSetLong(long j2, long j3, long j4);

    public static native void nativeSetNull(long j2, long j3);

    public static native void nativeSetRow(long j2, long j3, long j4);

    public static native void nativeSetString(long j2, long j3, String str);

    public static native long nativeSize(long j2);

    public Object a(long j2) {
        return nativeGetValue(this.a, j2);
    }

    public long b() {
        return nativeSize(this.a);
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f6919e;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j2) {
        OsCollectionChangeSet osCollectionChangeSet = new OsCollectionChangeSet(j2, false, null, false);
        if (osCollectionChangeSet.e()) {
            return;
        }
        this.f6921d.b(new ObservableCollection.a(osCollectionChangeSet));
    }
}
