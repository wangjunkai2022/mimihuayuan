package f.i.a.a.d1.i;

import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: Id3Decoder.java */
/* loaded from: classes.dex */
public final class g implements f.i.a.a.d1.b {
    public static final int b = h0.C("ID3");
    @Nullable
    public final a a;

    /* compiled from: Id3Decoder.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a(int i2, int i3, int i4, int i5, int i6);
    }

    /* compiled from: Id3Decoder.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4655c;

        public b(int i2, boolean z, int i3) {
            this.a = i2;
            this.b = z;
            this.f4655c = i3;
        }
    }

    public g() {
        this.a = null;
    }

    public static byte[] b(byte[] bArr, int i2, int i3) {
        if (i3 <= i2) {
            return h0.f5749f;
        }
        return Arrays.copyOfRange(bArr, i2, i3);
    }

    public static f.i.a.a.d1.i.a d(u uVar, int i2, int i3) throws UnsupportedEncodingException {
        int i4;
        String str;
        int p = uVar.p();
        String s = s(p);
        int i5 = i2 - 1;
        byte[] bArr = new byte[i5];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i5);
        uVar.b += i5;
        if (i3 == 2) {
            StringBuilder o = f.b.a.a.a.o("image/");
            o.append(h0.p0(new String(bArr, 0, 3, "ISO-8859-1")));
            str = o.toString();
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            i4 = 2;
        } else {
            int v = v(bArr, 0);
            String p0 = h0.p0(new String(bArr, 0, v, "ISO-8859-1"));
            if (p0.indexOf(47) == -1) {
                i4 = v;
                str = f.b.a.a.a.f("image/", p0);
            } else {
                i4 = v;
                str = p0;
            }
        }
        int i6 = i4 + 2;
        int u = u(bArr, i6, p);
        return new f.i.a.a.d1.i.a(str, new String(bArr, i6, u - i6, s), bArr[i4 + 1] & 255, b(bArr, r(p) + u, i5));
    }

    public static f.i.a.a.d1.i.b e(u uVar, int i2, String str) {
        byte[] bArr = new byte[i2];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i2);
        uVar.b += i2;
        return new f.i.a.a.d1.i.b(str, bArr);
    }

    public static c f(u uVar, int i2, int i3, boolean z, int i4, @Nullable a aVar) throws UnsupportedEncodingException {
        int i5 = uVar.b;
        int v = v(uVar.a, i5);
        String str = new String(uVar.a, i5, v - i5, "ISO-8859-1");
        uVar.A(v + 1);
        int d2 = uVar.d();
        int d3 = uVar.d();
        long q = uVar.q();
        long j2 = q == 4294967295L ? -1L : q;
        long q2 = uVar.q();
        long j3 = q2 == 4294967295L ? -1L : q2;
        ArrayList arrayList = new ArrayList();
        int i6 = i5 + i2;
        while (uVar.b < i6) {
            h i7 = i(i3, uVar, z, i4, aVar);
            if (i7 != null) {
                arrayList.add(i7);
            }
        }
        h[] hVarArr = new h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return new c(str, d2, d3, j2, j3, hVarArr);
    }

    public static d g(u uVar, int i2, int i3, boolean z, int i4, @Nullable a aVar) throws UnsupportedEncodingException {
        int i5 = uVar.b;
        int v = v(uVar.a, i5);
        String str = new String(uVar.a, i5, v - i5, "ISO-8859-1");
        uVar.A(v + 1);
        int p = uVar.p();
        boolean z2 = (p & 2) != 0;
        boolean z3 = (p & 1) != 0;
        int p2 = uVar.p();
        String[] strArr = new String[p2];
        for (int i6 = 0; i6 < p2; i6++) {
            int i7 = uVar.b;
            int v2 = v(uVar.a, i7);
            strArr[i6] = new String(uVar.a, i7, v2 - i7, "ISO-8859-1");
            uVar.A(v2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i8 = i5 + i2;
        while (uVar.b < i8) {
            h i9 = i(i3, uVar, z, i4, aVar);
            if (i9 != null) {
                arrayList.add(i9);
            }
        }
        h[] hVarArr = new h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return new d(str, z2, z3, strArr, hVarArr);
    }

    @Nullable
    public static e h(u uVar, int i2) throws UnsupportedEncodingException {
        if (i2 < 4) {
            return null;
        }
        int p = uVar.p();
        String s = s(p);
        byte[] bArr = new byte[3];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, 3);
        uVar.b += 3;
        String str = new String(bArr, 0, 3);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(uVar.a, uVar.b, bArr2, 0, i3);
        uVar.b += i3;
        int u = u(bArr2, 0, p);
        String str2 = new String(bArr2, 0, u, s);
        int r = r(p) + u;
        return new e(str, str2, m(bArr2, r, u(bArr2, r, p), s));
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x017f, code lost:
        if (r13 == 67) goto L98;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static f.i.a.a.d1.i.h i(int r19, f.i.a.a.m1.u r20, boolean r21, int r22, @androidx.annotation.Nullable f.i.a.a.d1.i.g.a r23) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.i.g.i(int, f.i.a.a.m1.u, boolean, int, f.i.a.a.d1.i.g$a):f.i.a.a.d1.i.h");
    }

    public static f j(u uVar, int i2) throws UnsupportedEncodingException {
        int p = uVar.p();
        String s = s(p);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i3);
        uVar.b += i3;
        int v = v(bArr, 0);
        String str = new String(bArr, 0, v, "ISO-8859-1");
        int i4 = v + 1;
        int u = u(bArr, i4, p);
        String m2 = m(bArr, i4, u, s);
        int r = r(p) + u;
        int u2 = u(bArr, r, p);
        return new f(str, m2, m(bArr, r, u2, s), b(bArr, r(p) + u2, i3));
    }

    public static j k(u uVar, int i2) {
        int u = uVar.u();
        int r = uVar.r();
        int r2 = uVar.r();
        int p = uVar.p();
        int p2 = uVar.p();
        t tVar = new t();
        tVar.i(uVar.a, uVar.f5785c);
        tVar.j(uVar.b * 8);
        int i3 = ((i2 - 10) * 8) / (p + p2);
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int f2 = tVar.f(p);
            int f3 = tVar.f(p2);
            iArr[i4] = f2;
            iArr2[i4] = f3;
        }
        return new j(u, r, r2, iArr, iArr2);
    }

    public static k l(u uVar, int i2) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i2];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i2);
        uVar.b += i2;
        int v = v(bArr, 0);
        return new k(new String(bArr, 0, v, "ISO-8859-1"), b(bArr, v + 1, i2));
    }

    public static String m(byte[] bArr, int i2, int i3, String str) throws UnsupportedEncodingException {
        return (i3 <= i2 || i3 > bArr.length) ? "" : new String(bArr, i2, i3 - i2, str);
    }

    @Nullable
    public static l n(u uVar, int i2, String str) throws UnsupportedEncodingException {
        if (i2 < 1) {
            return null;
        }
        int p = uVar.p();
        String s = s(p);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i3);
        uVar.b += i3;
        return new l(str, null, new String(bArr, 0, u(bArr, 0, p), s));
    }

    @Nullable
    public static l o(u uVar, int i2) throws UnsupportedEncodingException {
        if (i2 < 1) {
            return null;
        }
        int p = uVar.p();
        String s = s(p);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i3);
        uVar.b += i3;
        int u = u(bArr, 0, p);
        String str = new String(bArr, 0, u, s);
        int r = r(p) + u;
        return new l("TXXX", str, m(bArr, r, u(bArr, r, p), s));
    }

    public static m p(u uVar, int i2, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i2];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i2);
        uVar.b += i2;
        return new m(str, null, new String(bArr, 0, v(bArr, 0), "ISO-8859-1"));
    }

    @Nullable
    public static m q(u uVar, int i2) throws UnsupportedEncodingException {
        if (i2 < 1) {
            return null;
        }
        int p = uVar.p();
        String s = s(p);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i3);
        uVar.b += i3;
        int u = u(bArr, 0, p);
        String str = new String(bArr, 0, u, s);
        int r = r(p) + u;
        return new m("WXXX", str, m(bArr, r, v(bArr, r), "ISO-8859-1"));
    }

    public static int r(int i2) {
        return (i2 == 0 || i2 == 3) ? 1 : 2;
    }

    public static String s(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    public static String t(int i2, int i3, int i4, int i5, int i6) {
        return i2 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6));
    }

    public static int u(byte[] bArr, int i2, int i3) {
        int v = v(bArr, i2);
        if (i3 == 0 || i3 == 3) {
            return v;
        }
        while (v < bArr.length - 1) {
            if (v % 2 == 0 && bArr[v + 1] == 0) {
                return v;
            }
            v = v(bArr, v + 1);
        }
        return bArr.length;
    }

    public static int v(byte[] bArr, int i2) {
        while (i2 < bArr.length) {
            if (bArr[i2] == 0) {
                return i2;
            }
            i2++;
        }
        return bArr.length;
    }

    public static int w(u uVar, int i2) {
        byte[] bArr = uVar.a;
        int i3 = uVar.b;
        int i4 = i3;
        while (true) {
            int i5 = i4 + 1;
            if (i5 >= i3 + i2) {
                return i2;
            }
            if ((bArr[i4] & 255) == 255 && bArr[i5] == 0) {
                System.arraycopy(bArr, i4 + 2, bArr, i5, (i2 - (i4 - i3)) - 2);
                i2--;
            }
            i4 = i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        if ((r10 & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0082, code lost:
        if ((r10 & 128) != 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean x(f.i.a.a.m1.u r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r1.b
        L6:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Lab
            r4 = 1
            r5 = r20
            if (r3 < r5) goto La7
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L20
            int r7 = r18.d()     // Catch: java.lang.Throwable -> Lab
            long r8 = r18.q()     // Catch: java.lang.Throwable -> Lab
            int r10 = r18.u()     // Catch: java.lang.Throwable -> Lab
            goto L2a
        L20:
            int r7 = r18.r()     // Catch: java.lang.Throwable -> Lab
            int r8 = r18.r()     // Catch: java.lang.Throwable -> Lab
            long r8 = (long) r8
            r10 = 0
        L2a:
            r11 = 0
            if (r7 != 0) goto L38
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L38
            if (r10 != 0) goto L38
            r1.A(r2)
            return r4
        L38:
            r7 = 4
            if (r0 != r7) goto L69
            if (r21 != 0) goto L69
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L49
            r1.A(r2)
            return r6
        L49:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L69:
            if (r0 != r7) goto L77
            r3 = r10 & 64
            if (r3 == 0) goto L71
            r3 = 1
            goto L72
        L71:
            r3 = 0
        L72:
            r7 = r10 & 1
            if (r7 == 0) goto L86
            goto L87
        L77:
            if (r0 != r3) goto L85
            r3 = r10 & 32
            if (r3 == 0) goto L7f
            r3 = 1
            goto L80
        L7f:
            r3 = 0
        L80:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L86
            goto L87
        L85:
            r3 = 0
        L86:
            r4 = 0
        L87:
            if (r4 == 0) goto L8b
            int r3 = r3 + 4
        L8b:
            long r3 = (long) r3
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L94
            r1.A(r2)
            return r6
        L94:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Lab
            long r3 = (long) r3
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto La1
            r1.A(r2)
            return r6
        La1:
            int r3 = (int) r8
            r1.B(r3)     // Catch: java.lang.Throwable -> Lab
            goto L6
        La7:
            r1.A(r2)
            return r4
        Lab:
            r0 = move-exception
            r1.A(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.i.g.x(f.i.a.a.m1.u, int, int, boolean):boolean");
    }

    @Override // f.i.a.a.d1.b
    @Nullable
    public f.i.a.a.d1.a a(f.i.a.a.d1.d dVar) {
        ByteBuffer byteBuffer = dVar.f6039c;
        return c(byteBuffer.array(), byteBuffer.limit());
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (((r7 & 64) != 0) != false) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0087  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f.i.a.a.d1.a c(byte[] r12, int r13) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.i.g.c(byte[], int):f.i.a.a.d1.a");
    }

    public g(@Nullable a aVar) {
        this.a = aVar;
    }
}
