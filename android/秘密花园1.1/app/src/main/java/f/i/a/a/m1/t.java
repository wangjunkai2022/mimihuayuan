package f.i.a.a.m1;

/* compiled from: ParsableBitArray.java */
/* loaded from: classes.dex */
public final class t {
    public byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f5699c;

    /* renamed from: d  reason: collision with root package name */
    public int f5700d;

    public t() {
        this.a = h0.f5665f;
    }

    public final void a() {
        int i2;
        int i3 = this.b;
        c.a.a.b.g.h.v(i3 >= 0 && (i3 < (i2 = this.f5700d) || (i3 == i2 && this.f5699c == 0)));
    }

    public int b() {
        return ((this.f5700d - this.b) * 8) - this.f5699c;
    }

    public void c() {
        if (this.f5699c == 0) {
            return;
        }
        this.f5699c = 0;
        this.b++;
        a();
    }

    public int d() {
        return (this.b * 8) + this.f5699c;
    }

    public boolean e() {
        boolean z = (this.a[this.b] & (128 >> this.f5699c)) != 0;
        k();
        return z;
    }

    public int f(int i2) {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        this.f5699c += i2;
        int i4 = 0;
        while (true) {
            i3 = this.f5699c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f5699c = i5;
            byte[] bArr = this.a;
            int i6 = this.b;
            this.b = i6 + 1;
            i4 |= (bArr[i6] & 255) << i5;
        }
        byte[] bArr2 = this.a;
        int i7 = this.b;
        int i8 = ((-1) >>> (32 - i2)) & (i4 | ((bArr2[i7] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f5699c = 0;
            this.b = i7 + 1;
        }
        a();
        return i8;
    }

    public void g(byte[] bArr, int i2, int i3) {
        int i4 = (i3 >> 3) + i2;
        while (i2 < i4) {
            byte[] bArr2 = this.a;
            int i5 = this.b;
            int i6 = i5 + 1;
            this.b = i6;
            byte b = bArr2[i5];
            int i7 = this.f5699c;
            bArr[i2] = (byte) (b << i7);
            bArr[i2] = (byte) (((255 & bArr2[i6]) >> (8 - i7)) | bArr[i2]);
            i2++;
        }
        int i8 = i3 & 7;
        if (i8 == 0) {
            return;
        }
        bArr[i4] = (byte) (bArr[i4] & (255 >> i8));
        int i9 = this.f5699c;
        if (i9 + i8 > 8) {
            int i10 = bArr[i4];
            byte[] bArr3 = this.a;
            int i11 = this.b;
            this.b = i11 + 1;
            bArr[i4] = (byte) (i10 | ((bArr3[i11] & 255) << i9));
            this.f5699c = i9 - 8;
        }
        int i12 = this.f5699c + i8;
        this.f5699c = i12;
        byte[] bArr4 = this.a;
        int i13 = this.b;
        bArr[i4] = (byte) (((byte) (((255 & bArr4[i13]) >> (8 - i12)) << (8 - i8))) | bArr[i4]);
        if (i12 == 8) {
            this.f5699c = 0;
            this.b = i13 + 1;
        }
        a();
    }

    public void h(byte[] bArr, int i2, int i3) {
        c.a.a.b.g.h.v(this.f5699c == 0);
        System.arraycopy(this.a, this.b, bArr, i2, i3);
        this.b += i3;
        a();
    }

    public void i(byte[] bArr, int i2) {
        this.a = bArr;
        this.b = 0;
        this.f5699c = 0;
        this.f5700d = i2;
    }

    public void j(int i2) {
        int i3 = i2 / 8;
        this.b = i3;
        this.f5699c = i2 - (i3 * 8);
        a();
    }

    public void k() {
        int i2 = this.f5699c + 1;
        this.f5699c = i2;
        if (i2 == 8) {
            this.f5699c = 0;
            this.b++;
        }
        a();
    }

    public void l(int i2) {
        int i3 = i2 / 8;
        int i4 = this.b + i3;
        this.b = i4;
        int i5 = (i2 - (i3 * 8)) + this.f5699c;
        this.f5699c = i5;
        if (i5 > 7) {
            this.b = i4 + 1;
            this.f5699c = i5 - 8;
        }
        a();
    }

    public t(byte[] bArr) {
        int length = bArr.length;
        this.a = bArr;
        this.f5700d = length;
    }

    public t(byte[] bArr, int i2) {
        this.a = bArr;
        this.f5700d = i2;
    }
}
