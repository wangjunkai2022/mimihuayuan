package f.i.a.a.h1.s0;

import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.m;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: ContainerMediaChunk.java */
/* loaded from: classes.dex */
public class i extends a {
    public static final m t = new m();
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

    /* JADX INFO: finally extract failed */
    @Override // f.i.a.a.l1.c0.e
    public final void a() throws IOException, InterruptedException {
        p c2 = this.a.c(this.q);
        try {
            d dVar = new d(this.f4872h, c2.f5604d, this.f4872h.b(c2));
            if (this.q == 0) {
                c cVar = this.f4865l;
                cVar.a(this.o);
                this.p.b(cVar, this.f4863j == -9223372036854775807L ? -9223372036854775807L : this.f4863j - this.o, this.f4864k == -9223372036854775807L ? -9223372036854775807L : this.f4864k - this.o);
            }
            g gVar = this.p.a;
            boolean z = false;
            int i2 = 0;
            while (i2 == 0 && !this.r) {
                i2 = gVar.c(dVar, t);
            }
            if (i2 != 1) {
                z = true;
            }
            h.v(z);
            this.q = dVar.f4042d - this.a.f5604d;
            h0.k(this.f4872h);
            this.s = true;
        } catch (Throwable th) {
            h0.k(this.f4872h);
            throw th;
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void b() {
        this.r = true;
    }

    @Override // f.i.a.a.h1.s0.l
    public long c() {
        return this.f4905i + ((long) this.n);
    }

    @Override // f.i.a.a.h1.s0.l
    public boolean d() {
        return this.s;
    }
}
