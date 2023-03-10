package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.n;
/* loaded from: classes.dex */
public enum Gender implements n {
    MALE(0),
    FEMALE(1),
    UNKNOWN(2);
    
    public final int value;

    Gender(int i2) {
        this.value = i2;
    }

    public static Gender findByValue(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return null;
                }
                return UNKNOWN;
            }
            return FEMALE;
        }
        return MALE;
    }

    @Override // com.umeng.commonsdk.proguard.n
    public int getValue() {
        return this.value;
    }
}
