package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import io.realm.RealmFieldType;
import java.util.Locale;

/* loaded from: classes.dex */
public class Property implements i {
    public static final long b = nativeGetFinalizerPtr();
    public long a;

    public Property(long j2) {
        this.a = j2;
        h.f6233c.a(this);
    }

    public static int a(RealmFieldType realmFieldType, boolean z) {
        int i2 = 1;
        int i3 = 0;
        switch (realmFieldType.ordinal()) {
            case 0:
                i2 = 0;
                break;
            case 1:
                break;
            case 2:
                i2 = 2;
                break;
            case 3:
                i2 = 3;
                break;
            case 4:
                i2 = 4;
                break;
            case 5:
                i2 = 5;
                break;
            case 6:
                i2 = 6;
                break;
            case 7:
                return 71;
            case 8:
                return 135;
            case 9:
                return 136;
            case 10:
                i2 = 128;
                break;
            case 11:
                i2 = 129;
                break;
            case 12:
                i2 = 130;
                break;
            case 13:
                i2 = 131;
                break;
            case 14:
                i2 = 132;
                break;
            case 15:
                i2 = 133;
                break;
            case 16:
                i2 = 134;
                break;
            default:
                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported filed type: '%s'.", realmFieldType.name()));
        }
        if (!z) {
            i3 = 64;
        }
        return i2 | i3;
    }

    public static native long nativeCreatePersistedProperty(String str, int i2, boolean z, boolean z2);

    public static native long nativeGetColumnIndex(long j2);

    public static native long nativeGetFinalizerPtr();

    public static native String nativeGetLinkedObjectName(long j2);

    public static native int nativeGetType(long j2);

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return b;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }
}
