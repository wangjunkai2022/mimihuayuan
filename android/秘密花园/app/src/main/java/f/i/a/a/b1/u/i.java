package f.i.a.a.b1.u;

import f.i.a.a.b1.d;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: Sniffer.java */
/* loaded from: classes.dex */
public final class i {
    public static final int[] a = {h0.C("isom"), h0.C("iso2"), h0.C("iso3"), h0.C("iso4"), h0.C("iso5"), h0.C("iso6"), h0.C("avc1"), h0.C("hvc1"), h0.C("hev1"), h0.C("av01"), h0.C("mp41"), h0.C("mp42"), h0.C("3g2a"), h0.C("3g2b"), h0.C("3gr6"), h0.C("3gs6"), h0.C("3ge6"), h0.C("3gg6"), h0.C("M4V "), h0.C("M4A "), h0.C("f4v "), h0.C("kddi"), h0.C("M4VP"), h0.C("qt  "), h0.C("MSNV"), h0.C("dby1")};

    public static boolean a(d dVar, boolean z) throws IOException, InterruptedException {
        boolean z2;
        int i2;
        int i3;
        long j2 = dVar.f4041c;
        long j3 = 4096;
        long j4 = -1;
        int i4 = (j2 > -1 ? 1 : (j2 == -1 ? 0 : -1));
        if (i4 != 0 && j2 <= 4096) {
            j3 = j2;
        }
        int i5 = (int) j3;
        u uVar = new u(64);
        boolean z3 = false;
        int i6 = 0;
        boolean z4 = false;
        while (i6 < i5) {
            uVar.w(8);
            byte[] bArr = uVar.a;
            int i7 = z3 ? 1 : 0;
            int i8 = z3 ? 1 : 0;
            int i9 = z3 ? 1 : 0;
            dVar.d(bArr, i7, 8, z3);
            long q = uVar.q();
            int d2 = uVar.d();
            if (q == 1) {
                dVar.d(uVar.a, 8, 8, z3);
                uVar.z(16);
                q = uVar.j();
                i2 = i6;
                i3 = 16;
            } else {
                i2 = i6;
                if (q == 0) {
                    long j5 = dVar.f4041c;
                    if (j5 != j4) {
                        q = ((long) 8) + (j5 - dVar.c());
                    }
                }
                i3 = 8;
            }
            if (i4 != 0 && ((long) i2) + q > j2) {
                return false;
            }
            long j6 = (long) i3;
            if (q < j6) {
                return false;
            }
            i6 = i2 + i3;
            if (d2 == a.R) {
                i5 += (int) q;
                if (i4 != 0 && ((long) i5) > j2) {
                    i5 = (int) j2;
                }
            } else if (d2 == a.Y || d2 == a.a0) {
                z2 = true;
                break;
            } else if ((((long) i6) + q) - j6 >= ((long) i5)) {
                break;
            } else {
                int i10 = (int) (q - j6);
                i6 += i10;
                if (d2 == a.b) {
                    if (i10 < 8) {
                        return false;
                    }
                    uVar.w(i10);
                    dVar.d(uVar.a, 0, i10, false);
                    int i11 = i10 / 4;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= i11) {
                            break;
                        }
                        boolean z5 = true;
                        if (i12 == 1) {
                            uVar.B(4);
                        } else {
                            int d3 = uVar.d();
                            if ((d3 >>> 8) != h0.C("3gp")) {
                                int[] iArr = a;
                                int length = iArr.length;
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= length) {
                                        z5 = false;
                                        break;
                                    } else if (iArr[i13] == d3) {
                                        z5 = true;
                                        break;
                                    } else {
                                        i13++;
                                    }
                                }
                            }
                            if (z5) {
                                z4 = true;
                                break;
                            }
                        }
                        i12++;
                    }
                    if (!z4) {
                        return false;
                    }
                } else if (i10 != 0) {
                    dVar.a(i10, false);
                }
            }
            j4 = -1;
            z3 = false;
        }
        z2 = false;
        return z4 && z == z2;
    }
}
