package f.i.a.a.b1.v;

import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: OggPageHeader.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: i  reason: collision with root package name */
    public static final int f4342i = h0.C("OggS");
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public long f4343c;

    /* renamed from: d  reason: collision with root package name */
    public int f4344d;

    /* renamed from: e  reason: collision with root package name */
    public int f4345e;

    /* renamed from: f  reason: collision with root package name */
    public int f4346f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f4347g = new int[255];

    /* renamed from: h  reason: collision with root package name */
    public final u f4348h = new u(255);

    public boolean a(f.i.a.a.b1.d dVar, boolean z) throws IOException, InterruptedException {
        int i2;
        this.f4348h.v();
        b();
        long j2 = dVar.f4125c;
        if ((j2 == -1 || j2 - dVar.c() >= 27) && dVar.d(this.f4348h.a, 0, 27, true)) {
            if (this.f4348h.q() != f4342i) {
                if (z) {
                    return false;
                }
                throw new f.i.a.a.h0("expected OggS capture pattern at begin of page");
            } else {
                int p = this.f4348h.p();
                this.a = p;
                if (p != 0) {
                    if (z) {
                        return false;
                    }
                    throw new f.i.a.a.h0("unsupported bit stream revision");
                }
                this.b = this.f4348h.p();
                u uVar = this.f4348h;
                byte[] bArr = uVar.a;
                int i3 = uVar.b + 1;
                uVar.b = i3;
                int i4 = i3 + 1;
                uVar.b = i4;
                int i5 = i4 + 1;
                uVar.b = i5;
                int i6 = i5 + 1;
                uVar.b = i6;
                int i7 = i6 + 1;
                uVar.b = i7;
                int i8 = i7 + 1;
                uVar.b = i8;
                int i9 = i8 + 1;
                uVar.b = i9;
                uVar.b = i9 + 1;
                this.f4343c = ((bArr[i9] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i3] & 255) << 8) | ((bArr[i4] & 255) << 16) | ((bArr[i5] & 255) << 24) | ((bArr[i6] & 255) << 32) | ((bArr[i7] & 255) << 40) | ((bArr[i8] & 255) << 48);
                uVar.g();
                this.f4348h.g();
                this.f4348h.g();
                int p2 = this.f4348h.p();
                this.f4344d = p2;
                this.f4345e = p2 + 27;
                this.f4348h.v();
                dVar.d(this.f4348h.a, 0, this.f4344d, false);
                for (int i10 = 0; i10 < this.f4344d; i10++) {
                    this.f4347g[i10] = this.f4348h.p();
                    this.f4346f += this.f4347g[i10];
                }
                return true;
            }
        }
        if (z) {
            return false;
        }
        throw new EOFException();
    }

    public void b() {
        this.a = 0;
        this.b = 0;
        this.f4343c = 0L;
        this.f4344d = 0;
        this.f4345e = 0;
        this.f4346f = 0;
    }
}
