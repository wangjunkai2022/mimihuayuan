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
    public b f4587c;

    /* renamed from: d  reason: collision with root package name */
    public int f4588d;

    /* renamed from: e  reason: collision with root package name */
    public int f4589e;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    @Override // f.i.a.a.b1.g
    public int c(d dVar, m mVar) throws IOException, InterruptedException {
        if (this.f4587c == null) {
            b Z0 = c.a.a.b.g.h.Z0(dVar);
            this.f4587c = Z0;
            if (Z0 != null) {
                int i2 = Z0.b;
                int i3 = Z0.a;
                this.b.d(b0.i(null, "audio/raw", null, Z0.f4592e * i2 * i3, 32768, i3, i2, Z0.f4593f, null, null, 0, null));
                this.f4588d = this.f4587c.f4591d;
            } else {
                throw new h0("Unsupported or unrecognized wav header.");
            }
        }
        if (!(this.f4587c.f4594g != -1)) {
            b bVar = this.f4587c;
            if (bVar != null) {
                dVar.f4119f = 0;
                u uVar = new u(8);
                c a = c.a(dVar, uVar);
                while (true) {
                    int i4 = a.a;
                    if (i4 != f0.f5933d) {
                        if (i4 != f0.a) {
                            int i5 = f0.f5932c;
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
                        int i6 = (int) dVar.f4117d;
                        long j3 = i6 + a.b;
                        long j4 = dVar.f4116c;
                        if (j4 != -1 && j3 > j4) {
                            j3 = j4;
                        }
                        bVar.f4594g = i6;
                        bVar.f4595h = j3;
                        this.a.a(this.f4587c);
                    }
                }
            } else {
                throw null;
            }
        } else if (dVar.f4117d == 0) {
            dVar.h(this.f4587c.f4594g);
        }
        long j5 = this.f4587c.f4595h;
        c.a.a.b.g.h.v(j5 != -1);
        long j6 = j5 - dVar.f4117d;
        if (j6 <= 0) {
            return -1;
        }
        int b = this.b.b(dVar, (int) Math.min(32768 - this.f4589e, j6), true);
        if (b != -1) {
            this.f4589e += b;
        }
        int i7 = this.f4589e;
        int i8 = i7 / this.f4588d;
        if (i8 > 0) {
            long b2 = this.f4587c.b(dVar.f4117d - i7);
            int i9 = i8 * this.f4588d;
            int i10 = this.f4589e - i9;
            this.f4589e = i10;
            this.b.c(b2, 1, i9, i10, null);
        }
        return b == -1 ? -1 : 0;
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.a = hVar;
        this.b = hVar.q(0, 1);
        this.f4587c = null;
        hVar.d();
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4589e = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
        return c.a.a.b.g.h.Z0(dVar) != null;
    }
}
