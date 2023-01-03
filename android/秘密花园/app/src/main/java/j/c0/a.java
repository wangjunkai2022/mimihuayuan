package j.c0;

import com.umeng.commonsdk.proguard.ap;
import h.o.c.g;
import j.b;
import j.k;
import java.util.Arrays;

/* compiled from: ByteString.kt */
/* loaded from: classes.dex */
public final class a {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final k b = l(new byte[0]);

    static {
        k.a aVar = k.f6979e;
    }

    public static final String a(k kVar) {
        return j.a.b(kVar.f6980c, null, 1);
    }

    public static final int b(k kVar, k kVar2) {
        int b2 = kVar.b();
        int b3 = kVar2.b();
        int min = Math.min(b2, b3);
        for (int i2 = 0; i2 < min; i2++) {
            int e2 = kVar.e(i2) & 255;
            int e3 = kVar2.e(i2) & 255;
            if (e2 != e3) {
                if (e2 < e3) {
                    return -1;
                } else {
                    return 1;
                }
            }
        }
        if (b2 == b3) {
            return 0;
        }
        if (b2 < b3) {
            return -1;
        }
        return 1;
    }

    public static final k c(String str) {
        byte[] a2 = j.a.a(str);
        if (a2 != null) {
            return new k(a2);
        }
        return null;
    }

    public static final k d(String str) {
        if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                bArr[i2] = (byte) (s(str.charAt(i3 + 1)) + (s(str.charAt(i3)) << 4));
            }
            return new k(bArr);
        }
        throw new IllegalArgumentException(f.b.a.a.a.f("Unexpected hex string: ", str).toString());
    }

    public static final k e(String str) {
        byte[] bytes = str.getBytes(h.s.a.a);
        g.b(bytes, "(this as java.lang.String).getBytes(charset)");
        k kVar = new k(bytes);
        kVar.b = str;
        return kVar;
    }

    public static final boolean f(k kVar, Object obj) {
        if (obj == kVar) {
            return true;
        }
        if (obj instanceof k) {
            k kVar2 = (k) obj;
            int b2 = kVar2.b();
            byte[] bArr = kVar.f6980c;
            if (b2 == bArr.length && kVar2.g(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte g(k kVar, int i2) {
        return kVar.f6980c[i2];
    }

    public static final int h(k kVar) {
        return kVar.f6980c.length;
    }

    public static final int i(k kVar) {
        int i2 = kVar.a;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = Arrays.hashCode(kVar.f6980c);
        kVar.a = hashCode;
        return hashCode;
    }

    public static final String j(k kVar) {
        if (kVar != null) {
            byte[] bArr = kVar.f6980c;
            char[] cArr = new char[bArr.length * 2];
            int i2 = 0;
            for (byte b2 : bArr) {
                int i3 = i2 + 1;
                char[] cArr2 = a;
                cArr[i2] = cArr2[(b2 >> 4) & 15];
                i2 = i3 + 1;
                cArr[i3] = cArr2[b2 & ap.f3041m];
            }
            return new String(cArr);
        }
        g.f("$receiver");
        throw null;
    }

    public static final byte[] k(k kVar) {
        return kVar.f6980c;
    }

    public static final k l(byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        g.b(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new k(copyOf);
    }

    public static final boolean m(k kVar, int i2, k kVar2, int i3, int i4) {
        return kVar2.g(i3, kVar.f6980c, i2, i4);
    }

    public static final boolean n(k kVar, int i2, byte[] bArr, int i3, int i4) {
        if (i2 >= 0) {
            byte[] bArr2 = kVar.f6980c;
            if (i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && b.b(bArr2, i2, bArr, i3, i4)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean o(k kVar, k kVar2) {
        return kVar.f(0, kVar2, 0, kVar2.b());
    }

    public static final k p(k kVar) {
        byte b2;
        int i2 = 0;
        while (true) {
            byte[] bArr = kVar.f6980c;
            if (i2 >= bArr.length) {
                return kVar;
            }
            byte b3 = bArr[i2];
            byte b4 = (byte) 65;
            if (b3 < b4 || b3 > (b2 = (byte) 90)) {
                i2++;
            } else {
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                g.b(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i2] = (byte) (b3 + 32);
                for (int i3 = i2 + 1; i3 < copyOf.length; i3++) {
                    byte b5 = copyOf[i3];
                    if (b5 >= b4 && b5 <= b2) {
                        copyOf[i3] = (byte) (b5 + 32);
                    }
                }
                return new k(copyOf);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x0118, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x0121, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x015f, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x0172, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0183, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0192, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x01a8, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x01b0, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x01b7, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:179:0x01ec, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:180:0x01ef, code lost:
        r5 = -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x008a, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x009b, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00a6, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x00e4, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x00f7, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0106, code lost:
        if (r4 == 64) goto L_0x01f0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.String q(j.k r16) {
        /*
        // Method dump skipped, instructions count: 712
        */
        throw new UnsupportedOperationException("Method not decompiled: j.c0.a.q(j.k):java.lang.String");
    }

    public static final String r(k kVar) {
        String str = kVar.b;
        if (str != null) {
            return str;
        }
        byte[] d2 = kVar.d();
        if (d2 != null) {
            String str2 = new String(d2, h.s.a.a);
            kVar.b = str2;
            return str2;
        }
        g.f("$receiver");
        throw null;
    }

    public static final int s(char c2) {
        if ('0' <= c2 && '9' >= c2) {
            return c2 - '0';
        }
        char c3 = 'a';
        if ('a' > c2 || 'f' < c2) {
            c3 = 'A';
            if ('A' > c2 || 'F' < c2) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c2);
            }
        }
        return (c2 - c3) + 10;
    }
}
