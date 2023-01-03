package f.e.a.j.x.j;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import f.e.a.e;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AES.java */
/* loaded from: classes.dex */
public class a {
    public static final String b = e.a("dicwSygxehwjLXc0TToCD1MLDQM=");
    public static String a = SignHelper.getNewKm1(App.b);

    /* renamed from: c  reason: collision with root package name */
    public static String f3965c = SignHelper.getNewKm2(App.b);

    /* renamed from: d  reason: collision with root package name */
    public static final char[] f3966d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:7:0x0030 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v11, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.String] */
    public static HashMap<String, String> a(JSONObject jSONObject) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            stringBuffer.append(e.a("EQ=="));
            String next = keys.next();
            stringBuffer.append(next);
            stringBuffer.append(e.a("Cg=="));
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    obj = (String) obj;
                    try {
                        obj = URLEncoder.encode(obj, e.a("YjYlSVM="));
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                stringBuffer.append(obj);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        stringBuffer.append(e.a("WAoqGUYRf0M3TE5fUT1UFWUnFhc9EmRmEz9/NkUxIFoROjlKSR0MCRcKCBxHKildeQksTw1WWm1RQkACDhIhVV1QLjtSSH4QClVgEAQNL0R/MU80GgEJEjILXU9MUzo0GRw3BQVQQ0hGPHgoVDUmQwBDFS41O3oGLB1sFk1OGUE="));
        try {
            jSONObject.put(e.a("RAsECgoHTEEW"), d(stringBuffer.substring(1)).toUpperCase());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("UhspVA4reFo8D34sLlsyAnshKQwJNFpaPA9+Li0QKlp5CyoXIh5JAxI1fVExB1YZVTEpXUUWQHkDBQcqESUKIVgGKzYcPFVEBT53Xg0LUVtCO1FdHzpQRBo/bDETIwkEXgMrNlsQfUMQKgUQDggOH0MuDiodEWp6AC9ZF0gLMCIBKw5RGRFqegAvWQsQDiAiAS83PVk9Q2IKKXAMAScgHF44OwwcOlNcCyhePkwkGSIHLTctHD96eQY/WT4RJQkuBSwJB1s+U1RGK14iCyMNPU04Oy4NEm5iGildLkknGS5ALSc1HDpXA10/U18SKAYHZk81LSBEfwsEOVUuC10GDl8GJggkKU9LAy5RLj1aCQloMTs1", hashMap, e.a("VhIKOx8cUlYd"), "UwMXBQ=="), b(jSONObject.toString()));
        hashMap.put(f.b.a.a.a.i("D0xTSls=", hashMap, f.b.a.a.a.i("eitb", hashMap, f.b.a.a.a.i("VgwHFgQaXQ==", hashMap, e.a("UwcVDQgW"), "UwcVDQgWZkcKFlE="), "UwcVDQgWZkUWFEcOFwQ="), "QQcRFwIcV2wQCVAC"), e.a("BQ=="));
        return hashMap;
    }

    public static String b(String str) {
        byte[] bArr;
        byte[] bArr2 = null;
        try {
            bArr = str.getBytes(e.a("YjYlSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            bArr = null;
        }
        String str2 = f3965c;
        String str3 = a;
        try {
            SecretKeySpec e3 = e(str2);
            Cipher instance = Cipher.getInstance(b);
            instance.init(1, e3, f(str3));
            bArr2 = instance.doFinal(bArr);
        } catch (Exception e4) {
            e4.printStackTrace();
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

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:7:0x0030 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v11, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.String] */
    public static HashMap<String, String> c(JSONObject jSONObject) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            stringBuffer.append(e.a("EQ=="));
            String next = keys.next();
            stringBuffer.append(next);
            stringBuffer.append(e.a("Cg=="));
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    obj = (String) obj;
                    try {
                        obj = URLEncoder.encode(obj, e.a("YjYlSVM="));
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                stringBuffer.append(obj);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        stringBuffer.append(e.a("WAoqGUYRf0M3TE5fUT1UFWUnFhc9EmRmEz9/NkUxIFoROjlKSR0MCRcKCBxHKildeQksTw1WWm1RQkACDhIhVV1QLjtSSH4QClVgEAQNL0R/MU80GgEJEjILXU9MUzo0GRw3BQVQQ0hGPHgoVDUmQwBDFS41O3oGLB1sFk1OGUE="));
        try {
            jSONObject.put(e.a("RAsECgoHTEEW"), d(stringBuffer.substring(1)).toUpperCase());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("VhIKOx8cUlYd"), "");
        hashMap.put(e.a("UwMXBQ=="), b(jSONObject.toString()));
        hashMap.put(f.b.a.a.a.i("D0xTSls=", hashMap, f.b.a.a.a.i("eitb", hashMap, f.b.a.a.a.i("VgwHFgQaXQ==", hashMap, e.a("UwcVDQgW"), "UwcVDQgWZkcKFlE="), "UwcVDQgWZkUWFEcOFwQ="), "QQcRFwIcV2wQCVAC"), e.a("BQ=="));
        return hashMap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0031 A[LOOP:0: B:14:0x002f->B:15:0x0031, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String d(java.lang.String r7) {
        /*
            byte[] r7 = r7.getBytes()
            java.lang.String r0 = "eiZW"
            java.lang.String r0 = f.e.a.e.a(r0)
            r1 = 0
            if (r7 == 0) goto L_0x0021
            int r2 = r7.length
            if (r2 > 0) goto L_0x0011
            goto L_0x0021
        L_0x0011:
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch: NoSuchAlgorithmException -> 0x001d
            r0.update(r7)     // Catch: NoSuchAlgorithmException -> 0x001d
            byte[] r7 = r0.digest()     // Catch: NoSuchAlgorithmException -> 0x001d
            goto L_0x0022
        L_0x001d:
            r7 = move-exception
            r7.printStackTrace()
        L_0x0021:
            r7 = r1
        L_0x0022:
            if (r7 != 0) goto L_0x0025
            goto L_0x0052
        L_0x0025:
            int r0 = r7.length
            if (r0 > 0) goto L_0x0029
            goto L_0x0052
        L_0x0029:
            int r1 = r0 << 1
            char[] r1 = new char[r1]
            r2 = 0
            r3 = 0
        L_0x002f:
            if (r2 >= r0) goto L_0x004c
            int r4 = r3 + 1
            char[] r5 = f.e.a.j.x.j.a.f3966d
            byte r6 = r7[r2]
            int r6 = r6 >>> 4
            r6 = r6 & 15
            char r6 = r5[r6]
            r1[r3] = r6
            int r3 = r4 + 1
            byte r6 = r7[r2]
            r6 = r6 & 15
            char r5 = r5[r6]
            r1[r4] = r5
            int r2 = r2 + 1
            goto L_0x002f
        L_0x004c:
            java.lang.String r7 = new java.lang.String
            r7.<init>(r1)
            r1 = r7
        L_0x0052:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.x.j.a.d(java.lang.String):java.lang.String");
    }

    public static SecretKeySpec e(String str) {
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

    public static IvParameterSpec f(String str) {
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
