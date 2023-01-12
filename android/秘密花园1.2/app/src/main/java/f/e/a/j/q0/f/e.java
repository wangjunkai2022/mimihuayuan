package f.e.a.j.q0.f;

import com.umeng.commonsdk.proguard.ap;
import h.o.c.g;
import i.e0;
import i.g0;
import i.h0;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: XiaMiPlayerInterceptor.java */
/* loaded from: classes.dex */
public class e implements y {
    public static char[] b(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[32];
        for (int i2 = 0; i2 < 32; i2 += 2) {
            byte b = bArr[i2 / 2];
            cArr2[i2] = cArr[(b >>> 4) & 15];
            cArr2[i2 + 1] = cArr[b & ap.f3116m];
        }
        return cArr2;
    }

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        e0 S = aVar.S();
        if (S != null) {
            new LinkedHashMap();
            x xVar = S.b;
            String str = S.f6507c;
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
            String str2 = "";
            String replace = new URL(aVar.S().b.f6854j).getPath().replaceFirst(f.e.a.e.a("GA=="), "").replace(f.e.a.e.a("GA=="), f.e.a.e.a("Gw=="));
            long currentTimeMillis = System.currentTimeMillis();
            String a = f.e.a.e.a("VBEXDQYWSkcSC0Q=");
            String valueOf = String.valueOf(currentTimeMillis);
            if (valueOf != null) {
                d2.a(a, valueOf);
                String a2 = f.e.a.e.a("VBE=");
                try {
                    str2 = new String(b(MessageDigest.getInstance(f.e.a.e.a("eiZW")).digest((currentTimeMillis + replace + f.e.a.e.a("RhUGFhILTVkdDlMSCAsQBlMMFgUCAFNdCxNV")).getBytes(f.e.a.e.a("YjYlSVM=")))));
                } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
                }
                d2.a(a2, str2);
                if (xVar != null) {
                    return aVar.d(new e0(xVar, str, d2.d(), g0Var, i.m0.b.E(linkedHashMap)));
                }
                throw new IllegalStateException("url == null".toString());
            }
            g.f("value");
            throw null;
        }
        throw null;
    }
}
