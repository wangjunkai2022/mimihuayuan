package com.umeng.commonsdk.proguard;

import java.util.BitSet;
/* compiled from: TTupleProtocol.java */
/* loaded from: classes.dex */
public final class ao extends ac {

    /* compiled from: TTupleProtocol.java */
    /* loaded from: classes.dex */
    public static class a implements ak {
        @Override // com.umeng.commonsdk.proguard.ak
        public ai a(aw awVar) {
            return new ao(awVar);
        }
    }

    public ao(aw awVar) {
        super(awVar);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public Class<? extends aq> D() {
        return at.class;
    }

    public void a(BitSet bitSet, int i2) throws p {
        for (byte b : b(bitSet, i2)) {
            a(b);
        }
    }

    public BitSet b(int i2) throws p {
        int ceil = (int) Math.ceil(i2 / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i3 = 0; i3 < ceil; i3++) {
            bArr[i3] = u();
        }
        return a(bArr);
    }

    public static BitSet a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i2 = 0; i2 < bArr.length * 8; i2++) {
            if ((bArr[(bArr.length - (i2 / 8)) - 1] & (1 << (i2 % 8))) > 0) {
                bitSet.set(i2);
            }
        }
        return bitSet;
    }

    public static byte[] b(BitSet bitSet, int i2) {
        int ceil = (int) Math.ceil(i2 / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i3 = 0; i3 < bitSet.length(); i3++) {
            if (bitSet.get(i3)) {
                int i4 = (ceil - (i3 / 8)) - 1;
                bArr[i4] = (byte) ((1 << (i3 % 8)) | bArr[i4]);
            }
        }
        return bArr;
    }
}
