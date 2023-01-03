package f.i.a.a.b1.x;

import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import f.i.a.a.w0.h;

/* compiled from: Ac4Reader.java */
/* loaded from: classes.dex */
public final class d implements j {
    public final t a;
    public final u b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4332c;

    /* renamed from: d  reason: collision with root package name */
    public String f4333d;

    /* renamed from: e  reason: collision with root package name */
    public p f4334e;

    /* renamed from: f  reason: collision with root package name */
    public int f4335f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f4336g = 0;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4337h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4338i = false;

    /* renamed from: j  reason: collision with root package name */
    public long f4339j;

    /* renamed from: k  reason: collision with root package name */
    public b0 f4340k;

    /* renamed from: l  reason: collision with root package name */
    public int f4341l;

    /* renamed from: m  reason: collision with root package name */
    public long f4342m;

    public d(String str) {
        t tVar = new t(new byte[16]);
        this.a = tVar;
        this.b = new u(tVar.a);
        this.f4332c = str;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4335f = 0;
        this.f4336g = 0;
        this.f4337h = false;
        this.f4338i = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(u uVar) {
        int i2;
        boolean z;
        int p;
        while (uVar.a() > 0) {
            int i3 = this.f4335f;
            boolean z2 = true;
            if (i3 == 0) {
                while (true) {
                    i2 = 65;
                    if (uVar.a() <= 0) {
                        z = false;
                        break;
                    } else if (!this.f4337h) {
                        this.f4337h = uVar.p() == 172;
                    } else {
                        p = uVar.p();
                        this.f4337h = p == 172;
                        if (p == 64 || p == 65) {
                            break;
                        }
                    }
                }
                this.f4338i = p == 65;
                z = true;
                if (z) {
                    this.f4335f = 1;
                    byte[] bArr = this.b.a;
                    bArr[0] = -84;
                    if (!this.f4338i) {
                        i2 = 64;
                    }
                    bArr[1] = (byte) i2;
                    this.f4336g = 2;
                }
            } else if (i3 == 1) {
                byte[] bArr2 = this.b.a;
                int min = Math.min(uVar.a(), 16 - this.f4336g);
                System.arraycopy(uVar.a, uVar.b, bArr2, this.f4336g, min);
                uVar.b += min;
                int i4 = this.f4336g + min;
                this.f4336g = i4;
                if (i4 != 16) {
                    z2 = false;
                }
                if (z2) {
                    this.a.j(0);
                    h.b b = h.b(this.a);
                    b0 b0Var = this.f4340k;
                    if (b0Var == null || b.b != b0Var.v || b.a != b0Var.w || !"audio/ac4".equals(b0Var.f4013i)) {
                        b0 j2 = b0.j(this.f4333d, "audio/ac4", null, -1, -1, b.b, b.a, null, null, 0, this.f4332c);
                        this.f4340k = j2;
                        this.f4334e.d(j2);
                    }
                    this.f4341l = b.f5863c;
                    this.f4339j = (((long) b.f5864d) * 1000000) / ((long) this.f4340k.w);
                    this.b.A(0);
                    this.f4334e.a(this.b, 16);
                    this.f4335f = 2;
                }
            } else if (i3 == 2) {
                int min2 = Math.min(uVar.a(), this.f4341l - this.f4336g);
                this.f4334e.a(uVar, min2);
                int i5 = this.f4336g + min2;
                this.f4336g = i5;
                int i6 = this.f4341l;
                if (i5 == i6) {
                    this.f4334e.c(this.f4342m, 1, i6, 0, null);
                    this.f4342m += this.f4339j;
                    this.f4335f = 0;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4342m = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4333d = dVar.b();
        this.f4334e = hVar.q(dVar.c(), 1);
    }
}
