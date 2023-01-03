package f.i.a.a.w0;

import c.a.a.b.g.h;
import java.util.Arrays;

/* compiled from: Sonic.java */
/* loaded from: classes.dex */
public final class c0 {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final float f5827c;

    /* renamed from: d  reason: collision with root package name */
    public final float f5828d;

    /* renamed from: e  reason: collision with root package name */
    public final float f5829e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5830f;

    /* renamed from: g  reason: collision with root package name */
    public final int f5831g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5832h;

    /* renamed from: i  reason: collision with root package name */
    public final short[] f5833i;

    /* renamed from: j  reason: collision with root package name */
    public short[] f5834j;

    /* renamed from: k  reason: collision with root package name */
    public int f5835k;

    /* renamed from: l  reason: collision with root package name */
    public short[] f5836l;

    /* renamed from: m  reason: collision with root package name */
    public int f5837m;
    public short[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;

    public c0(int i2, int i3, float f2, float f3, int i4) {
        this.a = i2;
        this.b = i3;
        this.f5827c = f2;
        this.f5828d = f3;
        this.f5829e = ((float) i2) / ((float) i4);
        this.f5830f = i2 / 400;
        int i5 = i2 / 65;
        this.f5831g = i5;
        int i6 = i5 * 2;
        this.f5832h = i6;
        this.f5833i = new short[i6];
        this.f5834j = new short[i6 * i3];
        this.f5836l = new short[i6 * i3];
        this.n = new short[i6 * i3];
    }

    public static void e(int i2, int i3, short[] sArr, int i4, short[] sArr2, int i5, short[] sArr3, int i6) {
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = (i4 * i3) + i7;
            int i9 = (i6 * i3) + i7;
            int i10 = (i5 * i3) + i7;
            for (int i11 = 0; i11 < i2; i11++) {
                sArr[i8] = (short) (((sArr3[i9] * i11) + ((i2 - i11) * sArr2[i10])) / i2);
                i8 += i3;
                i10 += i3;
                i9 += i3;
            }
        }
    }

    public final void a(short[] sArr, int i2, int i3) {
        short[] c2 = c(this.f5836l, this.f5837m, i3);
        this.f5836l = c2;
        int i4 = this.b;
        System.arraycopy(sArr, i2 * i4, c2, this.f5837m * i4, i4 * i3);
        this.f5837m += i3;
    }

    public final void b(short[] sArr, int i2, int i3) {
        int i4 = this.f5832h / i3;
        int i5 = this.b;
        int i6 = i3 * i5;
        int i7 = i2 * i5;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            for (int i10 = 0; i10 < i6; i10++) {
                i9 += sArr[(i8 * i6) + i7 + i10];
            }
            this.f5833i[i8] = (short) (i9 / i6);
        }
    }

    public final short[] c(short[] sArr, int i2, int i3) {
        int length = sArr.length;
        int i4 = this.b;
        int i5 = length / i4;
        if (i2 + i3 <= i5) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i5 * 3) / 2) + i3) * i4);
    }

    public final int d(short[] sArr, int i2, int i3, int i4) {
        int i5 = i2 * this.b;
        int i6 = 1;
        int i7 = 255;
        int i8 = 0;
        int i9 = 0;
        while (i3 <= i4) {
            int i10 = 0;
            for (int i11 = 0; i11 < i3; i11++) {
                i10 += Math.abs(sArr[i5 + i11] - sArr[(i5 + i3) + i11]);
            }
            if (i10 * i8 < i6 * i3) {
                i8 = i3;
                i6 = i10;
            }
            if (i10 * i7 > i9 * i3) {
                i7 = i3;
                i9 = i10;
            }
            i3++;
        }
        this.u = i6 / i8;
        this.v = i9 / i7;
        return i8;
    }

    public final void f() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = this.f5837m;
        float f2 = this.f5827c;
        float f3 = this.f5828d;
        float f4 = f2 / f3;
        float f5 = this.f5829e * f3;
        double d2 = (double) f4;
        float f6 = 1.0f;
        int i10 = 1;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            int i11 = this.f5835k;
            if (i11 >= this.f5832h) {
                int i12 = 0;
                while (true) {
                    int i13 = this.r;
                    if (i13 > 0) {
                        int min = Math.min(this.f5832h, i13);
                        a(this.f5834j, i12, min);
                        this.r -= min;
                        i12 += min;
                    } else {
                        short[] sArr = this.f5834j;
                        int i14 = this.a;
                        int i15 = i14 > 4000 ? i14 / 4000 : 1;
                        if (this.b == i10 && i15 == i10) {
                            i6 = d(sArr, i12, this.f5830f, this.f5831g);
                        } else {
                            b(sArr, i12, i15);
                            int d3 = d(this.f5833i, 0, this.f5830f / i15, this.f5831g / i15);
                            if (i15 != i10) {
                                int i16 = d3 * i15;
                                int i17 = i15 * 4;
                                int i18 = i16 - i17;
                                int i19 = i16 + i17;
                                int i20 = this.f5830f;
                                if (i18 < i20) {
                                    i18 = i20;
                                }
                                int i21 = this.f5831g;
                                if (i19 > i21) {
                                    i19 = i21;
                                }
                                if (this.b == i10) {
                                    i6 = d(sArr, i12, i18, i19);
                                } else {
                                    b(sArr, i12, i10);
                                    i6 = d(this.f5833i, 0, i18, i19);
                                }
                            } else {
                                i6 = d3;
                            }
                        }
                        int i22 = this.u;
                        int i23 = i22 != 0 && this.s != 0 && this.v <= i22 * 3 && i22 * 2 > this.t * 3 ? this.s : i6;
                        this.t = this.u;
                        this.s = i6;
                        if (d2 > 1.0d) {
                            short[] sArr2 = this.f5834j;
                            if (f4 >= 2.0f) {
                                i8 = (int) (((float) i23) / (f4 - f6));
                            } else {
                                this.r = (int) (((2.0f - f4) * ((float) i23)) / (f4 - f6));
                                i8 = i23;
                            }
                            short[] c2 = c(this.f5836l, this.f5837m, i8);
                            this.f5836l = c2;
                            e(i8, this.b, c2, this.f5837m, sArr2, i12, sArr2, i12 + i23);
                            this.f5837m += i8;
                            i12 = i23 + i8 + i12;
                        } else {
                            short[] sArr3 = this.f5834j;
                            if (f4 < 0.5f) {
                                i7 = (int) ((((float) i23) * f4) / (f6 - f4));
                            } else {
                                this.r = (int) ((((2.0f * f4) - f6) * ((float) i23)) / (f6 - f4));
                                i7 = i23;
                            }
                            int i24 = i23 + i7;
                            short[] c3 = c(this.f5836l, this.f5837m, i24);
                            this.f5836l = c3;
                            int i25 = this.b;
                            System.arraycopy(sArr3, i12 * i25, c3, this.f5837m * i25, i25 * i23);
                            e(i7, this.b, this.f5836l, this.f5837m + i23, sArr3, i12 + i23, sArr3, i12);
                            this.f5837m += i24;
                            i12 += i7;
                        }
                    }
                    if (this.f5832h + i12 > i11) {
                        break;
                    }
                    f6 = 1.0f;
                    i10 = 1;
                }
                int i26 = this.f5835k - i12;
                short[] sArr4 = this.f5834j;
                int i27 = this.b;
                System.arraycopy(sArr4, i12 * i27, sArr4, 0, i27 * i26);
                this.f5835k = i26;
            }
            f6 = 1.0f;
        } else {
            a(this.f5834j, 0, this.f5835k);
            this.f5835k = 0;
        }
        if (f5 != f6 && this.f5837m != i9) {
            int i28 = this.a;
            int i29 = (int) (((float) i28) / f5);
            while (true) {
                if (i29 <= 16384 && i28 <= 16384) {
                    break;
                }
                i29 /= 2;
                i28 /= 2;
            }
            int i30 = this.f5837m - i9;
            short[] c4 = c(this.n, this.o, i30);
            this.n = c4;
            short[] sArr5 = this.f5836l;
            int i31 = this.b;
            System.arraycopy(sArr5, i9 * i31, c4, this.o * i31, i31 * i30);
            this.f5837m = i9;
            this.o += i30;
            int i32 = 0;
            while (true) {
                i2 = this.o;
                i3 = i2 - 1;
                if (i32 >= i3) {
                    break;
                }
                while (true) {
                    i4 = this.p + 1;
                    int i33 = i4 * i29;
                    i5 = this.q;
                    if (i33 <= i5 * i28) {
                        break;
                    }
                    this.f5836l = c(this.f5836l, this.f5837m, 1);
                    int i34 = 0;
                    while (true) {
                        int i35 = this.b;
                        if (i34 < i35) {
                            short[] sArr6 = this.n;
                            int i36 = (i32 * i35) + i34;
                            short s = sArr6[i36];
                            short s2 = sArr6[i36 + i35];
                            int i37 = this.p;
                            int i38 = i37 * i29;
                            int i39 = (i37 + 1) * i29;
                            int i40 = i39 - (this.q * i28);
                            int i41 = i39 - i38;
                            this.f5836l[(this.f5837m * i35) + i34] = (short) ((((i41 - i40) * s2) + (s * i40)) / i41);
                            i34++;
                        }
                    }
                    this.q++;
                    this.f5837m++;
                }
                this.p = i4;
                if (i4 == i28) {
                    this.p = 0;
                    h.v(i5 == i29);
                    this.q = 0;
                }
                i32++;
            }
            if (i3 != 0) {
                short[] sArr7 = this.n;
                int i42 = this.b;
                System.arraycopy(sArr7, i3 * i42, sArr7, 0, (i2 - i3) * i42);
                this.o -= i3;
            }
        }
    }
}
