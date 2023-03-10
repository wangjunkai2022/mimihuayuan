package f.e.a.j.d0.m;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import f.e.a.e;
import java.nio.charset.Charset;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: C.java */
/* loaded from: classes.dex */
public class b {
    public static String a = SignHelper.getMM1(App.b);
    public static String b = e.a("dicwSygxehwjLXc0TToCD1MLDQM=");

    /* renamed from: c  reason: collision with root package name */
    public static String f3921c = e.a("dicw");

    /* renamed from: d  reason: collision with root package name */
    public static String f3922d = SignHelper.getMM2(App.b);

    public static String a(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(f3922d.getBytes(e.a("QhYFSVM=")), f3921c);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(a.getBytes(e.a("QhYFSVM=")));
            Cipher cipher = Cipher.getInstance(b);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            byte[] doFinal = cipher.doFinal(str.getBytes(Charset.forName(e.a("QhYFSVM="))));
            StringBuilder sb = new StringBuilder();
            for (byte b2 : doFinal) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() < 2) {
                    sb.append(e.a("Bw=="));
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String b(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(f3922d.getBytes(e.a("QhYFSVM=")), f3921c);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(a.getBytes(e.a("QhYFSVM=")));
            Cipher cipher = Cipher.getInstance(b);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            String upperCase = str.toUpperCase();
            int length = upperCase.length() / 2;
            char[] charArray = upperCase.toCharArray();
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                char c2 = charArray[i3 + 1];
                bArr[i2] = (byte) ((((byte) e.a("B1NRV19GDwRLX3UlOy4mLQ==").indexOf(charArray[i3])) << 4) | ((byte) e.a("B1NRV19GDwRLX3UlOy4mLQ==").indexOf(c2)));
            }
            return new String(cipher.doFinal(bArr), e.a("QhYFSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
