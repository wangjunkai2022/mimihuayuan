package io.realm.internal;

import f.b.a.a.a;
import g.a.f1.h;
import g.a.f1.i;
import io.realm.RealmFieldType;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;

/* loaded from: classes.dex */
public class Table implements i {

    /* renamed from: d  reason: collision with root package name */
    public static final String f6951d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f6952e;
    public final long a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final OsSharedRealm f6953c;

    static {
        String nativeGetTablePrefix = Util.nativeGetTablePrefix();
        f6951d = nativeGetTablePrefix;
        nativeGetTablePrefix.length();
        f6952e = nativeGetFinalizerPtr();
    }

    public Table(OsSharedRealm osSharedRealm, long j2) {
        h hVar = osSharedRealm.context;
        this.b = hVar;
        this.f6953c = osSharedRealm;
        this.a = j2;
        hVar.a(this);
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        return !str.startsWith(f6951d) ? str : str.substring(f6951d.length());
    }

    public static String k(String str) {
        if (str == null) {
            return null;
        }
        return a.l(new StringBuilder(), f6951d, str);
    }

    public static void n(OsSharedRealm osSharedRealm) {
        nativeMigratePrimaryKeyTableIfNeeded(osSharedRealm.getNativePtr());
    }

    public static native long nativeFindFirstNull(long j2, long j3);

    public static native long nativeFindFirstString(long j2, long j3, String str);

    public static native long nativeGetFinalizerPtr();

    public static native void nativeMigratePrimaryKeyTableIfNeeded(long j2);

    public static native void nativeSetBoolean(long j2, long j3, long j4, boolean z, boolean z2);

    public static native void nativeSetDouble(long j2, long j3, long j4, double d2, boolean z);

    public static native void nativeSetFloat(long j2, long j3, long j4, float f2, boolean z);

    public static native void nativeSetLong(long j2, long j3, long j4, long j5, boolean z);

    public static native void nativeSetNull(long j2, long j3, long j4, boolean z);

    public static native void nativeSetString(long j2, long j3, long j4, String str, boolean z);

    public static void s(Object obj) {
        throw new RealmPrimaryKeyConstraintException("Value already exists: " + obj);
    }

    public void a() {
        OsSharedRealm osSharedRealm = this.f6953c;
        if ((osSharedRealm == null || osSharedRealm.isInTransaction()) ? false : true) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
    }

    public long b(long j2) {
        return nativeFindFirstNull(this.a, j2);
    }

    public long c(long j2, String str) {
        if (str != null) {
            return nativeFindFirstString(this.a, j2, str);
        }
        throw new IllegalArgumentException("null is not supported");
    }

    public String d() {
        return e(j());
    }

    public long f(String str) {
        if (str != null) {
            return nativeGetColumnIndex(this.a, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    public String g(long j2) {
        return nativeGetColumnName(this.a, j2);
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f6952e;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    public RealmFieldType h(long j2) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.a, j2));
    }

    public Table i(long j2) {
        return new Table(this.f6953c, nativeGetLinkTarget(this.a, j2));
    }

    public String j() {
        return nativeGetName(this.a);
    }

    public UncheckedRow l(long j2) {
        return UncheckedRow.F(this.b, this, j2);
    }

    public UncheckedRow m(long j2) {
        return new UncheckedRow(this.b, this, j2);
    }

    public final native long nativeGetColumnCount(long j2);

    public final native long nativeGetColumnIndex(long j2, String str);

    public final native String nativeGetColumnName(long j2, long j3);

    public final native int nativeGetColumnType(long j2, long j3);

    public final native long nativeGetLinkTarget(long j2, long j3);

    public final native String nativeGetName(long j2);

    public native long nativeGetRowPtr(long j2, long j3);

    public final native boolean nativeHasSameSchema(long j2, long j3);

    public final native boolean nativeIsValid(long j2);

    public final native void nativeMoveLastOver(long j2, long j3);

    public final native long nativeSize(long j2);

    public final native long nativeWhere(long j2);

    public void o(long j2, long j3, boolean z, boolean z2) {
        a();
        nativeSetBoolean(this.a, j2, j3, z, z2);
    }

    public void p(long j2, long j3, long j4, boolean z) {
        a();
        nativeSetLong(this.a, j2, j3, j4, z);
    }

    public void q(long j2, long j3, boolean z) {
        a();
        nativeSetNull(this.a, j2, j3, z);
    }

    public void r(long j2, long j3, String str, boolean z) {
        a();
        nativeSetString(this.a, j2, j3, str, z);
    }

    public String toString() {
        long nativeGetColumnCount = nativeGetColumnCount(this.a);
        String j2 = j();
        StringBuilder sb = new StringBuilder("The Table ");
        if (j2 != null && !j2.isEmpty()) {
            sb.append(j());
            sb.append(" ");
        }
        sb.append("contains ");
        sb.append(nativeGetColumnCount);
        sb.append(" columns: ");
        int i2 = 0;
        while (true) {
            long j3 = i2;
            if (j3 < nativeGetColumnCount) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(g(j3));
                i2++;
            } else {
                sb.append(".");
                sb.append(" And ");
                sb.append(nativeSize(this.a));
                sb.append(" rows.");
                return sb.toString();
            }
        }
    }
}
