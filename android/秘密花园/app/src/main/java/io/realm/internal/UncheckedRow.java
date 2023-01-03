package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import g.a.f1.p;
import io.realm.RealmFieldType;
import java.util.Date;

/* loaded from: classes.dex */
public class UncheckedRow implements i, p {

    /* renamed from: d  reason: collision with root package name */
    public static final long f6956d = nativeGetFinalizerPtr();
    public final h a;
    public final Table b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6957c;

    public UncheckedRow(h hVar, Table table, long j2) {
        this.a = hVar;
        this.b = table;
        this.f6957c = j2;
        hVar.a(this);
    }

    public static UncheckedRow F(h hVar, Table table, long j2) {
        return new UncheckedRow(hVar, table, table.nativeGetRowPtr(table.a, j2));
    }

    public static native long nativeGetFinalizerPtr();

    @Override // g.a.f1.p
    public void A(long j2, Date date) {
        this.b.a();
        nativeSetTimestamp(this.f6957c, j2, date.getTime());
    }

    @Override // g.a.f1.p
    public RealmFieldType B(long j2) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.f6957c, j2));
    }

    @Override // g.a.f1.p
    public void C(long j2, double d2) {
        this.b.a();
        nativeSetDouble(this.f6957c, j2, d2);
    }

    @Override // g.a.f1.p
    public void D(long j2, byte[] bArr) {
        this.b.a();
        nativeSetByteArray(this.f6957c, j2, bArr);
    }

    @Override // g.a.f1.p
    public void E(long j2) {
        this.b.a();
        nativeNullifyLink(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public void a(long j2, String str) {
        this.b.a();
        if (str == null) {
            nativeSetNull(this.f6957c, j2);
        } else {
            nativeSetString(this.f6957c, j2, str);
        }
    }

    @Override // g.a.f1.p
    public void b(long j2, float f2) {
        this.b.a();
        nativeSetFloat(this.f6957c, j2, f2);
    }

    @Override // g.a.f1.p
    public long c() {
        return nativeGetColumnCount(this.f6957c);
    }

    @Override // g.a.f1.p
    public Table d() {
        return this.b;
    }

    @Override // g.a.f1.p
    public boolean e(long j2) {
        return nativeIsNullLink(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public void f(long j2) {
        this.b.a();
        nativeSetNull(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public byte[] g(long j2) {
        return nativeGetByteArray(this.f6957c, j2);
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f6956d;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.f6957c;
    }

    @Override // g.a.f1.p
    public void h() {
        if (!v()) {
            throw new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
        }
    }

    @Override // g.a.f1.p
    public void i(long j2, boolean z) {
        this.b.a();
        nativeSetBoolean(this.f6957c, j2, z);
    }

    @Override // g.a.f1.p
    public boolean j(String str) {
        return nativeHasColumn(this.f6957c, str);
    }

    @Override // g.a.f1.p
    public double k(long j2) {
        return nativeGetDouble(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public long l() {
        return nativeGetIndex(this.f6957c);
    }

    @Override // g.a.f1.p
    public boolean m(long j2) {
        return nativeGetBoolean(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public long n(long j2) {
        return nativeGetLink(this.f6957c, j2);
    }

    public native boolean nativeGetBoolean(long j2, long j3);

    public native byte[] nativeGetByteArray(long j2, long j3);

    public native long nativeGetColumnCount(long j2);

    public native long nativeGetColumnIndex(long j2, String str);

    public native String nativeGetColumnName(long j2, long j3);

    public native int nativeGetColumnType(long j2, long j3);

    public native double nativeGetDouble(long j2, long j3);

    public native float nativeGetFloat(long j2, long j3);

    public native long nativeGetIndex(long j2);

    public native long nativeGetLink(long j2, long j3);

    public native long nativeGetLong(long j2, long j3);

    public native String nativeGetString(long j2, long j3);

    public native long nativeGetTimestamp(long j2, long j3);

    public native boolean nativeHasColumn(long j2, String str);

    public native boolean nativeIsAttached(long j2);

    public native boolean nativeIsNull(long j2, long j3);

    public native boolean nativeIsNullLink(long j2, long j3);

    public native void nativeNullifyLink(long j2, long j3);

    public native void nativeSetBoolean(long j2, long j3, boolean z);

    public native void nativeSetByteArray(long j2, long j3, byte[] bArr);

    public native void nativeSetDouble(long j2, long j3, double d2);

    public native void nativeSetFloat(long j2, long j3, float f2);

    public native void nativeSetLink(long j2, long j3, long j4);

    public native void nativeSetLong(long j2, long j3, long j4);

    public native void nativeSetNull(long j2, long j3);

    public native void nativeSetString(long j2, long j3, String str);

    public native void nativeSetTimestamp(long j2, long j3, long j4);

    @Override // g.a.f1.p
    public float o(long j2) {
        return nativeGetFloat(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public long p(long j2) {
        return nativeGetLong(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public String q(long j2) {
        return nativeGetString(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public void r(long j2, long j3) {
        this.b.a();
        nativeSetLink(this.f6957c, j2, j3);
    }

    @Override // g.a.f1.p
    public long s(String str) {
        if (str != null) {
            return nativeGetColumnIndex(this.f6957c, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    @Override // g.a.f1.p
    public OsList t(long j2) {
        return new OsList(this, j2);
    }

    @Override // g.a.f1.p
    public void u(long j2, long j3) {
        this.b.a();
        nativeSetLong(this.f6957c, j2, j3);
    }

    @Override // g.a.f1.p
    public boolean v() {
        long j2 = this.f6957c;
        return j2 != 0 && nativeIsAttached(j2);
    }

    @Override // g.a.f1.p
    public Date w(long j2) {
        return new Date(nativeGetTimestamp(this.f6957c, j2));
    }

    @Override // g.a.f1.p
    public OsList x(long j2, RealmFieldType realmFieldType) {
        return new OsList(this, j2);
    }

    @Override // g.a.f1.p
    public boolean y(long j2) {
        return nativeIsNull(this.f6957c, j2);
    }

    @Override // g.a.f1.p
    public String z(long j2) {
        return nativeGetColumnName(this.f6957c, j2);
    }

    public UncheckedRow(UncheckedRow uncheckedRow) {
        this.a = uncheckedRow.a;
        this.b = uncheckedRow.b;
        this.f6957c = uncheckedRow.f6957c;
    }
}
