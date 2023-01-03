package f.i.a.a.b1.x;

import f.i.a.a.b0;
import f.i.a.a.b1.h;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import f.i.a.a.w0.g;

/* compiled from: Ac3Reader.java */
/* loaded from: classes.dex */
public final class b implements j {
    public final t a;
    public final u b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4300c;

    /* renamed from: d  reason: collision with root package name */
    public String f4301d;

    /* renamed from: e  reason: collision with root package name */
    public p f4302e;

    /* renamed from: f  reason: collision with root package name */
    public int f4303f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f4304g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4305h;

    /* renamed from: i  reason: collision with root package name */
    public long f4306i;

    /* renamed from: j  reason: collision with root package name */
    public b0 f4307j;

    /* renamed from: k  reason: collision with root package name */
    public int f4308k;

    /* renamed from: l  reason: collision with root package name */
    public long f4309l;

    public b(String str) {
        t tVar = new t(new byte[128]);
        this.a = tVar;
        this.b = new u(tVar.a);
        this.f4300c = str;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4303f = 0;
        this.f4304g = 0;
        this.f4305h = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(u uVar) {
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z;
        while (uVar.a() > 0) {
            int i12 = this.f4303f;
            if (i12 == 0) {
                while (true) {
                    if (uVar.a() <= 0) {
                        z = false;
                        break;
                    } else if (!this.f4305h) {
                        this.f4305h = uVar.p() == 11;
                    } else {
                        int p = uVar.p();
                        if (p == 119) {
                            this.f4305h = false;
                            z = true;
                            break;
                        }
                        this.f4305h = p == 11;
                    }
                }
                if (z) {
                    this.f4303f = 1;
                    byte[] bArr = this.b.a;
                    bArr[0] = 11;
                    bArr[1] = 119;
                    this.f4304g = 2;
                }
            } else if (i12 == 1) {
                byte[] bArr2 = this.b.a;
                int min = Math.min(uVar.a(), 128 - this.f4304g);
                System.arraycopy(uVar.a, uVar.b, bArr2, this.f4304g, min);
                uVar.b += min;
                int i13 = this.f4304g + min;
                this.f4304g = i13;
                if (i13 == 128) {
                    this.a.j(0);
                    t tVar = this.a;
                    int d2 = tVar.d();
                    tVar.l(40);
                    boolean z2 = tVar.f(5) == 16;
                    tVar.j(d2);
                    int i14 = -1;
                    if (z2) {
                        tVar.l(16);
                        int f2 = tVar.f(2);
                        if (f2 == 0) {
                            i14 = 0;
                        } else if (f2 == 1) {
                            i14 = 1;
                        } else if (f2 == 2) {
                            i14 = 2;
                        }
                        tVar.l(3);
                        i4 = (tVar.f(11) + 1) * 2;
                        int f3 = tVar.f(2);
                        if (f3 == 3) {
                            i5 = g.f5859c[tVar.f(2)];
                            i7 = 6;
                            i6 = 3;
                        } else {
                            i6 = tVar.f(2);
                            int i15 = g.a[i6];
                            i5 = g.b[f3];
                            i7 = i15;
                        }
                        i3 = i7 * 256;
                        int f4 = tVar.f(3);
                        boolean e2 = tVar.e();
                        i2 = g.f5860d[f4] + (e2 ? 1 : 0);
                        tVar.l(10);
                        if (tVar.e()) {
                            tVar.l(8);
                        }
                        if (f4 == 0) {
                            tVar.l(5);
                            if (tVar.e()) {
                                tVar.l(8);
                            }
                        }
                        if (i14 == 1 && tVar.e()) {
                            tVar.l(16);
                        }
                        if (tVar.e()) {
                            if (f4 > 2) {
                                tVar.l(2);
                            }
                            if ((f4 & 1) == 0 || f4 <= 2) {
                                i10 = 6;
                            } else {
                                i10 = 6;
                                tVar.l(6);
                            }
                            if ((f4 & 4) != 0) {
                                tVar.l(i10);
                            }
                            if (e2 && tVar.e()) {
                                tVar.l(5);
                            }
                            if (i14 == 0) {
                                if (tVar.e()) {
                                    i11 = 6;
                                    tVar.l(6);
                                } else {
                                    i11 = 6;
                                }
                                if (f4 == 0 && tVar.e()) {
                                    tVar.l(i11);
                                }
                                if (tVar.e()) {
                                    tVar.l(i11);
                                }
                                int f5 = tVar.f(2);
                                if (f5 == 1) {
                                    tVar.l(5);
                                } else if (f5 == 2) {
                                    tVar.l(12);
                                } else if (f5 == 3) {
                                    int f6 = tVar.f(5);
                                    if (tVar.e()) {
                                        tVar.l(5);
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            tVar.l(4);
                                        }
                                        if (tVar.e()) {
                                            if (tVar.e()) {
                                                tVar.l(4);
                                            }
                                            if (tVar.e()) {
                                                tVar.l(4);
                                            }
                                        }
                                    }
                                    if (tVar.e()) {
                                        tVar.l(5);
                                        if (tVar.e()) {
                                            tVar.l(7);
                                            if (tVar.e()) {
                                                tVar.l(8);
                                            }
                                        }
                                    }
                                    tVar.l((f6 + 2) * 8);
                                    tVar.c();
                                }
                                if (f4 < 2) {
                                    if (tVar.e()) {
                                        tVar.l(14);
                                    }
                                    if (f4 == 0 && tVar.e()) {
                                        tVar.l(14);
                                    }
                                }
                                if (tVar.e()) {
                                    if (i6 == 0) {
                                        tVar.l(5);
                                    } else {
                                        for (int i16 = 0; i16 < i7; i16++) {
                                            if (tVar.e()) {
                                                tVar.l(5);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (tVar.e()) {
                            tVar.l(5);
                            if (f4 == 2) {
                                tVar.l(4);
                            }
                            if (f4 >= 6) {
                                tVar.l(2);
                            }
                            if (tVar.e()) {
                                tVar.l(8);
                            }
                            if (f4 == 0 && tVar.e()) {
                                tVar.l(8);
                            }
                            i8 = 3;
                            if (f3 < 3) {
                                tVar.k();
                            }
                        } else {
                            i8 = 3;
                        }
                        if (i14 == 0 && i6 != i8) {
                            tVar.k();
                        }
                        if (i14 != 2 || (i6 != i8 && !tVar.e())) {
                            i9 = 6;
                        } else {
                            i9 = 6;
                            tVar.l(6);
                        }
                        str = (tVar.e() && tVar.f(i9) == 1 && tVar.f(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
                        i14 = i5;
                    } else {
                        tVar.l(32);
                        int f7 = tVar.f(2);
                        String str2 = f7 == 3 ? null : "audio/ac3";
                        int a = g.a(f7, tVar.f(6));
                        tVar.l(8);
                        int f8 = tVar.f(3);
                        if (!((f8 & 1) == 0 || f8 == 1)) {
                            tVar.l(2);
                        }
                        if ((f8 & 4) != 0) {
                            tVar.l(2);
                        }
                        if (f8 == 2) {
                            tVar.l(2);
                        }
                        int[] iArr = g.b;
                        if (f7 < iArr.length) {
                            i14 = iArr[f7];
                        }
                        i2 = g.f5860d[f8] + (tVar.e() ? 1 : 0);
                        i3 = 1536;
                        str = str2;
                        i4 = a;
                    }
                    b0 b0Var = this.f4307j;
                    if (!(b0Var != null && i2 == b0Var.v && i14 == b0Var.w && str == b0Var.f4013i)) {
                        b0 j2 = b0.j(this.f4301d, str, null, -1, -1, i2, i14, null, null, 0, this.f4300c);
                        this.f4307j = j2;
                        this.f4302e.d(j2);
                    }
                    this.f4308k = i4;
                    this.f4306i = (((long) i3) * 1000000) / ((long) this.f4307j.w);
                    this.b.A(0);
                    this.f4302e.a(this.b, 128);
                    this.f4303f = 2;
                }
            } else if (i12 == 2) {
                int min2 = Math.min(uVar.a(), this.f4308k - this.f4304g);
                this.f4302e.a(uVar, min2);
                int i17 = this.f4304g + min2;
                this.f4304g = i17;
                int i18 = this.f4308k;
                if (i17 == i18) {
                    this.f4302e.c(this.f4309l, 1, i18, 0, null);
                    this.f4309l += this.f4306i;
                    this.f4303f = 0;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4309l = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(h hVar, c0.d dVar) {
        dVar.a();
        this.f4301d = dVar.b();
        this.f4302e = hVar.q(dVar.c(), 1);
    }
}
