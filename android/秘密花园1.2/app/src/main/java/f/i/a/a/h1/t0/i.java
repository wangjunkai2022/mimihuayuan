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
    public long[] f5011c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f5012d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.h1.t0.k.e f5013e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f5014f;

    /* renamed from: g  reason: collision with root package name */
    public int f5015g;
    public final f.i.a.a.d1.g.c b = new f.i.a.a.d1.g.c();

    /* renamed from: h  reason: collision with root package name */
    public long f5016h = -9223372036854775807L;

    public i(f.i.a.a.h1.t0.k.e eVar, b0 b0Var, boolean z) {
        this.a = b0Var;
        this.f5013e = eVar;
        this.f5011c = eVar.b;
        c(eVar, z);
    }

    @Override // f.i.a.a.h1.k0
    public void a() throws IOException {
    }

    public void b(long j2) {
        boolean z = true;
        int c2 = h0.c(this.f5011c, j2, true, false);
        this.f5015g = c2;
        if (!((this.f5012d && c2 == this.f5011c.length) ? false : false)) {
            j2 = -9223372036854775807L;
        }
        this.f5016h = j2;
    }

    public void c(f.i.a.a.h1.t0.k.e eVar, boolean z) {
        int i2 = this.f5015g;
        long j2 = i2 == 0 ? -9223372036854775807L : this.f5011c[i2 - 1];
        this.f5012d = z;
        this.f5013e = eVar;
        long[] jArr = eVar.b;
        this.f5011c = jArr;
        long j3 = this.f5016h;
        if (j3 != -9223372036854775807L) {
            b(j3);
        } else if (j2 != -9223372036854775807L) {
            this.f5015g = h0.c(jArr, j2, false, false);
        }
    }

    @Override // f.i.a.a.h1.k0
    public boolean d() {
        return true;
    }

    @Override // f.i.a.a.h1.k0
    public int i(c0 c0Var, f.i.a.a.y0.e eVar, boolean z) {
        if (!z && this.f5014f) {
            int i2 = this.f5015g;
            if (i2 == this.f5011c.length) {
                if (this.f5012d) {
                    return -3;
                }
                eVar.a = 4;
                return -4;
            }
            this.f5015g = i2 + 1;
            f.i.a.a.d1.g.c cVar = this.b;
            f.i.a.a.d1.g.a aVar = this.f5013e.a[i2];
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
                f.i.a.a.d1.g.c.a(cVar.b, aVar.f4621c);
                f.i.a.a.d1.g.c.a(cVar.b, aVar.f4622d);
                cVar.b.write(aVar.f4623e);
                cVar.b.flush();
                byte[] byteArray = cVar.a.toByteArray();
                if (byteArray != null) {
                    eVar.k(byteArray.length);
                    eVar.a = 1;
                    eVar.f6030c.put(byteArray);
                    eVar.f6031d = this.f5011c[i2];
                    return -4;
                }
                return -3;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        c0Var.a = this.a;
        this.f5014f = true;
        return -5;
    }

    @Override // f.i.a.a.h1.k0
    public int q(long j2) {
        int max = Math.max(this.f5015g, h0.c(this.f5011c, j2, true, false));
        int i2 = max - this.f5015g;
        this.f5015g = max;
        return i2;
    }
}
