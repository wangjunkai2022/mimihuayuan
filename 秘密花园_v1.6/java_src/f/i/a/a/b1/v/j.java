package f.i.a.a.b1.v;

import com.tencent.smtt.sdk.TbsListener;
import f.i.a.a.b0;
import f.i.a.a.b1.v.h;
import f.i.a.a.h0;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: VorbisReader.java */
/* loaded from: classes.dex */
public final class j extends h {
    public a n;
    public int o;
    public boolean p;
    public m q;
    public k r;

    /* compiled from: VorbisReader.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final m a;
        public final byte[] b;

        /* renamed from: c  reason: collision with root package name */
        public final l[] f4362c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4363d;

        public a(m mVar, k kVar, byte[] bArr, l[] lVarArr, int i2) {
            this.a = mVar;
            this.b = bArr;
            this.f4362c = lVarArr;
            this.f4363d = i2;
        }
    }

    @Override // f.i.a.a.b1.v.h
    public void c(long j2) {
        this.f4353g = j2;
        this.p = j2 != 0;
        m mVar = this.q;
        this.o = mVar != null ? mVar.f4365d : 0;
    }

    @Override // f.i.a.a.b1.v.h
    public long d(u uVar) {
        int i2;
        byte[] bArr = uVar.a;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        byte b = bArr[0];
        a aVar = this.n;
        if (!aVar.f4362c[(b >> 1) & (255 >>> (8 - aVar.f4363d))].a) {
            i2 = aVar.a.f4365d;
        } else {
            i2 = aVar.a.f4366e;
        }
        long j2 = this.p ? (this.o + i2) / 4 : 0;
        uVar.z(uVar.f5785c + 4);
        byte[] bArr2 = uVar.a;
        int i3 = uVar.f5785c;
        bArr2[i3 - 4] = (byte) (j2 & 255);
        bArr2[i3 - 3] = (byte) ((j2 >>> 8) & 255);
        bArr2[i3 - 2] = (byte) ((j2 >>> 16) & 255);
        bArr2[i3 - 1] = (byte) ((j2 >>> 24) & 255);
        this.p = true;
        this.o = i2;
        return j2;
    }

    @Override // f.i.a.a.b1.v.h
    public boolean e(u uVar, long j2, h.b bVar) throws IOException, InterruptedException {
        a aVar;
        long j3;
        if (this.n != null) {
            return false;
        }
        int i2 = 4;
        if (this.q == null) {
            c.a.a.b.g.h.w1(1, uVar, false);
            long g2 = uVar.g();
            int p = uVar.p();
            long g3 = uVar.g();
            int f2 = uVar.f();
            int f3 = uVar.f();
            int f4 = uVar.f();
            int p2 = uVar.p();
            this.q = new m(g2, p, g3, f2, f3, f4, (int) Math.pow(2.0d, p2 & 15), (int) Math.pow(2.0d, (p2 & TbsListener.ErrorCode.TPATCH_VERSION_FAILED) >> 4), (uVar.p() & 1) > 0, Arrays.copyOf(uVar.a, uVar.f5785c));
        } else if (this.r == null) {
            c.a.a.b.g.h.w1(3, uVar, false);
            String m2 = uVar.m((int) uVar.g());
            long g4 = uVar.g();
            String[] strArr = new String[(int) g4];
            int length = m2.length() + 11 + 4;
            for (int i3 = 0; i3 < g4; i3++) {
                strArr[i3] = uVar.m((int) uVar.g());
                length = length + 4 + strArr[i3].length();
            }
            if ((uVar.p() & 1) != 0) {
                this.r = new k(m2, strArr, length + 1);
            } else {
                throw new h0("framing bit expected to be set");
            }
        } else {
            int i4 = uVar.f5785c;
            byte[] bArr = new byte[i4];
            int i5 = 0;
            System.arraycopy(uVar.a, 0, bArr, 0, i4);
            int i6 = this.q.a;
            int i7 = 5;
            c.a.a.b.g.h.w1(5, uVar, false);
            int p3 = uVar.p() + 1;
            i iVar = new i(uVar.a);
            iVar.c(uVar.b * 8);
            int i8 = 0;
            while (true) {
                int i9 = 16;
                if (i8 < p3) {
                    if (iVar.b(24) == 5653314) {
                        int b = iVar.b(16);
                        int b2 = iVar.b(24);
                        long[] jArr = new long[b2];
                        long j4 = 0;
                        if (!iVar.a()) {
                            boolean a2 = iVar.a();
                            while (i5 < b2) {
                                if (a2) {
                                    if (iVar.a()) {
                                        jArr[i5] = iVar.b(i7) + 1;
                                    } else {
                                        jArr[i5] = j4;
                                    }
                                    i7 = 5;
                                } else {
                                    jArr[i5] = iVar.b(i7) + 1;
                                }
                                i5++;
                                i2 = 4;
                                j4 = 0;
                            }
                        } else {
                            int b3 = iVar.b(i7) + 1;
                            int i10 = 0;
                            while (i10 < b2) {
                                int b4 = iVar.b(c.a.a.b.g.h.f0(b2 - i10));
                                for (int i11 = 0; i11 < b4 && i10 < b2; i11++) {
                                    jArr[i10] = b3;
                                    i10++;
                                }
                                b3++;
                            }
                            i2 = 4;
                        }
                        int b5 = iVar.b(i2);
                        if (b5 > 2) {
                            throw new h0(f.b.a.a.a.J("lookup type greater than 2 not decodable: ", b5));
                        }
                        if (b5 == 1 || b5 == 2) {
                            iVar.c(32);
                            iVar.c(32);
                            int b6 = iVar.b(4) + 1;
                            iVar.c(1);
                            if (b5 == 1) {
                                j3 = b != 0 ? (long) Math.floor(Math.pow(b2, 1.0d / b)) : 0L;
                            } else {
                                j3 = b2 * b;
                            }
                            iVar.c((int) (b6 * j3));
                        }
                        i8++;
                        i5 = 0;
                        i2 = 4;
                    } else {
                        StringBuilder o = f.b.a.a.a.o("expected code book to start with [0x56, 0x43, 0x42] at ");
                        o.append((iVar.f4360c * 8) + iVar.f4361d);
                        throw new h0(o.toString());
                    }
                } else {
                    int i12 = 6;
                    int b7 = iVar.b(6) + 1;
                    for (int i13 = 0; i13 < b7; i13++) {
                        if (iVar.b(16) != 0) {
                            throw new h0("placeholder of time domain transforms not zeroed out");
                        }
                    }
                    int i14 = 1;
                    int b8 = iVar.b(6) + 1;
                    int i15 = 0;
                    while (i15 < b8) {
                        int b9 = iVar.b(i9);
                        if (b9 == 0) {
                            int i16 = 8;
                            iVar.c(8);
                            iVar.c(16);
                            iVar.c(16);
                            iVar.c(6);
                            iVar.c(8);
                            int b10 = iVar.b(4) + 1;
                            int i17 = 0;
                            while (i17 < b10) {
                                iVar.c(i16);
                                i17++;
                                i16 = 8;
                            }
                        } else if (b9 == i14) {
                            int b11 = iVar.b(i7);
                            int[] iArr = new int[b11];
                            int i18 = -1;
                            for (int i19 = 0; i19 < b11; i19++) {
                                iArr[i19] = iVar.b(4);
                                if (iArr[i19] > i18) {
                                    i18 = iArr[i19];
                                }
                            }
                            int i20 = i18 + 1;
                            int[] iArr2 = new int[i20];
                            for (int i21 = 0; i21 < i20; i21++) {
                                int i22 = 1;
                                iArr2[i21] = iVar.b(3) + 1;
                                int b12 = iVar.b(2);
                                int i23 = 8;
                                if (b12 > 0) {
                                    iVar.c(8);
                                }
                                int i24 = 0;
                                while (i24 < (i22 << b12)) {
                                    iVar.c(i23);
                                    i24++;
                                    i22 = 1;
                                    i23 = 8;
                                }
                            }
                            iVar.c(2);
                            int b13 = iVar.b(4);
                            int i25 = 0;
                            int i26 = 0;
                            for (int i27 = 0; i27 < b11; i27++) {
                                i25 += iArr2[iArr[i27]];
                                while (i26 < i25) {
                                    iVar.c(b13);
                                    i26++;
                                }
                            }
                        } else {
                            throw new h0(f.b.a.a.a.J("floor type greater than 1 not decodable: ", b9));
                        }
                        i15++;
                        i12 = 6;
                        i7 = 5;
                        i14 = 1;
                        i9 = 16;
                    }
                    int i28 = 1;
                    int b14 = iVar.b(i12) + 1;
                    int i29 = 0;
                    while (i29 < b14) {
                        if (iVar.b(16) <= 2) {
                            iVar.c(24);
                            iVar.c(24);
                            iVar.c(24);
                            int b15 = iVar.b(i12) + i28;
                            int i30 = 8;
                            iVar.c(8);
                            int[] iArr3 = new int[b15];
                            for (int i31 = 0; i31 < b15; i31++) {
                                iArr3[i31] = ((iVar.a() ? iVar.b(5) : 0) * 8) + iVar.b(3);
                            }
                            int i32 = 0;
                            while (i32 < b15) {
                                int i33 = 0;
                                while (i33 < i30) {
                                    if ((iArr3[i32] & (1 << i33)) != 0) {
                                        iVar.c(i30);
                                    }
                                    i33++;
                                    i30 = 8;
                                }
                                i32++;
                                i30 = 8;
                            }
                            i29++;
                            i12 = 6;
                            i28 = 1;
                        } else {
                            throw new h0("residueType greater than 2 is not decodable");
                        }
                    }
                    int b16 = iVar.b(i12) + 1;
                    for (int i34 = 0; i34 < b16; i34++) {
                        if (iVar.b(16) == 0) {
                            int b17 = iVar.a() ? iVar.b(4) + 1 : 1;
                            if (iVar.a()) {
                                int b18 = iVar.b(8) + 1;
                                for (int i35 = 0; i35 < b18; i35++) {
                                    int i36 = i6 - 1;
                                    iVar.c(c.a.a.b.g.h.f0(i36));
                                    iVar.c(c.a.a.b.g.h.f0(i36));
                                }
                            }
                            if (iVar.b(2) != 0) {
                                throw new h0("to reserved bits must be zero after mapping coupling steps");
                            }
                            if (b17 > 1) {
                                for (int i37 = 0; i37 < i6; i37++) {
                                    iVar.c(4);
                                }
                            }
                            for (int i38 = 0; i38 < b17; i38++) {
                                iVar.c(8);
                                iVar.c(8);
                                iVar.c(8);
                            }
                        }
                    }
                    int b19 = iVar.b(6) + 1;
                    l[] lVarArr = new l[b19];
                    for (int i39 = 0; i39 < b19; i39++) {
                        lVarArr[i39] = new l(iVar.a(), iVar.b(16), iVar.b(16), iVar.b(8));
                    }
                    if (iVar.a()) {
                        aVar = new a(this.q, this.r, bArr, lVarArr, c.a.a.b.g.h.f0(b19 - 1));
                    } else {
                        throw new h0("framing bit after modes not set as expected");
                    }
                }
            }
        }
        aVar = null;
        this.n = aVar;
        if (aVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.n.a.f4367f);
        arrayList.add(this.n.b);
        m mVar = this.n.a;
        bVar.a = b0.j(null, "audio/vorbis", null, mVar.f4364c, -1, mVar.a, (int) mVar.b, arrayList, null, 0, null);
        return true;
    }

    @Override // f.i.a.a.b1.v.h
    public void f(boolean z) {
        super.f(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }
}
