package f.e.a.j.a.f;

import f.b.a.a.a;
import f.e.a.e;
import i.x;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: AMJUtils.java */
/* loaded from: classes.dex */
public class d {
    public static String a;

    static {
        e.a("VABbU1wQDwsVB1FXQFlVUgZQVgZdRwxXRV8AAhxcUV4=");
    }

    public static String a(String str) {
        String str2 = x.f(str).f6774e;
        String substring = str.substring(str.indexOf(e.a("VA0O")) + 3);
        String valueOf = String.valueOf(System.currentTimeMillis() + 300000);
        String substring2 = valueOf.substring(0, valueOf.length() - 3);
        String str3 = "";
        try {
            for (byte b : MessageDigest.getInstance(e.a("eiZW")).digest((e.a("VABbU1wQDwsVB1FXQFlVUgZQVgZdRwxXRV8AAhxcUV4=") + str2 + substring + substring2).getBytes())) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    hexString = e.a("Bw==") + hexString;
                }
                str3 = str3 + hexString;
            }
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
        StringBuilder o = a.o(str);
        o.append(e.a("CBUQNw4QS1YHWw=="));
        o.append(str3);
        o.append(e.a("ERUQMAIeXA4="));
        o.append(substring2);
        return o.toString();
    }
}
