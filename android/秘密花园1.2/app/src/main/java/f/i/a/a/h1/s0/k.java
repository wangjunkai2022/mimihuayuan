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
    public static final f.i.a.a.b1.m f4976l = new f.i.a.a.b1.m();

    /* renamed from: i  reason: collision with root package name */
    public final e f4977i;

    /* renamed from: j  reason: collision with root package name */
    public long f4978j;

    /* renamed from: k  reason: collision with root package name */
    public volatile boolean f4979k;

    public k(f.i.a.a.l1.m mVar, p pVar, b0 b0Var, int i2, @Nullable Object obj, e eVar) {
        super(mVar, pVar, 2, b0Var, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f4977i = eVar;
    }

    @Override // f.i.a.a.l1.c0.e
    public void a() throws IOException, InterruptedException {
        p c2 = this.a.c(this.f4978j);
        try {
            f.i.a.a.b1.d dVar = new f.i.a.a.b1.d(this.f4947h, c2.f5679d, this.f4947h.b(c2));
            if (this.f4978j == 0) {
                this.f4977i.b(null, -9223372036854775807L, -9223372036854775807L);
            }
            f.i.a.a.b1.g gVar = this.f4977i.a;
            int i2 = 0;
            while (i2 == 0 && !this.f4979k) {
                i2 = gVar.c(dVar, f4976l);
            }
            c.a.a.b.g.h.v(i2 != 1);
            this.f4978j = dVar.f4117d - this.a.f5679d;
        } finally {
            h0.k(this.f4947h);
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public void b() {
        this.f4979k = true;
    }
}
