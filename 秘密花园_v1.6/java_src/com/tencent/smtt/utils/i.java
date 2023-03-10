package com.tencent.smtt.utils;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Security;
import java.security.spec.X509EncodedKeySpec;
import java.util.Random;
import javax.crypto.Cipher;
/* compiled from: PostEncryption.java */
/* loaded from: classes.dex */
public class i {
    public static final char[] a = "0123456789abcdef".toCharArray();
    public static i b;

    /* renamed from: d  reason: collision with root package name */
    public String f2762d;

    /* renamed from: e  reason: collision with root package name */
    public String f2763e = String.valueOf(new Random().nextInt(89999999) + 10000000);

    /* renamed from: c  reason: collision with root package name */
    public String f2761c = this.f2763e + String.valueOf(new Random().nextInt(89999999) + 10000000);

    public static synchronized i a() {
        i iVar;
        synchronized (i.class) {
            if (b == null) {
                b = new i();
            }
            iVar = b;
        }
        return iVar;
    }

    public void b() throws Exception {
        Security.addProvider((Provider) Class.forName("com.android.org.bouncycastle.jce.provider.BouncyCastleProvider", true, ClassLoader.getSystemClassLoader()).newInstance());
    }

    public String c() throws Exception {
        if (this.f2762d == null) {
            byte[] bytes = this.f2761c.getBytes();
            Cipher cipher = null;
            try {
                try {
                    cipher = Cipher.getInstance("RSA/ECB/NoPadding");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Exception unused) {
                b();
                cipher = Cipher.getInstance("RSA/ECB/NoPadding");
            }
            cipher.init(1, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MCwwDQYJKoZIhvcNAQEBBQADGwAwGAIRAMRB/Q0hTCD+XtnQhpQJefUCAwEAAQ==".getBytes(), 0))));
            this.f2762d = b(cipher.doFinal(bytes));
        }
        return this.f2762d;
    }

    public String a(String str) throws Exception {
        Cipher cipher;
        byte[] bytes = str.getBytes();
        try {
            try {
                cipher = Cipher.getInstance("RSA/ECB/NoPadding");
            } catch (Exception unused) {
                b();
                cipher = Cipher.getInstance("RSA/ECB/NoPadding");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cipher = null;
        }
        cipher.init(1, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MCwwDQYJKoZIhvcNAQEBBQADGwAwGAIRAMRB/Q0hTCD+XtnQhpQJefUCAwEAAQ==".getBytes(), 0))));
        return b(cipher.doFinal(bytes));
    }

    private String b(byte[] bArr) {
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

    public byte[] a(byte[] bArr) throws Exception {
        return com.tencent.smtt.sdk.a.a.a(this.f2763e.getBytes(), bArr, 1);
    }
}
