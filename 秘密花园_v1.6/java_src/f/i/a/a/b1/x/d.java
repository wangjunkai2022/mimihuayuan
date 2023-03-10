package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import f.i.a.a.w0.h;
/* compiled from: Ac4Reader.java */
/* loaded from: classes.dex */
public final class d implements j {
    public final f.i.a.a.m1.t a;
    public final f.i.a.a.m1.u b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4416c;

    /* renamed from: d  reason: collision with root package name */
    public String f4417d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.b1.p f4418e;

    /* renamed from: f  reason: collision with root package name */
    public int f4419f;

    /* renamed from: g  reason: collision with root package name */
    public int f4420g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4421h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4422i;

    /* renamed from: j  reason: collision with root package name */
    public long f4423j;

    /* renamed from: k  reason: collision with root package name */
    public f.i.a.a.b0 f4424k;

    /* renamed from: l  reason: collision with root package name */
    public int f4425l;

    /* renamed from: m  reason: collision with root package name */
    public long f4426m;

    public d(String str) {
        f.i.a.a.m1.t tVar = new f.i.a.a.m1.t(new byte[16]);
        this.a = tVar;
        this.b = new f.i.a.a.m1.u(tVar.a);
        this.f4419f = 0;
        this.f4420g = 0;
        this.f4421h = false;
        this.f4422i = false;
        this.f4416c = str;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4419f = 0;
        this.f4420g = 0;
        this.f4421h = false;
        this.f4422i = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        boolean z;
        int p;
        while (uVar.a() > 0) {
            int i2 = this.f4419f;
            if (i2 == 0) {
                while (true) {
                    if (uVar.a() <= 0) {
                        z = false;
                        break;
                    } else if (!this.f4421h) {
                        this.f4421h = uVar.p() == 172;
                    } else {
                        p = uVar.p();
                        this.f4421h = p == 172;
                        if (p == 64 || p == 65) {
                            break;
                        }
                    }
                }
                this.f4422i = p == 65;
                z = true;
                if (z) {
                    this.f4419f = 1;
                    byte[] bArr = this.b.a;
                    bArr[0] = -84;
                    bArr[1] = (byte) (this.f4422i ? 65 : 64);
                    this.f4420g = 2;
                }
            } else if (i2 == 1) {
                byte[] bArr2 = this.b.a;
                int min = Math.min(uVar.a(), 16 - this.f4420g);
                System.arraycopy(uVar.a, uVar.b, bArr2, this.f4420g, min);
                uVar.b += min;
                int i3 = this.f4420g + min;
                this.f4420g = i3;
                if (i3 == 16) {
                    this.a.j(0);
                    h.b b = f.i.a.a.w0.h.b(this.a);
                    f.i.a.a.b0 b0Var = this.f4424k;
                    if (b0Var == null || b.b != b0Var.v || b.a != b0Var.w || !"audio/ac4".equals(b0Var.f4097i)) {
                        f.i.a.a.b0 j2 = f.i.a.a.b0.j(this.f4417d, "audio/ac4", null, -1, -1, b.b, b.a, null, null, 0, this.f4416c);
                        this.f4424k = j2;
                        this.f4418e.d(j2);
                    }
                    this.f4425l = b.f5947c;
                    this.f4423j = (b.f5948d * 1000000) / this.f4424k.w;
                    this.b.A(0);
                    this.f4418e.a(this.b, 16);
                    this.f4419f = 2;
                }
            } else if (i2 == 2) {
                int min2 = Math.min(uVar.a(), this.f4425l - this.f4420g);
                this.f4418e.a(uVar, min2);
                int i4 = this.f4420g + min2;
                this.f4420g = i4;
                int i5 = this.f4425l;
                if (i4 == i5) {
                    this.f4418e.c(this.f4426m, 1, i5, 0, null);
                    this.f4426m += this.f4423j;
                    this.f4419f = 0;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4426m = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4417d = dVar.b();
        this.f4418e = hVar.q(dVar.c(), 1);
    }
}
