package f.i.a.a.m1;

import android.util.Pair;
/* compiled from: CodecSpecificDataUtil.java */
/* loaded from: classes.dex */
public final class i {
    public static final byte[] a = {0, 0, 0, 1};
    public static final int[] b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f5756c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static byte[] a(int i2, int i3, int i4) {
        return new byte[]{(byte) (((i2 << 3) & 248) | ((i3 >> 1) & 7)), (byte) (((i3 << 7) & 128) | ((i4 << 3) & 120))};
    }

    public static int b(t tVar) {
        int f2 = tVar.f(4);
        if (f2 == 15) {
            return tVar.f(24);
        }
        c.a.a.b.g.h.m(f2 < 13);
        return b[f2];
    }

    public static boolean c(byte[] bArr, int i2) {
        if (bArr.length - i2 <= a.length) {
            return false;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr2 = a;
            if (i3 >= bArr2.length) {
                return true;
            }
            if (bArr[i2 + i3] != bArr2[i3]) {
                return false;
            }
            i3++;
        }
    }

    public static Pair<Integer, Integer> d(t tVar, boolean z) throws f.i.a.a.h0 {
        int f2 = tVar.f(5);
        if (f2 == 31) {
            f2 = tVar.f(6) + 32;
        }
        int b2 = b(tVar);
        int f3 = tVar.f(4);
        if (f2 == 5 || f2 == 29) {
            b2 = b(tVar);
            int f4 = tVar.f(5);
            if (f4 == 31) {
                f4 = tVar.f(6) + 32;
            }
            f2 = f4;
            if (f2 == 22) {
                f3 = tVar.f(4);
            }
        }
        if (z) {
            if (f2 != 1 && f2 != 2 && f2 != 3 && f2 != 4 && f2 != 6 && f2 != 7 && f2 != 17) {
                switch (f2) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw new f.i.a.a.h0(f.b.a.a.a.J("Unsupported audio object type: ", f2));
                }
            }
            tVar.l(1);
            if (tVar.e()) {
                tVar.l(14);
            }
            boolean e2 = tVar.e();
            if (f3 != 0) {
                if (f2 == 6 || f2 == 20) {
                    tVar.l(3);
                }
                if (e2) {
                    if (f2 == 22) {
                        tVar.l(16);
                    }
                    if (f2 == 17 || f2 == 19 || f2 == 20 || f2 == 23) {
                        tVar.l(3);
                    }
                    tVar.l(1);
                }
                switch (f2) {
                    case 17:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        int f5 = tVar.f(2);
                        if (f5 == 2 || f5 == 3) {
                            throw new f.i.a.a.h0(f.b.a.a.a.J("Unsupported epConfig: ", f5));
                        }
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }
        int i2 = f5756c[f3];
        c.a.a.b.g.h.m(i2 != -1);
        return Pair.create(Integer.valueOf(b2), Integer.valueOf(i2));
    }

    public static Pair<Integer, Integer> e(byte[] bArr) throws f.i.a.a.h0 {
        return d(new t(bArr), false);
    }
}
