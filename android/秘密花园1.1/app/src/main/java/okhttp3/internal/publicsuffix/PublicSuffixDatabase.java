package okhttp3.internal.publicsuffix;

import c.a.a.b.g.h;
import h.o.c.f;
import h.o.c.g;
import i.m0.b;
import j.b0;
import j.j;
import j.o;
import j.q;
import j.u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PublicSuffixDatabase.kt */
/* loaded from: classes.dex */
public final class PublicSuffixDatabase {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final CountDownLatch b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    public byte[] f7344c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f7345d;

    /* renamed from: h  reason: collision with root package name */
    public static final a f7343h = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f7340e = {(byte) 42};

    /* renamed from: f  reason: collision with root package name */
    public static final List<String> f7341f = h.s0("*");

    /* renamed from: g  reason: collision with root package name */
    public static final PublicSuffixDatabase f7342g = new PublicSuffixDatabase();

    /* compiled from: PublicSuffixDatabase.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(f fVar) {
        }

        public static final String a(a aVar, byte[] bArr, byte[][] bArr2, int i2) {
            int i3;
            boolean z;
            int a;
            int a2;
            int length = bArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i5 = (i4 + length) / 2;
                while (i5 > -1 && bArr[i5] != ((byte) 10)) {
                    i5--;
                }
                int i6 = i5 + 1;
                int i7 = 1;
                while (true) {
                    i3 = i6 + i7;
                    if (bArr[i3] == ((byte) 10)) {
                        break;
                    }
                    i7++;
                }
                int i8 = i3 - i6;
                int i9 = i2;
                boolean z2 = false;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (z2) {
                        a = 46;
                        z = false;
                    } else {
                        z = z2;
                        a = b.a(bArr2[i9][i10], 255);
                    }
                    a2 = a - b.a(bArr[i6 + i11], 255);
                    if (a2 != 0) {
                        break;
                    }
                    i11++;
                    i10++;
                    if (i11 == i8) {
                        break;
                    } else if (bArr2[i9].length != i10) {
                        z2 = z;
                    } else if (i9 == bArr2.length - 1) {
                        break;
                    } else {
                        i9++;
                        z2 = true;
                        i10 = -1;
                    }
                }
                if (a2 >= 0) {
                    if (a2 <= 0) {
                        int i12 = i8 - i11;
                        int length2 = bArr2[i9].length - i10;
                        int length3 = bArr2.length;
                        for (int i13 = i9 + 1; i13 < length3; i13++) {
                            length2 += bArr2[i13].length;
                        }
                        if (length2 >= i12) {
                            if (length2 <= i12) {
                                Charset charset = StandardCharsets.UTF_8;
                                g.b(charset, "UTF_8");
                                return new String(bArr, i6, i8, charset);
                            }
                        }
                    }
                    i4 = i3 + 1;
                }
                length = i6 - 1;
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017d, code lost:
        r0 = r0 - r1;
        r1 = new h.k.f(h.s.d.r(r15, new char[]{'.'}, false, 0, 6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x018c, code lost:
        if (r0 < 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x018f, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0190, code lost:
        if (r2 == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0192, code lost:
        if (r0 != 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0197, code lost:
        if ((r1 instanceof h.r.b) == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0199, code lost:
        r1 = ((h.r.b) r1).a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x019f, code lost:
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01a1, code lost:
        r2 = new h.r.a(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b4, code lost:
        return c.a.a.b.g.h.r0(r2, ".", null, null, 0, null, null, 62);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01c6, code lost:
        throw new java.lang.IllegalArgumentException(f.b.a.a.a.K("Requested element count ", r0, " is less than zero.").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bb, code lost:
        if (r3 <= 1) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bd, code lost:
        r7 = (byte[][]) r6.clone();
        r10 = r7.length - 1;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c6, code lost:
        if (r11 >= r10) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c8, code lost:
        r7[r11] = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f7340e;
        r12 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f7343h;
        r13 = r14.f7344c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d0, code lost:
        if (r13 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d2, code lost:
        r12 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.a.a(r12, r13, r7, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d6, code lost:
        if (r12 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d9, code lost:
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00dc, code lost:
        h.o.c.g.g("publicSuffixListBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00df, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e0, code lost:
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e1, code lost:
        if (r12 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e3, code lost:
        r3 = r3 - 1;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e5, code lost:
        if (r7 >= r3) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e7, code lost:
        r8 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f7343h;
        r10 = r14.f7345d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00eb, code lost:
        if (r10 == null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ed, code lost:
        r8 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.a.a(r8, r10, r6, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f1, code lost:
        if (r8 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f4, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f7, code lost:
        h.o.c.g.g("publicSuffixExceptionListBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00fc, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00fd, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0100, code lost:
        if (r8 == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0102, code lost:
        r6 = h.s.d.r('!' + r8, new char[]{'.'}, false, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x011c, code lost:
        if (r9 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011e, code lost:
        if (r12 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0120, code lost:
        r6 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f7341f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0123, code lost:
        if (r9 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0125, code lost:
        r7 = h.s.d.r(r9, new char[]{'.'}, false, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x012e, code lost:
        r7 = h.k.i.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0130, code lost:
        if (r12 == null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0132, code lost:
        r6 = h.s.d.r(r12, new char[]{'.'}, false, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x013b, code lost:
        r6 = h.k.i.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0145, code lost:
        if (r7.size() <= r6.size()) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0147, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0150, code lost:
        if (r1.size() != r6.size()) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x015c, code lost:
        if (r6.get(0).charAt(0) == '!') goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x015e, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0169, code lost:
        if (r6.get(0).charAt(0) != '!') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x016b, code lost:
        r0 = r1.size();
        r1 = r6.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0174, code lost:
        r0 = r1.size();
        r1 = r6.size() + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String a(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.a(java.lang.String):java.lang.String");
    }

    public final void b() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        j h2 = j.b.h(new o(new q(resourceAsStream, new b0())));
        u uVar = (u) h2;
        try {
            byte[] e2 = uVar.e(uVar.readInt());
            byte[] e3 = uVar.e(uVar.readInt());
            h.z(h2, null);
            synchronized (this) {
                if (e2 != null) {
                    this.f7344c = e2;
                    if (e3 != null) {
                        this.f7345d = e3;
                    } else {
                        g.e();
                        throw null;
                    }
                } else {
                    g.e();
                    throw null;
                }
            }
            this.b.countDown();
        } finally {
        }
    }
}
