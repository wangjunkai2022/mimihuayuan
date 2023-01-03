package f.e.a.j.p0.f;

import android.util.Base64;
import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import f.e.a.e;
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
            Cipher instance = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
            instance.init(2, new SecretKeySpec(a.getBytes(), e.a("dicw")), new IvParameterSpec(b.getBytes()));
            return new String(instance.doFinal(Base64.decode(str, 2)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }
}
