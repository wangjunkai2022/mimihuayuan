package f.e.a.j.x.g;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import f.e.a.e;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: C1715.java */
/* loaded from: classes.dex */
public class b {
    public static final String b = e.a("dicwSygxehwjLXc0TToCD1MLDQM=");
    public static String a = SignHelper.getkm1(App.b);

    /* renamed from: c  reason: collision with root package name */
    public static String f4037c = SignHelper.getkm2(App.b);

    /* renamed from: d  reason: collision with root package name */
    public static final char[] f4038d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static Map<String, String> a(String str) {
        String c2 = c(str, f4037c, a);
        TreeMap treeMap = new TreeMap();
        treeMap.put(e.a("UwMXBQ=="), c2);
        treeMap.put(e.a("aAYGEgIQXGwaAg=="), e.a("UQQFAg0VX1VeAlVVTUdUXlZQTlRbQwkeQ1YEV08LAF5WAwdc"));
        treeMap.put(e.a("aAMTFDQFXEEAD1sJ"), e.a("BkxSSlw="));
        treeMap.put(e.a("aAYGEgIQXGwHH0QC"), e.a("ZC9OJVlDDHQ9"));
        treeMap.put(e.a("aBEHDzQFXEEAD1sJ"), e.a("BVE="));
        treeMap.put(e.a("aAYGEgIQXGwFA0YUEQUN"), e.a("BVo="));
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append(e.a("EQ=="));
            sb.append((String) entry.getKey());
            sb.append(e.a("Cg=="));
            String str2 = (String) entry.getValue();
            try {
                str2 = URLEncoder.encode(str2, e.a("YjYlSVM="));
            } catch (UnsupportedEncodingException unused) {
            }
            sb.append(str2);
        }
        String a2 = e.a("RAsE");
        treeMap.put(a2, b(sb.toString().substring(1) + e.a("WgMMCQIsSVIAFWsfARA=")));
        sb.delete(0, sb.length());
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb.append(e.a("EQ=="));
            sb.append((String) entry2.getKey());
            sb.append(e.a("Cg=="));
            sb.append((String) entry2.getValue());
        }
        return treeMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0031 A[LOOP:0: B:18:0x002f->B:19:0x0031, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String b(java.lang.String r7) {
        /*
            byte[] r7 = r7.getBytes()
            java.lang.String r0 = "eiZW"
            java.lang.String r0 = f.e.a.e.a(r0)
            r1 = 0
            if (r7 == 0) goto L21
            int r2 = r7.length
            if (r2 > 0) goto L11
            goto L21
        L11:
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch: java.security.NoSuchAlgorithmException -> L1d
            r0.update(r7)     // Catch: java.security.NoSuchAlgorithmException -> L1d
            byte[] r7 = r0.digest()     // Catch: java.security.NoSuchAlgorithmException -> L1d
            goto L22
        L1d:
            r7 = move-exception
            r7.printStackTrace()
        L21:
            r7 = r1
        L22:
            if (r7 != 0) goto L25
            goto L52
        L25:
            int r0 = r7.length
            if (r0 > 0) goto L29
            goto L52
        L29:
            int r1 = r0 << 1
            char[] r1 = new char[r1]
            r2 = 0
            r3 = 0
        L2f:
            if (r2 >= r0) goto L4c
            int r4 = r3 + 1
            char[] r5 = f.e.a.j.x.g.b.f4038d
            r6 = r7[r2]
            int r6 = r6 >>> 4
            r6 = r6 & 15
            char r6 = r5[r6]
            r1[r3] = r6
            int r3 = r4 + 1
            r6 = r7[r2]
            r6 = r6 & 15
            char r5 = r5[r6]
            r1[r4] = r5
            int r2 = r2 + 1
            goto L2f
        L4c:
            java.lang.String r7 = new java.lang.String
            r7.<init>(r1)
            r1 = r7
        L52:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.x.g.b.b(java.lang.String):java.lang.String");
    }

    public static String c(String str, String str2, String str3) {
        byte[] bArr;
        byte[] bArr2 = null;
        try {
            bArr = str.getBytes(e.a("YjYlSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            bArr = null;
        }
        try {
            SecretKeySpec d2 = d(str2);
            Cipher cipher = Cipher.getInstance(b);
            cipher.init(1, d2, e(str3));
            bArr2 = cipher.doFinal(bArr);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        StringBuffer stringBuffer = new StringBuffer(bArr2.length * 2);
        for (byte b2 : bArr2) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                stringBuffer.append(e.a("Bw=="));
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static SecretKeySpec d(String str) {
        byte[] bArr;
        if (str == null) {
            str = "";
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        stringBuffer.append(str);
        while (stringBuffer.length() < 16) {
            stringBuffer.append(e.a("Bw=="));
        }
        if (stringBuffer.length() > 16) {
            stringBuffer.setLength(16);
        }
        try {
            bArr = stringBuffer.toString().getBytes(e.a("YjYlSVM="));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            bArr = null;
        }
        return new SecretKeySpec(bArr, e.a("dicw"));
    }

    public static IvParameterSpec e(String str) {
        byte[] bArr;
        if (str == null) {
            str = "";
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        stringBuffer.append(str);
        while (stringBuffer.length() < 16) {
            stringBuffer.append(e.a("Bw=="));
        }
        if (stringBuffer.length() > 16) {
            stringBuffer.setLength(16);
        }
        try {
            bArr = stringBuffer.toString().getBytes(e.a("YjYlSVM="));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            bArr = null;
        }
        return new IvParameterSpec(bArr);
    }
}
