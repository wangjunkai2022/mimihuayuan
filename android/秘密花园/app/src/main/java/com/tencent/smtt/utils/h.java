package com.tencent.smtt.utils;

import android.util.Base64;
import f.b.a.a.a;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

/* compiled from: Post3DESEncryption.java */
/* loaded from: classes.dex */
public class h {
    public static String b = "";

    /* renamed from: c  reason: collision with root package name */
    public static byte[] f2677c;

    /* renamed from: g  reason: collision with root package name */
    public static String f2679g;

    /* renamed from: d  reason: collision with root package name */
    public Cipher f2680d;

    /* renamed from: e  reason: collision with root package name */
    public Cipher f2681e;
    public static final char[] a = "0123456789abcdef".toCharArray();

    /* renamed from: f  reason: collision with root package name */
    public static h f2678f = null;

    public h() throws Exception {
        this.f2680d = null;
        this.f2681e = null;
        f2679g = String.valueOf(new Random().nextInt(89999999) + 10000000) + String.valueOf(new Random().nextInt(89999999) + 10000000) + String.valueOf(new Random().nextInt(89999999) + 10000000);
        String str = "00000000";
        for (int i2 = 0; i2 < 12; i2++) {
            StringBuilder o = a.o(str);
            o.append(String.valueOf(new Random().nextInt(89999999) + 10000000));
            str = o.toString();
        }
        StringBuilder o2 = a.o(str);
        o2.append(f2679g);
        f2677c = o2.toString().getBytes();
        this.f2680d = Cipher.getInstance("RSA/ECB/NoPadding");
        this.f2680d.init(1, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDcEQ3TCNWPBqgIiY7WQ/IqTOTTV2w8aZ/GPm68FK0fAJBemZKtYR3Li46VJ+Hwnor7ZpQnblGWPFaLv5JoPqvavgB0GInuhm+T+syPs1mw0uPLWaqwvZsCfoaIvUuxy5xHJgmWARrK4/9pHyDxRlZte0PCIoR1ko5B8lVVH1X1dQIDAQAB".getBytes(), 0))));
        b = b(this.f2680d.doFinal(f2677c));
        SecretKey generateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec(f2679g.getBytes()));
        Cipher instance = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        this.f2681e = instance;
        instance.init(1, generateSecret);
    }

    public static h a() {
        try {
            if (f2678f == null) {
                f2678f = new h();
            }
            return f2678f;
        } catch (Exception e2) {
            f2678f = null;
            e2.printStackTrace();
            return null;
        }
    }

    public static String b(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = bArr[i2] & 255;
            int i4 = i2 * 2;
            char[] cArr2 = a;
            cArr[i4] = cArr2[i3 >>> 4];
            cArr[i4 + 1] = cArr2[i3 & 15];
        }
        return new String(cArr);
    }

    public byte[] c(byte[] bArr) {
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec(f2679g.getBytes()));
            Cipher instance = Cipher.getInstance("DESede/ECB/PKCS5Padding");
            instance.init(2, generateSecret);
            return instance.doFinal(bArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public byte[] a(byte[] bArr) throws Exception {
        return this.f2681e.doFinal(bArr);
    }

    public static byte[] a(byte[] bArr, String str) throws Exception {
        SecretKey generateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec(str.getBytes()));
        Cipher instance = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        instance.init(1, generateSecret);
        return instance.doFinal(bArr);
    }

    public String b() {
        return b;
    }

    public static byte[] b(byte[] bArr, String str) {
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec(str.getBytes()));
            Cipher instance = Cipher.getInstance("DESede/ECB/PKCS5Padding");
            instance.init(2, generateSecret);
            return instance.doFinal(bArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String c() {
        return f2679g;
    }
}
