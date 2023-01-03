package f.i.a.a.h1.s0;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.m;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: InitializationChunk.java */
/* loaded from: classes.dex */
public final class k extends d {

    /* renamed from: l  reason: collision with root package name */
    public static final m f4901l = new m();

    /* renamed from: i  reason: collision with root package name */
    public final e f4902i;

    /* renamed from: j  reason: collision with root package name */
    public long f4903j;

    /* renamed from: k  reason: collision with root package name */
    public volatile boolean f4904k;

    public k(f.i.a.a.l1.m mVar, p pVar, b0 b0Var, int i2, @Nullable Object obj, e eVar) {
        super(mVar, pVar, 2, b0Var, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f4902i = eVar;
    }

    @Override // f.i.a.a.l1.c0.e
    public void a() throws IOException, InterruptedException {
        p c2 = this.a.c(this.f4903j);
        try {
            d dVar = new d(this.f4872h, c2.f5604d, this.f4872h.b(c2));
            if (this.f4903j == 0) {
                this.f4902i.b(null, -9223372036854775807L, -9223372036854775807L);
            }
            g gVar = this.f4902i.a;
            boolean z = false;
            int i2 = 0;
            while (i2 == 0 && !this.f4904k) {
                i2 = gVar.c(dVar, f4901l);
            }
            if (i2 != 1) {
                z = true;
            }
            h.v(z);
            this.f4903j = dVar.f4042d - this.a.f5604d;
        } finally {
            h0.k(this.f4872h);
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public void b() {
        this.f4904k = true;
    }
}
