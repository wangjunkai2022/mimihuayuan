package f.e.a.j.u.e;

import android.util.Base64;
import com.umeng.commonsdk.proguard.ap;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Aes.java */
/* loaded from: classes.dex */
public class a {
    public static String a = f.e.a.e.a("XDQiFx4+dkk6CGQhPQwqJA==");
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(String str) {
        try {
            Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSy4wexwjLXc0TzoCD1MLDQM="));
            cipher.init(2, new SecretKeySpec(a.getBytes(), f.e.a.e.a("dicw")));
            return new String(cipher.doFinal(Base64.decode(str, 2)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static InputStream b(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSy4wexwjLXc0TzoCD1MLDQM="));
            cipher.init(2, new SecretKeySpec(f.e.a.e.a("QDIoXCgLblI8EWQSLhAEGA==").getBytes(), f.e.a.e.a("dicw")));
            byte[] doFinal = cipher.doFinal(byteArray);
            if (doFinal != null) {
                return new ByteArrayInputStream(doFinal);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return inputStream;
    }

    public static String c(String str) {
        try {
            Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSy4wexwjLXc0TzoCD1MLDQM="));
            cipher.init(1, new SecretKeySpec(a.getBytes(), f.e.a.e.a("dicw")));
            return new String(Base64.encode(cipher.doFinal(str.getBytes()), 2));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String d(String str) {
        int length;
        if (str == null || str.length() <= 0) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(f.e.a.e.a("eiZW"));
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            if (digest != null && (length = digest.length) > 0) {
                char[] cArr = new char[length << 1];
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    int i4 = i2 + 1;
                    char[] cArr2 = b;
                    cArr[i2] = cArr2[(digest[i3] >> 4) & 15];
                    i2 = i4 + 1;
                    cArr[i4] = cArr2[digest[i3] & ap.f3120m];
                }
                return new String(cArr);
            }
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
