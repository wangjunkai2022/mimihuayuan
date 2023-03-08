package f.e.a.j.t.e;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import f.e.a.e;
import f.i.b.r;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: C1621.java */
/* loaded from: classes.dex */
public class b {
    public static final String a;
    public static final String b;

    static {
        e.a("AlBWVltBXwpCUg0CSFxSGw==");
        e.a("AlBWVltBXwpCUg0CSFxSHA==");
        e.a("AwcFAFgVDwNFVlFVSFlQWQ==");
        e.a("AwcFAFgVDwNFVlFVSFlQWQ==");
        a = SignHelper.getIQY1(App.b);
        b = SignHelper.getIQY2(App.b);
    }

    public static String a() {
        r rVar = new r();
        rVar.e(e.a("UwcVDQgWb1YBFV0IFg=="), e.a("BExU"));
        rVar.e(e.a("UwcVDQgWcFc="), f.e.a.k.b.x);
        return i(rVar.toString());
    }

    public static String b() {
        r rVar = new r();
        rVar.d(e.a("XgwHARMgUVwE"), 1);
        return i(rVar.toString());
    }

    public static String c(String str, String str2, int i2) {
        r rVar = new r();
        rVar.e(e.a("VAMXASIX"), str);
        rVar.e(e.a("WBAHARkxQA=="), str2);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        return i(rVar.toString());
    }

    public static String d(int i2) {
        r rVar = new r();
        rVar.d(e.a("XhExAQgcVF4WCFA="), 1);
        rVar.d(e.a("XhEzCAoKdVoAEg=="), 1);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        return i(rVar.toString());
    }

    public static String e(String str) {
        r rVar = new r();
        rVar.e(e.a("XgY="), str);
        rVar.e(e.a("WwsNDz8KSVY="), "");
        return i(rVar.toString());
    }

    public static String f(int i2, String str) {
        r rVar = new r();
        rVar.e(e.a("XAcaEwQBXUA="), str);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        return i(rVar.toString());
    }

    public static String g(int i2, String str) {
        r rVar = new r();
        rVar.e(e.a("WBAHARkxQA=="), e.a("QwsOAQ=="));
        rVar.e(e.a("RBIGBwISVXoX"), str);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        return i(rVar.toString());
    }

    public static String h(int i2, String str) {
        r rVar = new r();
        rVar.e(e.a("QhEGFiIX"), str);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        return i(rVar.toString());
    }

    public static String i(String str) {
        byte[] bArr;
        String str2 = a;
        String str3 = b;
        byte[] bArr2 = null;
        try {
            bArr = str.getBytes(e.a("YjYlSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            bArr = null;
        }
        try {
            SecretKeySpec j2 = j(str2);
            Cipher cipher = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
            cipher.init(1, j2, k(str3));
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

    public static SecretKeySpec j(String str) {
        if (str == null) {
            str = "";
        }
        byte[] bArr = null;
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
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return new SecretKeySpec(bArr, e.a("dicw"));
    }

    public static IvParameterSpec k(String str) {
        if (str == null) {
            str = "";
        }
        byte[] bArr = null;
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
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return new IvParameterSpec(bArr);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(3:19|20|(1:22)(5:23|(1:25)|4|5|(1:7)(3:9|10|11)))|3|4|5|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        r7.printStackTrace();
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String l(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            r0 = 0
            r1 = 0
            r2 = 2
            if (r7 == 0) goto L31
            int r3 = r7.length()     // Catch: java.lang.Exception -> L2f
            if (r3 >= r2) goto Lc
            goto L31
        Lc:
            java.lang.String r7 = r7.toLowerCase()     // Catch: java.lang.Exception -> L2f
            int r3 = r7.length()     // Catch: java.lang.Exception -> L2f
            int r3 = r3 / r2
            byte[] r4 = new byte[r3]     // Catch: java.lang.Exception -> L2f
        L17:
            if (r0 >= r3) goto L38
            int r5 = r0 * 2
            int r6 = r5 + 2
            java.lang.String r5 = r7.substring(r5, r6)     // Catch: java.lang.Exception -> L2f
            r6 = 16
            int r5 = java.lang.Integer.parseInt(r5, r6)     // Catch: java.lang.Exception -> L2f
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r5 = (byte) r5     // Catch: java.lang.Exception -> L2f
            r4[r0] = r5     // Catch: java.lang.Exception -> L2f
            int r0 = r0 + 1
            goto L17
        L2f:
            r7 = move-exception
            goto L34
        L31:
            byte[] r4 = new byte[r0]     // Catch: java.lang.Exception -> L2f
            goto L38
        L34:
            r7.printStackTrace()
            r4 = r1
        L38:
            javax.crypto.spec.SecretKeySpec r7 = j(r8)     // Catch: java.lang.Exception -> L52
            java.lang.String r8 = "dicwSygxehwjLXc0TToCD1MLDQM="
            java.lang.String r8 = f.e.a.e.a(r8)     // Catch: java.lang.Exception -> L52
            javax.crypto.Cipher r8 = javax.crypto.Cipher.getInstance(r8)     // Catch: java.lang.Exception -> L52
            javax.crypto.spec.IvParameterSpec r9 = k(r9)     // Catch: java.lang.Exception -> L52
            r8.init(r2, r7, r9)     // Catch: java.lang.Exception -> L52
            byte[] r7 = r8.doFinal(r4)     // Catch: java.lang.Exception -> L52
            goto L57
        L52:
            r7 = move-exception
            r7.printStackTrace()
            r7 = r1
        L57:
            if (r7 != 0) goto L5a
            return r1
        L5a:
            java.lang.String r8 = new java.lang.String     // Catch: java.lang.Exception -> L66
            java.lang.String r9 = "YjYlSVM="
            java.lang.String r9 = f.e.a.e.a(r9)     // Catch: java.lang.Exception -> L66
            r8.<init>(r7, r9)     // Catch: java.lang.Exception -> L66
            return r8
        L66:
            r7 = move-exception
            r7.printStackTrace()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.t.e.b.l(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
