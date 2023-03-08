package f.i.a.a.m1;

/* compiled from: ParsableNalUnitBitArray.java */
/* loaded from: classes.dex */
public final class v {
    public byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f5777c;

    /* renamed from: d  reason: collision with root package name */
    public int f5778d = 0;

    public v(byte[] bArr, int i2, int i3) {
        this.a = bArr;
        this.f5777c = i2;
        this.b = i3;
        a();
    }

    public final void a() {
        int i2;
        int i3 = this.f5777c;
        c.a.a.b.g.h.v(i3 >= 0 && (i3 < (i2 = this.b) || (i3 == i2 && this.f5778d == 0)));
    }

    public boolean b(int i2) {
        int i3 = this.f5777c;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        int i6 = (this.f5778d + i2) - (i4 * 8);
        if (i6 > 7) {
            i5++;
            i6 -= 8;
        }
        while (true) {
            i3++;
            if (i3 > i5 || i5 >= this.b) {
                break;
            } else if (h(i3)) {
                i5++;
                i3 += 2;
            }
        }
        int i7 = this.b;
        if (i5 >= i7) {
            return i5 == i7 && i6 == 0;
        }
        return true;
    }

    public boolean c() {
        int i2 = this.f5777c;
        int i3 = this.f5778d;
        int i4 = 0;
        while (this.f5777c < this.b && !d()) {
            i4++;
        }
        boolean z = this.f5777c == this.b;
        this.f5777c = i2;
        this.f5778d = i3;
        return !z && b((i4 * 2) + 1);
    }

    public boolean d() {
        boolean z = (this.a[this.f5777c] & (128 >> this.f5778d)) != 0;
        i();
        return z;
    }

    public int e(int i2) {
        int i3;
        this.f5778d += i2;
        int i4 = 0;
        while (true) {
            i3 = this.f5778d;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f5778d = i5;
            byte[] bArr = this.a;
            int i6 = this.f5777c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!h(i6 + 1)) {
                r3 = 1;
            }
            this.f5777c = i6 + r3;
        }
        byte[] bArr2 = this.a;
        int i7 = this.f5777c;
        int i8 = ((-1) >>> (32 - i2)) & (i4 | ((bArr2[i7] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f5778d = 0;
            this.f5777c = i7 + (h(i7 + 1) ? 2 : 1);
        }
        a();
        return i8;
    }

    public final int f() {
        int i2 = 0;
        while (!d()) {
            i2++;
        }
        return ((1 << i2) - 1) + (i2 > 0 ? e(i2) : 0);
    }

    public int g() {
        int f2 = f();
        return ((f2 + 1) / 2) * (f2 % 2 == 0 ? -1 : 1);
    }

    public final boolean h(int i2) {
        if (2 <= i2 && i2 < this.b) {
            byte[] bArr = this.a;
            if (bArr[i2] == 3 && bArr[i2 - 2] == 0 && bArr[i2 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public void i() {
        int i2 = this.f5778d + 1;
        this.f5778d = i2;
        if (i2 == 8) {
            this.f5778d = 0;
            int i3 = this.f5777c;
            this.f5777c = i3 + (h(i3 + 1) ? 2 : 1);
        }
        a();
    }

    public void j(int i2) {
        int i3 = this.f5777c;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        this.f5777c = i5;
        int i6 = (i2 - (i4 * 8)) + this.f5778d;
        this.f5778d = i6;
        if (i6 > 7) {
            this.f5777c = i5 + 1;
            this.f5778d = i6 - 8;
        }
        while (true) {
            i3++;
            if (i3 <= this.f5777c) {
                if (h(i3)) {
                    this.f5777c++;
                    i3 += 2;
                }
            } else {
                a();
                return;
            }
        }
    }
}
