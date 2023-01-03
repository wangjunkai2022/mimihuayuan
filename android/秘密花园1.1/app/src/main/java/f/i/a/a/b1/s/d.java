package f.i.a.a.b1.s;

import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.core.util.TimeUtils;
import com.tencent.smtt.sdk.TbsListener;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.n;
import f.i.a.a.b1.p;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.p;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* compiled from: MatroskaExtractor.java */
/* loaded from: classes.dex */
public class d implements g {
    public static final byte[] Z = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] a0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    public static final byte[] b0 = h0.O("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    public static final byte[] c0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    public static final byte[] d0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    public static final UUID e0 = new UUID(72057594037932032L, -9223371306706625679L);
    public long A;
    public p B;
    public p C;
    public boolean D;
    public int E;
    public long F;
    public long G;
    public int H;
    public int I;
    public int[] J;
    public int K;
    public int L;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public byte S;
    public int T;
    public int U;
    public int V;
    public boolean W;
    public boolean X;
    public h Y;
    public final f.i.a.a.b1.s.c a;
    public final f b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseArray<c> f4097c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f4098d;

    /* renamed from: e  reason: collision with root package name */
    public final u f4099e;

    /* renamed from: f  reason: collision with root package name */
    public final u f4100f;

    /* renamed from: g  reason: collision with root package name */
    public final u f4101g;

    /* renamed from: h  reason: collision with root package name */
    public final u f4102h;

    /* renamed from: i  reason: collision with root package name */
    public final u f4103i;

    /* renamed from: j  reason: collision with root package name */
    public final u f4104j;

    /* renamed from: k  reason: collision with root package name */
    public final u f4105k;

    /* renamed from: l  reason: collision with root package name */
    public final u f4106l;

    /* renamed from: m  reason: collision with root package name */
    public final u f4107m;
    public ByteBuffer n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public c t;
    public boolean u;
    public int v;
    public long w;
    public boolean x;
    public long y;
    public long z;

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes.dex */
    public final class b implements f.i.a.a.b1.s.b {
        public b(a aVar) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:76:0x01ec, code lost:
            throw new f.i.a.a.h0("EBML lacing sample size out of range.");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(int r19, int r20, f.i.a.a.b1.d r21) throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 666
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.s.d.b.a(int, int, f.i.a.a.b1.d):void");
        }

        public void b(int i2, double d2) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            }
            if (i2 == 181) {
                dVar.t.N = (int) d2;
            } else if (i2 != 17545) {
                switch (i2) {
                    case 21969:
                        dVar.t.B = (float) d2;
                        return;
                    case 21970:
                        dVar.t.C = (float) d2;
                        return;
                    case 21971:
                        dVar.t.D = (float) d2;
                        return;
                    case 21972:
                        dVar.t.E = (float) d2;
                        return;
                    case 21973:
                        dVar.t.F = (float) d2;
                        return;
                    case 21974:
                        dVar.t.G = (float) d2;
                        return;
                    case 21975:
                        dVar.t.H = (float) d2;
                        return;
                    case 21976:
                        dVar.t.I = (float) d2;
                        return;
                    case 21977:
                        dVar.t.J = (float) d2;
                        return;
                    case 21978:
                        dVar.t.K = (float) d2;
                        return;
                    default:
                        switch (i2) {
                            case 30323:
                                dVar.t.q = (float) d2;
                                return;
                            case 30324:
                                dVar.t.r = (float) d2;
                                return;
                            case 30325:
                                dVar.t.s = (float) d2;
                                return;
                            default:
                                return;
                        }
                }
            } else {
                dVar.r = (long) d2;
            }
        }

        public void c(int i2, long j2) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            }
            if (i2 == 20529) {
                if (j2 == 0) {
                    return;
                }
                throw new f.i.a.a.h0("ContentEncodingOrder " + j2 + " not supported");
            } else if (i2 == 20530) {
                if (j2 == 1) {
                    return;
                }
                throw new f.i.a.a.h0("ContentEncodingScope " + j2 + " not supported");
            } else {
                switch (i2) {
                    case 131:
                        dVar.t.f4109d = (int) j2;
                        return;
                    case 136:
                        dVar.t.S = j2 == 1;
                        return;
                    case 155:
                        dVar.G = dVar.l(j2);
                        return;
                    case 159:
                        dVar.t.L = (int) j2;
                        return;
                    case TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_6 /* 176 */:
                        dVar.t.f4116k = (int) j2;
                        return;
                    case 179:
                        dVar.B.a(dVar.l(j2));
                        return;
                    case 186:
                        dVar.t.f4117l = (int) j2;
                        return;
                    case TbsListener.ErrorCode.COPY_EXCEPTION /* 215 */:
                        dVar.t.f4108c = (int) j2;
                        return;
                    case TbsListener.ErrorCode.RENAME_FAIL /* 231 */:
                        dVar.A = dVar.l(j2);
                        return;
                    case TbsListener.ErrorCode.TPATCH_BACKUP_NOT_VALID /* 241 */:
                        if (dVar.D) {
                            return;
                        }
                        dVar.C.a(j2);
                        dVar.D = true;
                        return;
                    case 251:
                        dVar.X = true;
                        return;
                    case 16980:
                        if (j2 == 3) {
                            return;
                        }
                        throw new f.i.a.a.h0("ContentCompAlgo " + j2 + " not supported");
                    case 17029:
                        if (j2 < 1 || j2 > 2) {
                            throw new f.i.a.a.h0("DocTypeReadVersion " + j2 + " not supported");
                        }
                        return;
                    case 17143:
                        if (j2 == 1) {
                            return;
                        }
                        throw new f.i.a.a.h0("EBMLReadVersion " + j2 + " not supported");
                    case 18401:
                        if (j2 == 5) {
                            return;
                        }
                        throw new f.i.a.a.h0("ContentEncAlgo " + j2 + " not supported");
                    case 18408:
                        if (j2 == 1) {
                            return;
                        }
                        throw new f.i.a.a.h0("AESSettingsCipherMode " + j2 + " not supported");
                    case 21420:
                        dVar.w = j2 + dVar.p;
                        return;
                    case 21432:
                        int i3 = (int) j2;
                        if (i3 == 0) {
                            dVar.t.u = 0;
                            return;
                        } else if (i3 == 1) {
                            dVar.t.u = 2;
                            return;
                        } else if (i3 == 3) {
                            dVar.t.u = 1;
                            return;
                        } else if (i3 != 15) {
                            return;
                        } else {
                            dVar.t.u = 3;
                            return;
                        }
                    case 21680:
                        dVar.t.f4118m = (int) j2;
                        return;
                    case 21682:
                        dVar.t.o = (int) j2;
                        return;
                    case 21690:
                        dVar.t.n = (int) j2;
                        return;
                    case 21930:
                        dVar.t.R = j2 == 1;
                        return;
                    case 22186:
                        dVar.t.O = j2;
                        return;
                    case 22203:
                        dVar.t.P = j2;
                        return;
                    case 25188:
                        dVar.t.M = (int) j2;
                        return;
                    case 30321:
                        int i4 = (int) j2;
                        if (i4 == 0) {
                            dVar.t.p = 0;
                            return;
                        } else if (i4 == 1) {
                            dVar.t.p = 1;
                            return;
                        } else if (i4 == 2) {
                            dVar.t.p = 2;
                            return;
                        } else if (i4 != 3) {
                            return;
                        } else {
                            dVar.t.p = 3;
                            return;
                        }
                    case 2352003:
                        dVar.t.f4110e = (int) j2;
                        return;
                    case 2807729:
                        dVar.q = j2;
                        return;
                    default:
                        switch (i2) {
                            case 21945:
                                int i5 = (int) j2;
                                if (i5 == 1) {
                                    dVar.t.y = 2;
                                    return;
                                } else if (i5 != 2) {
                                    return;
                                } else {
                                    dVar.t.y = 1;
                                    return;
                                }
                            case 21946:
                                int i6 = (int) j2;
                                if (i6 != 1) {
                                    if (i6 == 16) {
                                        dVar.t.x = 6;
                                        return;
                                    } else if (i6 == 18) {
                                        dVar.t.x = 7;
                                        return;
                                    } else if (i6 != 6 && i6 != 7) {
                                        return;
                                    }
                                }
                                dVar.t.x = 3;
                                return;
                            case 21947:
                                c cVar = dVar.t;
                                cVar.v = true;
                                int i7 = (int) j2;
                                if (i7 == 1) {
                                    cVar.w = 1;
                                    return;
                                } else if (i7 == 9) {
                                    cVar.w = 6;
                                    return;
                                } else if (i7 == 4 || i7 == 5 || i7 == 6 || i7 == 7) {
                                    dVar.t.w = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                dVar.t.z = (int) j2;
                                return;
                            case 21949:
                                dVar.t.A = (int) j2;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        public void d(int i2, long j2, long j3) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            }
            if (i2 == 160) {
                dVar.X = false;
            } else if (i2 == 174) {
                dVar.t = new c(null);
            } else if (i2 == 187) {
                dVar.D = false;
            } else if (i2 == 19899) {
                dVar.v = -1;
                dVar.w = -1L;
            } else if (i2 == 20533) {
                dVar.t.f4111f = true;
            } else if (i2 == 21968) {
                dVar.t.v = true;
            } else if (i2 == 408125543) {
                long j4 = dVar.p;
                if (j4 != -1 && j4 != j2) {
                    throw new f.i.a.a.h0("Multiple Segment elements not supported");
                }
                dVar.p = j2;
                dVar.o = j3;
            } else if (i2 != 475249515) {
                if (i2 == 524531317 && !dVar.u) {
                    if (dVar.f4098d && dVar.y != -1) {
                        dVar.x = true;
                        return;
                    }
                    dVar.Y.a(new n.b(dVar.s, 0L));
                    dVar.u = true;
                }
            } else {
                dVar.B = new p();
                dVar.C = new p();
            }
        }

        public void e(int i2, String str) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            }
            if (i2 == 134) {
                dVar.t.b = str;
            } else if (i2 == 17026) {
                if (!"webm".equals(str) && !"matroska".equals(str)) {
                    throw new f.i.a.a.h0(f.b.a.a.a.g("DocType ", str, " not supported"));
                }
            } else if (i2 == 21358) {
                dVar.t.a = str;
            } else if (i2 != 2274716) {
            } else {
                dVar.t.T = str;
            }
        }
    }

    /* compiled from: MatroskaExtractor.java */
    /* renamed from: f.i.a.a.b1.s.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0062d {
        public final byte[] a = new byte[10];
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public int f4119c;

        /* renamed from: d  reason: collision with root package name */
        public int f4120d;

        /* renamed from: e  reason: collision with root package name */
        public long f4121e;

        /* renamed from: f  reason: collision with root package name */
        public int f4122f;
    }

    public d(int i2) {
        f.i.a.a.b1.s.a aVar = new f.i.a.a.b1.s.a();
        this.p = -1L;
        this.q = -9223372036854775807L;
        this.r = -9223372036854775807L;
        this.s = -9223372036854775807L;
        this.y = -1L;
        this.z = -1L;
        this.A = -9223372036854775807L;
        this.a = aVar;
        aVar.f4093d = new b(null);
        this.f4098d = (i2 & 1) == 0;
        this.b = new f();
        this.f4097c = new SparseArray<>();
        this.f4101g = new u(4);
        this.f4102h = new u(ByteBuffer.allocate(4).putInt(-1).array());
        this.f4103i = new u(4);
        this.f4099e = new u(s.a);
        this.f4100f = new u(4);
        this.f4104j = new u();
        this.f4105k = new u();
        this.f4106l = new u(8);
        this.f4107m = new u();
    }

    public static int[] g(int[] iArr, int i2) {
        if (iArr == null) {
            return new int[i2];
        }
        return iArr.length >= i2 ? iArr : new int[Math.max(iArr.length * 2, i2)];
    }

    @Override // f.i.a.a.b1.g
    public final void a() {
    }

    public final void b(c cVar, long j2) {
        C0062d c0062d = cVar.Q;
        if (c0062d != null) {
            if (c0062d.b) {
                int i2 = c0062d.f4119c;
                c0062d.f4119c = i2 + 1;
                if (i2 == 0) {
                    c0062d.f4121e = j2;
                }
                if (c0062d.f4119c >= 16) {
                    cVar.U.c(c0062d.f4121e, c0062d.f4122f, c0062d.f4120d, 0, cVar.f4113h);
                    c0062d.f4119c = 0;
                }
            }
        } else {
            if ("S_TEXT/UTF8".equals(cVar.b)) {
                e(cVar, "%02d:%02d:%02d,%03d", 19, 1000L, a0);
            } else if ("S_TEXT/ASS".equals(cVar.b)) {
                e(cVar, "%01d:%02d:%02d:%02d", 21, 10000L, d0);
            }
            cVar.U.c(j2, this.M, this.V, 0, cVar.f4113h);
        }
        this.W = true;
        k();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0005 A[SYNTHETIC] */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int c(f.i.a.a.b1.d r11, f.i.a.a.b1.m r12) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r10 = this;
            r0 = 0
            r10.W = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3a
            boolean r3 = r10.W
            if (r3 != 0) goto L3a
            f.i.a.a.b1.s.c r2 = r10.a
            f.i.a.a.b1.s.a r2 = (f.i.a.a.b1.s.a) r2
            boolean r2 = r2.a(r11)
            if (r2 == 0) goto L5
            long r3 = r11.f4042d
            boolean r5 = r10.x
            if (r5 == 0) goto L24
            r10.z = r3
            long r3 = r10.y
            r12.a = r3
            r10.x = r0
            goto L34
        L24:
            boolean r3 = r10.u
            if (r3 == 0) goto L36
            long r3 = r10.z
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L36
            r12.a = r3
            r10.z = r5
        L34:
            r3 = 1
            goto L37
        L36:
            r3 = 0
        L37:
            if (r3 == 0) goto L5
            return r1
        L3a:
            if (r2 != 0) goto L6e
            r11 = 0
        L3d:
            android.util.SparseArray<f.i.a.a.b1.s.d$c> r12 = r10.f4097c
            int r12 = r12.size()
            if (r11 >= r12) goto L6c
            android.util.SparseArray<f.i.a.a.b1.s.d$c> r12 = r10.f4097c
            java.lang.Object r12 = r12.valueAt(r11)
            f.i.a.a.b1.s.d$c r12 = (f.i.a.a.b1.s.d.c) r12
            f.i.a.a.b1.s.d$d r1 = r12.Q
            if (r1 == 0) goto L69
            boolean r2 = r1.b
            if (r2 == 0) goto L69
            int r2 = r1.f4119c
            if (r2 <= 0) goto L69
            f.i.a.a.b1.p r3 = r12.U
            long r4 = r1.f4121e
            int r6 = r1.f4122f
            int r7 = r1.f4120d
            r8 = 0
            f.i.a.a.b1.p$a r9 = r12.f4113h
            r3.c(r4, r6, r7, r8, r9)
            r1.f4119c = r0
        L69:
            int r11 = r11 + 1
            goto L3d
        L6c:
            r11 = -1
            return r11
        L6e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.s.d.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public final void d(h hVar) {
        this.Y = hVar;
    }

    public final void e(c cVar, String str, int i2, long j2, byte[] bArr) {
        byte[] O;
        byte[] bArr2;
        byte[] bArr3 = this.f4105k.a;
        long j3 = this.G;
        if (j3 == -9223372036854775807L) {
            O = bArr;
            bArr2 = O;
        } else {
            int i3 = (int) (j3 / 3600000000L);
            long j4 = j3 - ((i3 * TimeUtils.SECONDS_PER_HOUR) * 1000000);
            int i4 = (int) (j4 / 60000000);
            long j5 = j4 - ((i4 * 60) * 1000000);
            int i5 = (int) (j5 / 1000000);
            O = h0.O(String.format(Locale.US, str, Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf((int) ((j5 - (i5 * 1000000)) / j2))));
            bArr2 = bArr;
        }
        System.arraycopy(O, 0, bArr3, i2, bArr2.length);
        f.i.a.a.b1.p pVar = cVar.U;
        u uVar = this.f4105k;
        pVar.a(uVar, uVar.f5701c);
        this.V += this.f4105k.f5701c;
    }

    @Override // f.i.a.a.b1.g
    @CallSuper
    public void f(long j2, long j3) {
        this.A = -9223372036854775807L;
        this.E = 0;
        f.i.a.a.b1.s.a aVar = (f.i.a.a.b1.s.a) this.a;
        aVar.f4094e = 0;
        aVar.b.clear();
        f fVar = aVar.f4092c;
        fVar.b = 0;
        fVar.f4124c = 0;
        f fVar2 = this.b;
        fVar2.b = 0;
        fVar2.f4124c = 0;
        k();
        for (int i2 = 0; i2 < this.f4097c.size(); i2++) {
            C0062d c0062d = this.f4097c.valueAt(i2).Q;
            if (c0062d != null) {
                c0062d.b = false;
            }
        }
    }

    public final void h(f.i.a.a.b1.d dVar, int i2) throws IOException, InterruptedException {
        u uVar = this.f4101g;
        if (uVar.f5701c >= i2) {
            return;
        }
        byte[] bArr = uVar.a;
        if (bArr.length < i2) {
            uVar.y(Arrays.copyOf(bArr, Math.max(bArr.length * 2, i2)), this.f4101g.f5701c);
        }
        u uVar2 = this.f4101g;
        byte[] bArr2 = uVar2.a;
        int i3 = uVar2.f5701c;
        dVar.g(bArr2, i3, i2 - i3, false);
        this.f4101g.z(i2);
    }

    @Override // f.i.a.a.b1.g
    public final boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        long a2;
        int i2;
        e eVar = new e();
        long j2 = dVar.f4041c;
        long j3 = 1024;
        int i3 = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
        if (i3 != 0 && j2 <= 1024) {
            j3 = j2;
        }
        int i4 = (int) j3;
        dVar.d(eVar.a.a, 0, 4, false);
        eVar.b = 4;
        for (long q = eVar.a.q(); q != 440786851; q = ((q << 8) & (-256)) | (eVar.a.a[0] & 255)) {
            int i5 = eVar.b + 1;
            eVar.b = i5;
            if (i5 == i4) {
                return false;
            }
            dVar.d(eVar.a.a, 0, 1, false);
        }
        long a3 = eVar.a(dVar);
        long j4 = eVar.b;
        if (a3 == Long.MIN_VALUE) {
            return false;
        }
        if (i3 != 0 && j4 + a3 >= j2) {
            return false;
        }
        while (true) {
            int i6 = (eVar.b > (j4 + a3) ? 1 : (eVar.b == (j4 + a3) ? 0 : -1));
            if (i6 >= 0) {
                return i6 == 0;
            } else if (eVar.a(dVar) == Long.MIN_VALUE || (a2 = eVar.a(dVar)) < 0 || a2 > 2147483647L) {
                return false;
            } else {
                if (i2 != 0) {
                    int i7 = (int) a2;
                    dVar.a(i7, false);
                    eVar.b += i7;
                }
            }
        }
    }

    public final int j(f.i.a.a.b1.d dVar, f.i.a.a.b1.p pVar, int i2) throws IOException, InterruptedException {
        int b2;
        int a2 = this.f4104j.a();
        if (a2 > 0) {
            b2 = Math.min(i2, a2);
            pVar.a(this.f4104j, b2);
        } else {
            b2 = pVar.b(dVar, i2, false);
        }
        this.N += b2;
        this.V += b2;
        return b2;
    }

    public final void k() {
        this.N = 0;
        this.V = 0;
        this.U = 0;
        this.O = false;
        this.P = false;
        this.R = false;
        this.T = 0;
        this.S = (byte) 0;
        this.Q = false;
        this.f4104j.v();
    }

    public final long l(long j2) throws f.i.a.a.h0 {
        long j3 = this.q;
        if (j3 != -9223372036854775807L) {
            return h0.h0(j2, j3, 1000L);
        }
        throw new f.i.a.a.h0("Can't scale timecode prior to timecodeScale being set.");
    }

    public final void m(f.i.a.a.b1.d dVar, c cVar, int i2) throws IOException, InterruptedException {
        int i3;
        int i4;
        if ("S_TEXT/UTF8".equals(cVar.b)) {
            n(dVar, Z, i2);
        } else if ("S_TEXT/ASS".equals(cVar.b)) {
            n(dVar, c0, i2);
        } else {
            f.i.a.a.b1.p pVar = cVar.U;
            if (!this.O) {
                if (cVar.f4111f) {
                    this.M &= -1073741825;
                    if (!this.P) {
                        dVar.g(this.f4101g.a, 0, 1, false);
                        this.N++;
                        byte[] bArr = this.f4101g.a;
                        if ((bArr[0] & 128) != 128) {
                            this.S = bArr[0];
                            this.P = true;
                        } else {
                            throw new f.i.a.a.h0("Extension bit is set in signal byte");
                        }
                    }
                    if ((this.S & 1) == 1) {
                        boolean z = (this.S & 2) == 2;
                        this.M |= 1073741824;
                        if (!this.Q) {
                            dVar.g(this.f4106l.a, 0, 8, false);
                            this.N += 8;
                            this.Q = true;
                            this.f4101g.a[0] = (byte) ((z ? 128 : 0) | 8);
                            this.f4101g.A(0);
                            pVar.a(this.f4101g, 1);
                            this.V++;
                            this.f4106l.A(0);
                            pVar.a(this.f4106l, 8);
                            this.V += 8;
                        }
                        if (z) {
                            if (!this.R) {
                                dVar.g(this.f4101g.a, 0, 1, false);
                                this.N++;
                                this.f4101g.A(0);
                                this.T = this.f4101g.p();
                                this.R = true;
                            }
                            int i5 = this.T * 4;
                            this.f4101g.w(i5);
                            dVar.g(this.f4101g.a, 0, i5, false);
                            this.N += i5;
                            short s = (short) ((this.T / 2) + 1);
                            int i6 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.n;
                            if (byteBuffer == null || byteBuffer.capacity() < i6) {
                                this.n = ByteBuffer.allocate(i6);
                            }
                            this.n.position(0);
                            this.n.putShort(s);
                            int i7 = 0;
                            int i8 = 0;
                            while (true) {
                                i4 = this.T;
                                if (i7 >= i4) {
                                    break;
                                }
                                int s2 = this.f4101g.s();
                                if (i7 % 2 == 0) {
                                    this.n.putShort((short) (s2 - i8));
                                } else {
                                    this.n.putInt(s2 - i8);
                                }
                                i7++;
                                i8 = s2;
                            }
                            int i9 = (i2 - this.N) - i8;
                            if (i4 % 2 == 1) {
                                this.n.putInt(i9);
                            } else {
                                this.n.putShort((short) i9);
                                this.n.putInt(0);
                            }
                            this.f4107m.y(this.n.array(), i6);
                            pVar.a(this.f4107m, i6);
                            this.V += i6;
                        }
                    }
                } else {
                    byte[] bArr2 = cVar.f4112g;
                    if (bArr2 != null) {
                        u uVar = this.f4104j;
                        int length = bArr2.length;
                        uVar.a = bArr2;
                        uVar.f5701c = length;
                        uVar.b = 0;
                    }
                }
                this.O = true;
            }
            int i10 = i2 + this.f4104j.f5701c;
            if (!"V_MPEG4/ISO/AVC".equals(cVar.b) && !"V_MPEGH/ISO/HEVC".equals(cVar.b)) {
                if (cVar.Q != null) {
                    c.a.a.b.g.h.v(this.f4104j.f5701c == 0);
                    C0062d c0062d = cVar.Q;
                    int i11 = this.M;
                    if (!c0062d.b) {
                        dVar.d(c0062d.a, 0, 10, false);
                        dVar.f4044f = 0;
                        byte[] bArr3 = c0062d.a;
                        if (bArr3[4] == -8 && bArr3[5] == 114 && bArr3[6] == 111 && (bArr3[7] & 254) == 186) {
                            i3 = 40 << ((bArr3[(bArr3[7] & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
                        } else {
                            i3 = 0;
                        }
                        if (i3 != 0) {
                            c0062d.b = true;
                            c0062d.f4119c = 0;
                        }
                    }
                    if (c0062d.f4119c == 0) {
                        c0062d.f4122f = i11;
                        c0062d.f4120d = 0;
                    }
                    c0062d.f4120d += i10;
                }
                while (true) {
                    int i12 = this.N;
                    if (i12 >= i10) {
                        break;
                    }
                    j(dVar, pVar, i10 - i12);
                }
            } else {
                byte[] bArr4 = this.f4100f.a;
                bArr4[0] = 0;
                bArr4[1] = 0;
                bArr4[2] = 0;
                int i13 = cVar.V;
                int i14 = 4 - i13;
                while (this.N < i10) {
                    int i15 = this.U;
                    if (i15 == 0) {
                        int min = Math.min(i13, this.f4104j.a());
                        dVar.g(bArr4, i14 + min, i13 - min, false);
                        if (min > 0) {
                            u uVar2 = this.f4104j;
                            System.arraycopy(uVar2.a, uVar2.b, bArr4, i14, min);
                            uVar2.b += min;
                        }
                        this.N += i13;
                        this.f4100f.A(0);
                        this.U = this.f4100f.s();
                        this.f4099e.A(0);
                        pVar.a(this.f4099e, 4);
                        this.V += 4;
                    } else {
                        this.U = i15 - j(dVar, pVar, i15);
                    }
                }
            }
            if ("A_VORBIS".equals(cVar.b)) {
                this.f4102h.A(0);
                pVar.a(this.f4102h, 4);
                this.V += 4;
            }
        }
    }

    public final void n(f.i.a.a.b1.d dVar, byte[] bArr, int i2) throws IOException, InterruptedException {
        int length = bArr.length + i2;
        u uVar = this.f4105k;
        byte[] bArr2 = uVar.a;
        if (bArr2.length < length) {
            uVar.a = Arrays.copyOf(bArr, length + i2);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        dVar.g(this.f4105k.a, bArr.length, i2, false);
        this.f4105k.w(length);
    }

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes.dex */
    public static final class c {
        @Nullable
        public C0062d Q;
        public boolean R;
        public f.i.a.a.b1.p U;
        public int V;
        public String a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public int f4108c;

        /* renamed from: d  reason: collision with root package name */
        public int f4109d;

        /* renamed from: e  reason: collision with root package name */
        public int f4110e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4111f;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f4112g;

        /* renamed from: h  reason: collision with root package name */
        public p.a f4113h;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f4114i;

        /* renamed from: j  reason: collision with root package name */
        public f.i.a.a.z0.e f4115j;

        /* renamed from: k  reason: collision with root package name */
        public int f4116k = -1;

        /* renamed from: l  reason: collision with root package name */
        public int f4117l = -1;

        /* renamed from: m  reason: collision with root package name */
        public int f4118m = -1;
        public int n = -1;
        public int o = 0;
        public int p = -1;
        public float q = 0.0f;
        public float r = 0.0f;
        public float s = 0.0f;
        public byte[] t = null;
        public int u = -1;
        public boolean v = false;
        public int w = -1;
        public int x = -1;
        public int y = -1;
        public int z = 1000;
        public int A = 200;
        public float B = -1.0f;
        public float C = -1.0f;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public int L = 1;
        public int M = -1;
        public int N = 8000;
        public long O = 0;
        public long P = 0;
        public boolean S = true;
        public String T = "eng";

        public c() {
        }

        public c(a aVar) {
        }
    }
}
