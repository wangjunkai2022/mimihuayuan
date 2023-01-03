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
        public final l[] f4278c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4279d;

        public a(m mVar, k kVar, byte[] bArr, l[] lVarArr, int i2) {
            this.a = mVar;
            this.b = bArr;
            this.f4278c = lVarArr;
            this.f4279d = i2;
        }
    }

    @Override // f.i.a.a.b1.v.h
    public void c(long j2) {
        this.f4269g = j2;
        int i2 = 0;
        this.p = j2 != 0;
        m mVar = this.q;
        if (mVar != null) {
            i2 = mVar.f4281d;
        }
        this.o = i2;
    }

    @Override // f.i.a.a.b1.v.h
    public long d(u uVar) {
        int i2;
        byte[] bArr = uVar.a;
        int i3 = 0;
        if ((bArr[0] & 1) == 1) {
            return -1;
        }
        byte b = bArr[0];
        a aVar = this.n;
        if (!aVar.f4278c[(b >> 1) & (255 >>> (8 - aVar.f4279d))].a) {
            i2 = aVar.a.f4281d;
        } else {
            i2 = aVar.a.f4282e;
        }
        if (this.p) {
            i3 = (this.o + i2) / 4;
        }
        long j2 = (long) i3;
        uVar.z(uVar.f5701c + 4);
        byte[] bArr2 = uVar.a;
        int i4 = uVar.f5701c;
        bArr2[i4 - 4] = (byte) ((int) (j2 & 255));
        bArr2[i4 - 3] = (byte) ((int) ((j2 >>> 8) & 255));
        bArr2[i4 - 2] = (byte) ((int) ((j2 >>> 16) & 255));
        bArr2[i4 - 1] = (byte) ((int) ((j2 >>> 24) & 255));
        this.p = true;
        this.o = i2;
        return j2;
    }

    @Override // f.i.a.a.b1.v.h
    public boolean e(u uVar, long j2, h.b bVar) throws IOException, InterruptedException {
        a aVar;
        if (this.n != null) {
            return false;
        }
        int i2 = 4;
        if (this.q == null) {
            c.a.a.b.g.h.u1(1, uVar, false);
            long g2 = uVar.g();
            int p = uVar.p();
            long g3 = uVar.g();
            int f2 = uVar.f();
            int f3 = uVar.f();
            int f4 = uVar.f();
            int p2 = uVar.p();
            this.q = new m(g2, p, g3, f2, f3, f4, (int) Math.pow(2.0d, (double) (p2 & 15)), (int) Math.pow(2.0d, (double) ((p2 & TbsListener.ErrorCode.TPATCH_VERSION_FAILED) >> 4)), (uVar.p() & 1) > 0, Arrays.copyOf(uVar.a, uVar.f5701c));
        } else if (this.r == null) {
            c.a.a.b.g.h.u1(3, uVar, false);
            String m2 = uVar.m((int) uVar.g());
            long g4 = uVar.g();
            String[] strArr = new String[(int) g4];
            int length = m2.length() + 11 + 4;
            for (int i3 = 0; ((long) i3) < g4; i3++) {
                strArr[i3] = uVar.m((int) uVar.g());
                length = length + 4 + strArr[i3].length();
            }
            if ((uVar.p() & 1) != 0) {
                this.r = new k(m2, strArr, length + 1);
            } else {
                throw new h0("framing bit expected to be set");
            }
        } else {
            int i4 = uVar.f5701c;
            byte[] bArr = new byte[i4];
            int i5 = 0;
            System.arraycopy(uVar.a, 0, bArr, 0, i4);
            int i6 = this.q.a;
            int i7 = 5;
            c.a.a.b.g.h.u1(5, uVar, false);
            int p3 = uVar.p() + 1;
            i iVar = new i(uVar.a);
            iVar.c(uVar.b * 8);
            int i8 = 0;
            while (true) {
                int i9 = 16;
                if (i8 >= p3) {
                    int i10 = 6;
                    int b = iVar.b(6) + 1;
                    for (int i11 = 0; i11 < b; i11++) {
                        if (iVar.b(16) != 0) {
                            throw new h0("placeholder of time domain transforms not zeroed out");
                        }
                    }
                    int i12 = 1;
                    int b2 = iVar.b(6) + 1;
                    int i13 = 0;
                    while (i13 < b2) {
                        int b3 = iVar.b(i9);
                        if (b3 == 0) {
                            int i14 = 8;
                            iVar.c(8);
                            iVar.c(16);
                            iVar.c(16);
                            iVar.c(6);
                            iVar.c(8);
                            int b4 = iVar.b(4) + 1;
                            int i15 = 0;
                            while (i15 < b4) {
                                iVar.c(i14);
                                i15++;
                                i14 = 8;
                            }
                        } else if (b3 == i12) {
                            int b5 = iVar.b(i7);
                            int[] iArr = new int[b5];
                            int i16 = -1;
                            for (int i17 = 0; i17 < b5; i17++) {
                                iArr[i17] = iVar.b(4);
                                if (iArr[i17] > i16) {
                                    i16 = iArr[i17];
                                }
                            }
                            int i18 = i16 + 1;
                            int[] iArr2 = new int[i18];
                            for (int i19 = 0; i19 < i18; i19++) {
                                int i20 = 1;
                                iArr2[i19] = iVar.b(3) + 1;
                                int b6 = iVar.b(2);
                                int i21 = 8;
                                if (b6 > 0) {
                                    iVar.c(8);
                                }
                                int i22 = 0;
                                while (i22 < (i20 << b6)) {
                                    iVar.c(i21);
                                    i22++;
                                    i20 = 1;
                                    i21 = 8;
                                }
                            }
                            iVar.c(2);
                            int b7 = iVar.b(4);
                            int i23 = 0;
                            int i24 = 0;
                            for (int i25 = 0; i25 < b5; i25++) {
                                i23 += iArr2[iArr[i25]];
                                while (i24 < i23) {
                                    iVar.c(b7);
                                    i24++;
                                }
                            }
                        } else {
                            throw new h0(f.b.a.a.a.J("floor type greater than 1 not decodable: ", b3));
                        }
                        i13++;
                        i10 = 6;
                        i7 = 5;
                        i12 = 1;
                        i9 = 16;
                    }
                    int i26 = 1;
                    int b8 = iVar.b(i10) + 1;
                    int i27 = 0;
                    while (i27 < b8) {
                        if (iVar.b(16) <= 2) {
                            iVar.c(24);
                            iVar.c(24);
                            iVar.c(24);
                            int b9 = iVar.b(i10) + i26;
                            int i28 = 8;
                            iVar.c(8);
                            int[] iArr3 = new int[b9];
                            for (int i29 = 0; i29 < b9; i29++) {
                                iArr3[i29] = ((iVar.a() ? iVar.b(5) : 0) * 8) + iVar.b(3);
                            }
                            int i30 = 0;
                            while (i30 < b9) {
                                int i31 = 0;
                                while (i31 < i28) {
                                    if ((iArr3[i30] & (1 << i31)) != 0) {
                                        iVar.c(i28);
                                    }
                                    i31++;
                                    i28 = 8;
                                }
                                i30++;
                                i28 = 8;
                            }
                            i27++;
                            i10 = 6;
                            i26 = 1;
                        } else {
                            throw new h0("residueType greater than 2 is not decodable");
                        }
                    }
                    int b10 = iVar.b(i10) + 1;
                    for (int i32 = 0; i32 < b10; i32++) {
                        if (iVar.b(16) == 0) {
                            int b11 = iVar.a() ? iVar.b(4) + 1 : 1;
                            if (iVar.a()) {
                                int b12 = iVar.b(8) + 1;
                                for (int i33 = 0; i33 < b12; i33++) {
                                    int i34 = i6 - 1;
                                    iVar.c(c.a.a.b.g.h.f0(i34));
                                    iVar.c(c.a.a.b.g.h.f0(i34));
                                }
                            }
                            if (iVar.b(2) == 0) {
                                if (b11 > 1) {
                                    for (int i35 = 0; i35 < i6; i35++) {
                                        iVar.c(4);
                                    }
                                }
                                for (int i36 = 0; i36 < b11; i36++) {
                                    iVar.c(8);
                                    iVar.c(8);
                                    iVar.c(8);
                                }
                            } else {
                                throw new h0("to reserved bits must be zero after mapping coupling steps");
                            }
                        }
                    }
                    int b13 = iVar.b(6) + 1;
                    l[] lVarArr = new l[b13];
                    for (int i37 = 0; i37 < b13; i37++) {
                        lVarArr[i37] = new l(iVar.a(), iVar.b(16), iVar.b(16), iVar.b(8));
                    }
                    if (iVar.a()) {
                        aVar = new a(this.q, this.r, bArr, lVarArr, c.a.a.b.g.h.f0(b13 - 1));
                    } else {
                        throw new h0("framing bit after modes not set as expected");
                    }
                } else if (iVar.b(24) == 5653314) {
                    int b14 = iVar.b(16);
                    int b15 = iVar.b(24);
                    long[] jArr = new long[b15];
                    long j3 = 0;
                    if (!iVar.a()) {
                        boolean a2 = iVar.a();
                        while (i5 < b15) {
                            if (a2) {
                                if (iVar.a()) {
                                    jArr[i5] = (long) (iVar.b(i7) + 1);
                                } else {
                                    jArr[i5] = j3;
                                }
                                i7 = 5;
                            } else {
                                jArr[i5] = (long) (iVar.b(i7) + 1);
                            }
                            i5++;
                            i2 = 4;
                            j3 = 0;
                        }
                    } else {
                        int b16 = iVar.b(i7) + 1;
                        int i38 = 0;
                        while (i38 < b15) {
                            int b17 = iVar.b(c.a.a.b.g.h.f0(b15 - i38));
                            for (int i39 = 0; i39 < b17 && i38 < b15; i39++) {
                                jArr[i38] = (long) b16;
                                i38++;
                            }
                            b16++;
                        }
                        i2 = 4;
                    }
                    int b18 = iVar.b(i2);
                    if (b18 <= 2) {
                        if (b18 == 1 || b18 == 2) {
                            iVar.c(32);
                            iVar.c(32);
                            int b19 = iVar.b(4) + 1;
                            iVar.c(1);
                            iVar.c((int) (((long) b19) * (b18 == 1 ? b14 != 0 ? (long) Math.floor(Math.pow((double) ((long) b15), 1.0d / ((double) ((long) b14)))) : 0 : ((long) b15) * ((long) b14))));
                        }
                        i8++;
                        i5 = 0;
                        i2 = 4;
                    } else {
                        throw new h0(f.b.a.a.a.J("lookup type greater than 2 not decodable: ", b18));
                    }
                } else {
                    StringBuilder o = f.b.a.a.a.o("expected code book to start with [0x56, 0x43, 0x42] at ");
                    o.append((iVar.f4276c * 8) + iVar.f4277d);
                    throw new h0(o.toString());
                }
            }
        }
        aVar = null;
        this.n = aVar;
        if (aVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.n.a.f4283f);
        arrayList.add(this.n.b);
        m mVar = this.n.a;
        bVar.a = b0.j(null, "audio/vorbis", null, mVar.f4280c, -1, mVar.a, (int) mVar.b, arrayList, null, 0, null);
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
