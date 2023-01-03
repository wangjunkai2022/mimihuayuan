package f.i.a.a.b1.x;

import com.umeng.commonsdk.proguard.ac;
import f.i.a.a.b1.x.c0;

/* compiled from: MpegAudioReader.java */
/* loaded from: classes.dex */
public final class p implements j {
    public final f.i.a.a.m1.u a;
    public final f.i.a.a.b1.l b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4462c;

    /* renamed from: d  reason: collision with root package name */
    public String f4463d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.b1.p f4464e;

    /* renamed from: f  reason: collision with root package name */
    public int f4465f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f4466g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4467h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4468i;

    /* renamed from: j  reason: collision with root package name */
    public long f4469j;

    /* renamed from: k  reason: collision with root package name */
    public int f4470k;

    /* renamed from: l  reason: collision with root package name */
    public long f4471l;

    public p(String str) {
        f.i.a.a.m1.u uVar = new f.i.a.a.m1.u(4);
        this.a = uVar;
        uVar.a[0] = -1;
        this.b = new f.i.a.a.b1.l();
        this.f4462c = str;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4465f = 0;
        this.f4466g = 0;
        this.f4468i = false;
    }

    @Override // f.i.a.a.b1.x.j
    public void c(f.i.a.a.m1.u uVar) {
        while (uVar.a() > 0) {
            int i2 = this.f4465f;
            if (i2 == 0) {
                byte[] bArr = uVar.a;
                int i3 = uVar.b;
                int i4 = uVar.f5701c;
                while (true) {
                    if (i3 < i4) {
                        boolean z = (bArr[i3] & 255) == 255;
                        boolean z2 = this.f4468i && (bArr[i3] & ac.f3005k) == 224;
                        this.f4468i = z;
                        if (z2) {
                            uVar.A(i3 + 1);
                            this.f4468i = false;
                            this.a.a[1] = bArr[i3];
                            this.f4466g = 2;
                            this.f4465f = 1;
                            break;
                        }
                        i3++;
                    } else {
                        uVar.A(i4);
                        break;
                    }
                }
            } else if (i2 == 1) {
                int min = Math.min(uVar.a(), 4 - this.f4466g);
                uVar.c(this.a.a, this.f4466g, min);
                int i5 = this.f4466g + min;
                this.f4466g = i5;
                if (i5 >= 4) {
                    this.a.A(0);
                    if (!f.i.a.a.b1.l.b(this.a.d(), this.b)) {
                        this.f4466g = 0;
                        this.f4465f = 1;
                    } else {
                        f.i.a.a.b1.l lVar = this.b;
                        this.f4470k = lVar.f4054c;
                        if (!this.f4467h) {
                            int i6 = lVar.f4055d;
                            this.f4469j = (lVar.f4058g * 1000000) / i6;
                            this.f4464e.d(f.i.a.a.b0.j(this.f4463d, lVar.b, null, -1, 4096, lVar.f4056e, i6, null, null, 0, this.f4462c));
                            this.f4467h = true;
                        }
                        this.a.A(0);
                        this.f4464e.a(this.a, 4);
                        this.f4465f = 2;
                    }
                }
            } else if (i2 == 2) {
                int min2 = Math.min(uVar.a(), this.f4470k - this.f4466g);
                this.f4464e.a(uVar, min2);
                int i7 = this.f4466g + min2;
                this.f4466g = i7;
                int i8 = this.f4470k;
                if (i7 >= i8) {
                    this.f4464e.c(this.f4471l, 1, i8, 0, null);
                    this.f4471l += this.f4469j;
                    this.f4466g = 0;
                    this.f4465f = 0;
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4471l = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4463d = dVar.b();
        this.f4464e = hVar.q(dVar.c(), 1);
    }
}
