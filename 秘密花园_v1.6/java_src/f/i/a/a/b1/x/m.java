package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import java.util.Collections;
/* compiled from: H265Reader.java */
/* loaded from: classes.dex */
public final class m implements j {
    public final x a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public f.i.a.a.b1.p f4509c;

    /* renamed from: d  reason: collision with root package name */
    public a f4510d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4511e;

    /* renamed from: l  reason: collision with root package name */
    public long f4518l;

    /* renamed from: m  reason: collision with root package name */
    public long f4519m;

    /* renamed from: f  reason: collision with root package name */
    public final boolean[] f4512f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    public final q f4513g = new q(32, 128);

    /* renamed from: h  reason: collision with root package name */
    public final q f4514h = new q(33, 128);

    /* renamed from: i  reason: collision with root package name */
    public final q f4515i = new q(34, 128);

    /* renamed from: j  reason: collision with root package name */
    public final q f4516j = new q(39, 128);

    /* renamed from: k  reason: collision with root package name */
    public final q f4517k = new q(40, 128);
    public final f.i.a.a.m1.u n = new f.i.a.a.m1.u();

    /* compiled from: H265Reader.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final f.i.a.a.b1.p a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f4520c;

        /* renamed from: d  reason: collision with root package name */
        public int f4521d;

        /* renamed from: e  reason: collision with root package name */
        public long f4522e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4523f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f4524g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f4525h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f4526i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f4527j;

        /* renamed from: k  reason: collision with root package name */
        public long f4528k;

        /* renamed from: l  reason: collision with root package name */
        public long f4529l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f4530m;

        public a(f.i.a.a.b1.p pVar) {
            this.a = pVar;
        }

        public final void a(int i2) {
            boolean z = this.f4530m;
            this.a.c(this.f4529l, z ? 1 : 0, (int) (this.b - this.f4528k), i2, null);
        }
    }

    public m(x xVar) {
        this.a = xVar;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        f.i.a.a.m1.s.a(this.f4512f);
        this.f4513g.c();
        this.f4514h.c();
        this.f4515i.c();
        this.f4516j.c();
        this.f4517k.c();
        a aVar = this.f4510d;
        aVar.f4523f = false;
        aVar.f4524g = false;
        aVar.f4525h = false;
        aVar.f4526i = false;
        aVar.f4527j = false;
        this.f4518l = 0L;
    }

    public final void b(byte[] bArr, int i2, int i3) {
        if (this.f4511e) {
            a aVar = this.f4510d;
            if (aVar.f4523f) {
                int i4 = aVar.f4521d;
                int i5 = (i2 + 2) - i4;
                if (i5 < i3) {
                    aVar.f4524g = (bArr[i5] & 128) != 0;
                    aVar.f4523f = false;
                } else {
                    aVar.f4521d = (i3 - i2) + i4;
                }
            }
        } else {
            this.f4513g.a(bArr, i2, i3);
            this.f4514h.a(bArr, i2, i3);
            this.f4515i.a(bArr, i2, i3);
        }
        this.f4516j.a(bArr, i2, i3);
        this.f4517k.a(bArr, i2, i3);
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
            int i9 = uVar.f5785c;
            byte[] bArr2 = uVar.a;
            this.f4518l += uVar.a();
            this.f4509c.a(uVar, uVar.a());
            for (int i10 = uVar.b; i10 < i9; i10 = i4) {
                int c2 = f.i.a.a.m1.s.c(bArr2, i10, i9, this.f4512f);
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
                long j4 = this.f4518l - i14;
                int i15 = i13 < 0 ? -i13 : 0;
                long j5 = this.f4519m;
                if (this.f4511e) {
                    a aVar = this.f4510d;
                    if (aVar.f4527j && aVar.f4524g) {
                        aVar.f4530m = aVar.f4520c;
                        aVar.f4527j = false;
                    } else if (aVar.f4525h || aVar.f4524g) {
                        if (aVar.f4526i) {
                            i2 = i11;
                            aVar.a(((int) (j4 - aVar.b)) + i14);
                        } else {
                            i2 = i11;
                        }
                        aVar.f4528k = aVar.b;
                        aVar.f4529l = aVar.f4522e;
                        aVar.f4526i = true;
                        aVar.f4530m = aVar.f4520c;
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
                    this.f4513g.b(i15);
                    this.f4514h.b(i15);
                    this.f4515i.b(i15);
                    q qVar = this.f4513g;
                    if (qVar.f4556c) {
                        q qVar2 = this.f4514h;
                        if (qVar2.f4556c) {
                            q qVar3 = this.f4515i;
                            if (qVar3.f4556c) {
                                f.i.a.a.b1.p pVar = this.f4509c;
                                String str = this.b;
                                i3 = i9;
                                int i16 = qVar.f4558e;
                                bArr = bArr2;
                                i4 = i2;
                                byte[] bArr3 = new byte[qVar2.f4558e + i16 + qVar3.f4558e];
                                i5 = i14;
                                System.arraycopy(qVar.f4557d, 0, bArr3, 0, i16);
                                i6 = i12;
                                System.arraycopy(qVar2.f4557d, 0, bArr3, qVar.f4558e, qVar2.f4558e);
                                System.arraycopy(qVar3.f4557d, 0, bArr3, qVar.f4558e + qVar2.f4558e, qVar3.f4558e);
                                f.i.a.a.m1.v vVar = new f.i.a.a.m1.v(qVar2.f4557d, 0, qVar2.f4558e);
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
                                    this.f4511e = true;
                                }
                                f2 = 1.0f;
                                pVar.d(f.i.a.a.b0.t(str, "video/hevc", null, -1, -1, f4, i19, -1.0f, Collections.singletonList(bArr3), -1, f2, null));
                                this.f4511e = true;
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
                if (this.f4516j.b(i15)) {
                    q qVar4 = this.f4516j;
                    this.n.y(this.f4516j.f4557d, f.i.a.a.m1.s.g(qVar4.f4557d, qVar4.f4558e));
                    this.n.B(5);
                    f.i.a.a.i1.m.f.a(j5, this.n, this.a.b);
                }
                if (this.f4517k.b(i15)) {
                    q qVar5 = this.f4517k;
                    this.n.y(this.f4517k.f4557d, f.i.a.a.m1.s.g(qVar5.f4557d, qVar5.f4558e));
                    this.n.B(5);
                    f.i.a.a.i1.m.f.a(j5, this.n, this.a.b);
                }
                long j6 = this.f4519m;
                if (this.f4511e) {
                    a aVar2 = this.f4510d;
                    aVar2.f4524g = false;
                    aVar2.f4525h = false;
                    aVar2.f4522e = j6;
                    aVar2.f4521d = 0;
                    aVar2.b = j2;
                    i8 = i6;
                    if (i8 >= 32) {
                        if (!aVar2.f4527j && aVar2.f4526i) {
                            aVar2.a(i5);
                            aVar2.f4526i = false;
                        }
                        if (i8 <= 34) {
                            aVar2.f4525h = !aVar2.f4527j;
                            aVar2.f4527j = true;
                            boolean z2 = i8 < 16 && i8 <= 21;
                            aVar2.f4520c = z2;
                            aVar2.f4523f = !z2 || i8 <= 9;
                        }
                    }
                    if (i8 < 16) {
                    }
                    aVar2.f4520c = z2;
                    aVar2.f4523f = !z2 || i8 <= 9;
                } else {
                    i8 = i6;
                    this.f4513g.d(i8);
                    this.f4514h.d(i8);
                    this.f4515i.d(i8);
                }
                this.f4516j.d(i8);
                this.f4517k.d(i8);
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
        this.f4519m = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.b = dVar.b();
        f.i.a.a.b1.p q = hVar.q(dVar.c(), 2);
        this.f4509c = q;
        this.f4510d = new a(q);
        this.a.a(hVar, dVar);
    }
}
