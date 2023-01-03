package f.i.a.a.i1.t;

import f.b.a.a.a;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.util.regex.Pattern;

/* compiled from: WebvttParserUtil.java */
/* loaded from: classes.dex */
public final class h {
    public static final Pattern a = Pattern.compile("^NOTE(( |\t).*)?$");

    public static boolean a(u uVar) {
        String e2 = uVar.e();
        return e2 != null && e2.startsWith("WEBVTT");
    }

    public static float b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) throws NumberFormatException {
        String[] m0 = h0.m0(str, "\\.");
        long j2 = 0;
        for (String str2 : h0.l0(m0[0], ":")) {
            j2 = (j2 * 60) + Long.parseLong(str2);
        }
        long j3 = j2 * 1000;
        if (m0.length == 2) {
            j3 += Long.parseLong(m0[1]);
        }
        return j3 * 1000;
    }

    public static void d(u uVar) throws f.i.a.a.h0 {
        int i2 = uVar.b;
        if (!a(uVar)) {
            uVar.A(i2);
            StringBuilder o = a.o("Expected WEBVTT. Got ");
            o.append(uVar.e());
            throw new f.i.a.a.h0(o.toString());
        }
    }
}
