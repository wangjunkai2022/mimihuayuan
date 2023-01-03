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
import f.i.a.a.z0.e;
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
    public final c a;
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
    public c t;
    public boolean u;
    public int v;
    public long w;
    public boolean x;
    public long p = -1;
    public long q = -9223372036854775807L;
    public long r = -9223372036854775807L;
    public long s = -9223372036854775807L;
    public long y = -1;
    public long z = -1;
    public long A = -9223372036854775807L;

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes.dex */
    public final class b implements b {
        public b(a aVar) {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:75:0x01ec, code lost:
            throw new f.i.a.a.h0("EBML lacing sample size out of range.");
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(int r19, int r20, f.i.a.a.b1.d r21) throws java.io.IOException, java.lang.InterruptedException {
            /*
            // Method dump skipped, instructions count: 666
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.s.d.b.a(int, int, f.i.a.a.b1.d):void");
        }

        public void b(int i2, double d2) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            } else if (i2 == 181) {
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
            } else if (i2 != 20529) {
                if (i2 != 20530) {
                    boolean z = false;
                    switch (i2) {
                        case 131:
                            dVar.t.f4109d = (int) j2;
                            return;
                        case 136:
                            c cVar = dVar.t;
                            if (j2 == 1) {
                                z = true;
                            }
                            cVar.S = z;
                            return;
                        case 155:
                            dVar.G = dVar.l(j2);
                            return;
                        case 159:
                            dVar.t.L = (int) j2;
                            return;
                        case TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_6:
                            dVar.t.f4116k = (int) j2;
                            return;
                        case 179:
                            dVar.B.a(dVar.l(j2));
                            return;
                        case 186:
                            dVar.t.f4117l = (int) j2;
                            return;
                        case TbsListener.ErrorCode.COPY_EXCEPTION:
                            dVar.t.f4108c = (int) j2;
                            return;
                        case TbsListener.ErrorCode.RENAME_FAIL:
                            dVar.A = dVar.l(j2);
                            return;
                        case TbsListener.ErrorCode.TPATCH_BACKUP_NOT_VALID:
                            if (!dVar.D) {
                                dVar.C.a(j2);
                                dVar.D = true;
                                return;
                            }
                            return;
                        case 251:
                            dVar.X = true;
                            return;
                        case 16980:
                            if (j2 != 3) {
                                throw new f.i.a.a.h0("ContentCompAlgo " + j2 + " not supported");
                            }
                            return;
                        case 17029:
                            if (j2 < 1 || j2 > 2) {
                                throw new f.i.a.a.h0("DocTypeReadVersion " + j2 + " not supported");
                            }
                            return;
                        case 17143:
                            if (j2 != 1) {
                                throw new f.i.a.a.h0("EBMLReadVersion " + j2 + " not supported");
                            }
                            return;
                        case 18401:
                            if (j2 != 5) {
                                throw new f.i.a.a.h0("ContentEncAlgo " + j2 + " not supported");
                            }
                            return;
                        case 18408:
                            if (j2 != 1) {
                                throw new f.i.a.a.h0("AESSettingsCipherMode " + j2 + " not supported");
                            }
                            return;
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
                            } else if (i3 == 15) {
                                dVar.t.u = 3;
                                return;
                            } else {
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
                            c cVar2 = dVar.t;
                            if (j2 == 1) {
                                z = true;
                            }
                            cVar2.R = z;
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
                            } else if (i4 == 3) {
                                dVar.t.p = 3;
                                return;
                            } else {
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
                                    } else if (i5 == 2) {
                                        dVar.t.y = 1;
                                        return;
                                    } else {
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
                                        } else if (!(i6 == 6 || i6 == 7)) {
                                            return;
                                        }
                                    }
                                    dVar.t.x = 3;
                                    return;
                                case 21947:
                                    c cVar3 = dVar.t;
                                    cVar3.v = true;
                                    int i7 = (int) j2;
                                    if (i7 == 1) {
                                        cVar3.w = 1;
                                        return;
                                    } else if (i7 == 9) {
                                        cVar3.w = 6;
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
                } else if (j2 != 1) {
                    throw new f.i.a.a.h0("ContentEncodingScope " + j2 + " not supported");
                }
            } else if (j2 != 0) {
                throw new f.i.a.a.h0("ContentEncodingOrder " + j2 + " not supported");
            }
        }

        public void d(int i2, long j2, long j3) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            } else if (i2 == 160) {
                dVar.X = false;
            } else if (i2 == 174) {
                dVar.t = new c(null);
            } else if (i2 == 187) {
                dVar.D = false;
            } else if (i2 == 19899) {
                dVar.v = -1;
                dVar.w = -1;
            } else if (i2 == 20533) {
                dVar.t.f4111f = true;
            } else if (i2 == 21968) {
                dVar.t.v = true;
            } else if (i2 == 408125543) {
                long j4 = dVar.p;
                if (j4 == -1 || j4 == j2) {
                    dVar.p = j2;
                    dVar.o = j3;
                    return;
                }
                throw new f.i.a.a.h0("Multiple Segment elements not supported");
            } else if (i2 == 475249515) {
                dVar.B = new p();
                dVar.C = new p();
            } else if (i2 != 524531317 || dVar.u) {
            } else {
                if (!dVar.f4098d || dVar.y == -1) {
                    dVar.Y.a(new n.b(dVar.s, 0));
                    dVar.u = true;
                    return;
                }
                dVar.x = true;
            }
        }

        public void e(int i2, String str) throws f.i.a.a.h0 {
            d dVar = d.this;
            if (dVar == null) {
                throw null;
            } else if (i2 == 134) {
                dVar.t.b = str;
            } else if (i2 != 17026) {
                if (i2 == 21358) {
                    dVar.t.a = str;
                } else if (i2 == 2274716) {
                    dVar.t.T = str;
                }
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw new f.i.a.a.h0(f.b.a.a.a.g("DocType ", str, " not supported"));
            }
        }
    }

    /* compiled from: MatroskaExtractor.java */
    /* renamed from: f.i.a.a.b1.s.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0055d {
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
        a aVar = new a();
        this.a = aVar;
        aVar.f4093d = new b(null);
        this.f4098d = (i2 & 1) != 0 ? false : true;
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
        if (iArr.length >= i2) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i2)];
    }

    @Override // f.i.a.a.b1.g
    public final void a() {
    }

    public final void b(c cVar, long j2) {
        C0055d dVar = cVar.Q;
        if (dVar == null) {
            if ("S_TEXT/UTF8".equals(cVar.b)) {
                e(cVar, "%02d:%02d:%02d,%03d", 19, 1000, a0);
            } else if ("S_TEXT/ASS".equals(cVar.b)) {
                e(cVar, "%01d:%02d:%02d:%02d", 21, 10000, d0);
            }
            cVar.U.c(j2, this.M, this.V, 0, cVar.f4113h);
        } else if (dVar.b) {
            int i2 = dVar.f4119c;
            dVar.f4119c = i2 + 1;
            if (i2 == 0) {
                dVar.f4121e = j2;
            }
            if (dVar.f4119c >= 16) {
                cVar.U.c(dVar.f4121e, dVar.f4122f, dVar.f4120d, 0, cVar.f4113h);
                dVar.f4119c = 0;
            }
        }
        this.W = true;
        k();
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0039 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0005 A[SYNTHETIC] */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int c(f.i.a.a.b1.d r11, f.i.a.a.b1.m r12) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r10 = this;
            r0 = 0
            r10.W = r0
            r1 = 1
            r2 = 1
        L_0x0005:
            if (r2 == 0) goto L_0x003a
            boolean r3 = r10.W
            if (r3 != 0) goto L_0x003a
            f.i.a.a.b1.s.c r2 = r10.a
            f.i.a.a.b1.s.a r2 = (f.i.a.a.b1.s.a) r2
            boolean r2 = r2.a(r11)
            if (r2 == 0) goto L_0x0005
            long r3 = r11.f4042d
            boolean r5 = r10.x
            if (r5 == 0) goto L_0x0024
            r10.z = r3
            long r3 = r10.y
            r12.a = r3
            r10.x = r0
            goto L_0x0034
        L_0x0024:
            boolean r3 = r10.u
            if (r3 == 0) goto L_0x0036
            long r3 = r10.z
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0036
            r12.a = r3
            r10.z = r5
        L_0x0034:
            r3 = 1
            goto L_0x0037
        L_0x0036:
            r3 = 0
        L_0x0037:
            if (r3 == 0) goto L_0x0005
            return r1
        L_0x003a:
            if (r2 != 0) goto L_0x006e
            r11 = 0
        L_0x003d:
            android.util.SparseArray<f.i.a.a.b1.s.d$c> r12 = r10.f4097c
            int r12 = r12.size()
            if (r11 >= r12) goto L_0x006c
            android.util.SparseArray<f.i.a.a.b1.s.d$c> r12 = r10.f4097c
            java.lang.Object r12 = r12.valueAt(r11)
            f.i.a.a.b1.s.d$c r12 = (f.i.a.a.b1.s.d.c) r12
            f.i.a.a.b1.s.d$d r1 = r12.Q
            if (r1 == 0) goto L_0x0069
            boolean r2 = r1.b
            if (r2 == 0) goto L_0x0069
            int r2 = r1.f4119c
            if (r2 <= 0) goto L_0x0069
            f.i.a.a.b1.p r3 = r12.U
            long r4 = r1.f4121e
            int r6 = r1.f4122f
            int r7 = r1.f4120d
            r8 = 0
            f.i.a.a.b1.p$a r9 = r12.f4113h
            r3.c(r4, r6, r7, r8, r9)
            r1.f4119c = r0
        L_0x0069:
            int r11 = r11 + 1
            goto L_0x003d
        L_0x006c:
            r11 = -1
            return r11
        L_0x006e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.s.d.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public final void d(h hVar) {
        this.Y = hVar;
    }

    public final void e(c cVar, String str, int i2, long j2, byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4 = this.f4105k.a;
        long j3 = this.G;
        if (j3 == -9223372036854775807L) {
            bArr3 = bArr;
            bArr2 = bArr3;
        } else {
            int i3 = (int) (j3 / 3600000000L);
            long j4 = j3 - (((long) (i3 * TimeUtils.SECONDS_PER_HOUR)) * 1000000);
            int i4 = (int) (j4 / 60000000);
            long j5 = j4 - (((long) (i4 * 60)) * 1000000);
            int i5 = (int) (j5 / 1000000);
            bArr3 = h0.O(String.format(Locale.US, str, Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf((int) ((j5 - (((long) i5) * 1000000)) / j2))));
            bArr2 = bArr;
        }
        System.arraycopy(bArr3, 0, bArr4, i2, bArr2.length);
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
        a aVar = (a) this.a;
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
            C0055d dVar = this.f4097c.valueAt(i2).Q;
            if (dVar != null) {
                dVar.b = false;
            }
        }
    }

    public final void h(f.i.a.a.b1.d dVar, int i2) throws IOException, InterruptedException {
        u uVar = this.f4101g;
        if (uVar.f5701c < i2) {
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
    }

    @Override // f.i.a.a.b1.g
    public final boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        long a2;
        int i2;
        e eVar = new e();
        long j2 = dVar.f4041c;
        long j3 = 1024;
        int i3 = (j2 > -1 ? 1 : (j2 == -1 ? 0 : -1));
        if (i3 != 0 && j2 <= 1024) {
            j3 = j2;
        }
        int i4 = (int) j3;
        dVar.d(eVar.a.a, 0, 4, false);
        eVar.b = 4;
        for (long q = eVar.a.q(); q != 440786851; q = ((q << 8) & -256) | ((long) (eVar.a.a[0] & 255))) {
            int i5 = eVar.b + 1;
            eVar.b = i5;
            if (i5 == i4) {
                return false;
            }
            dVar.d(eVar.a.a, 0, 1, false);
        }
        long a3 = eVar.a(dVar);
        long j4 = (long) eVar.b;
        if (a3 == Long.MIN_VALUE) {
            return false;
        }
        if (i3 != 0 && j4 + a3 >= j2) {
            return false;
        }
        while (true) {
            int i6 = (((long) eVar.b) > (j4 + a3) ? 1 : (((long) eVar.b) == (j4 + a3) ? 0 : -1));
            if (i6 < 0) {
                if (eVar.a(dVar) == Long.MIN_VALUE || (a2 = eVar.a(dVar)) < 0 || a2 > 2147483647L) {
                    return false;
                }
                if (i2 != 0) {
                    int i7 = (int) a2;
                    dVar.a(i7, false);
                    eVar.b += i7;
                }
            } else if (i6 == 0) {
                return true;
            } else {
                return false;
            }
        }
    }

    public final int j(f.i.a.a.b1.d dVar, f.i.a.a.b1.p pVar, int i2) throws IOException, InterruptedException {
        int i3;
        int a2 = this.f4104j.a();
        if (a2 > 0) {
            i3 = Math.min(i2, a2);
            pVar.a(this.f4104j, i3);
        } else {
            i3 = pVar.b(dVar, i2, false);
        }
        this.N += i3;
        this.V += i3;
        return i3;
    }

    public final void k() {
        this.N = 0;
        this.V = 0;
        this.U = 0;
        this.O = false;
        this.P = false;
        this.R = false;
        this.T = 0;
        this.S = 0;
        this.Q = false;
        this.f4104j.v();
    }

    public final long l(long j2) throws f.i.a.a.h0 {
        long j3 = this.q;
        if (j3 != -9223372036854775807L) {
            return h0.h0(j2, j3, 1000);
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
            char c2 = '\b';
            if (!this.O) {
                if (cVar.f4111f) {
                    this.M &= -1073741825;
                    int i5 = 128;
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
                            byte[] bArr2 = this.f4101g.a;
                            if (!z) {
                                i5 = 0;
                            }
                            bArr2[0] = (byte) (i5 | 8);
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
                            int i6 = this.T * 4;
                            this.f4101g.w(i6);
                            dVar.g(this.f4101g.a, 0, i6, false);
                            this.N += i6;
                            short s = (short) ((this.T / 2) + 1);
                            int i7 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.n;
                            if (byteBuffer == null || byteBuffer.capacity() < i7) {
                                this.n = ByteBuffer.allocate(i7);
                            }
                            this.n.position(0);
                            this.n.putShort(s);
                            int i8 = 0;
                            int i9 = 0;
                            while (true) {
                                i4 = this.T;
                                if (i8 >= i4) {
                                    break;
                                }
                                int s2 = this.f4101g.s();
                                if (i8 % 2 == 0) {
                                    this.n.putShort((short) (s2 - i9));
                                } else {
                                    this.n.putInt(s2 - i9);
                                }
                                i8++;
                                i9 = s2;
                            }
                            int i10 = (i2 - this.N) - i9;
                            if (i4 % 2 == 1) {
                                this.n.putInt(i10);
                            } else {
                                this.n.putShort((short) i10);
                                this.n.putInt(0);
                            }
                            this.f4107m.y(this.n.array(), i7);
                            pVar.a(this.f4107m, i7);
                            this.V += i7;
                        }
                    }
                } else {
                    byte[] bArr3 = cVar.f4112g;
                    if (bArr3 != null) {
                        u uVar = this.f4104j;
                        int length = bArr3.length;
                        uVar.a = bArr3;
                        uVar.f5701c = length;
                        uVar.b = 0;
                    }
                }
                this.O = true;
            }
            int i11 = i2 + this.f4104j.f5701c;
            if (!"V_MPEG4/ISO/AVC".equals(cVar.b) && !"V_MPEGH/ISO/HEVC".equals(cVar.b)) {
                if (cVar.Q != null) {
                    c.a.a.b.g.h.v(this.f4104j.f5701c == 0);
                    C0055d dVar2 = cVar.Q;
                    int i12 = this.M;
                    if (!dVar2.b) {
                        dVar.d(dVar2.a, 0, 10, false);
                        dVar.f4044f = 0;
                        byte[] bArr4 = dVar2.a;
                        if (bArr4[4] == -8 && bArr4[5] == 114 && bArr4[6] == 111 && (bArr4[7] & 254) == 186) {
                            if ((bArr4[7] & 255) == 187) {
                                c2 = '\t';
                            }
                            i3 = 40 << ((bArr4[c2] >> 4) & 7);
                        } else {
                            i3 = 0;
                        }
                        if (i3 != 0) {
                            dVar2.b = true;
                            dVar2.f4119c = 0;
                        }
                    }
                    if (dVar2.f4119c == 0) {
                        dVar2.f4122f = i12;
                        dVar2.f4120d = 0;
                    }
                    dVar2.f4120d += i11;
                }
                while (true) {
                    int i13 = this.N;
                    if (i13 >= i11) {
                        break;
                    }
                    j(dVar, pVar, i11 - i13);
                }
            } else {
                byte[] bArr5 = this.f4100f.a;
                bArr5[0] = 0;
                bArr5[1] = 0;
                bArr5[2] = 0;
                int i14 = cVar.V;
                int i15 = 4 - i14;
                while (this.N < i11) {
                    int i16 = this.U;
                    if (i16 == 0) {
                        int min = Math.min(i14, this.f4104j.a());
                        dVar.g(bArr5, i15 + min, i14 - min, false);
                        if (min > 0) {
                            u uVar2 = this.f4104j;
                            System.arraycopy(uVar2.a, uVar2.b, bArr5, i15, min);
                            uVar2.b += min;
                        }
                        this.N += i14;
                        this.f4100f.A(0);
                        this.U = this.f4100f.s();
                        this.f4099e.A(0);
                        pVar.a(this.f4099e, 4);
                        this.V += 4;
                    } else {
                        this.U = i16 - j(dVar, pVar, i16);
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
        public C0055d Q;
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
        public e f4115j;

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
