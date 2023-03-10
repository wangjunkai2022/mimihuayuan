package g.a.f1.s;

import java.util.TimeZone;
/* compiled from: ISO8601Utils.java */
/* loaded from: classes.dex */
public class b {
    public static final TimeZone a;
    public static final TimeZone b;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        a = timeZone;
        b = timeZone;
    }

    public static boolean a(String str, int i2, char c2) {
        return i2 < str.length() && str.charAt(i2) == c2;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00e3 A[Catch: IllegalArgumentException -> 0x01d0, NumberFormatException -> 0x01d2, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:37:0x009e, B:39:0x00a4, B:44:0x00b1, B:46:0x00b8, B:57:0x00dd, B:59:0x00e3, B:61:0x00e9, B:85:0x0196, B:67:0x00f7, B:68:0x0110, B:69:0x0111, B:71:0x0121, B:72:0x0132, B:74:0x013a, B:77:0x0143, B:79:0x0162, B:82:0x0171, B:83:0x0193, B:84:0x0194, B:87:0x01c8, B:88:0x01cf, B:50:0x00c8, B:51:0x00cb, B:45:0x00b4), top: B:101:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c8 A[Catch: IllegalArgumentException -> 0x01d0, NumberFormatException -> 0x01d2, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:37:0x009e, B:39:0x00a4, B:44:0x00b1, B:46:0x00b8, B:57:0x00dd, B:59:0x00e3, B:61:0x00e9, B:85:0x0196, B:67:0x00f7, B:68:0x0110, B:69:0x0111, B:71:0x0121, B:72:0x0132, B:74:0x013a, B:77:0x0143, B:79:0x0162, B:82:0x0171, B:83:0x0193, B:84:0x0194, B:87:0x01c8, B:88:0x01cf, B:50:0x00c8, B:51:0x00cb, B:45:0x00b4), top: B:101:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date b(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.f1.s.b.b(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int c(String str, int i2, int i3) throws NumberFormatException {
        int i4;
        int i5;
        if (i2 < 0 || i3 > str.length() || i2 > i3) {
            throw new NumberFormatException(str);
        }
        if (i2 < i3) {
            i5 = i2 + 1;
            int digit = Character.digit(str.charAt(i2), 10);
            if (digit < 0) {
                StringBuilder o = f.b.a.a.a.o("Invalid number: ");
                o.append(str.substring(i2, i3));
                throw new NumberFormatException(o.toString());
            }
            i4 = -digit;
        } else {
            i4 = 0;
            i5 = i2;
        }
        while (i5 < i3) {
            int i6 = i5 + 1;
            int digit2 = Character.digit(str.charAt(i5), 10);
            if (digit2 < 0) {
                StringBuilder o2 = f.b.a.a.a.o("Invalid number: ");
                o2.append(str.substring(i2, i3));
                throw new NumberFormatException(o2.toString());
            }
            i4 = (i4 * 10) - digit2;
            i5 = i6;
        }
        return -i4;
    }
}
