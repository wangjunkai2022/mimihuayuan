package f.i.a.a.n1.t;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import f.i.a.a.p;
import f.i.a.a.w;
import f.i.a.a.y0.e;
import java.nio.ByteBuffer;
/* compiled from: CameraMotionRenderer.java */
/* loaded from: classes.dex */
public class b extends p {

    /* renamed from: j  reason: collision with root package name */
    public final c0 f5839j;

    /* renamed from: k  reason: collision with root package name */
    public final e f5840k;

    /* renamed from: l  reason: collision with root package name */
    public final u f5841l;

    /* renamed from: m  reason: collision with root package name */
    public long f5842m;
    @Nullable
    public a n;
    public long o;

    public b() {
        super(5);
        this.f5839j = new c0();
        this.f5840k = new e(1);
        this.f5841l = new u();
    }

    @Override // f.i.a.a.p
    public void D(b0[] b0VarArr, long j2) throws w {
        this.f5842m = j2;
    }

    @Override // f.i.a.a.p
    public int F(b0 b0Var) {
        return "application/x-camera-motion".equals(b0Var.f4097i) ? 4 : 0;
    }

    @Override // f.i.a.a.p0
    public boolean a() {
        return g();
    }

    @Override // f.i.a.a.p0
    public boolean d() {
        return true;
    }

    @Override // f.i.a.a.p0
    public void i(long j2, long j3) throws w {
        float[] fArr;
        while (!g() && this.o < 100000 + j2) {
            this.f5840k.i();
            if (E(this.f5839j, this.f5840k, false) != -4 || this.f5840k.h()) {
                return;
            }
            this.f5840k.f6039c.flip();
            e eVar = this.f5840k;
            this.o = eVar.f6040d;
            if (this.n != null) {
                ByteBuffer byteBuffer = eVar.f6039c;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    this.f5841l.y(byteBuffer.array(), byteBuffer.limit());
                    this.f5841l.A(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i2 = 0; i2 < 3; i2++) {
                        fArr2[i2] = Float.intBitsToFloat(this.f5841l.f());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    a aVar = this.n;
                    h0.g(aVar);
                    aVar.a(this.o - this.f5842m, fArr);
                }
            }
        }
    }

    @Override // f.i.a.a.p, f.i.a.a.n0.b
    public void j(int i2, @Nullable Object obj) throws w {
        if (i2 == 7) {
            this.n = (a) obj;
        }
    }

    @Override // f.i.a.a.p
    public void x() {
        this.o = 0L;
        a aVar = this.n;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // f.i.a.a.p
    public void z(long j2, boolean z) throws w {
        this.o = 0L;
        a aVar = this.n;
        if (aVar != null) {
            aVar.b();
        }
    }
}
