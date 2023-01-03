package f.e.a.j.m.p;

import android.util.Base64;
import f.e.a.e;
import f.e.a.k.c;

/* compiled from: AESUtils.java */
/* loaded from: classes.dex */
public class b {
    public static String a = e.a("B1NRVy4dWkEKFkAOFwQIDg==");
    public static String b = e.a("dicwSy4wexwjLXc0TzoCD1MLDQM=");

    public static String a(String str) {
        byte[] a2 = c.a(Base64.decode(str.getBytes(), 2), a.getBytes(), b, null);
        return a2 != null ? new String(a2) : "";
    }
}
