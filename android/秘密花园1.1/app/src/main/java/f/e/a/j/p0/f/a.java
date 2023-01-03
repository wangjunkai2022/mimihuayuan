package f.e.a.j.p0.f;

import android.util.Base64;
import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AES.java */
/* loaded from: classes.dex */
public class a {
    public static String a = SignHelper.getXiaMiKey(App.b);
    public static String b = SignHelper.getXiaMiIv(App.b);

    public static String a(String str) {
        try {
            Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
            cipher.init(2, new SecretKeySpec(a.getBytes(), f.e.a.e.a("dicw")), new IvParameterSpec(b.getBytes()));
            return new String(cipher.doFinal(Base64.decode(str, 2)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }
}
