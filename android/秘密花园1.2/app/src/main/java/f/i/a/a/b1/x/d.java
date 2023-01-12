package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import f.i.a.a.w0.h;

/* compiled from: Ac4Reader.java */
/* loaded from: classes.dex */
public final class d implements j {
    public final f.i.a.a.m1.t a;
    public final f.i.a.a.m1.u b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4407c;

    /* renamed from: d  reason: collision with root package name */
    public String f4408d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.b1.p f4409e;

    /* renamed from: f  reason: collision with root package name */
    public int f4410f;

    /* renamed from: g  reason: collision with root package name */
    public int f4411g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4412h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4413i;

    /* renamed from: j  reason: collision with root package name */
    public long f4414j;

    /* renamed from: k  reason: collision with root package name */
    public f.i.a.a.b0 f4415k;

    /* renamed from: l  reason: collision with root package name */
    public int f4416l;

    /* renamed from: m  reason: collision with root package name */
    public long f4417m;

    public d(String str) {
        f.i.a.a.m1.t tVar = new f.i.a.a.m1.t(new byte[16]);
        this.a = tVar;
        this.b = new f.i.a.a.m1.u(tVar.a);
        this.f4410f = 0;
        this.f4411g = 0;
        this.f4412h = false;
        this.f4413i = false;
        this.f4407c = str;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4410f = 0;
        this.f4411g = 0;
        this.f4412h = false;
        this.f4413i = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        boolean z;
        int p;
        while (uVar.a() > 0) {
            int i2 = this.f4410f;
            if (i2 == 0) {
                while (true) {
                    if (uVar.a() <= 0) {
                        z = false;
                        break;
                    } else if (!this.f4412h) {
                        this.f4412h = uVar.p() == 172;
                    } else {
                        p = uVar.p();
                        this.f4412h = p == 172;
                        if (p == 64 || p == 65) {
                            break;
                        }
                    }
                }
                this.f4413i = p == 65;
                z = true;
                if (z) {
                    this.f4410f = 1;
                    byte[] bArr = this.b.a;
                    bArr[0] = -84;
                    bArr[1] = (byte) (this.f4413i ? 65 : 64);
                    this.f4411g = 2;
                }
            } else if (i2 == 1) {
                byte[] bArr2 = this.b.a;
                int min = Math.min(uVar.a(), 16 - this.f4411g);
                System.arraycopy(uVar.a, uVar.b, bArr2, this.f4411g, min);
                uVar.b += min;
                int i3 = this.f4411g + min;
                this.f4411g = i3;
                if (i3 == 16) {
                    this.a.j(0);
                    h.b b = f.i.a.a.w0.h.b(this.a);
                    f.i.a.a.b0 b0Var = this.f4415k;
                    if (b0Var == null || b.b != b0Var.v || b.a != b0Var.w || !"audio/ac4".equals(b0Var.f4088i)) {
                        f.i.a.a.b0 j2 = f.i.a.a.b0.j(this.f4408d, "audio/ac4", null, -1, -1, b.b, b.a, null, null, 0, this.f4407c);
                        this.f4415k = j2;
                        this.f4409e.d(j2);
                    }
                    this.f4416l = b.f5938c;
                    this.f4414j = (b.f5939d * 1000000) / this.f4415k.w;
                    this.b.A(0);
                    this.f4409e.a(this.b, 16);
                    this.f4410f = 2;
                }
            } else if (i2 == 2) {
                int min2 = Math.min(uVar.a(), this.f4416l - this.f4411g);
                this.f4409e.a(uVar, min2);
                int i4 = this.f4411g + min2;
                this.f4411g = i4;
                int i5 = this.f4416l;
                if (i4 == i5) {
                    this.f4409e.c(this.f4417m, 1, i5, 0, null);
                    this.f4417m += this.f4414j;
                    this.f4410f = 0;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4417m = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4408d = dVar.b();
        this.f4409e = hVar.q(dVar.c(), 1);
    }
}
