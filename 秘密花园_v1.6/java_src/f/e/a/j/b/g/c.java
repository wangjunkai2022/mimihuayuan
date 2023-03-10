package f.e.a.j.b.g;

import android.text.TextUtils;
import android.util.Base64;
import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import f.e.a.e;
import f.e.a.k.f;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.y;
import j.g;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AvboboInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    public static String a = SignHelper.getAvbobo(App.b);

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        String str;
        String str2;
        b c2;
        String str3;
        e0 S = aVar.S();
        if (S != null) {
            e0.a aVar2 = new e0.a(S);
            String str4 = aVar.S().b.f6863j;
            f.a();
            String replace = str4.replace(b.c().b(), "");
            if (replace.contains(e.a("CA==")) && !replace.contains(e.a("GAUUSxkWSh4RCVYIVwgMREFTTAUbGhZSAxZrFR0ZDB5FAQYX")) && !replace.contains(e.a("GAUUSxkWSh4RCVYIVwgMREFQTAUbGhZBEghfOBoFAhlTEUwTDhZS")) && !replace.contains(e.a("GAUUSxkWSh4RCVYIVwgMREFQTAUbGhZBEghfOBoFAhlTEUwJBB1NWw=="))) {
                String[] split = replace.split(e.a("bF0+"));
                String str5 = split[0];
                String str6 = split[1];
                str = (new String(Base64.encode(str5.getBytes(), 2)) + e.a("aA==") + new String(Base64.encode(str6.getBytes(), 2))).replace(e.a("Cg=="), "");
            } else {
                str = new String(Base64.encode(replace.getBytes(), 2));
            }
            g0 g0Var = aVar.S().f6518e;
            if (g0Var != null) {
                g gVar = new g();
                g0Var.e(gVar);
                str2 = gVar.I();
            } else {
                str2 = "";
            }
            String valueOf = String.valueOf(System.currentTimeMillis());
            try {
                StringBuilder sb = new StringBuilder(new BigInteger(1, MessageDigest.getInstance(e.a("WgZW")).digest((b.c().a() + e.a("AVEFVlNLDgoSUAdXTlxTUwcBVFJdEgkLEVQCX08MUlt3BwVRXUsJVhADA1YZCQUJBFABV11LAFYQAlJSTlsCDgci") + valueOf + e.a("dw==") + str + e.a("dw==") + str2 + e.a("AlpVXVoXCVESBQVUTFNXWgYEUlJcSl8AQFUEA0pZUwk=")).getBytes())).toString(16));
                for (int i2 = 0; i2 < 32 - sb.length(); i2++) {
                    sb.insert(0, e.a("Bw=="));
                }
                String sb2 = sb.toString();
                aVar2.i(b.c().b() + e.a("GA==") + str);
                aVar2.a(e.a("VhITOwUcTg=="), valueOf);
                aVar2.a(e.a("VhcXDAQBUEkSEl0IFg=="), TextUtils.isEmpty(b.c().f3901c) ? "" : e.a("dQcCFg4BGQ==") + c2.f3901c);
                aVar2.a(e.a("VhITOxgaXl0="), sb2);
                aVar2.a(e.a("VhITOx4dUEIGAw=="), b.c().a());
                h0 d2 = aVar.d(aVar2.b());
                String e2 = d2.e(e.a("UgwASR8KSVY="));
                String H = d2.f6536h.H();
                try {
                    H = new JSONObject(H).getString(e.a("VQ0HHQ=="));
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
                if (e.a("VQMQAV1H").equals(e2)) {
                    str3 = new String(Base64.decode(H.getBytes(), 2));
                } else {
                    try {
                        Cipher cipher = Cipher.getInstance(e.a("dicwSy4wexwjLXc0TzoCD1MLDQM="));
                        cipher.init(2, new SecretKeySpec(a.getBytes(), e.a("dicw")));
                        H = new String(cipher.doFinal(Base64.decode(H, 2)));
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    str3 = H;
                }
                i0 F = i0.F(str3, d2.f6536h.E());
                e0 e0Var = d2.b;
                c0 c0Var = d2.f6531c;
                int i3 = d2.f6533e;
                String str7 = d2.f6532d;
                v vVar = d2.f6534f;
                w.a d3 = d2.f6535g.d();
                h0 h0Var = d2.f6537i;
                h0 h0Var2 = d2.f6538j;
                h0 h0Var3 = d2.f6539k;
                long j2 = d2.f6540l;
                long j3 = d2.f6541m;
                i.m0.d.c cVar = d2.n;
                if (i3 >= 0) {
                    if (e0Var != null) {
                        if (c0Var != null) {
                            if (str7 != null) {
                                return new h0(e0Var, c0Var, str7, i3, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                            }
                            throw new IllegalStateException("message == null".toString());
                        }
                        throw new IllegalStateException("protocol == null".toString());
                    }
                    throw new IllegalStateException("request == null".toString());
                }
                throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i3).toString());
            } catch (NoSuchAlgorithmException unused) {
                throw new RuntimeException(e.a("0dDCgvf60YzqgozNFQ5WjJn1hdf+nIWy"));
            }
        }
        throw null;
    }
}
