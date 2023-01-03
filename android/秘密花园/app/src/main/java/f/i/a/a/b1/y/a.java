package f.i.a.a.b1.y;

import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.m;
import f.i.a.a.b1.p;
import f.i.a.a.h0;
import f.i.a.a.m1.u;
import f.i.a.a.w0.f0;
import java.io.IOException;

/* compiled from: WavExtractor.java */
/* loaded from: classes.dex */
public final class a implements g {
    public h a;
    public p b;

    /* renamed from: c  reason: collision with root package name */
    public b f4512c;

    /* renamed from: d  reason: collision with root package name */
    public int f4513d;

    /* renamed from: e  reason: collision with root package name */
    public int f4514e;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    @Override // f.i.a.a.b1.g
    public int c(d dVar, m mVar) throws IOException, InterruptedException {
        if (this.f4512c == null) {
            b Z0 = c.a.a.b.g.h.Z0(dVar);
            this.f4512c = Z0;
            if (Z0 != null) {
                int i2 = Z0.b;
                int i3 = Z0.a;
                this.b.d(b0.i(null, "audio/raw", null, Z0.f4517e * i2 * i3, 32768, i3, i2, Z0.f4518f, null, null, 0, null));
                this.f4513d = this.f4512c.f4516d;
            } else {
                throw new h0("Unsupported or unrecognized wav header.");
            }
        }
        if (!(this.f4512c.f4519g != -1)) {
            b bVar = this.f4512c;
            if (bVar != null) {
                dVar.f4044f = 0;
                u uVar = new u(8);
                c a = c.a(dVar, uVar);
                while (true) {
                    int i4 = a.a;
                    if (i4 != f0.f5858d) {
                        if (i4 != f0.a) {
                            int i5 = f0.f5857c;
                        }
                        long j2 = a.b + 8;
                        if (a.a == f0.a) {
                            j2 = 12;
                        }
                        if (j2 <= 2147483647L) {
                            dVar.h((int) j2);
                            a = c.a(dVar, uVar);
                        } else {
                            StringBuilder o = f.b.a.a.a.o("Chunk is too large (~2GB+) to skip; id: ");
                            o.append(a.a);
                            throw new h0(o.toString());
                        }
                    } else {
                        dVar.h(8);
                        int i6 = (int) dVar.f4042d;
                        long j3 = ((long) i6) + a.b;
                        long j4 = dVar.f4041c;
                        if (j4 != -1 && j3 > j4) {
                            j3 = j4;
                        }
                        bVar.f4519g = i6;
                        bVar.f4520h = j3;
                        this.a.a(this.f4512c);
                    }
                }
            } else {
                throw null;
            }
        } else if (dVar.f4042d == 0) {
            dVar.h(this.f4512c.f4519g);
        }
        long j5 = this.f4512c.f4520h;
        c.a.a.b.g.h.v(j5 != -1);
        long j6 = j5 - dVar.f4042d;
        if (j6 <= 0) {
            return -1;
        }
        int b = this.b.b(dVar, (int) Math.min((long) (32768 - this.f4514e), j6), true);
        if (b != -1) {
            this.f4514e += b;
        }
        int i7 = this.f4514e;
        int i8 = i7 / this.f4513d;
        if (i8 > 0) {
            long b2 = this.f4512c.b(dVar.f4042d - ((long) i7));
            int i9 = i8 * this.f4513d;
            int i10 = this.f4514e - i9;
            this.f4514e = i10;
            this.b.c(b2, 1, i9, i10, null);
        }
        if (b == -1) {
            return -1;
        }
        return 0;
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.a = hVar;
        this.b = hVar.q(0, 1);
        this.f4512c = null;
        hVar.d();
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4514e = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
        return c.a.a.b.g.h.Z0(dVar) != null;
    }
}
