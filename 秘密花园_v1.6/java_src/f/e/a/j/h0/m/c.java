package f.e.a.j.h0.m;

import android.text.TextUtils;
import android.util.Base64;
import c.a.a.b.g.h;
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
        String str = S.b.f6863j;
        if (!str.contains(f.e.a.e.a("UQMQEAccXlod")) && !str.contains(f.e.a.e.a("UQMQEAoGTVs="))) {
            h0 d2 = aVar.d(S);
            String H = d2.f6536h.H();
            try {
                byte[] decode = Base64.decode(H, 0);
                String b = d2.f6535g.b(f.e.a.e.a("T08VEAoU"));
                if (TextUtils.isEmpty(b)) {
                    b = f.e.a.e.a("DlNSUVhDDwpD");
                }
                String substring = h.T0(b).substring(8, 24);
                SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(f.e.a.e.a(str.contains(f.e.a.e.a("Xw0QEDQDTlI=")) ? "eVIpJh4AXHk4KXAKMiw3OVUPEBZfOldeABJsJU48NApfKQQGPSFpWzshQ1o=" : "AQdWUloQWldHB1UDHVgFDlNWVlwPR11SRVdRUE5dVFs="), 0), f.e.a.e.a("dicw"));
                IvParameterSpec ivParameterSpec = new IvParameterSpec(substring.getBytes());
                Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSygxehwjLXc0TzoCD1MLDQM="));
                cipher.init(2, secretKeySpec, ivParameterSpec);
                H = new String(cipher.doFinal(decode));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            i0 F = i0.F(H, d2.f6536h.E());
            e0 e0Var = d2.b;
            c0 c0Var = d2.f6531c;
            int i2 = d2.f6533e;
            String str2 = d2.f6532d;
            v vVar = d2.f6534f;
            w.a d3 = d2.f6535g.d();
            h0 h0Var = d2.f6537i;
            h0 h0Var2 = d2.f6538j;
            h0 h0Var3 = d2.f6539k;
            long j2 = d2.f6540l;
            long j3 = d2.f6541m;
            i.m0.d.c cVar = d2.n;
            if (i2 >= 0) {
                if (e0Var != null) {
                    if (c0Var != null) {
                        if (str2 != null) {
                            return new h0(e0Var, c0Var, str2, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
        }
        return aVar.d(S);
    }
}
