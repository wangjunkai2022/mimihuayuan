package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import f.i.a.a.h0;
import f.i.a.a.m1.e0;

/* compiled from: PesReader.java */
/* loaded from: classes.dex */
public final class r implements c0 {
    public final j a;
    public final f.i.a.a.m1.t b = new f.i.a.a.m1.t(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    public int f4550c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f4551d;

    /* renamed from: e  reason: collision with root package name */
    public e0 f4552e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4553f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4554g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4555h;

    /* renamed from: i  reason: collision with root package name */
    public int f4556i;

    /* renamed from: j  reason: collision with root package name */
    public int f4557j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4558k;

    /* renamed from: l  reason: collision with root package name */
    public long f4559l;

    public r(j jVar) {
        this.a = jVar;
    }

    @Override // f.i.a.a.b1.x.c0
    public final void a() {
        this.f4550c = 0;
        this.f4551d = 0;
        this.f4555h = false;
        this.a.a();
    }

    @Override // f.i.a.a.b1.x.c0
    public void b(e0 e0Var, f.i.a.a.b1.h hVar, c0.d dVar) {
        this.f4552e = e0Var;
        this.a.f(hVar, dVar);
    }

    @Override // f.i.a.a.b1.x.c0
    public final void c(f.i.a.a.m1.u uVar, int i2) throws h0 {
        boolean z;
        if ((i2 & 1) != 0) {
            int i3 = this.f4550c;
            if (i3 != 0 && i3 != 1 && i3 != 2) {
                if (i3 == 3) {
                    int i4 = this.f4557j;
                    this.a.d();
                } else {
                    throw new IllegalStateException();
                }
            }
            e(1);
        }
        int i5 = i2;
        while (uVar.a() > 0) {
            int i6 = this.f4550c;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 == 2) {
                        if (d(uVar, this.b.a, Math.min(10, this.f4556i)) && d(uVar, null, this.f4556i)) {
                            this.b.j(0);
                            this.f4559l = -9223372036854775807L;
                            if (this.f4553f) {
                                this.b.l(4);
                                this.b.l(1);
                                this.b.l(1);
                                long f2 = (this.b.f(3) << 30) | (this.b.f(15) << 15) | this.b.f(15);
                                this.b.l(1);
                                if (!this.f4555h && this.f4554g) {
                                    this.b.l(4);
                                    this.b.l(1);
                                    this.b.l(1);
                                    this.b.l(1);
                                    this.f4552e.b((this.b.f(3) << 30) | (this.b.f(15) << 15) | this.b.f(15));
                                    this.f4555h = true;
                                }
                                this.f4559l = this.f4552e.b(f2);
                            }
                            i5 |= this.f4558k ? 4 : 0;
                            this.a.e(this.f4559l, i5);
                            e(3);
                        }
                    } else if (i6 == 3) {
                        int a = uVar.a();
                        int i7 = this.f4557j;
                        int i8 = i7 != -1 ? a - i7 : 0;
                        if (i8 > 0) {
                            a -= i8;
                            uVar.z(uVar.b + a);
                        }
                        this.a.c(uVar);
                        int i9 = this.f4557j;
                        if (i9 != -1) {
                            int i10 = i9 - a;
                            this.f4557j = i10;
                            if (i10 == 0) {
                                this.a.d();
                                e(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (d(uVar, this.b.a, 9)) {
                    this.b.j(0);
                    if (this.b.f(24) != 1) {
                        this.f4557j = -1;
                        z = false;
                    } else {
                        this.b.l(8);
                        int f3 = this.b.f(16);
                        this.b.l(5);
                        this.f4558k = this.b.e();
                        this.b.l(2);
                        this.f4553f = this.b.e();
                        this.f4554g = this.b.e();
                        this.b.l(6);
                        int f4 = this.b.f(8);
                        this.f4556i = f4;
                        if (f3 == 0) {
                            this.f4557j = -1;
                        } else {
                            this.f4557j = ((f3 + 6) - 9) - f4;
                        }
                        z = true;
                    }
                    e(z ? 2 : 0);
                }
            } else {
                uVar.B(uVar.a());
            }
        }
    }

    public final boolean d(f.i.a.a.m1.u uVar, byte[] bArr, int i2) {
        int min = Math.min(uVar.a(), i2 - this.f4551d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            uVar.B(min);
        } else {
            System.arraycopy(uVar.a, uVar.b, bArr, this.f4551d, min);
            uVar.b += min;
        }
        int i3 = this.f4551d + min;
        this.f4551d = i3;
        return i3 == i2;
    }

    public final void e(int i2) {
        this.f4550c = i2;
        this.f4551d = 0;
    }
}
