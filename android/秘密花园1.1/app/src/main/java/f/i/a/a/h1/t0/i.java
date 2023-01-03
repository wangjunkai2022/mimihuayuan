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
    public long[] f4936c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4937d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.h1.t0.k.e f4938e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4939f;

    /* renamed from: g  reason: collision with root package name */
    public int f4940g;
    public final f.i.a.a.d1.g.c b = new f.i.a.a.d1.g.c();

    /* renamed from: h  reason: collision with root package name */
    public long f4941h = -9223372036854775807L;

    public i(f.i.a.a.h1.t0.k.e eVar, b0 b0Var, boolean z) {
        this.a = b0Var;
        this.f4938e = eVar;
        this.f4936c = eVar.b;
        c(eVar, z);
    }

    @Override // f.i.a.a.h1.k0
    public void a() throws IOException {
    }

    public void b(long j2) {
        boolean z = true;
        int c2 = h0.c(this.f4936c, j2, true, false);
        this.f4940g = c2;
        if (!((this.f4937d && c2 == this.f4936c.length) ? false : false)) {
            j2 = -9223372036854775807L;
        }
        this.f4941h = j2;
    }

    public void c(f.i.a.a.h1.t0.k.e eVar, boolean z) {
        int i2 = this.f4940g;
        long j2 = i2 == 0 ? -9223372036854775807L : this.f4936c[i2 - 1];
        this.f4937d = z;
        this.f4938e = eVar;
        long[] jArr = eVar.b;
        this.f4936c = jArr;
        long j3 = this.f4941h;
        if (j3 != -9223372036854775807L) {
            b(j3);
        } else if (j2 != -9223372036854775807L) {
            this.f4940g = h0.c(jArr, j2, false, false);
        }
    }

    @Override // f.i.a.a.h1.k0
    public boolean d() {
        return true;
    }

    @Override // f.i.a.a.h1.k0
    public int i(c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
        if (!z && this.f4939f) {
            int i2 = this.f4940g;
            if (i2 == this.f4936c.length) {
                if (this.f4937d) {
                    return -3;
                }
                eVar.a = 4;
                return -4;
            }
            this.f4940g = i2 + 1;
            f.i.a.a.d1.g.c cVar = this.b;
            f.i.a.a.d1.g.a aVar = this.f4938e.a[i2];
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
                f.i.a.a.d1.g.c.a(cVar.b, aVar.f4546c);
                f.i.a.a.d1.g.c.a(cVar.b, aVar.f4547d);
                cVar.b.write(aVar.f4548e);
                cVar.b.flush();
                byte[] byteArray = cVar.a.toByteArray();
                if (byteArray != null) {
                    eVar.k(byteArray.length);
                    eVar.a = 1;
                    eVar.f5955c.put(byteArray);
                    eVar.f5956d = this.f4936c[i2];
                    return -4;
                }
                return -3;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        c0Var.a = this.a;
        this.f4939f = true;
        return -5;
    }

    @Override // f.i.a.a.h1.k0
    public int q(long j2) {
        int max = Math.max(this.f4940g, h0.c(this.f4936c, j2, true, false));
        int i2 = max - this.f4940g;
        this.f4940g = max;
        return i2;
    }
}
