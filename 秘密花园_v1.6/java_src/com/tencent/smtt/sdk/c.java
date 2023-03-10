package com.tencent.smtt.sdk;

import android.content.Context;
import java.io.IOException;
import java.util.UnknownFormatConversionException;
/* compiled from: OatHelper.java */
/* loaded from: classes.dex */
public class c {
    public static int a = 5;
    public static int b = 16;

    /* renamed from: c  reason: collision with root package name */
    public static char[] f2634c = new char[16];

    /* renamed from: d  reason: collision with root package name */
    public static String f2635d = "dex2oat-cmdline";

    /* renamed from: e  reason: collision with root package name */
    public static long f2636e = 4096;

    public static String a(Context context, String str) throws Exception {
        com.tencent.smtt.utils.c cVar = new com.tencent.smtt.utils.c(str);
        cVar.a(f2634c);
        cVar.a(f2634c[a] == 1);
        cVar.a(f2636e);
        return a(new String(a(cVar)));
    }

    public static String a(String str) {
        String[] split = str.split(new String("\u0000"));
        int i2 = 0;
        while (i2 < split.length) {
            int i3 = i2 + 1;
            String str2 = split[i2];
            int i4 = i3 + 1;
            String str3 = split[i3];
            if (str2.equals(f2635d)) {
                return str3;
            }
            i2 = i4;
        }
        return "";
    }

    public static char[] a(com.tencent.smtt.utils.c cVar) throws IOException {
        char[] cArr = new char[4];
        char[] cArr2 = new char[4];
        cVar.a(cArr);
        if (cArr[0] == 'o' && cArr[1] == 'a' && cArr[2] == 't') {
            cVar.a(cArr2);
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            if (cArr2[1] <= '4') {
                cVar.b();
                cVar.b();
                cVar.b();
            }
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            cVar.b();
            char[] cArr3 = new char[cVar.b()];
            cVar.a(cArr3);
            return cArr3;
        }
        throw new UnknownFormatConversionException(String.format("Invalid art magic %c%c%c", Character.valueOf(cArr[0]), Character.valueOf(cArr[1]), Character.valueOf(cArr[2])));
    }
}
