package io.realm.internal;

import g.a.f1.h;
import io.realm.RealmFieldType;
import java.util.Locale;

/* loaded from: classes.dex */
public class CheckedRow extends UncheckedRow {
    public CheckedRow(h hVar, Table table, long j2) {
        super(hVar, table, j2);
    }

    public static CheckedRow G(h hVar, Table table, long j2) {
        return new CheckedRow(hVar, table, table.nativeGetRowPtr(table.a, j2));
    }

    @Override // io.realm.internal.UncheckedRow, g.a.f1.p
    public boolean e(long j2) {
        RealmFieldType fromNativeValue = RealmFieldType.fromNativeValue(nativeGetColumnType(this.f6957c, j2));
        if (fromNativeValue == RealmFieldType.OBJECT || fromNativeValue == RealmFieldType.LIST) {
            return nativeIsNullLink(this.f6957c, j2);
        }
        return false;
    }

    @Override // io.realm.internal.UncheckedRow, g.a.f1.p
    public void f(long j2) {
        if (RealmFieldType.fromNativeValue(nativeGetColumnType(this.f6957c, j2)) == RealmFieldType.BINARY) {
            this.b.a();
            nativeSetByteArray(this.f6957c, j2, null);
            return;
        }
        this.b.a();
        nativeSetNull(this.f6957c, j2);
    }

    @Override // io.realm.internal.UncheckedRow
    public native boolean nativeGetBoolean(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native byte[] nativeGetByteArray(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetColumnCount(long j2);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetColumnIndex(long j2, String str);

    @Override // io.realm.internal.UncheckedRow
    public native String nativeGetColumnName(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native int nativeGetColumnType(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native double nativeGetDouble(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native float nativeGetFloat(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetLink(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetLong(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native String nativeGetString(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetTimestamp(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native boolean nativeIsNullLink(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeNullifyLink(long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetBoolean(long j2, long j3, boolean z);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetByteArray(long j2, long j3, byte[] bArr);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetDouble(long j2, long j3, double d2);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetFloat(long j2, long j3, float f2);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetLink(long j2, long j3, long j4);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetLong(long j2, long j3, long j4);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetString(long j2, long j3, String str);

    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetTimestamp(long j2, long j3, long j4);

    @Override // io.realm.internal.UncheckedRow, g.a.f1.p
    public OsList t(long j2) {
        Table table = this.b;
        if (RealmFieldType.fromNativeValue(table.nativeGetColumnType(table.a, j2)) == RealmFieldType.LIST) {
            return new OsList(this, j2);
        }
        Locale locale = Locale.US;
        Table table2 = this.b;
        throw new IllegalArgumentException(String.format(locale, "Field '%s' is not a 'RealmList'.", table2.nativeGetColumnName(table2.a, j2)));
    }

    @Override // io.realm.internal.UncheckedRow, g.a.f1.p
    public OsList x(long j2, RealmFieldType realmFieldType) {
        Table table = this.b;
        if (realmFieldType == RealmFieldType.fromNativeValue(table.nativeGetColumnType(table.a, j2))) {
            return new OsList(this, j2);
        }
        Locale locale = Locale.US;
        Table table2 = this.b;
        throw new IllegalArgumentException(String.format(locale, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", table2.nativeGetColumnName(table2.a, j2), realmFieldType.name()));
    }

    @Override // io.realm.internal.UncheckedRow, g.a.f1.p
    public boolean y(long j2) {
        return nativeIsNull(this.f6957c, j2);
    }

    public CheckedRow(UncheckedRow uncheckedRow) {
        super(uncheckedRow);
    }
}
