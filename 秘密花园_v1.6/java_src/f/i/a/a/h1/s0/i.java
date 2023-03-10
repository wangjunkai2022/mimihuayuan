package f.i.a.a.h1.s0;

import f.i.a.a.b0;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import java.io.IOException;
/* compiled from: ContainerMediaChunk.java */
/* loaded from: classes.dex */
public class i extends a {
    public static final f.i.a.a.b1.m t = new f.i.a.a.b1.m();
    public final int n;
    public final long o;
    public final e p;
    public long q;
    public volatile boolean r;
    public boolean s;

    public i(f.i.a.a.l1.m mVar, p pVar, b0 b0Var, int i2, Object obj, long j2, long j3, long j4, long j5, long j6, int i3, long j7, e eVar) {
        super(mVar, pVar, b0Var, i2, obj, j2, j3, j4, j5, j6);
        this.n = i3;
        this.o = j7;
        this.p = eVar;
    }

    @Override // f.i.a.a.l1.c0.e
    public final void a() throws IOException, InterruptedException {
        p c2 = this.a.c(this.q);
        try {
            f.i.a.a.b1.d dVar = new f.i.a.a.b1.d(this.f4956h, c2.f5688d, this.f4956h.b(c2));
            if (this.q == 0) {
                c cVar = this.f4949l;
                cVar.a(this.o);
                this.p.b(cVar, this.f4947j == -9223372036854775807L ? -9223372036854775807L : this.f4947j - this.o, this.f4948k == -9223372036854775807L ? -9223372036854775807L : this.f4948k - this.o);
            }
            f.i.a.a.b1.g gVar = this.p.a;
            int i2 = 0;
            while (i2 == 0 && !this.r) {
                i2 = gVar.c(dVar, t);
            }
            c.a.a.b.g.h.v(i2 != 1);
            this.q = dVar.f4126d - this.a.f5688d;
            h0.k(this.f4956h);
            this.s = true;
        } catch (Throwable th) {
            h0.k(this.f4956h);
            throw th;
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void b() {
        this.r = true;
    }

    @Override // f.i.a.a.h1.s0.l
    public long c() {
        return this.f4989i + this.n;
    }

    @Override // f.i.a.a.h1.s0.l
    public boolean d() {
        return this.s;
    }
}
