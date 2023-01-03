package f.i.a.a.h1.s0;

import androidx.appcompat.widget.ActivityChooserView;
import f.i.a.a.b0;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: SingleSampleMediaChunk.java */
/* loaded from: classes.dex */
public final class n extends a {
    public final int n;
    public final b0 o;
    public long p;
    public boolean q;

    public n(f.i.a.a.l1.m mVar, p pVar, b0 b0Var, int i2, Object obj, long j2, long j3, long j4, int i3, b0 b0Var2) {
        super(mVar, pVar, b0Var, i2, obj, j2, j3, -9223372036854775807L, -9223372036854775807L, j4);
        this.n = i3;
        this.o = b0Var2;
    }

    @Override // f.i.a.a.l1.c0.e
    public void a() throws IOException, InterruptedException {
        try {
            long b = this.f4872h.b(this.a.c(this.p));
            if (b != -1) {
                b += this.p;
            }
            f.i.a.a.b1.d dVar = new f.i.a.a.b1.d(this.f4872h, this.p, b);
            c cVar = this.f4865l;
            cVar.a(0L);
            f.i.a.a.b1.p b2 = cVar.b(0, this.n);
            b2.d(this.o);
            for (int i2 = 0; i2 != -1; i2 = b2.b(dVar, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true)) {
                this.p += i2;
            }
            b2.c(this.f4870f, 1, (int) this.p, 0, null);
            h0.k(this.f4872h);
            this.q = true;
        } catch (Throwable th) {
            h0.k(this.f4872h);
            throw th;
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public void b() {
    }

    @Override // f.i.a.a.h1.s0.l
    public boolean d() {
        return this.q;
    }
}
