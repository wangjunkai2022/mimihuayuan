package f.e.a.j.e0.j;

import android.util.Base64;
import f.e.a.e;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AES.java */
/* loaded from: classes.dex */
public class b {
    public static final String a = e.a("eiZW");
    public static final String b = e.a("dicwSygxehwjLXc0TToCD1MLDQM=");

    static {
        e.a("YjYlSVM=");
    }

    public static byte[] a(String str) {
        return Base64.decode(str, 0);
    }

    public static String b(String str) {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(a(e.a("XFdXMggZW0NFJE01Ti5bWFIrDBwMBAQO")));
        SecretKeySpec secretKeySpec = new SecretKeySpec(a(e.a("X1UPDz46CVgRVAEyCwhQGmMkLwENJ18LEU0MLwtYOl0EESIqJQFYZh5JZVo=")), e.a("dicw"));
        try {
            Cipher instance = Cipher.getInstance(b);
            instance.init(2, secretKeySpec, ivParameterSpec);
            return new String(instance.doFinal(a(str)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String c(String str, String str2) {
        String str3;
        try {
            MessageDigest instance = MessageDigest.getInstance(a);
            instance.update(str2.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = e.a("Bw==") + hexString;
                }
                sb.append(hexString);
            }
            str3 = sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            str3 = "";
        }
        String substring = str3.substring(8, 24);
        String a2 = e.a("VgdWVg1EX1UXVFADTlwBCgJVV1cJEQgLQ1cMXxpTWlo=");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(substring.getBytes());
        SecretKeySpec secretKeySpec = new SecretKeySpec(a2.getBytes(), e.a("dicw"));
        try {
            Cipher instance2 = Cipher.getInstance(b);
            instance2.init(2, secretKeySpec, ivParameterSpec);
            return new String(instance2.doFinal(a(str)));
        } catch (Exception e3) {
            e3.printStackTrace();
            return str;
        }
    }
}
