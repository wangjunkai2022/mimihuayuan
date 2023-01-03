package f.e.a.j.m0.c;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import f.i.b.c0.u;
import f.i.b.j;
import i.a0;
import i.e0;
import i.g0;
import i.h0;
import i.w;
import i.x;
import i.y;
import j.g;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: SignRequestInterceptor.java */
/* loaded from: classes.dex */
public class e implements y {
    public static byte[] b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(f.e.a.e.a("eiZW"));
            messageDigest.reset();
            messageDigest.update(str.getBytes(f.e.a.e.a("YjYlSVM=")));
            return messageDigest.digest();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String c(e0 e0Var, TreeMap treeMap) {
        TreeMap treeMap2 = new TreeMap(new d());
        treeMap2.putAll(treeMap);
        treeMap2.put(f.e.a.e.a("QwsOATgHWF4DNUAV"), e0Var.b(f.e.a.e.a("QwsOATgHWF4DNUAV")));
        treeMap2.put(f.e.a.e.a("RQMNAAQeakcB"), e0Var.b(f.e.a.e.a("RQMNAAQeakcB")));
        treeMap2.put(f.e.a.e.a("UwcVDQgWcFc="), e0Var.b(f.e.a.e.a("UwcVDQgWcFc=")));
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap2.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (!TextUtils.equals(f.e.a.e.a("RwMEATgaQ1Y="), str) && !TextUtils.equals(f.e.a.e.a("RwMEASUGVFEWFA=="), str) && value != null) {
                sb.append(str);
                sb.append(f.e.a.e.a("Cg=="));
                sb.append(value);
                sb.append(f.e.a.e.a("EQ=="));
            }
        }
        if (sb.indexOf(f.e.a.e.a("EQ==")) != -1) {
            sb.deleteCharAt(sb.lastIndexOf(f.e.a.e.a("EQ==")));
        }
        String str2 = f.e.a.e.a("DxgaXAURSgofH1ADAFpRGFsBGVwSA1REEBQGExQfVFlo") + sb.toString().toUpperCase();
        try {
            return TextUtils.isEmpty(d(b(str2))) ? str2 : new String(d(b(str2)).getBytes(f.e.a.e.a("YjYlSVM=")), f.e.a.e.a("YjYlSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str2;
        }
    }

    public static String d(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if ((bArr[i2] & 255) < 16) {
                sb.append(f.e.a.e.a("Bw=="));
            }
            sb.append(Long.toString(bArr[i2] & 255, 16));
        }
        return sb.toString();
    }

    @Override // i.y
    public h0 a(@NonNull y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        e0 S = aVar.S();
        String str = S.f6432c;
        if (!TextUtils.equals(str, f.e.a.e.a("cCc3")) && !TextUtils.equals(str, f.e.a.e.a("Zzc3"))) {
            if (!TextUtils.equals(str, f.e.a.e.a("Zy0wMA=="))) {
                return aVar.d(S);
            }
            g0 g0Var = S.f6434e;
            if (g0Var instanceof a0) {
                return aVar.d(S);
            }
            j jVar = new j();
            g gVar = new g();
            ((g0) Objects.requireNonNull(g0Var)).e(gVar);
            Object e2 = jVar.e(gVar.I(), TreeMap.class);
            f.e.a.e.a("QhYFSVM=");
            String c2 = c(S, (TreeMap) u.a(TreeMap.class).cast(e2));
            new LinkedHashMap();
            x xVar = S.b;
            String str2 = S.f6432c;
            g0 g0Var2 = S.f6434e;
            if (S.f6435f.isEmpty()) {
                linkedHashMap2 = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6435f;
                if (map != null) {
                    linkedHashMap2 = new LinkedHashMap(map);
                } else {
                    h.o.c.g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d2 = S.f6433d.d();
            String a = f.e.a.e.a("RAsECg==");
            if (c2 != null) {
                d2.g(a, c2);
                if (xVar != null) {
                    return aVar.d(new e0(xVar, str2, d2.d(), g0Var2, i.m0.b.E(linkedHashMap2)));
                }
                throw new IllegalStateException("url == null".toString());
            }
            h.o.c.g.f("value");
            throw null;
        }
        x xVar2 = S.b;
        Set<String> j2 = xVar2.j();
        TreeMap treeMap = new TreeMap();
        for (String str3 : j2) {
            treeMap.put(str3, xVar2.i(str3));
        }
        f.e.a.e.a("QhYFSVM=");
        String c3 = c(S, treeMap);
        x.a g2 = xVar2.g();
        g2.a(f.e.a.e.a("RAsECg=="), c3);
        x b = g2.b();
        new LinkedHashMap();
        String str4 = S.f6432c;
        g0 g0Var3 = S.f6434e;
        if (S.f6435f.isEmpty()) {
            linkedHashMap = new LinkedHashMap();
        } else {
            Map<Class<?>, Object> map2 = S.f6435f;
            if (map2 != null) {
                linkedHashMap = new LinkedHashMap(map2);
            } else {
                h.o.c.g.f("$this$toMutableMap");
                throw null;
            }
        }
        return aVar.d(new e0(b, str4, S.f6433d.d().d(), g0Var3, i.m0.b.E(linkedHashMap)));
    }
}
