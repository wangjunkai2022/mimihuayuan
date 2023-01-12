package f.e.a.j.l0.h;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import com.umeng.commonsdk.proguard.ap;
import f.e.a.e;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public class d {
    public static final String a = SignHelper.getSlf1(App.b);
    public static final String b = SignHelper.getSlf2(App.b);

    /* renamed from: c  reason: collision with root package name */
    public static final char[] f3982c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static HashMap<String, String> a(String str) {
        byte[] bArr;
        byte[] bArr2;
        HashMap<String, String> hashMap = new HashMap<>();
        String str2 = null;
        try {
            bArr = str.getBytes(e.a("YjYlSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            bArr = null;
        }
        String str3 = a;
        String str4 = b;
        try {
            SecretKeySpec c2 = c(str3);
            Cipher cipher = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
            cipher.init(1, c2, b(str4));
            bArr2 = cipher.doFinal(bArr);
        } catch (Exception e3) {
            e3.printStackTrace();
            bArr2 = null;
        }
        StringBuffer stringBuffer = new StringBuffer(bArr2.length * 2);
        for (byte b2 : bArr2) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                stringBuffer.append(e.a("Bw=="));
            }
            stringBuffer.append(hexString);
        }
        String upperCase = stringBuffer.toString().toUpperCase();
        hashMap.put(e.a("aAYCEAo="), upperCase);
        String a2 = e.a("aBEKAwU=");
        StringBuilder o = f.b.a.a.a.o(upperCase);
        o.append(e.a("ThMSEwMSXUAbCV0GHBkNAEQSBxcKAFhAR1MMVktaVQ=="));
        try {
            str2 = e(o.toString().toUpperCase().getBytes());
        } catch (Exception unused) {
        }
        hashMap.put(a2, str2);
        return hashMap;
    }

    public static IvParameterSpec b(String str) {
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

    public static SecretKeySpec c(String str) {
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

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(3:21|22|(1:24)(7:25|(1:27)|28|4|5|6|(1:8)(4:10|11|12|13)))|3|4|5|6|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        r7.printStackTrace();
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String d(java.lang.String r7) {
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
            java.lang.String r7 = f.e.a.j.l0.h.d.a
            java.lang.String r0 = f.e.a.j.l0.h.d.b
            javax.crypto.spec.SecretKeySpec r7 = c(r7)     // Catch: java.lang.Exception -> L56
            java.lang.String r3 = "dicwSygxehwjLXc0TToCD1MLDQM="
            java.lang.String r3 = f.e.a.e.a(r3)     // Catch: java.lang.Exception -> L56
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r3)     // Catch: java.lang.Exception -> L56
            javax.crypto.spec.IvParameterSpec r0 = b(r0)     // Catch: java.lang.Exception -> L56
            r3.init(r2, r7, r0)     // Catch: java.lang.Exception -> L56
            byte[] r7 = r3.doFinal(r4)     // Catch: java.lang.Exception -> L56
            goto L5b
        L56:
            r7 = move-exception
            r7.printStackTrace()
            r7 = r1
        L5b:
            if (r7 != 0) goto L5e
            return r1
        L5e:
            java.lang.String r0 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L6b
            java.lang.String r2 = "YjYlSVM="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: java.io.UnsupportedEncodingException -> L6b
            r0.<init>(r7, r2)     // Catch: java.io.UnsupportedEncodingException -> L6b
            r1 = r0
            goto L6f
        L6b:
            r7 = move-exception
            r7.printStackTrace()
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.l0.h.d.d(java.lang.String):java.lang.String");
    }

    public static String e(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(e.a("eiZW"));
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            char[] cArr = new char[32];
            int i2 = 0;
            for (int i3 = 0; i3 < 16; i3++) {
                byte b2 = digest[i3];
                int i4 = i2 + 1;
                cArr[i2] = f3982c[(b2 >>> 4) & 15];
                i2 = i4 + 1;
                cArr[i4] = f3982c[b2 & ap.f3116m];
            }
            return new String(cArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
