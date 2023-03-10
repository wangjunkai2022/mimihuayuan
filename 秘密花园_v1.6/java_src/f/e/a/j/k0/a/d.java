package f.e.a.j.k0.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.appcompat.app.AlertDialog;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import com.comeback.data.ui.main.bean.ConfigBean;
import f.e.a.e;
import f.e.a.k.j;
import f.i.b.r;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Utils.java */
/* loaded from: classes.dex */
public class d {
    public static String a = SignHelper.getSex81(App.b);
    public static String b = SignHelper.getSex82(App.b);

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public static class a implements DialogInterface.OnClickListener {
        public final /* synthetic */ Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            ConfigBean configBean = App.f104e;
            if (configBean == null) {
                ArrayList<String> l2 = h.l();
                this.a.startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(l2.size() != 0 ? l2.get(new Random().nextInt(l2.size())) : "")));
                return;
            }
            this.a.startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(configBean.getNewUrl())));
        }
    }

    public static Map<String, String> a(String str) {
        r rVar = new r();
        rVar.e(e.a("QQ=="), e.a("Xw0WFw4sXVYHB10L"));
        rVar.d(e.a("QgsH"), 155160579);
        rVar.e(e.a("Xw0WFw4sUFc="), str);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("RQcSEQ4ATQ=="), e(rVar.toString()));
        return hashMap;
    }

    public static Map<String, String> b(int i2, int i3, int i4) {
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        rVar.d(e.a("RwMEATQAUEkW"), 15);
        rVar.e(e.a("QQ=="), e.a("Xw0WFw4sVVoAEg=="));
        rVar.d(e.a("VAsXHTQaXQ=="), Integer.valueOf(i4));
        rVar.d(e.a("RxAMEjQaXQ=="), Integer.valueOf(i3));
        rVar.d(e.a("QgsH"), 155160579);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("RQcSEQ4ATQ=="), e(rVar.toString()));
        return hashMap;
    }

    public static void c(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        j b2 = j.b();
        if (currentTimeMillis - b2.a.getLong(e.a("UQsRFx8sTVoeAw=="), -1L) < 432000000) {
            return;
        }
        try {
            if (Integer.valueOf(h.S(context).replace(e.a("GQ=="), "")).intValue() > 50) {
                f(context);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            f(context);
        }
    }

    public static String d(String str) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(b.getBytes(e.a("QhYFSVM=")), e.a("dicw"));
        Cipher cipher = Cipher.getInstance(e.a("dicwSygxehw9CWQGHA4KBVA="));
        cipher.init(2, secretKeySpec, new IvParameterSpec(a.getBytes(e.a("QhYFSVM="))));
        try {
            return new String(cipher.doFinal(Base64.decode(str, 0))).trim();
        } catch (Exception e2) {
            PrintStream printStream = System.out;
            e2.toString();
            return "";
        }
    }

    public static String e(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(b.getBytes(e.a("QhYFSVM=")), e.a("dicw"));
            Cipher cipher = Cipher.getInstance(e.a("dicwSygxehw9CWQGHA4KBVA="));
            cipher.init(1, secretKeySpec, new IvParameterSpec(a.getBytes(e.a("QhYFSVM="))));
            byte[] bytes = str.getBytes(e.a("QhYFSVM="));
            int length = bytes.length;
            while (length % 16 != 0) {
                length++;
            }
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 < bytes.length) {
                    bArr[i2] = bytes[i2];
                } else {
                    bArr[i2] = 0;
                }
            }
            return new String(Base64.encode(cipher.doFinal(bArr), 2), e.a("QhYFSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void f(Context context) {
        new AlertDialog.Builder(context).setTitle(e.a("38/Fgfr5")).setMessage(e.a("09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QUTHKM6/rT2c+D8fcZcgMW0N/1j/PA09nYgNbm3Y3Ggb7In/7Ljb/Viv77lJ6ylPywg8PJhMu2jd/oj8qm18vr0Nvij+/u0vLIgNDI3Y7mgIHmntrwjr39i+fWnIW/m8mDgezUhtS0ht7bjOeR0PPk")).setNegativeButton(e.a("09/cg//b357Qgb3v"), new a(context)).setCancelable(false).show();
    }
}
