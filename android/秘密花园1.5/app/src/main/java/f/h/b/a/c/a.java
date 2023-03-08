package f.h.b.a.c;

/* compiled from: StringFogImpl.java */
/* loaded from: classes.dex */
public final class a {
    public static byte[] a(byte[] bArr, String str) {
        int length = bArr.length;
        int length2 = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 >= length2) {
                i3 = 0;
            }
            bArr[i2] = (byte) (bArr[i2] ^ str.charAt(i3));
            i2++;
            i3++;
        }
        return bArr;
    }
}
