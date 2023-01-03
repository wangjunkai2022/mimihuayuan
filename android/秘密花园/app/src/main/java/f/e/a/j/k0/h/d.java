package f.e.a.j.k0.h;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import com.umeng.commonsdk.proguard.ap;
import f.b.a.a.a;
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
    public static final char[] f3907c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

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
            Cipher instance = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
            instance.init(1, c2, b(str4));
            bArr2 = instance.doFinal(bArr);
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
        StringBuilder o = a.o(upperCase);
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

    /* JADX WARNING: Can't wrap try/catch for region: R(8:2|(3:25|4|(1:6)(7:7|(1:9)|30|14|28|15|(1:19)(4:26|20|21|31)))|12|14|28|15|(0)(0)|(1:(0))) */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0056, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0057, code lost:
        r7.printStackTrace();
        r7 = null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x005d A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String d(java.lang.String r7) {
        /*
            r0 = 0
            r1 = 0
            r2 = 2
            if (r7 == 0) goto L_0x0031
            int r3 = r7.length()     // Catch: Exception -> 0x002f
            if (r3 >= r2) goto L_0x000c
            goto L_0x0031
        L_0x000c:
            java.lang.String r7 = r7.toLowerCase()     // Catch: Exception -> 0x002f
            int r3 = r7.length()     // Catch: Exception -> 0x002f
            int r3 = r3 / r2
            byte[] r4 = new byte[r3]     // Catch: Exception -> 0x002f
        L_0x0017:
            if (r0 >= r3) goto L_0x0038
            int r5 = r0 * 2
            int r6 = r5 + 2
            java.lang.String r5 = r7.substring(r5, r6)     // Catch: Exception -> 0x002f
            r6 = 16
            int r5 = java.lang.Integer.parseInt(r5, r6)     // Catch: Exception -> 0x002f
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r5 = (byte) r5     // Catch: Exception -> 0x002f
            r4[r0] = r5     // Catch: Exception -> 0x002f
            int r0 = r0 + 1
            goto L_0x0017
        L_0x002f:
            r7 = move-exception
            goto L_0x0034
        L_0x0031:
            byte[] r4 = new byte[r0]     // Catch: Exception -> 0x002f
            goto L_0x0038
        L_0x0034:
            r7.printStackTrace()
            r4 = r1
        L_0x0038:
            java.lang.String r7 = f.e.a.j.k0.h.d.a
            java.lang.String r0 = f.e.a.j.k0.h.d.b
            javax.crypto.spec.SecretKeySpec r7 = c(r7)     // Catch: Exception -> 0x0056
            java.lang.String r3 = "dicwSygxehwjLXc0TToCD1MLDQM="
            java.lang.String r3 = f.e.a.e.a(r3)     // Catch: Exception -> 0x0056
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r3)     // Catch: Exception -> 0x0056
            javax.crypto.spec.IvParameterSpec r0 = b(r0)     // Catch: Exception -> 0x0056
            r3.init(r2, r7, r0)     // Catch: Exception -> 0x0056
            byte[] r7 = r3.doFinal(r4)     // Catch: Exception -> 0x0056
            goto L_0x005b
        L_0x0056:
            r7 = move-exception
            r7.printStackTrace()
            r7 = r1
        L_0x005b:
            if (r7 != 0) goto L_0x005e
            return r1
        L_0x005e:
            java.lang.String r0 = new java.lang.String     // Catch: UnsupportedEncodingException -> 0x006b
            java.lang.String r2 = "YjYlSVM="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: UnsupportedEncodingException -> 0x006b
            r0.<init>(r7, r2)     // Catch: UnsupportedEncodingException -> 0x006b
            r1 = r0
            goto L_0x006f
        L_0x006b:
            r7 = move-exception
            r7.printStackTrace()
        L_0x006f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.k0.h.d.d(java.lang.String):java.lang.String");
    }

    public static String e(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance(e.a("eiZW"));
            instance.update(bArr);
            byte[] digest = instance.digest();
            char[] cArr = new char[32];
            int i2 = 0;
            for (int i3 = 0; i3 < 16; i3++) {
                byte b2 = digest[i3];
                int i4 = i2 + 1;
                cArr[i2] = f3907c[(b2 >>> 4) & 15];
                i2 = i4 + 1;
                cArr[i4] = f3907c[b2 & ap.f3041m];
            }
            return new String(cArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
