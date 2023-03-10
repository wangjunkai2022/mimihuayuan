package f.i.a.a.h1.s0;

import f.i.a.a.b0;
import f.i.a.a.h1.u0.g;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: DataChunk.java */
/* loaded from: classes.dex */
public abstract class j extends d {

    /* renamed from: i  reason: collision with root package name */
    public byte[] f4983i;

    /* renamed from: j  reason: collision with root package name */
    public volatile boolean f4984j;

    public j(f.i.a.a.l1.m mVar, p pVar, int i2, b0 b0Var, int i3, Object obj, byte[] bArr) {
        super(mVar, pVar, i2, b0Var, i3, obj, -9223372036854775807L, -9223372036854775807L);
        this.f4983i = bArr;
    }

    @Override // f.i.a.a.l1.c0.e
    public final void a() throws IOException, InterruptedException {
        try {
            this.f4956h.b(this.a);
            int i2 = 0;
            int i3 = 0;
            while (i2 != -1 && !this.f4984j) {
                byte[] bArr = this.f4983i;
                if (bArr == null) {
                    this.f4983i = new byte[16384];
                } else if (bArr.length < i3 + 16384) {
                    this.f4983i = Arrays.copyOf(bArr, bArr.length + 16384);
                }
                i2 = this.f4956h.read(this.f4983i, i3, 16384);
                if (i2 != -1) {
                    i3 += i2;
                }
            }
            if (!this.f4984j) {
                ((g.a) this).f5123k = Arrays.copyOf(this.f4983i, i3);
            }
        } finally {
            h0.k(this.f4956h);
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void b() {
        this.f4984j = true;
    }
}
