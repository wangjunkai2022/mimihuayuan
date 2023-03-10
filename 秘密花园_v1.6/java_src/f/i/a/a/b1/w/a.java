package f.i.a.a.b1.w;

import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.m;
import f.i.a.a.b1.n;
import f.i.a.a.b1.p;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;
/* compiled from: RawCcExtractor.java */
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: i  reason: collision with root package name */
    public static final int f4368i = h0.C("RCC\u0001");
    public final b0 a;

    /* renamed from: c  reason: collision with root package name */
    public p f4369c;

    /* renamed from: e  reason: collision with root package name */
    public int f4371e;

    /* renamed from: f  reason: collision with root package name */
    public long f4372f;

    /* renamed from: g  reason: collision with root package name */
    public int f4373g;

    /* renamed from: h  reason: collision with root package name */
    public int f4374h;
    public final u b = new u(9);

    /* renamed from: d  reason: collision with root package name */
    public int f4370d = 0;

    public a(b0 b0Var) {
        this.a = b0Var;
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    @Override // f.i.a.a.b1.g
    public int c(d dVar, m mVar) throws IOException, InterruptedException {
        while (true) {
            int i2 = this.f4370d;
            boolean z = true;
            boolean z2 = false;
            if (i2 == 0) {
                this.b.v();
                if (dVar.g(this.b.a, 0, 8, true)) {
                    if (this.b.d() == f4368i) {
                        this.f4371e = this.b.p();
                        z2 = true;
                    } else {
                        throw new IOException("Input not RawCC");
                    }
                }
                if (!z2) {
                    return -1;
                }
                this.f4370d = 1;
            } else if (i2 != 1) {
                if (i2 == 2) {
                    while (this.f4373g > 0) {
                        this.b.v();
                        dVar.g(this.b.a, 0, 3, false);
                        this.f4369c.a(this.b, 3);
                        this.f4374h += 3;
                        this.f4373g--;
                    }
                    int i3 = this.f4374h;
                    if (i3 > 0) {
                        this.f4369c.c(this.f4372f, 1, i3, 0, null);
                    }
                    this.f4370d = 1;
                    return 0;
                }
                throw new IllegalStateException();
            } else {
                this.b.v();
                int i4 = this.f4371e;
                if (i4 == 0) {
                    if (dVar.g(this.b.a, 0, 5, true)) {
                        this.f4372f = (this.b.q() * 1000) / 45;
                        this.f4373g = this.b.p();
                        this.f4374h = 0;
                    }
                    z = false;
                } else if (i4 == 1) {
                    if (dVar.g(this.b.a, 0, 9, true)) {
                        this.f4372f = this.b.j();
                        this.f4373g = this.b.p();
                        this.f4374h = 0;
                    }
                    z = false;
                } else {
                    StringBuilder o = f.b.a.a.a.o("Unsupported version number: ");
                    o.append(this.f4371e);
                    throw new f.i.a.a.h0(o.toString());
                }
                if (z) {
                    this.f4370d = 2;
                } else {
                    this.f4370d = 0;
                    return -1;
                }
            }
        }
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        hVar.a(new n.b(-9223372036854775807L, 0L));
        this.f4369c = hVar.q(0, 3);
        hVar.d();
        this.f4369c.d(this.a);
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4370d = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
        this.b.v();
        dVar.d(this.b.a, 0, 8, false);
        return this.b.d() == f4368i;
    }
}
