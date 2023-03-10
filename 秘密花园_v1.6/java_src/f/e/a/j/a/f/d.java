package f.e.a.j.a.f;

import i.x;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: AMJUtils.java */
/* loaded from: classes.dex */
public class d {
    public static String a;

    static {
        f.e.a.e.a("VABbU1wQDwsVB1FXQFlVUgZQVgZdRwxXRV8AAhxcUV4=");
    }

    public static String a(String str) {
        String valueOf;
        String str2 = x.f(str).f6858e;
        String substring = str.substring(str.indexOf(f.e.a.e.a("VA0O")) + 3);
        String substring2 = String.valueOf(System.currentTimeMillis() + 300000).substring(0, valueOf.length() - 3);
        String str3 = "";
        try {
            for (byte b : MessageDigest.getInstance(f.e.a.e.a("eiZW")).digest((f.e.a.e.a("VABbU1wQDwsVB1FXQFlVUgZQVgZdRwxXRV8AAhxcUV4=") + str2 + substring + substring2).getBytes())) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    hexString = f.e.a.e.a("Bw==") + hexString;
                }
                str3 = str3 + hexString;
            }
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
        StringBuilder o = f.b.a.a.a.o(str);
        o.append(f.e.a.e.a("CBUQNw4QS1YHWw=="));
        o.append(str3);
        o.append(f.e.a.e.a("ERUQMAIeXA4="));
        o.append(substring2);
        return o.toString();
    }
}
