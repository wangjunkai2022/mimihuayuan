package com.comeback.data.ui.tv91.bean;

import android.util.Base64;
import f.e.a.e;
import f.e.a.f.j;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class ConfigBean extends j {
    public String A = e.a("VioxVAg3VkU/VHoPGy0IHlQMBFcmGXRGKlQNEzRZOR1tJSUTCiAMXBchBRQ=");
    public String U = e.a("VioxVAg3VkU/HHlSNAAmHHghVxwmN3hGPSUMWg==");
    public String N = e.a("VioxVAg3VkU/VVwMNAcbA25QFxYICgxZEVQEEQ==");
    public String S = e.a("VioxVAg3VkU/VVwMNAcbA25QFxYICgxZEVQEEQ==");

    public static String a(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static byte[] c(String str) {
        return Base64.decode(str, 0);
    }

    public static void m() {
        ConfigBean configBean = new ConfigBean();
        PrintStream printStream = System.out;
        e.a("UwcACw8WAw==");
        configBean.getA();
        PrintStream printStream2 = System.out;
        e.a("Qlg=");
        configBean.getU();
        PrintStream printStream3 = System.out;
        e.a("WVg=");
        configBean.getN();
    }

    public String getA() {
        return getString(this.A);
    }

    public String getAHost() {
        String a = getA();
        return a.contains(e.a("GBQMAAoDUB0bElkL")) ? a.replace(e.a("GBQMAAoDUB0bElkL"), "") : a;
    }

    public String getN() {
        return getString(this.N);
    }

    public String getS() {
        return getString(this.S);
    }

    public String getSHost() {
        String s = getS();
        return s.contains(e.a("GBQMAAoDUB0bElkL")) ? s.replace(e.a("GBQMAAoDUB0bElkL"), "") : s;
    }

    public String getString(String str) {
        return a(c(str));
    }

    public String getU() {
        return getString(this.U);
    }

    public void setA(String str) {
        this.A = str;
    }

    public void setN(String str) {
        this.N = str;
    }

    public void setS(String str) {
        this.S = str;
    }

    public void setU(String str) {
        this.U = str;
    }
}
