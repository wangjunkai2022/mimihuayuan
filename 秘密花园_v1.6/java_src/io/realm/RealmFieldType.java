package io.realm;

import f.b.a.a.a;
import io.realm.internal.Keep;
import java.nio.ByteBuffer;
import java.util.Date;
@Keep
/* loaded from: classes.dex */
public enum RealmFieldType {
    INTEGER(0),
    BOOLEAN(1),
    STRING(2),
    BINARY(4),
    DATE(8),
    FLOAT(9),
    DOUBLE(10),
    OBJECT(12),
    LIST(13),
    LINKING_OBJECTS(14),
    INTEGER_LIST(128),
    BOOLEAN_LIST(129),
    STRING_LIST(130),
    BINARY_LIST(132),
    DATE_LIST(136),
    FLOAT_LIST(137),
    DOUBLE_LIST(138);
    
    public static final RealmFieldType[] basicTypes = new RealmFieldType[15];
    public static final RealmFieldType[] listTypes = new RealmFieldType[15];
    public final int nativeValue;

    static {
        RealmFieldType[] values;
        for (RealmFieldType realmFieldType : values()) {
            int i2 = realmFieldType.nativeValue;
            if (i2 < 128) {
                basicTypes[i2] = realmFieldType;
            } else {
                listTypes[i2 - 128] = realmFieldType;
            }
        }
    }

    RealmFieldType(int i2) {
        this.nativeValue = i2;
    }

    public static RealmFieldType fromNativeValue(int i2) {
        RealmFieldType realmFieldType;
        RealmFieldType realmFieldType2;
        if (i2 >= 0) {
            RealmFieldType[] realmFieldTypeArr = basicTypes;
            if (i2 < realmFieldTypeArr.length && (realmFieldType2 = realmFieldTypeArr[i2]) != null) {
                return realmFieldType2;
            }
        }
        if (128 <= i2) {
            int i3 = i2 - 128;
            RealmFieldType[] realmFieldTypeArr2 = listTypes;
            if (i3 < realmFieldTypeArr2.length && (realmFieldType = realmFieldTypeArr2[i3]) != null) {
                return realmFieldType;
            }
        }
        throw new IllegalArgumentException(a.J("Invalid native Realm type: ", i2));
    }

    public int getNativeValue() {
        return this.nativeValue;
    }

    public boolean isValid(Object obj) {
        int i2 = this.nativeValue;
        if (i2 == 0) {
            return (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte);
        } else if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 4) {
                    return (obj instanceof byte[]) || (obj instanceof ByteBuffer);
                } else if (i2 != 132) {
                    switch (i2) {
                        case 8:
                            return obj instanceof Date;
                        case 9:
                            return obj instanceof Float;
                        case 10:
                            return obj instanceof Double;
                        default:
                            switch (i2) {
                                case 12:
                                case 13:
                                case 14:
                                    break;
                                default:
                                    switch (i2) {
                                        case 128:
                                        case 129:
                                        case 130:
                                            break;
                                        default:
                                            switch (i2) {
                                                case 136:
                                                case 137:
                                                case 138:
                                                    break;
                                                default:
                                                    throw new RuntimeException("Unsupported Realm type:  " + this);
                                            }
                                    }
                            }
                            return false;
                    }
                } else {
                    return false;
                }
            }
            return obj instanceof String;
        } else {
            return obj instanceof Boolean;
        }
    }
}
