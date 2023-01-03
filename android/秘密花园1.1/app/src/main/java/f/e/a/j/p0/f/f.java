package f.e.a.j.p0.f;

import com.umeng.commonsdk.proguard.ap;
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
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: XiamiInterceptor.java */
/* loaded from: classes.dex */
public class f implements y {
    public static char[] b(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[32];
        for (int i2 = 0; i2 < 32; i2 += 2) {
            byte b = bArr[i2 / 2];
            cArr2[i2] = cArr[(b >>> 4) & 15];
            cArr2[i2 + 1] = cArr[b & ap.f3041m];
        }
        return cArr2;
    }

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        String str;
        e0 S = aVar.S();
        if (S != null) {
            new LinkedHashMap();
            x xVar = S.b;
            String str2 = S.f6432c;
            g0 g0Var = S.f6434e;
            if (S.f6435f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6435f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d2 = S.f6433d.d();
            long currentTimeMillis = System.currentTimeMillis();
            String a = f.e.a.e.a("QwsOARgHWF4D");
            String valueOf = String.valueOf(currentTimeMillis);
            if (valueOf != null) {
                d2.a(a, valueOf);
                String a2 = f.e.a.e.a("RAsECg==");
                try {
                    str = new String(b(MessageDigest.getInstance(f.e.a.e.a("eiZW")).digest((currentTimeMillis + f.e.a.e.a("VAECUQkSXwQSBAZXHl1XXgdSOi0+O3BmOwpZCxMACQcFUlAFUkBdBEFQBFZAWVVdBlM=")).getBytes(f.e.a.e.a("YjYlSVM=")))));
                } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
                    str = "";
                }
                d2.a(a2, str);
                if (xVar != null) {
                    h0 d3 = aVar.d(new e0(xVar, str2, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
                    String H = d3.f6452h.H();
                    try {
                        String string = new JSONObject(H).getString(f.e.a.e.a("UwMXBQ=="));
                        String a3 = a.a(string);
                        H = H.replace(f.e.a.e.a("FQ==") + string + f.e.a.e.a("FQ=="), a3);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    i0 F = i0.F(H, d3.f6452h.E());
                    e0 e0Var = d3.b;
                    c0 c0Var = d3.f6447c;
                    int i2 = d3.f6449e;
                    String str3 = d3.f6448d;
                    v vVar = d3.f6450f;
                    w.a d4 = d3.f6451g.d();
                    h0 h0Var = d3.f6453i;
                    h0 h0Var2 = d3.f6454j;
                    h0 h0Var3 = d3.f6455k;
                    long j2 = d3.f6456l;
                    long j3 = d3.f6457m;
                    i.m0.d.c cVar = d3.n;
                    if (i2 >= 0) {
                        if (e0Var != null) {
                            if (c0Var != null) {
                                if (str3 != null) {
                                    return new h0(e0Var, c0Var, str3, i2, vVar, d4.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                                }
                                throw new IllegalStateException("message == null".toString());
                            }
                            throw new IllegalStateException("protocol == null".toString());
                        }
                        throw new IllegalStateException("request == null".toString());
                    }
                    throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
                }
                throw new IllegalStateException("url == null".toString());
            }
            g.f("value");
            throw null;
        }
        throw null;
    }
}
