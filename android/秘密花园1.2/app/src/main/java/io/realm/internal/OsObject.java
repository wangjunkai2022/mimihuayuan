package io.realm.internal;

import g.a.e0;
import g.a.f1.i;
import g.a.f1.k;
import g.a.h0;
import g.a.r;
import io.realm.RealmFieldType;
import io.realm.exceptions.RealmException;

@Keep
/* loaded from: classes.dex */
public class OsObject implements i {
    public static final String OBJECT_ID_COLUMN_NAME = nativeGetObjectIdColumName();
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public final long nativePtr;
    public k<b> observerPairs = new k<>();

    /* loaded from: classes.dex */
    public static class a implements k.a<b> {
        public final String[] a;

        public a(String[] strArr) {
            this.a = strArr;
        }

        @Override // g.a.f1.k.a
        public void a(b bVar, Object obj) {
            b bVar2 = bVar;
            e0 e0Var = (e0) obj;
            boolean z = this.a == null;
            ((h0) bVar2.b).a(e0Var, new c(z ? new String[0] : this.a, z));
        }
    }

    /* loaded from: classes.dex */
    public static class b<T extends e0> extends k.b<T, h0<T>> {
        public b(T t, h0<T> h0Var) {
            super(t, h0Var);
        }
    }

    /* loaded from: classes.dex */
    public static class c implements r {
        public c(String[] strArr, boolean z) {
        }
    }

    public OsObject(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow) {
        this.nativePtr = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.f7032c);
        osSharedRealm.context.a(this);
    }

    public static UncheckedRow create(Table table) {
        OsSharedRealm osSharedRealm = table.f7028c;
        return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObject(osSharedRealm.getNativePtr(), table.a));
    }

    public static long createRow(Table table) {
        return nativeCreateRow(table.f7028c.getNativePtr(), table.a);
    }

    public static long createRowWithPrimaryKey(Table table, long j2, Object obj) {
        RealmFieldType fromNativeValue = RealmFieldType.fromNativeValue(table.nativeGetColumnType(table.a, j2));
        OsSharedRealm osSharedRealm = table.f7028c;
        if (fromNativeValue == RealmFieldType.STRING) {
            if (obj != null && !(obj instanceof String)) {
                throw new IllegalArgumentException("Primary key value is not a String: " + obj);
            }
            return nativeCreateRowWithStringPrimaryKey(osSharedRealm.getNativePtr(), table.a, j2, (String) obj);
        } else if (fromNativeValue == RealmFieldType.INTEGER) {
            return nativeCreateRowWithLongPrimaryKey(osSharedRealm.getNativePtr(), table.a, j2, obj == null ? 0L : Long.parseLong(obj.toString()), obj == null);
        } else {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + fromNativeValue);
        }
    }

    public static UncheckedRow createWithPrimaryKey(Table table, Object obj) {
        long andVerifyPrimaryKeyColumnIndex = getAndVerifyPrimaryKeyColumnIndex(table);
        RealmFieldType h2 = table.h(andVerifyPrimaryKeyColumnIndex);
        OsSharedRealm osSharedRealm = table.f7028c;
        if (h2 == RealmFieldType.STRING) {
            if (obj != null && !(obj instanceof String)) {
                throw new IllegalArgumentException("Primary key value is not a String: " + obj);
            }
            return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObjectWithStringPrimaryKey(osSharedRealm.getNativePtr(), table.a, andVerifyPrimaryKeyColumnIndex, (String) obj));
        } else if (h2 == RealmFieldType.INTEGER) {
            return new UncheckedRow(osSharedRealm.context, table, nativeCreateNewObjectWithLongPrimaryKey(osSharedRealm.getNativePtr(), table.a, andVerifyPrimaryKeyColumnIndex, obj == null ? 0L : Long.parseLong(obj.toString()), obj == null));
        } else {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + h2);
        }
    }

    public static long getAndVerifyPrimaryKeyColumnIndex(Table table) {
        String a2 = OsObjectStore.a(table.f7028c, table.d());
        if (a2 != null) {
            return table.f(a2);
        }
        throw new IllegalStateException(table.j() + " has no primary key defined.");
    }

    public static boolean isObjectIdColumn(String str) {
        return OBJECT_ID_COLUMN_NAME.equals(str);
    }

    public static native long nativeCreate(long j2, long j3);

    public static native long nativeCreateNewObject(long j2, long j3);

    public static native long nativeCreateNewObjectWithLongPrimaryKey(long j2, long j3, long j4, long j5, boolean z);

    public static native long nativeCreateNewObjectWithStringPrimaryKey(long j2, long j3, long j4, String str);

    public static native long nativeCreateRow(long j2, long j3);

    public static native long nativeCreateRowWithLongPrimaryKey(long j2, long j3, long j4, long j5, boolean z);

    public static native long nativeCreateRowWithStringPrimaryKey(long j2, long j3, long j4, String str);

    public static native long nativeGetFinalizerPtr();

    public static native String nativeGetObjectIdColumName();

    private native void nativeStartListening(long j2);

    private native void nativeStopListening(long j2);

    private void notifyChangeListeners(String[] strArr) {
        this.observerPairs.b(new a(strArr));
    }

    public <T extends e0> void addListener(T t, h0<T> h0Var) {
        if (this.observerPairs.c()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.a(new b(t, h0Var));
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.nativePtr;
    }

    public <T extends e0> void removeListener(T t) {
        this.observerPairs.e(t);
        if (this.observerPairs.c()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public void setObserverPairs(k<b> kVar) {
        if (this.observerPairs.c()) {
            this.observerPairs = kVar;
            if (kVar.c()) {
                return;
            }
            nativeStartListening(this.nativePtr);
            return;
        }
        throw new IllegalStateException("'observerPairs' is not empty. Listeners have been added before.");
    }

    public <T extends e0> void removeListener(T t, h0<T> h0Var) {
        this.observerPairs.d(t, h0Var);
        if (this.observerPairs.c()) {
            nativeStopListening(this.nativePtr);
        }
    }
}
