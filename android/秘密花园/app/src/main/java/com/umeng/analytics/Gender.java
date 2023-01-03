package com.umeng.analytics;

import java.util.Locale;

/* loaded from: classes.dex */
public enum Gender {
    Male(1) {
        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return String.format(Locale.US, "Male:%d", Integer.valueOf(this.value));
        }
    },
    Female(2) {
        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return String.format(Locale.US, "Female:%d", Integer.valueOf(this.value));
        }
    },
    Unknown(0) {
        @Override // java.lang.Enum, java.lang.Object
        public String toString() {
            return String.format(Locale.US, "Unknown:%d", Integer.valueOf(this.value));
        }
    };
    
    public int value;

    /* renamed from: com.umeng.analytics.Gender$4  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Gender.values().length];
            a = iArr;
            try {
                Gender gender = Gender.Male;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = a;
                Gender gender2 = Gender.Female;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = a;
                Gender gender3 = Gender.Unknown;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static Gender getGender(int i2) {
        if (i2 == 1) {
            return Male;
        }
        if (i2 != 2) {
            return Unknown;
        }
        return Female;
    }

    public static com.umeng.commonsdk.statistics.proto.Gender transGender(Gender gender) {
        int i2 = AnonymousClass4.a[gender.ordinal()];
        if (i2 == 1) {
            return com.umeng.commonsdk.statistics.proto.Gender.MALE;
        }
        if (i2 != 2) {
            return com.umeng.commonsdk.statistics.proto.Gender.UNKNOWN;
        }
        return com.umeng.commonsdk.statistics.proto.Gender.FEMALE;
    }

    public int value() {
        return this.value;
    }

    Gender(int i2) {
        this.value = i2;
    }
}
