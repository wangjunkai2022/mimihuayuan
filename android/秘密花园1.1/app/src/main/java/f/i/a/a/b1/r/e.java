package f.i.a.a.b1.r;

import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.b1.r.d;
import f.i.a.a.h0;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;
import f.i.a.a.n1.h;

/* compiled from: VideoTagPayloadReader.java */
/* loaded from: classes.dex */
public final class e extends d {
    public final u b;

    /* renamed from: c  reason: collision with root package name */
    public final u f4087c;

    /* renamed from: d  reason: collision with root package name */
    public int f4088d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4089e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4090f;

    /* renamed from: g  reason: collision with root package name */
    public int f4091g;

    public e(p pVar) {
        super(pVar);
        this.b = new u(s.a);
        this.f4087c = new u(4);
    }

    @Override // f.i.a.a.b1.r.d
    public boolean b(u uVar) throws d.a {
        int p = uVar.p();
        int i2 = (p >> 4) & 15;
        int i3 = p & 15;
        if (i3 == 7) {
            this.f4091g = i2;
            return i2 != 5;
        }
        throw new d.a(f.b.a.a.a.J("Video format not supported: ", i3));
    }

    @Override // f.i.a.a.b1.r.d
    public boolean c(u uVar, long j2) throws h0 {
        int p = uVar.p();
        byte[] bArr = uVar.a;
        int i2 = uVar.b;
        int i3 = i2 + 1;
        uVar.b = i3;
        int i4 = i3 + 1;
        uVar.b = i4;
        int i5 = (((bArr[i2] & 255) << 24) >> 8) | ((bArr[i3] & 255) << 8);
        uVar.b = i4 + 1;
        long j3 = (((bArr[i4] & 255) | i5) * 1000) + j2;
        if (p == 0 && !this.f4089e) {
            u uVar2 = new u(new byte[uVar.a()]);
            uVar.c(uVar2.a, 0, uVar.a());
            h b = h.b(uVar2);
            this.f4088d = b.b;
            this.a.d(b0.t(null, "video/avc", null, -1, -1, b.f5729c, b.f5730d, -1.0f, b.a, -1, b.f5731e, null));
            this.f4089e = true;
            return false;
        } else if (p == 1 && this.f4089e) {
            int i6 = this.f4091g == 1 ? 1 : 0;
            if (this.f4090f || i6 != 0) {
                byte[] bArr2 = this.f4087c.a;
                bArr2[0] = 0;
                bArr2[1] = 0;
                bArr2[2] = 0;
                int i7 = 4 - this.f4088d;
                int i8 = 0;
                while (uVar.a() > 0) {
                    uVar.c(this.f4087c.a, i7, this.f4088d);
                    this.f4087c.A(0);
                    int s = this.f4087c.s();
                    this.b.A(0);
                    this.a.a(this.b, 4);
                    this.a.a(uVar, s);
                    i8 = i8 + 4 + s;
                }
                this.a.c(j3, i6, i8, 0, null);
                this.f4090f = true;
                return true;
            }
            return false;
        } else {
            return false;
        }
    }
}
