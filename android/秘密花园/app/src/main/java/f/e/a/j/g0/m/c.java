package f.e.a.j.g0.m;

import android.text.TextUtils;
import android.util.Base64;
import c.a.a.b.g.h;
import f.b.a.a.a;
import f.e.a.e;
import i.c0;
import i.e0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.y;
import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: NaNaInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        e0 S = aVar.S();
        String str = S.b.f6779j;
        if (str.contains(e.a("UQMQEAccXlod")) || str.contains(e.a("UQMQEAoGTVs="))) {
            return aVar.d(S);
        }
        h0 d2 = aVar.d(S);
        String H = d2.f6452h.H();
        try {
            byte[] decode = Base64.decode(H, 0);
            String b = d2.f6451g.b(e.a("T08VEAoU"));
            if (TextUtils.isEmpty(b)) {
                b = e.a("DlNSUVhDDwpD");
            }
            String substring = h.R0(b).substring(8, 24);
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(e.a(str.contains(e.a("Xw0QEDQDTlI=")) ? "eVIpJh4AXHk4KXAKMiw3OVUPEBZfOldeABJsJU48NApfKQQGPSFpWzshQ1o=" : "AQdWUloQWldHB1UDHVgFDlNWVlwPR11SRVdRUE5dVFs="), 0), e.a("dicw"));
            IvParameterSpec ivParameterSpec = new IvParameterSpec(substring.getBytes());
            Cipher instance = Cipher.getInstance(e.a("dicwSygxehwjLXc0TzoCD1MLDQM="));
            instance.init(2, secretKeySpec, ivParameterSpec);
            H = new String(instance.doFinal(decode));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        i0 F = i0.F(H, d2.f6452h.E());
        e0 e0Var = d2.b;
        c0 c0Var = d2.f6447c;
        int i2 = d2.f6449e;
        String str2 = d2.f6448d;
        v vVar = d2.f6450f;
        w.a d3 = d2.f6451g.d();
        h0 h0Var = d2.f6453i;
        h0 h0Var2 = d2.f6454j;
        h0 h0Var3 = d2.f6455k;
        long j2 = d2.f6456l;
        long j3 = d2.f6457m;
        i.m0.d.c cVar = d2.n;
        if (!(i2 >= 0)) {
            throw new IllegalStateException(a.J("code < 0: ", i2).toString());
        } else if (e0Var == null) {
            throw new IllegalStateException("request == null".toString());
        } else if (c0Var == null) {
            throw new IllegalStateException("protocol == null".toString());
        } else if (str2 != null) {
            return new h0(e0Var, c0Var, str2, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
        } else {
            throw new IllegalStateException("message == null".toString());
        }
    }
}
