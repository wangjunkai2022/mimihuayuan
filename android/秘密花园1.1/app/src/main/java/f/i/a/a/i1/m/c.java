package f.i.a.a.i1.m;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import c.a.a.b.g.h;
import com.tencent.smtt.sdk.TbsListener;
import com.umeng.commonsdk.debug.UMLog;
import f.i.a.a.i1.i;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Cea708Decoder.java */
/* loaded from: classes.dex */
public final class c extends d {

    /* renamed from: g  reason: collision with root package name */
    public final u f5260g = new u();

    /* renamed from: h  reason: collision with root package name */
    public final t f5261h = new t();

    /* renamed from: i  reason: collision with root package name */
    public final int f5262i;

    /* renamed from: j  reason: collision with root package name */
    public final a[] f5263j;

    /* renamed from: k  reason: collision with root package name */
    public a f5264k;

    /* renamed from: l  reason: collision with root package name */
    public List<f.i.a.a.i1.b> f5265l;

    /* renamed from: m  reason: collision with root package name */
    public List<f.i.a.a.i1.b> f5266m;
    public b n;
    public int o;

    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int[] A;
        public static final int[] B;
        public static final boolean[] C;
        public static final int[] D;
        public static final int[] E;
        public static final int[] F;
        public static final int[] G;
        public static final int w = d(2, 2, 2, 0);
        public static final int x = d(0, 0, 0, 0);
        public static final int y;
        public static final int[] z;
        public final List<SpannableString> a = new ArrayList();
        public final SpannableStringBuilder b = new SpannableStringBuilder();

        /* renamed from: c  reason: collision with root package name */
        public boolean f5267c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f5268d;

        /* renamed from: e  reason: collision with root package name */
        public int f5269e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f5270f;

        /* renamed from: g  reason: collision with root package name */
        public int f5271g;

        /* renamed from: h  reason: collision with root package name */
        public int f5272h;

        /* renamed from: i  reason: collision with root package name */
        public int f5273i;

        /* renamed from: j  reason: collision with root package name */
        public int f5274j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f5275k;

        /* renamed from: l  reason: collision with root package name */
        public int f5276l;

        /* renamed from: m  reason: collision with root package name */
        public int f5277m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;

        static {
            int d2 = d(0, 0, 0, 3);
            y = d2;
            z = new int[]{0, 0, 0, 0, 0, 2, 0};
            A = new int[]{0, 0, 0, 0, 0, 0, 2};
            B = new int[]{3, 3, 3, 3, 3, 3, 1};
            C = new boolean[]{false, false, false, true, true, true, false};
            int i2 = x;
            D = new int[]{i2, d2, i2, i2, d2, i2, i2};
            E = new int[]{0, 1, 2, 3, 4, 3, 4};
            F = new int[]{0, 0, 0, 0, 0, 3, 3};
            G = new int[]{i2, i2, i2, i2, i2, d2, d2};
        }

        public a() {
            f();
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int d(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                c.a.a.b.g.h.q(r4, r0, r1)
                c.a.a.b.g.h.q(r5, r0, r1)
                c.a.a.b.g.h.q(r6, r0, r1)
                c.a.a.b.g.h.q(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = 0
                goto L23
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L23
            L21:
                r7 = 255(0xff, float:3.57E-43)
            L23:
                if (r4 <= r1) goto L28
                r4 = 255(0xff, float:3.57E-43)
                goto L29
            L28:
                r4 = 0
            L29:
                if (r5 <= r1) goto L2e
                r5 = 255(0xff, float:3.57E-43)
                goto L2f
            L2e:
                r5 = 0
            L2f:
                if (r6 <= r1) goto L33
                r0 = 255(0xff, float:3.57E-43)
            L33:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.m.c.a.d(int, int, int, int):int");
        }

        public void a(char c2) {
            if (c2 == '\n') {
                this.a.add(b());
                this.b.clear();
                if (this.p != -1) {
                    this.p = 0;
                }
                if (this.q != -1) {
                    this.q = 0;
                }
                if (this.r != -1) {
                    this.r = 0;
                }
                if (this.t != -1) {
                    this.t = 0;
                }
                while (true) {
                    if ((!this.f5275k || this.a.size() < this.f5274j) && this.a.size() < 15) {
                        return;
                    }
                    this.a.remove(0);
                }
            } else {
                this.b.append(c2);
            }
        }

        public SpannableString b() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.p, length, 33);
                }
                if (this.q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.q, length, 33);
                }
                if (this.r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.s), this.r, length, 33);
                }
                if (this.t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.u), this.t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void c() {
            this.a.clear();
            this.b.clear();
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.t = -1;
            this.v = 0;
        }

        public boolean e() {
            return !this.f5267c || (this.a.isEmpty() && this.b.length() == 0);
        }

        public void f() {
            c();
            this.f5267c = false;
            this.f5268d = false;
            this.f5269e = 4;
            this.f5270f = false;
            this.f5271g = 0;
            this.f5272h = 0;
            this.f5273i = 0;
            this.f5274j = 15;
            this.f5275k = true;
            this.f5276l = 0;
            this.f5277m = 0;
            this.n = 0;
            int i2 = x;
            this.o = i2;
            this.s = w;
            this.u = i2;
        }

        public void g(boolean z2, boolean z3) {
            if (this.p != -1) {
                if (!z2) {
                    this.b.setSpan(new StyleSpan(2), this.p, this.b.length(), 33);
                    this.p = -1;
                }
            } else if (z2) {
                this.p = this.b.length();
            }
            if (this.q == -1) {
                if (z3) {
                    this.q = this.b.length();
                }
            } else if (z3) {
            } else {
                this.b.setSpan(new UnderlineSpan(), this.q, this.b.length(), 33);
                this.q = -1;
            }
        }

        public void h(int i2, int i3) {
            if (this.r != -1 && this.s != i2) {
                this.b.setSpan(new ForegroundColorSpan(this.s), this.r, this.b.length(), 33);
            }
            if (i2 != w) {
                this.r = this.b.length();
                this.s = i2;
            }
            if (this.t != -1 && this.u != i3) {
                this.b.setSpan(new BackgroundColorSpan(this.u), this.t, this.b.length(), 33);
            }
            if (i3 != x) {
                this.t = this.b.length();
                this.u = i3;
            }
        }
    }

    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f5278c;

        /* renamed from: d  reason: collision with root package name */
        public int f5279d = 0;

        public b(int i2, int i3) {
            this.a = i2;
            this.b = i3;
            this.f5278c = new byte[(i3 * 2) - 1];
        }
    }

    public c(int i2) {
        this.f5262i = i2 == -1 ? 1 : i2;
        this.f5263j = new a[8];
        for (int i3 = 0; i3 < 8; i3++) {
            this.f5263j[i3] = new a();
        }
        this.f5264k = this.f5263j[0];
        l();
    }

    @Override // f.i.a.a.i1.m.d
    public f.i.a.a.i1.e f() {
        List<f.i.a.a.i1.b> list = this.f5265l;
        this.f5266m = list;
        return new e(list);
    }

    @Override // f.i.a.a.i1.m.d, f.i.a.a.y0.c
    public void flush() {
        super.flush();
        this.f5265l = null;
        this.f5266m = null;
        this.o = 0;
        this.f5264k = this.f5263j[0];
        l();
        this.n = null;
    }

    @Override // f.i.a.a.i1.m.d
    public void g(i iVar) {
        this.f5260g.y(iVar.f5955c.array(), iVar.f5955c.limit());
        while (this.f5260g.a() >= 3) {
            int p = this.f5260g.p() & 7;
            int i2 = p & 3;
            boolean z = (p & 4) == 4;
            byte p2 = (byte) this.f5260g.p();
            byte p3 = (byte) this.f5260g.p();
            if (i2 == 2 || i2 == 3) {
                if (z) {
                    if (i2 == 3) {
                        j();
                        int i3 = (p2 & 192) >> 6;
                        int i4 = p2 & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        b bVar = new b(i3, i4);
                        this.n = bVar;
                        byte[] bArr = bVar.f5278c;
                        int i5 = bVar.f5279d;
                        bVar.f5279d = i5 + 1;
                        bArr[i5] = p3;
                    } else {
                        h.m(i2 == 2);
                        b bVar2 = this.n;
                        if (bVar2 != null) {
                            byte[] bArr2 = bVar2.f5278c;
                            int i6 = bVar2.f5279d;
                            int i7 = i6 + 1;
                            bVar2.f5279d = i7;
                            bArr2[i6] = p2;
                            bVar2.f5279d = i7 + 1;
                            bArr2[i7] = p3;
                        }
                    }
                    b bVar3 = this.n;
                    if (bVar3.f5279d == (bVar3.b * 2) - 1) {
                        j();
                    }
                }
            }
        }
    }

    @Override // f.i.a.a.i1.m.d
    public boolean h() {
        return this.f5265l != this.f5266m;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void j() {
        a aVar;
        b bVar = this.n;
        if (bVar == null) {
            return;
        }
        int i2 = bVar.f5279d;
        if (i2 == (bVar.b * 2) - 1) {
            this.f5261h.i(bVar.f5278c, i2);
            int f2 = this.f5261h.f(3);
            int f3 = this.f5261h.f(5);
            int i3 = 7;
            int i4 = 6;
            if (f2 == 7) {
                this.f5261h.l(2);
                f2 = this.f5261h.f(6);
            }
            if (f3 != 0 && f2 == this.f5262i) {
                boolean z = false;
                while (this.f5261h.b() > 0) {
                    int f4 = this.f5261h.f(8);
                    if (f4 == 16) {
                        int f5 = this.f5261h.f(8);
                        if (f5 <= 31) {
                            if (f5 > 7) {
                                if (f5 <= 15) {
                                    this.f5261h.l(8);
                                } else if (f5 <= 23) {
                                    this.f5261h.l(16);
                                } else if (f5 <= 31) {
                                    this.f5261h.l(24);
                                }
                            }
                        } else if (f5 <= 127) {
                            if (f5 == 32) {
                                this.f5264k.a(' ');
                            } else if (f5 == 33) {
                                this.f5264k.a((char) 160);
                            } else if (f5 == 37) {
                                this.f5264k.a((char) 8230);
                            } else if (f5 == 42) {
                                this.f5264k.a((char) 352);
                            } else if (f5 == 44) {
                                this.f5264k.a((char) 338);
                            } else if (f5 == 63) {
                                this.f5264k.a((char) 376);
                            } else if (f5 == 57) {
                                this.f5264k.a((char) 8482);
                            } else if (f5 == 58) {
                                this.f5264k.a((char) 353);
                            } else if (f5 == 60) {
                                this.f5264k.a((char) 339);
                            } else if (f5 != 61) {
                                switch (f5) {
                                    case 48:
                                        this.f5264k.a((char) 9608);
                                        break;
                                    case 49:
                                        this.f5264k.a((char) 8216);
                                        break;
                                    case 50:
                                        this.f5264k.a((char) 8217);
                                        break;
                                    case 51:
                                        this.f5264k.a((char) 8220);
                                        break;
                                    case 52:
                                        this.f5264k.a((char) 8221);
                                        break;
                                    case 53:
                                        this.f5264k.a((char) 8226);
                                        break;
                                    default:
                                        switch (f5) {
                                            case 118:
                                                this.f5264k.a((char) 8539);
                                                break;
                                            case 119:
                                                this.f5264k.a((char) 8540);
                                                break;
                                            case 120:
                                                this.f5264k.a((char) 8541);
                                                break;
                                            case 121:
                                                this.f5264k.a((char) 8542);
                                                break;
                                            case 122:
                                                this.f5264k.a(UMLog.HORIZONTAL_LINE);
                                                break;
                                            case 123:
                                                this.f5264k.a((char) 9488);
                                                break;
                                            case 124:
                                                this.f5264k.a(UMLog.BOTTOM_LEFT_CORNER);
                                                break;
                                            case TbsListener.ErrorCode.DOWNLOAD_THROWABLE /* 125 */:
                                                this.f5264k.a((char) 9472);
                                                break;
                                            case TbsListener.ErrorCode.PV_UPLOAD_ERROR /* 126 */:
                                                this.f5264k.a((char) 9496);
                                                break;
                                            case 127:
                                                this.f5264k.a(UMLog.TOP_LEFT_CORNER);
                                                break;
                                        }
                                }
                            } else {
                                this.f5264k.a((char) 8480);
                            }
                            z = true;
                        } else {
                            if (f5 <= 159) {
                                if (f5 <= 135) {
                                    this.f5261h.l(32);
                                } else if (f5 <= 143) {
                                    this.f5261h.l(40);
                                } else if (f5 <= 159) {
                                    this.f5261h.l(2);
                                    this.f5261h.l(this.f5261h.f(6) * 8);
                                }
                            } else if (f5 <= 255) {
                                if (f5 == 160) {
                                    this.f5264k.a((char) 13252);
                                } else {
                                    this.f5264k.a('_');
                                }
                                z = true;
                            }
                            i3 = 7;
                            i4 = 6;
                        }
                    } else if (f4 <= 31) {
                        if (f4 != 0) {
                            if (f4 == 3) {
                                this.f5265l = k();
                            } else if (f4 != 8) {
                                switch (f4) {
                                    case 12:
                                        l();
                                        break;
                                    case 13:
                                        this.f5264k.a('\n');
                                        break;
                                    case 14:
                                        break;
                                    default:
                                        if (f4 < 17 || f4 > 23) {
                                            if (f4 >= 24 && f4 <= 31) {
                                                this.f5261h.l(16);
                                                break;
                                            }
                                        } else {
                                            this.f5261h.l(8);
                                            break;
                                        }
                                        break;
                                }
                            } else {
                                a aVar2 = this.f5264k;
                                int length = aVar2.b.length();
                                if (length > 0) {
                                    aVar2.b.delete(length - 1, length);
                                }
                            }
                        }
                    } else if (f4 <= 127) {
                        if (f4 == 127) {
                            this.f5264k.a((char) 9835);
                        } else {
                            this.f5264k.a((char) (f4 & 255));
                        }
                        z = true;
                    } else {
                        if (f4 <= 159) {
                            switch (f4) {
                                case 128:
                                case 129:
                                case 130:
                                case 131:
                                case 132:
                                case 133:
                                case 134:
                                case 135:
                                    int i5 = f4 - 128;
                                    if (this.o != i5) {
                                        this.o = i5;
                                        this.f5264k = this.f5263j[i5];
                                        break;
                                    }
                                    break;
                                case 136:
                                    for (int i6 = 1; i6 <= 8; i6++) {
                                        if (this.f5261h.e()) {
                                            this.f5263j[8 - i6].c();
                                        }
                                    }
                                    break;
                                case 137:
                                    for (int i7 = 1; i7 <= 8; i7++) {
                                        if (this.f5261h.e()) {
                                            this.f5263j[8 - i7].f5268d = true;
                                        }
                                    }
                                    break;
                                case 138:
                                    for (int i8 = 1; i8 <= 8; i8++) {
                                        if (this.f5261h.e()) {
                                            this.f5263j[8 - i8].f5268d = false;
                                        }
                                    }
                                    break;
                                case 139:
                                    for (int i9 = 1; i9 <= 8; i9++) {
                                        if (this.f5261h.e()) {
                                            this.f5263j[8 - i9].f5268d = !aVar.f5268d;
                                        }
                                    }
                                    break;
                                case TbsListener.ErrorCode.NEEDDOWNLOAD_1 /* 140 */:
                                    for (int i10 = 1; i10 <= 8; i10++) {
                                        if (this.f5261h.e()) {
                                            this.f5263j[8 - i10].f();
                                        }
                                    }
                                    break;
                                case TbsListener.ErrorCode.NEEDDOWNLOAD_2 /* 141 */:
                                    this.f5261h.l(8);
                                    break;
                                case TbsListener.ErrorCode.NEEDDOWNLOAD_4 /* 143 */:
                                    l();
                                    break;
                                case TbsListener.ErrorCode.NEEDDOWNLOAD_5 /* 144 */:
                                    if (!this.f5264k.f5267c) {
                                        this.f5261h.l(16);
                                    } else {
                                        this.f5261h.f(4);
                                        this.f5261h.f(2);
                                        this.f5261h.f(2);
                                        boolean e2 = this.f5261h.e();
                                        boolean e3 = this.f5261h.e();
                                        this.f5261h.f(3);
                                        this.f5261h.f(3);
                                        this.f5264k.g(e2, e3);
                                    }
                                    break;
                                case TbsListener.ErrorCode.NEEDDOWNLOAD_6 /* 145 */:
                                    if (!this.f5264k.f5267c) {
                                        this.f5261h.l(24);
                                    } else {
                                        int d2 = a.d(this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2));
                                        int d3 = a.d(this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2));
                                        this.f5261h.l(2);
                                        a.d(this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2), 0);
                                        this.f5264k.h(d2, d3);
                                    }
                                    break;
                                case TbsListener.ErrorCode.NEEDDOWNLOAD_7 /* 146 */:
                                    if (!this.f5264k.f5267c) {
                                        this.f5261h.l(16);
                                    } else {
                                        this.f5261h.l(4);
                                        int f6 = this.f5261h.f(4);
                                        this.f5261h.l(2);
                                        this.f5261h.f(6);
                                        a aVar3 = this.f5264k;
                                        if (aVar3.v != f6) {
                                            aVar3.a('\n');
                                        }
                                        aVar3.v = f6;
                                    }
                                    break;
                                case 151:
                                    if (!this.f5264k.f5267c) {
                                        this.f5261h.l(32);
                                    } else {
                                        int d4 = a.d(this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2));
                                        this.f5261h.f(2);
                                        a.d(this.f5261h.f(2), this.f5261h.f(2), this.f5261h.f(2), 0);
                                        this.f5261h.e();
                                        this.f5261h.e();
                                        this.f5261h.f(2);
                                        this.f5261h.f(2);
                                        int f7 = this.f5261h.f(2);
                                        this.f5261h.l(8);
                                        a aVar4 = this.f5264k;
                                        aVar4.o = d4;
                                        aVar4.f5276l = f7;
                                    }
                                    break;
                                case 152:
                                case 153:
                                case 154:
                                case 155:
                                case 156:
                                case 157:
                                case 158:
                                case 159:
                                    int i11 = f4 - 152;
                                    a aVar5 = this.f5263j[i11];
                                    this.f5261h.l(2);
                                    boolean e4 = this.f5261h.e();
                                    boolean e5 = this.f5261h.e();
                                    this.f5261h.e();
                                    int f8 = this.f5261h.f(3);
                                    boolean e6 = this.f5261h.e();
                                    int f9 = this.f5261h.f(i3);
                                    int f10 = this.f5261h.f(8);
                                    int f11 = this.f5261h.f(4);
                                    int f12 = this.f5261h.f(4);
                                    this.f5261h.l(2);
                                    this.f5261h.f(i4);
                                    this.f5261h.l(2);
                                    int f13 = this.f5261h.f(3);
                                    int f14 = this.f5261h.f(3);
                                    aVar5.f5267c = true;
                                    aVar5.f5268d = e4;
                                    aVar5.f5275k = e5;
                                    aVar5.f5269e = f8;
                                    aVar5.f5270f = e6;
                                    aVar5.f5271g = f9;
                                    aVar5.f5272h = f10;
                                    aVar5.f5273i = f11;
                                    int i12 = f12 + 1;
                                    if (aVar5.f5274j != i12) {
                                        aVar5.f5274j = i12;
                                        while (true) {
                                            if ((e5 && aVar5.a.size() >= aVar5.f5274j) || aVar5.a.size() >= 15) {
                                                aVar5.a.remove(0);
                                            }
                                        }
                                    }
                                    if (f13 != 0 && aVar5.f5277m != f13) {
                                        aVar5.f5277m = f13;
                                        int i13 = f13 - 1;
                                        int i14 = a.D[i13];
                                        boolean z2 = a.C[i13];
                                        int i15 = a.A[i13];
                                        int i16 = a.B[i13];
                                        int i17 = a.z[i13];
                                        aVar5.o = i14;
                                        aVar5.f5276l = i17;
                                    }
                                    if (f14 != 0 && aVar5.n != f14) {
                                        aVar5.n = f14;
                                        int i18 = f14 - 1;
                                        int i19 = a.F[i18];
                                        int i20 = a.E[i18];
                                        aVar5.g(false, false);
                                        aVar5.h(a.w, a.G[i18]);
                                    }
                                    if (this.o != i11) {
                                        this.o = i11;
                                        this.f5264k = this.f5263j[i11];
                                    }
                                    break;
                            }
                        } else if (f4 <= 255) {
                            this.f5264k.a((char) (f4 & 255));
                        }
                        z = true;
                    }
                    i3 = 7;
                    i4 = 6;
                }
                if (z) {
                    this.f5265l = k();
                }
            }
        }
        this.n = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<f.i.a.a.i1.b> k() {
        /*
            Method dump skipped, instructions count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.m.c.k():java.util.List");
    }

    public final void l() {
        for (int i2 = 0; i2 < 8; i2++) {
            this.f5263j[i2].f();
        }
    }
}
