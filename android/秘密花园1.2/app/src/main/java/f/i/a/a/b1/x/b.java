package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;

/* compiled from: Ac3Reader.java */
/* loaded from: classes.dex */
public final class b implements j {
    public final f.i.a.a.m1.t a;
    public final f.i.a.a.m1.u b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4375c;

    /* renamed from: d  reason: collision with root package name */
    public String f4376d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.b1.p f4377e;

    /* renamed from: f  reason: collision with root package name */
    public int f4378f;

    /* renamed from: g  reason: collision with root package name */
    public int f4379g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4380h;

    /* renamed from: i  reason: collision with root package name */
    public long f4381i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.b0 f4382j;

    /* renamed from: k  reason: collision with root package name */
    public int f4383k;

    /* renamed from: l  reason: collision with root package name */
    public long f4384l;

    public b(String str) {
        f.i.a.a.m1.t tVar = new f.i.a.a.m1.t(new byte[128]);
        this.a = tVar;
        this.b = new f.i.a.a.m1.u(tVar.a);
        this.f4378f = 0;
        this.f4375c = str;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4378f = 0;
        this.f4379g = 0;
        this.f4380h = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        int i2;
        int i3;
        String str;
        int i4;
        int f2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        while (uVar.a() > 0) {
            int i11 = this.f4378f;
            if (i11 == 0) {
                while (true) {
                    if (uVar.a() <= 0) {
                        z = false;
                        break;
                    } else if (!this.f4380h) {
                        this.f4380h = uVar.p() == 11;
                    } else {
                        int p = uVar.p();
                        if (p == 119) {
                            this.f4380h = false;
                            z = true;
                            break;
                        }
                        this.f4380h = p == 11;
                    }
                }
                if (z) {
                    this.f4378f = 1;
                    byte[] bArr = this.b.a;
                    bArr[0] = 11;
                    bArr[1] = 119;
                    this.f4379g = 2;
                }
            } else if (i11 == 1) {
                byte[] bArr2 = this.b.a;
                int min = Math.min(uVar.a(), 128 - this.f4379g);
                System.arraycopy(uVar.a, uVar.b, bArr2, this.f4379g, min);
                uVar.b += min;
                int i12 = this.f4379g + min;
                this.f4379g = i12;
                if (i12 == 128) {
                    this.a.j(0);
                    f.i.a.a.m1.t tVar = this.a;
                    int d2 = tVar.d();
                    tVar.l(40);
                    boolean z2 = tVar.f(5) == 16;
                    tVar.j(d2);
                    if (z2) {
                        tVar.l(16);
                        int f3 = tVar.f(2);
                        if (f3 == 0) {
                            r7 = 0;
                        } else if (f3 == 1) {
                            r7 = 1;
                        } else if (f3 == 2) {
                            r7 = 2;
                        }
                        tVar.l(3);
                        i4 = (tVar.f(11) + 1) * 2;
                        int f4 = tVar.f(2);
                        if (f4 == 3) {
                            i5 = f.i.a.a.w0.g.f5934c[tVar.f(2)];
                            i6 = 6;
                            f2 = 3;
                        } else {
                            f2 = tVar.f(2);
                            int i13 = f.i.a.a.w0.g.a[f2];
                            i5 = f.i.a.a.w0.g.b[f4];
                            i6 = i13;
                        }
                        i3 = i6 * 256;
                        int f5 = tVar.f(3);
                        boolean e2 = tVar.e();
                        i2 = f.i.a.a.w0.g.f5935d[f5] + (e2 ? 1 : 0);
                        tVar.l(10);
                        if (tVar.e()) {
                            tVar.l(8);
                        }
                        if (f5 == 0) {
                            tVar.l(5);
                            if (tVar.e()) {
                                tVar.l(8);
                            }
                        }
                        if (r7 == 1 && tVar.e()) {
                            tVar.l(16);
                        }
                        if (tVar.e()) {
                            if (f5 > 2) {
                                tVar.l(2);
                            }
                            if ((f5 & 1) == 0 || f5 <= 2) {
                                i9 = 6;
                            } else {
                                i9 = 6;
                                tVar.l(6);
                            }
                            if ((f5 & 4) != 0) {
                                tVar.l(i9);
                            }
                            if (e2 && tVar.e()) {
                                tVar.l(5);
                            }
                            if (r7 == 0) {
                                if (tVar.e()) {
                                    i10 = 6;
                                    tVar.l(6);
                                } else {
                                    i10 = 6;
                                }
                                if (f5 == 0 && tVar.e()) {
                                    tVar.l(i10);
                                }
                                if (tVar.e()) {
                                    tVar.l(i10);
                                }
                                int f6 = tVar.f(2);
                                if (f6 == 1) {
                                    tVar.l(5);
                                } else if (f6 == 2) {
                                    tVar.l(12);
                                } else if (f6 == 3) {
                                    int f7 = tVar.f(5);
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
                                    tVar.l((f7 + 2) * 8);
                                    tVar.c();
                                }
                                if (f5 < 2) {
                                    if (tVar.e()) {
                                        tVar.l(14);
                                    }
                                    if (f5 == 0 && tVar.e()) {
                                        tVar.l(14);
                                    }
                                }
                                if (tVar.e()) {
                                    if (f2 == 0) {
                                        tVar.l(5);
                                    } else {
                                        for (int i14 = 0; i14 < i6; i14++) {
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
                            if (f5 == 2) {
                                tVar.l(4);
                            }
                            if (f5 >= 6) {
                                tVar.l(2);
                            }
                            if (tVar.e()) {
                                tVar.l(8);
                            }
                            if (f5 == 0 && tVar.e()) {
                                tVar.l(8);
                            }
                            i7 = 3;
                            if (f4 < 3) {
                                tVar.k();
                            }
                        } else {
                            i7 = 3;
                        }
                        if (r7 == 0 && f2 != i7) {
                            tVar.k();
                        }
                        if (r7 == 2 && (f2 == i7 || tVar.e())) {
                            i8 = 6;
                            tVar.l(6);
                        } else {
                            i8 = 6;
                        }
                        str = (tVar.e() && tVar.f(i8) == 1 && tVar.f(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
                        r7 = i5;
                    } else {
                        tVar.l(32);
                        int f8 = tVar.f(2);
                        String str2 = f8 == 3 ? null : "audio/ac3";
                        int a = f.i.a.a.w0.g.a(f8, tVar.f(6));
                        tVar.l(8);
                        int f9 = tVar.f(3);
                        if ((f9 & 1) != 0 && f9 != 1) {
                            tVar.l(2);
                        }
                        if ((f9 & 4) != 0) {
                            tVar.l(2);
                        }
                        if (f9 == 2) {
                            tVar.l(2);
                        }
                        int[] iArr = f.i.a.a.w0.g.b;
                        r7 = f8 < iArr.length ? iArr[f8] : -1;
                        i2 = f.i.a.a.w0.g.f5935d[f9] + (tVar.e() ? 1 : 0);
                        i3 = 1536;
                        str = str2;
                        i4 = a;
                    }
                    int i15 = i2;
                    f.i.a.a.b0 b0Var = this.f4382j;
                    if (b0Var == null || i15 != b0Var.v || r7 != b0Var.w || str != b0Var.f4088i) {
                        f.i.a.a.b0 j2 = f.i.a.a.b0.j(this.f4376d, str, null, -1, -1, i15, r7, null, null, 0, this.f4375c);
                        this.f4382j = j2;
                        this.f4377e.d(j2);
                    }
                    this.f4383k = i4;
                    this.f4381i = (i3 * 1000000) / this.f4382j.w;
                    this.b.A(0);
                    this.f4377e.a(this.b, 128);
                    this.f4378f = 2;
                }
            } else if (i11 == 2) {
                int min2 = Math.min(uVar.a(), this.f4383k - this.f4379g);
                this.f4377e.a(uVar, min2);
                int i16 = this.f4379g + min2;
                this.f4379g = i16;
                int i17 = this.f4383k;
                if (i16 == i17) {
                    this.f4377e.c(this.f4384l, 1, i17, 0, null);
                    this.f4384l += this.f4381i;
                    this.f4378f = 0;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4384l = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4376d = dVar.b();
        this.f4377e = hVar.q(dVar.c(), 1);
    }
}
