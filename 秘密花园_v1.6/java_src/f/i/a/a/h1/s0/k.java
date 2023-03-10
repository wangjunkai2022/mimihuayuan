package f.i.a.a.h1.s0;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import java.io.IOException;
/* compiled from: InitializationChunk.java */
/* loaded from: classes.dex */
public final class k extends d {

    /* renamed from: l  reason: collision with root package name */
    public static final f.i.a.a.b1.m f4985l = new f.i.a.a.b1.m();

    /* renamed from: i  reason: collision with root package name */
    public final e f4986i;

    /* renamed from: j  reason: collision with root package name */
    public long f4987j;

    /* renamed from: k  reason: collision with root package name */
    public volatile boolean f4988k;

    public k(f.i.a.a.l1.m mVar, p pVar, b0 b0Var, int i2, @Nullable Object obj, e eVar) {
        super(mVar, pVar, 2, b0Var, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f4986i = eVar;
    }

    @Override // f.i.a.a.l1.c0.e
    public void a() throws IOException, InterruptedException {
        p c2 = this.a.c(this.f4987j);
        try {
            f.i.a.a.b1.d dVar = new f.i.a.a.b1.d(this.f4956h, c2.f5688d, this.f4956h.b(c2));
            if (this.f4987j == 0) {
                this.f4986i.b(null, -9223372036854775807L, -9223372036854775807L);
            }
            f.i.a.a.b1.g gVar = this.f4986i.a;
            int i2 = 0;
            while (i2 == 0 && !this.f4988k) {
                i2 = gVar.c(dVar, f4985l);
            }
            c.a.a.b.g.h.v(i2 != 1);
            this.f4987j = dVar.f4126d - this.a.f5688d;
        } finally {
            h0.k(this.f4956h);
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public void b() {
        this.f4988k = true;
    }
}
