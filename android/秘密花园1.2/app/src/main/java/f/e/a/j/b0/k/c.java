package f.e.a.j.b0.k;

import android.text.TextUtils;
import android.util.Base64;
import f.e.a.e;
import h.o.c.g;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: LutubeInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        e0 S = aVar.S();
        String str = null;
        if (S != null) {
            new LinkedHashMap();
            x xVar = S.b;
            String str2 = S.f6507c;
            g0 g0Var = S.f6509e;
            if (S.f6510f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6510f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d2 = S.f6508d.d();
            d2.f(e.a("dgEAARsHFHYdBVsDEQQE"));
            String a = e.a("dA0MDwIW");
            String str3 = f.e.a.k.b.t;
            if (str3 != null) {
                d2.a(a, str3);
                if (xVar != null) {
                    h0 d3 = aVar.d(new e0(xVar, str2, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
                    String H = d3.f6527h.H();
                    String e2 = d3.e(e.a("b081MAoU"));
                    if (!TextUtils.isEmpty(e2)) {
                        String str4 = a.a;
                        try {
                            StringBuilder sb = new StringBuilder(new BigInteger(1, MessageDigest.getInstance(e.a("WgZW")).digest(e2.getBytes())).toString(16));
                            for (int i2 = 0; i2 < 32 - sb.length(); i2++) {
                                sb.insert(0, e.a("Bw=="));
                            }
                            String substring = sb.substring(8, 24);
                            e.a("dicwSygxehwjLXc0TToCD1MLDQM=");
                            e.a("YjYlSVM=");
                            try {
                                byte[] decode = Base64.decode(H.getBytes(), 0);
                                SecretKeySpec secretKeySpec = new SecretKeySpec(str4.getBytes(e.a("YjYlSVM=")), e.a("dicw"));
                                IvParameterSpec ivParameterSpec = new IvParameterSpec(substring.getBytes(e.a("YjYlSVM=")));
                                Cipher cipher = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
                                cipher.init(2, secretKeySpec, ivParameterSpec);
                                str = new String(cipher.doFinal(decode), e.a("YjYlSVM="));
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                            H = str;
                        } catch (NoSuchAlgorithmException unused) {
                            throw new RuntimeException(e.a("0dDCgvf60YzqgozNFQ5WjJn1hdf+nIWy"));
                        }
                    }
                    i0 F = i0.F(H, d3.f6527h.E());
                    e0 e0Var = d3.b;
                    c0 c0Var = d3.f6522c;
                    int i3 = d3.f6524e;
                    String str5 = d3.f6523d;
                    v vVar = d3.f6525f;
                    w.a d4 = d3.f6526g.d();
                    h0 h0Var = d3.f6528i;
                    h0 h0Var2 = d3.f6529j;
                    h0 h0Var3 = d3.f6530k;
                    long j2 = d3.f6531l;
                    long j3 = d3.f6532m;
                    i.m0.d.c cVar = d3.n;
                    if (i3 >= 0) {
                        if (e0Var != null) {
                            if (c0Var != null) {
                                if (str5 != null) {
                                    return new h0(e0Var, c0Var, str5, i3, vVar, d4.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                                }
                                throw new IllegalStateException("message == null".toString());
                            }
                            throw new IllegalStateException("protocol == null".toString());
                        }
                        throw new IllegalStateException("request == null".toString());
                    }
                    throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i3).toString());
                }
                throw new IllegalStateException("url == null".toString());
            }
            g.f("value");
            throw null;
        }
        throw null;
    }
}
