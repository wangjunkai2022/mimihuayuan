package f.i.a.a.b1.x;

import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;

/* compiled from: PsDurationReader.java */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: c  reason: collision with root package name */
    public boolean f4485c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4486d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4487e;
    public final e0 a = new e0(0);

    /* renamed from: f  reason: collision with root package name */
    public long f4488f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    public long f4489g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    public long f4490h = -9223372036854775807L;
    public final f.i.a.a.m1.u b = new f.i.a.a.m1.u();

    public static long c(f.i.a.a.m1.u uVar) {
        int i2 = uVar.b;
        if (uVar.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        System.arraycopy(uVar.a, uVar.b, bArr, 0, 9);
        uVar.b += 9;
        uVar.A(i2);
        if ((bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
            return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
        }
        return -9223372036854775807L;
    }

    public final int a(f.i.a.a.b1.d dVar) {
        this.b.x(h0.f5665f);
        this.f4485c = true;
        dVar.f4044f = 0;
        return 0;
    }

    public final int b(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }
}
