package f.e.a.j.n.p;

import android.util.Base64;

/* compiled from: AESUtils.java */
/* loaded from: classes.dex */
public class b {
    public static String a = f.e.a.e.a("B1NRVy4dWkEKFkAOFwQIDg==");
    public static String b = f.e.a.e.a("dicwSy4wexwjLXc0TzoCD1MLDQM=");

    public static String a(String str) {
        byte[] a2 = f.e.a.k.c.a(Base64.decode(str.getBytes(), 2), a.getBytes(), b, null);
        return a2 != null ? new String(a2) : "";
    }
}
