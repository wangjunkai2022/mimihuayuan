package f.e.a;

import c.a.a.b.g.h;
import java.io.UnsupportedEncodingException;

/* compiled from: StringFog.java */
/* loaded from: classes.dex */
public final class e {
    public static String a(String str) {
        try {
            byte[] E = h.E(str, 2);
            f.h.b.a.c.a.a(E, "7bcdks93sf4gxjck");
            return new String(E, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            byte[] E2 = h.E(str, 2);
            f.h.b.a.c.a.a(E2, "7bcdks93sf4gxjck");
            return new String(E2);
        }
    }
}
