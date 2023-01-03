package i.m0.g;

/* compiled from: Http2.kt */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f6644d;

    /* renamed from: e  reason: collision with root package name */
    public static final e f6645e = new e();
    public static final j.k a = j.k.f6979e.b("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    public static final String[] b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f6643c = new String[64];

    static {
        String[] strArr = new String[256];
        for (int i2 = 0; i2 < 256; i2++) {
            String binaryString = Integer.toBinaryString(i2);
            h.o.c.g.b(binaryString, "Integer.toBinaryString(it)");
            String replace = i.m0.b.l("%8s", binaryString).replace(' ', '0');
            h.o.c.g.b(replace, "(this as java.lang.Strin…replace(oldChar, newChar)");
            strArr[i2] = replace;
        }
        f6644d = strArr;
        String[] strArr2 = f6643c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i3 = 0; i3 < 1; i3++) {
            int i4 = iArr[i3];
            String[] strArr3 = f6643c;
            strArr3[i4 | 8] = strArr3[i4] + ((Object) "|PADDED");
        }
        String[] strArr4 = f6643c;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i5 = 0; i5 < 3; i5++) {
            int i6 = iArr2[i5];
            for (int i7 = 0; i7 < 1; i7++) {
                int i8 = iArr[i7];
                int i9 = i8 | i6;
                f6643c[i9] = f6643c[i8] + "|" + f6643c[i6];
                StringBuilder sb = new StringBuilder();
                sb.append(f6643c[i8]);
                sb.append("|");
                f6643c[i9 | 8] = f.b.a.a.a.l(sb, f6643c[i6], "|PADDED");
            }
        }
        int length = f6643c.length;
        for (int i10 = 0; i10 < length; i10++) {
            String[] strArr5 = f6643c;
            if (strArr5[i10] == null) {
                strArr5[i10] = f6644d[i10];
            }
        }
    }

    public final String a(boolean z, int i2, int i3, int i4, int i5) {
        String str;
        String str2;
        String[] strArr = b;
        String l2 = i4 < strArr.length ? strArr[i4] : i.m0.b.l("0x%02x", Integer.valueOf(i4));
        if (i5 == 0) {
            str = "";
        } else {
            if (i4 != 2 && i4 != 3) {
                if (i4 == 4 || i4 == 6) {
                    str = i5 == 1 ? "ACK" : f6644d[i5];
                } else if (i4 != 7 && i4 != 8) {
                    String[] strArr2 = f6643c;
                    if (i5 < strArr2.length) {
                        str2 = strArr2[i5];
                        if (str2 == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                    } else {
                        str2 = f6644d[i5];
                    }
                    if (i4 == 5 && (i5 & 4) != 0) {
                        str = h.s.d.q(str2, "HEADERS", "PUSH_PROMISE", false, 4);
                    } else {
                        str = (i4 != 0 || (i5 & 32) == 0) ? str2 : h.s.d.q(str2, "PRIORITY", "COMPRESSED", false, 4);
                    }
                }
            }
            str = f6644d[i5];
        }
        return i.m0.b.l("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i2), Integer.valueOf(i3), l2, str);
    }
}
