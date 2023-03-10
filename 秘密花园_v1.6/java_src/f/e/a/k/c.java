package f.e.a.k;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: EncryptUtils.java */
/* loaded from: classes.dex */
public class c {
    public static byte[] a(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return e(bArr, bArr2, f.e.a.e.a("dicw"), str, bArr3, false);
    }

    public static byte[] b(String str, byte[] bArr, String str2, byte[] bArr2) {
        boolean z;
        byte[] bArr3;
        if (str != null) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2))) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            bArr3 = null;
        } else {
            int length2 = str.length();
            if (length2 % 2 != 0) {
                str = f.e.a.e.a("Bw==") + str;
                length2++;
            }
            char[] charArray = str.toUpperCase().toCharArray();
            byte[] bArr4 = new byte[length2 >> 1];
            for (int i3 = 0; i3 < length2; i3 += 2) {
                bArr4[i3 >> 1] = (byte) ((d(charArray[i3]) << 4) | d(charArray[i3 + 1]));
            }
            bArr3 = bArr4;
        }
        return a(bArr3, bArr, str2, bArr2);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return Base64.encode(e(bArr, bArr2, f.e.a.e.a("dicw"), str, bArr3, true), 2);
    }

    public static int d(char c2) {
        if (c2 < '0' || c2 > '9') {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException();
            }
            return (c2 - 'A') + 10;
        }
        return c2 - '0';
    }

    public static byte[] e(byte[] bArr, byte[] bArr2, String str, String str2, byte[] bArr3, boolean z) {
        SecretKey secretKeySpec;
        if (bArr != null && bArr.length != 0 && bArr2 != null && bArr2.length != 0) {
            try {
                if (f.e.a.e.a("cycw").equals(str)) {
                    secretKeySpec = SecretKeyFactory.getInstance(str).generateSecret(new DESKeySpec(bArr2));
                } else {
                    secretKeySpec = new SecretKeySpec(bArr2, str);
                }
                Cipher cipher = Cipher.getInstance(str2);
                int i2 = 1;
                if (bArr3 != null && bArr3.length != 0) {
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
                    if (!z) {
                        i2 = 2;
                    }
                    cipher.init(i2, secretKeySpec, ivParameterSpec);
                    return cipher.doFinal(bArr);
                }
                i2 = 2;
                cipher.init(i2, secretKeySpec);
                return cipher.doFinal(bArr);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }
}
