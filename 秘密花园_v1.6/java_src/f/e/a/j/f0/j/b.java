package f.e.a.j.f0.j;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: AES.java */
/* loaded from: classes.dex */
public class b {
    public static final String a = f.e.a.e.a("eiZW");
    public static final String b;

    static {
        f.e.a.e.a("YjYlSVM=");
        b = f.e.a.e.a("dicwSygxehwjLXc0TToCD1MLDQM=");
    }

    public static byte[] a(String str) {
        return Base64.decode(str, 0);
    }

    public static String b(String str) {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(a(f.e.a.e.a("XFdXMggZW0NFJE01Ti5bWFIrDBwMBAQO")));
        SecretKeySpec secretKeySpec = new SecretKeySpec(a(f.e.a.e.a("X1UPDz46CVgRVAEyCwhQGmMkLwENJ18LEU0MLwtYOl0EESIqJQFYZh5JZVo=")), f.e.a.e.a("dicw"));
        try {
            Cipher cipher = Cipher.getInstance(b);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(a(str)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String c(String str, String str2) {
        String str3;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(a);
            messageDigest.update(str2.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = f.e.a.e.a("Bw==") + hexString;
                }
                sb.append(hexString);
            }
            str3 = sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            str3 = "";
        }
        String substring = str3.substring(8, 24);
        String a2 = f.e.a.e.a("VgdWVg1EX1UXVFADTlwBCgJVV1cJEQgLQ1cMXxpTWlo=");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(substring.getBytes());
        SecretKeySpec secretKeySpec = new SecretKeySpec(a2.getBytes(), f.e.a.e.a("dicw"));
        try {
            Cipher cipher = Cipher.getInstance(b);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(a(str)));
        } catch (Exception e3) {
            e3.printStackTrace();
            return str;
        }
    }
}
