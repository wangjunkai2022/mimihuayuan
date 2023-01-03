package f.i.a.a.b1.u;

import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: Sniffer.java */
/* loaded from: classes.dex */
public final class i {
    public static final int[] a = {h0.C("isom"), h0.C("iso2"), h0.C("iso3"), h0.C("iso4"), h0.C("iso5"), h0.C("iso6"), h0.C("avc1"), h0.C("hvc1"), h0.C("hev1"), h0.C("av01"), h0.C("mp41"), h0.C("mp42"), h0.C("3g2a"), h0.C("3g2b"), h0.C("3gr6"), h0.C("3gs6"), h0.C("3ge6"), h0.C("3gg6"), h0.C("M4V "), h0.C("M4A "), h0.C("f4v "), h0.C("kddi"), h0.C("M4VP"), h0.C("qt  "), h0.C("MSNV"), h0.C("dby1")};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r8v20 */
    public static boolean a(f.i.a.a.b1.d dVar, boolean z) throws IOException, InterruptedException {
        boolean z2;
        int i2;
        int i3;
        long j2 = dVar.f4041c;
        long j3 = 4096;
        long j4 = -1;
        int i4 = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
        if (i4 != 0 && j2 <= 4096) {
            j3 = j2;
        }
        int i5 = (int) j3;
        u uVar = new u(64);
        ?? r8 = 0;
        int i6 = 0;
        boolean z3 = false;
        while (i6 < i5) {
            uVar.w(8);
            dVar.d(uVar.a, r8, 8, r8);
            long q = uVar.q();
            int d2 = uVar.d();
            if (q == 1) {
                dVar.d(uVar.a, 8, 8, r8);
                uVar.z(16);
                q = uVar.j();
                i2 = i6;
                i3 = 16;
            } else {
                i2 = i6;
                if (q == 0) {
                    long j5 = dVar.f4041c;
                    if (j5 != j4) {
                        q = 8 + (j5 - dVar.c());
                    }
                }
                i3 = 8;
            }
            int i7 = i2;
            if (i4 != 0 && i7 + q > j2) {
                return false;
            }
            long j6 = i3;
            if (q < j6) {
                return false;
            }
            i6 = i7 + i3;
            if (d2 == a.R) {
                i5 += (int) q;
                if (i4 != 0 && i5 > j2) {
                    i5 = (int) j2;
                }
            } else if (d2 == a.Y || d2 == a.a0) {
                z2 = true;
                break;
            } else if ((i6 + q) - j6 >= i5) {
                break;
            } else {
                int i8 = (int) (q - j6);
                i6 += i8;
                if (d2 == a.b) {
                    if (i8 < 8) {
                        return false;
                    }
                    uVar.w(i8);
                    dVar.d(uVar.a, 0, i8, false);
                    int i9 = i8 / 4;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= i9) {
                            break;
                        }
                        boolean z4 = true;
                        if (i10 == 1) {
                            uVar.B(4);
                        } else {
                            int d3 = uVar.d();
                            if ((d3 >>> 8) != h0.C("3gp")) {
                                int[] iArr = a;
                                int length = iArr.length;
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= length) {
                                        z4 = false;
                                        break;
                                    } else if (iArr[i11] == d3) {
                                        z4 = true;
                                        break;
                                    } else {
                                        i11++;
                                    }
                                }
                            }
                            if (z4) {
                                z3 = true;
                                break;
                            }
                        }
                        i10++;
                    }
                    if (!z3) {
                        return false;
                    }
                } else if (i8 != 0) {
                    dVar.a(i8, false);
                }
            }
            j4 = -1;
            r8 = 0;
        }
        z2 = false;
        return z3 && z == z2;
    }
}
