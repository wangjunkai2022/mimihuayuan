package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import java.util.Collections;

/* compiled from: H265Reader.java */
/* loaded from: classes.dex */
public final class m implements j {
    public final x a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public f.i.a.a.b1.p f4425c;

    /* renamed from: d  reason: collision with root package name */
    public a f4426d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4427e;

    /* renamed from: l  reason: collision with root package name */
    public long f4434l;

    /* renamed from: m  reason: collision with root package name */
    public long f4435m;

    /* renamed from: f  reason: collision with root package name */
    public final boolean[] f4428f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    public final q f4429g = new q(32, 128);

    /* renamed from: h  reason: collision with root package name */
    public final q f4430h = new q(33, 128);

    /* renamed from: i  reason: collision with root package name */
    public final q f4431i = new q(34, 128);

    /* renamed from: j  reason: collision with root package name */
    public final q f4432j = new q(39, 128);

    /* renamed from: k  reason: collision with root package name */
    public final q f4433k = new q(40, 128);
    public final f.i.a.a.m1.u n = new f.i.a.a.m1.u();

    /* compiled from: H265Reader.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final f.i.a.a.b1.p a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f4436c;

        /* renamed from: d  reason: collision with root package name */
        public int f4437d;

        /* renamed from: e  reason: collision with root package name */
        public long f4438e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4439f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f4440g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f4441h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f4442i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f4443j;

        /* renamed from: k  reason: collision with root package name */
        public long f4444k;

        /* renamed from: l  reason: collision with root package name */
        public long f4445l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f4446m;

        public a(f.i.a.a.b1.p pVar) {
            this.a = pVar;
        }

        public final void a(int i2) {
            boolean z = this.f4446m;
            this.a.c(this.f4445l, z ? 1 : 0, (int) (this.b - this.f4444k), i2, null);
        }
    }

    public m(x xVar) {
        this.a = xVar;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        f.i.a.a.m1.s.a(this.f4428f);
        this.f4429g.c();
        this.f4430h.c();
        this.f4431i.c();
        this.f4432j.c();
        this.f4433k.c();
        a aVar = this.f4426d;
        aVar.f4439f = false;
        aVar.f4440g = false;
        aVar.f4441h = false;
        aVar.f4442i = false;
        aVar.f4443j = false;
        this.f4434l = 0L;
    }

    public final void b(byte[] bArr, int i2, int i3) {
        if (this.f4427e) {
            a aVar = this.f4426d;
            if (aVar.f4439f) {
                int i4 = aVar.f4437d;
                int i5 = (i2 + 2) - i4;
                if (i5 < i3) {
                    aVar.f4440g = (bArr[i5] & 128) != 0;
                    aVar.f4439f = false;
                } else {
                    aVar.f4437d = (i3 - i2) + i4;
                }
            }
        } else {
            this.f4429g.a(bArr, i2, i3);
            this.f4430h.a(bArr, i2, i3);
            this.f4431i.a(bArr, i2, i3);
        }
        this.f4432j.a(bArr, i2, i3);
        this.f4433k.a(bArr, i2, i3);
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        int i2;
        int i3;
        byte[] bArr;
        int i4;
        int i5;
        int i6;
        long j2;
        float f2;
        int i7;
        long j3;
        int i8;
        while (uVar.a() > 0) {
            int i9 = uVar.f5701c;
            byte[] bArr2 = uVar.a;
            this.f4434l += uVar.a();
            this.f4425c.a(uVar, uVar.a());
            for (int i10 = uVar.b; i10 < i9; i10 = i4) {
                int c2 = f.i.a.a.m1.s.c(bArr2, i10, i9, this.f4428f);
                if (c2 == i9) {
                    b(bArr2, i10, i9);
                    return;
                }
                int i11 = c2 + 3;
                int i12 = (bArr2[i11] & 126) >> 1;
                int i13 = c2 - i10;
                if (i13 > 0) {
                    b(bArr2, i10, c2);
                }
                int i14 = i9 - c2;
                long j4 = this.f4434l - i14;
                int i15 = i13 < 0 ? -i13 : 0;
                long j5 = this.f4435m;
                if (this.f4427e) {
                    a aVar = this.f4426d;
                    if (aVar.f4443j && aVar.f4440g) {
                        aVar.f4446m = aVar.f4436c;
                        aVar.f4443j = false;
                    } else if (aVar.f4441h || aVar.f4440g) {
                        if (aVar.f4442i) {
                            i2 = i11;
                            aVar.a(((int) (j4 - aVar.b)) + i14);
                        } else {
                            i2 = i11;
                        }
                        aVar.f4444k = aVar.b;
                        aVar.f4445l = aVar.f4438e;
                        aVar.f4442i = true;
                        aVar.f4446m = aVar.f4436c;
                        i5 = i14;
                        i3 = i9;
                        bArr = bArr2;
                        i6 = i12;
                        j2 = j4;
                        i4 = i2;
                    }
                    i5 = i14;
                    i3 = i9;
                    bArr = bArr2;
                    i4 = i11;
                    i6 = i12;
                    j2 = j4;
                } else {
                    i2 = i11;
                    this.f4429g.b(i15);
                    this.f4430h.b(i15);
                    this.f4431i.b(i15);
                    q qVar = this.f4429g;
                    if (qVar.f4472c) {
                        q qVar2 = this.f4430h;
                        if (qVar2.f4472c) {
                            q qVar3 = this.f4431i;
                            if (qVar3.f4472c) {
                                f.i.a.a.b1.p pVar = this.f4425c;
                                String str = this.b;
                                i3 = i9;
                                int i16 = qVar.f4474e;
                                bArr = bArr2;
                                i4 = i2;
                                byte[] bArr3 = new byte[qVar2.f4474e + i16 + qVar3.f4474e];
                                i5 = i14;
                                System.arraycopy(qVar.f4473d, 0, bArr3, 0, i16);
                                i6 = i12;
                                System.arraycopy(qVar2.f4473d, 0, bArr3, qVar.f4474e, qVar2.f4474e);
                                System.arraycopy(qVar3.f4473d, 0, bArr3, qVar.f4474e + qVar2.f4474e, qVar3.f4474e);
                                f.i.a.a.m1.v vVar = new f.i.a.a.m1.v(qVar2.f4473d, 0, qVar2.f4474e);
                                vVar.j(44);
                                int e2 = vVar.e(3);
                                vVar.i();
                                vVar.j(88);
                                vVar.j(8);
                                int i17 = 0;
                                for (int i18 = 0; i18 < e2; i18++) {
                                    if (vVar.d()) {
                                        i17 += 89;
                                    }
                                    if (vVar.d()) {
                                        i17 += 8;
                                    }
                                }
                                vVar.j(i17);
                                if (e2 > 0) {
                                    vVar.j((8 - e2) * 2);
                                }
                                vVar.f();
                                int f3 = vVar.f();
                                if (f3 == 3) {
                                    vVar.i();
                                }
                                int f4 = vVar.f();
                                int f5 = vVar.f();
                                if (vVar.d()) {
                                    int f6 = vVar.f();
                                    int f7 = vVar.f();
                                    int f8 = vVar.f();
                                    int f9 = vVar.f();
                                    f4 -= (f6 + f7) * ((f3 == 1 || f3 == 2) ? 2 : 1);
                                    f5 -= (f8 + f9) * (f3 == 1 ? 2 : 1);
                                }
                                int i19 = f5;
                                vVar.f();
                                vVar.f();
                                int f10 = vVar.f();
                                for (int i20 = vVar.d() ? 0 : e2; i20 <= e2; i20++) {
                                    vVar.f();
                                    vVar.f();
                                    vVar.f();
                                }
                                vVar.f();
                                vVar.f();
                                vVar.f();
                                vVar.f();
                                vVar.f();
                                vVar.f();
                                if (vVar.d() && vVar.d()) {
                                    int i21 = 0;
                                    for (int i22 = 4; i21 < i22; i22 = 4) {
                                        int i23 = 0;
                                        while (i23 < 6) {
                                            if (!vVar.d()) {
                                                vVar.f();
                                                j3 = j4;
                                            } else {
                                                j3 = j4;
                                                int min = Math.min(64, 1 << ((i21 << 1) + 4));
                                                if (i21 > 1) {
                                                    vVar.g();
                                                }
                                                for (int i24 = 0; i24 < min; i24++) {
                                                    vVar.g();
                                                }
                                            }
                                            i23 += i21 == 3 ? 3 : 1;
                                            j4 = j3;
                                        }
                                        i21++;
                                    }
                                }
                                j2 = j4;
                                vVar.j(2);
                                if (vVar.d()) {
                                    vVar.j(8);
                                    vVar.f();
                                    vVar.f();
                                    vVar.i();
                                }
                                int f11 = vVar.f();
                                int i25 = 0;
                                boolean z = false;
                                int i26 = 0;
                                while (i25 < f11) {
                                    if (i25 != 0) {
                                        z = vVar.d();
                                    }
                                    if (z) {
                                        vVar.i();
                                        vVar.f();
                                        for (int i27 = 0; i27 <= i26; i27++) {
                                            if (vVar.d()) {
                                                vVar.i();
                                            }
                                        }
                                        i7 = f11;
                                    } else {
                                        int f12 = vVar.f();
                                        int f13 = vVar.f();
                                        int i28 = f12 + f13;
                                        i7 = f11;
                                        for (int i29 = 0; i29 < f12; i29++) {
                                            vVar.f();
                                            vVar.i();
                                        }
                                        for (int i30 = 0; i30 < f13; i30++) {
                                            vVar.f();
                                            vVar.i();
                                        }
                                        i26 = i28;
                                    }
                                    i25++;
                                    f11 = i7;
                                }
                                if (vVar.d()) {
                                    for (int i31 = 0; i31 < vVar.f(); i31++) {
                                        vVar.j(f10 + 4 + 1);
                                    }
                                }
                                vVar.j(2);
                                float f14 = 1.0f;
                                if (vVar.d() && vVar.d()) {
                                    int e3 = vVar.e(8);
                                    if (e3 == 255) {
                                        int e4 = vVar.e(16);
                                        int e5 = vVar.e(16);
                                        if (e4 != 0 && e5 != 0) {
                                            f14 = e4 / e5;
                                        }
                                        f2 = f14;
                                    } else {
                                        float[] fArr = f.i.a.a.m1.s.b;
                                        if (e3 < fArr.length) {
                                            f2 = fArr[e3];
                                        }
                                    }
                                    pVar.d(f.i.a.a.b0.t(str, "video/hevc", null, -1, -1, f4, i19, -1.0f, Collections.singletonList(bArr3), -1, f2, null));
                                    this.f4427e = true;
                                }
                                f2 = 1.0f;
                                pVar.d(f.i.a.a.b0.t(str, "video/hevc", null, -1, -1, f4, i19, -1.0f, Collections.singletonList(bArr3), -1, f2, null));
                                this.f4427e = true;
                            }
                        }
                    }
                    i5 = i14;
                    i3 = i9;
                    bArr = bArr2;
                    i6 = i12;
                    j2 = j4;
                    i4 = i2;
                }
                if (this.f4432j.b(i15)) {
                    q qVar4 = this.f4432j;
                    this.n.y(this.f4432j.f4473d, f.i.a.a.m1.s.g(qVar4.f4473d, qVar4.f4474e));
                    this.n.B(5);
                    f.i.a.a.i1.m.f.a(j5, this.n, this.a.b);
                }
                if (this.f4433k.b(i15)) {
                    q qVar5 = this.f4433k;
                    this.n.y(this.f4433k.f4473d, f.i.a.a.m1.s.g(qVar5.f4473d, qVar5.f4474e));
                    this.n.B(5);
                    f.i.a.a.i1.m.f.a(j5, this.n, this.a.b);
                }
                long j6 = this.f4435m;
                if (this.f4427e) {
                    a aVar2 = this.f4426d;
                    aVar2.f4440g = false;
                    aVar2.f4441h = false;
                    aVar2.f4438e = j6;
                    aVar2.f4437d = 0;
                    aVar2.b = j2;
                    i8 = i6;
                    if (i8 >= 32) {
                        if (!aVar2.f4443j && aVar2.f4442i) {
                            aVar2.a(i5);
                            aVar2.f4442i = false;
                        }
                        if (i8 <= 34) {
                            aVar2.f4441h = !aVar2.f4443j;
                            aVar2.f4443j = true;
                            boolean z2 = i8 < 16 && i8 <= 21;
                            aVar2.f4436c = z2;
                            aVar2.f4439f = !z2 || i8 <= 9;
                        }
                    }
                    if (i8 < 16) {
                    }
                    aVar2.f4436c = z2;
                    aVar2.f4439f = !z2 || i8 <= 9;
                } else {
                    i8 = i6;
                    this.f4429g.d(i8);
                    this.f4430h.d(i8);
                    this.f4431i.d(i8);
                }
                this.f4432j.d(i8);
                this.f4433k.d(i8);
                i9 = i3;
                bArr2 = bArr;
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4435m = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.b = dVar.b();
        f.i.a.a.b1.p q = hVar.q(dVar.c(), 2);
        this.f4425c = q;
        this.f4426d = new a(q);
        this.a.a(hVar, dVar);
    }
}
