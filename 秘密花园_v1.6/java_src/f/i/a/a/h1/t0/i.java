package f.i.a.a.h1.t0;

import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.h1.k0;
import f.i.a.a.m1.h0;
import java.io.DataOutputStream;
import java.io.IOException;
/* compiled from: EventSampleStream.java */
/* loaded from: classes.dex */
public final class i implements k0 {
    public final b0 a;

    /* renamed from: c  reason: collision with root package name */
    public long[] f5020c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f5021d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.h1.t0.k.e f5022e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f5023f;

    /* renamed from: g  reason: collision with root package name */
    public int f5024g;
    public final f.i.a.a.d1.g.c b = new f.i.a.a.d1.g.c();

    /* renamed from: h  reason: collision with root package name */
    public long f5025h = -9223372036854775807L;

    public i(f.i.a.a.h1.t0.k.e eVar, b0 b0Var, boolean z) {
        this.a = b0Var;
        this.f5022e = eVar;
        this.f5020c = eVar.b;
        c(eVar, z);
    }

    @Override // f.i.a.a.h1.k0
    public void a() throws IOException {
    }

    public void b(long j2) {
        boolean z = true;
        int c2 = h0.c(this.f5020c, j2, true, false);
        this.f5024g = c2;
        if (!((this.f5021d && c2 == this.f5020c.length) ? false : false)) {
            j2 = -9223372036854775807L;
        }
        this.f5025h = j2;
    }

    public void c(f.i.a.a.h1.t0.k.e eVar, boolean z) {
        int i2 = this.f5024g;
        long j2 = i2 == 0 ? -9223372036854775807L : this.f5020c[i2 - 1];
        this.f5021d = z;
        this.f5022e = eVar;
        long[] jArr = eVar.b;
        this.f5020c = jArr;
        long j3 = this.f5025h;
        if (j3 != -9223372036854775807L) {
            b(j3);
        } else if (j2 != -9223372036854775807L) {
            this.f5024g = h0.c(jArr, j2, false, false);
        }
    }

    @Override // f.i.a.a.h1.k0
    public boolean d() {
        return true;
    }

    @Override // f.i.a.a.h1.k0
    public int i(c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
        if (!z && this.f5023f) {
            int i2 = this.f5024g;
            if (i2 == this.f5020c.length) {
                if (this.f5021d) {
                    return -3;
                }
                eVar.a = 4;
                return -4;
            }
            this.f5024g = i2 + 1;
            f.i.a.a.d1.g.c cVar = this.b;
            f.i.a.a.d1.g.a aVar = this.f5022e.a[i2];
            cVar.a.reset();
            try {
                DataOutputStream dataOutputStream = cVar.b;
                dataOutputStream.writeBytes(aVar.a);
                dataOutputStream.writeByte(0);
                String str = aVar.b != null ? aVar.b : "";
                DataOutputStream dataOutputStream2 = cVar.b;
                dataOutputStream2.writeBytes(str);
                dataOutputStream2.writeByte(0);
                f.i.a.a.d1.g.c.a(cVar.b, 1000L);
                f.i.a.a.d1.g.c.a(cVar.b, 0L);
                f.i.a.a.d1.g.c.a(cVar.b, aVar.f4630c);
                f.i.a.a.d1.g.c.a(cVar.b, aVar.f4631d);
                cVar.b.write(aVar.f4632e);
                cVar.b.flush();
                byte[] byteArray = cVar.a.toByteArray();
                if (byteArray != null) {
                    eVar.k(byteArray.length);
                    eVar.a = 1;
                    eVar.f6039c.put(byteArray);
                    eVar.f6040d = this.f5020c[i2];
                    return -4;
                }
                return -3;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        c0Var.a = this.a;
        this.f5023f = true;
        return -5;
    }

    @Override // f.i.a.a.h1.k0
    public int q(long j2) {
        int max = Math.max(this.f5024g, h0.c(this.f5020c, j2, true, false));
        int i2 = max - this.f5024g;
        this.f5024g = max;
        return i2;
    }
}
