package j;

import com.umeng.commonsdk.proguard.ap;
/* compiled from: -Base64.kt */
/* loaded from: classes.dex */
public final class a {
    public static final byte[] a = k.f7063e.b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").f7064c;

    static {
        k.f7063e.b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    }

    public static final byte[] a(String str) {
        int i2;
        int i3;
        char charAt;
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length = i3;
        }
        int i4 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            char charAt2 = str.charAt(i8);
            if ('A' <= charAt2 && 'Z' >= charAt2) {
                i2 = charAt2 - 'A';
            } else if ('a' <= charAt2 && 'z' >= charAt2) {
                i2 = charAt2 - 'G';
            } else if ('0' <= charAt2 && '9' >= charAt2) {
                i2 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i2 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i2 = 63;
            } else {
                if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                    return null;
                }
            }
            i6 = (i6 << 6) | i2;
            i5++;
            if (i5 % 4 == 0) {
                int i9 = i7 + 1;
                bArr[i7] = (byte) (i6 >> 16);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i6 >> 8);
                bArr[i10] = (byte) i6;
                i7 = i10 + 1;
            }
        }
        int i11 = i5 % 4;
        if (i11 != 1) {
            if (i11 == 2) {
                bArr[i7] = (byte) ((i6 << 12) >> 16);
                i7++;
            } else if (i11 == 3) {
                int i12 = i6 << 6;
                int i13 = i7 + 1;
                bArr[i7] = (byte) (i12 >> 16);
                i7 = i13 + 1;
                bArr[i13] = (byte) (i12 >> 8);
            }
            if (i7 == i4) {
                return bArr;
            }
            byte[] bArr2 = new byte[i7];
            System.arraycopy(bArr, 0, bArr2, 0, i7);
            return bArr2;
        }
        return null;
    }

    public static String b(byte[] bArr, byte[] bArr2, int i2) {
        byte[] bArr3 = (i2 & 1) != 0 ? a : null;
        if (bArr == null) {
            h.o.c.g.f("$receiver");
            throw null;
        } else if (bArr3 != null) {
            byte[] bArr4 = new byte[((bArr.length + 2) / 3) * 4];
            int length = bArr.length - (bArr.length % 3);
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                int i5 = i3 + 1;
                byte b = bArr[i3];
                int i6 = i5 + 1;
                byte b2 = bArr[i5];
                int i7 = i6 + 1;
                byte b3 = bArr[i6];
                int i8 = i4 + 1;
                bArr4[i4] = bArr3[(b & 255) >> 2];
                int i9 = i8 + 1;
                bArr4[i8] = bArr3[((b & 3) << 4) | ((b2 & 255) >> 4)];
                int i10 = i9 + 1;
                bArr4[i9] = bArr3[((b2 & ap.f3120m) << 2) | ((b3 & 255) >> 6)];
                i4 = i10 + 1;
                bArr4[i10] = bArr3[b3 & 63];
                i3 = i7;
            }
            int length2 = bArr.length - length;
            if (length2 == 1) {
                byte b4 = bArr[i3];
                int i11 = i4 + 1;
                bArr4[i4] = bArr3[(b4 & 255) >> 2];
                int i12 = i11 + 1;
                bArr4[i11] = bArr3[(b4 & 3) << 4];
                byte b5 = (byte) 61;
                bArr4[i12] = b5;
                bArr4[i12 + 1] = b5;
            } else if (length2 == 2) {
                int i13 = i3 + 1;
                byte b6 = bArr[i3];
                byte b7 = bArr[i13];
                int i14 = i4 + 1;
                bArr4[i4] = bArr3[(b6 & 255) >> 2];
                int i15 = i14 + 1;
                bArr4[i14] = bArr3[((b6 & 3) << 4) | ((b7 & 255) >> 4)];
                bArr4[i15] = bArr3[(b7 & ap.f3120m) << 2];
                bArr4[i15 + 1] = (byte) 61;
            }
            return new String(bArr4, h.s.a.a);
        } else {
            h.o.c.g.f("map");
            throw null;
        }
    }
}
