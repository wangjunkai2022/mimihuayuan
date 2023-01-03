package f.i.b.c0.a0.t;

import java.util.TimeZone;

/* compiled from: ISO8601Utils.java */
/* loaded from: classes.dex */
public class a {
    public static final TimeZone a = TimeZone.getTimeZone("UTC");

    public static boolean a(String str, int i2, char c2) {
        return i2 < str.length() && str.charAt(i2) == c2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x00e1 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, NumberFormatException -> 0x01d2, IllegalArgumentException -> 0x01d0, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:37:0x009c, B:39:0x00a2, B:44:0x00af, B:45:0x00b2, B:46:0x00b6, B:50:0x00c6, B:51:0x00c9, B:57:0x00db, B:59:0x00e1, B:61:0x00e8, B:66:0x00f4, B:67:0x010f, B:68:0x0110, B:71:0x011b, B:72:0x012c, B:74:0x0139, B:77:0x0142, B:79:0x0161, B:82:0x0170, B:83:0x0192, B:85:0x0195, B:86:0x0197, B:88:0x01c8, B:89:0x01cf), top: B:101:0x0004 }] */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01c8 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, NumberFormatException -> 0x01d2, IllegalArgumentException -> 0x01d0, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:37:0x009c, B:39:0x00a2, B:44:0x00af, B:45:0x00b2, B:46:0x00b6, B:50:0x00c6, B:51:0x00c9, B:57:0x00db, B:59:0x00e1, B:61:0x00e8, B:66:0x00f4, B:67:0x010f, B:68:0x0110, B:71:0x011b, B:72:0x012c, B:74:0x0139, B:77:0x0142, B:79:0x0161, B:82:0x0170, B:83:0x0192, B:85:0x0195, B:86:0x0197, B:88:0x01c8, B:89:0x01cf), top: B:101:0x0004 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.Date b(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
        // Method dump skipped, instructions count: 569
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.t.a.b(java.lang.String, java.text.ParsePosition):java.util.Date");
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
            if (digit >= 0) {
                i4 = -digit;
            } else {
                StringBuilder o = f.b.a.a.a.o("Invalid number: ");
                o.append(str.substring(i2, i3));
                throw new NumberFormatException(o.toString());
            }
        } else {
            i4 = 0;
            i5 = i2;
        }
        while (i5 < i3) {
            int i6 = i5 + 1;
            int digit2 = Character.digit(str.charAt(i5), 10);
            if (digit2 >= 0) {
                i4 = (i4 * 10) - digit2;
                i5 = i6;
            } else {
                StringBuilder o2 = f.b.a.a.a.o("Invalid number: ");
                o2.append(str.substring(i2, i3));
                throw new NumberFormatException(o2.toString());
            }
        }
        return -i4;
    }
}
