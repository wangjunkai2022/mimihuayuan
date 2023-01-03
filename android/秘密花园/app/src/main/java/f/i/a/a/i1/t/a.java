package f.i.a.a.i1.t;

import f.i.a.a.m1.u;
import java.util.regex.Pattern;

/* compiled from: CssParser.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f5357c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public final u a = new u();
    public final StringBuilder b = new StringBuilder();

    public static String a(u uVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i2 = uVar.b;
        int i3 = uVar.f5701c;
        while (i2 < i3 && !z) {
            char c2 = (char) uVar.a[i2];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                i2++;
                sb.append(c2);
            }
        }
        uVar.B(i2 - uVar.b);
        return sb.toString();
    }

    public static String b(u uVar, StringBuilder sb) {
        c(uVar);
        if (uVar.a() == 0) {
            return null;
        }
        String a = a(uVar, sb);
        if (!"".equals(a)) {
            return a;
        }
        StringBuilder o = f.b.a.a.a.o("");
        o.append((char) uVar.p());
        return o.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0068 A[LOOP:1: B:4:0x0002->B:37:0x0068, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void c(f.i.a.a.m1.u r8) {
        /*
            r0 = 1
        L_0x0001:
            r1 = 1
        L_0x0002:
            int r2 = r8.a()
            if (r2 <= 0) goto L_0x006a
            if (r1 == 0) goto L_0x006a
            int r1 = r8.b
            byte[] r2 = r8.a
            byte r1 = r2[r1]
            char r1 = (char) r1
            r2 = 9
            r3 = 0
            if (r1 == r2) goto L_0x0028
            r2 = 10
            if (r1 == r2) goto L_0x0028
            r2 = 12
            if (r1 == r2) goto L_0x0028
            r2 = 13
            if (r1 == r2) goto L_0x0028
            r2 = 32
            if (r1 == r2) goto L_0x0028
            r1 = 0
            goto L_0x002c
        L_0x0028:
            r8.B(r0)
            r1 = 1
        L_0x002c:
            if (r1 != 0) goto L_0x0001
            int r1 = r8.b
            int r2 = r8.f5701c
            byte[] r4 = r8.a
            int r5 = r1 + 2
            if (r5 > r2) goto L_0x0064
            int r5 = r1 + 1
            byte r1 = r4[r1]
            r6 = 47
            if (r1 != r6) goto L_0x0064
            int r1 = r5 + 1
            byte r5 = r4[r5]
            r7 = 42
            if (r5 != r7) goto L_0x0064
        L_0x0048:
            int r5 = r1 + 1
            if (r5 >= r2) goto L_0x005c
            byte r1 = r4[r1]
            char r1 = (char) r1
            if (r1 != r7) goto L_0x005a
            byte r1 = r4[r5]
            char r1 = (char) r1
            if (r1 != r6) goto L_0x005a
            int r2 = r5 + 1
            r1 = r2
            goto L_0x0048
        L_0x005a:
            r1 = r5
            goto L_0x0048
        L_0x005c:
            int r1 = r8.b
            int r2 = r2 - r1
            r8.B(r2)
            r1 = 1
            goto L_0x0065
        L_0x0064:
            r1 = 0
        L_0x0065:
            if (r1 == 0) goto L_0x0068
            goto L_0x0001
        L_0x0068:
            r1 = 0
            goto L_0x0002
        L_0x006a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.t.a.c(f.i.a.a.m1.u):void");
    }
}
