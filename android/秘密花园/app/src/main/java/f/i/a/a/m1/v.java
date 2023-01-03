package f.i.a.a.m1;

import c.a.a.b.g.h;

/* compiled from: ParsableNalUnitBitArray.java */
/* loaded from: classes.dex */
public final class v {
    public byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f5702c;

    /* renamed from: d  reason: collision with root package name */
    public int f5703d = 0;

    public v(byte[] bArr, int i2, int i3) {
        this.a = bArr;
        this.f5702c = i2;
        this.b = i3;
        a();
    }

    public final void a() {
        int i2;
        int i3 = this.f5702c;
        h.v(i3 >= 0 && (i3 < (i2 = this.b) || (i3 == i2 && this.f5703d == 0)));
    }

    public boolean b(int i2) {
        int i3 = this.f5702c;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        int i6 = (this.f5703d + i2) - (i4 * 8);
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
        if (i5 < i7) {
            return true;
        }
        if (i5 == i7 && i6 == 0) {
            return true;
        }
        return false;
    }

    public boolean c() {
        int i2 = this.f5702c;
        int i3 = this.f5703d;
        int i4 = 0;
        while (this.f5702c < this.b && !d()) {
            i4++;
        }
        boolean z = this.f5702c == this.b;
        this.f5702c = i2;
        this.f5703d = i3;
        if (z || !b((i4 * 2) + 1)) {
            return false;
        }
        return true;
    }

    public boolean d() {
        boolean z = (this.a[this.f5702c] & (128 >> this.f5703d)) != 0;
        i();
        return z;
    }

    public int e(int i2) {
        int i3;
        int i4;
        this.f5703d += i2;
        int i5 = 0;
        while (true) {
            i3 = this.f5703d;
            i4 = 2;
            if (i3 <= 8) {
                break;
            }
            int i6 = i3 - 8;
            this.f5703d = i6;
            byte[] bArr = this.a;
            int i7 = this.f5702c;
            i5 |= (bArr[i7] & 255) << i6;
            if (!h(i7 + 1)) {
                i4 = 1;
            }
            this.f5702c = i7 + i4;
        }
        byte[] bArr2 = this.a;
        int i8 = this.f5702c;
        int i9 = (-1 >>> (32 - i2)) & (i5 | ((bArr2[i8] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.f5703d = 0;
            if (!h(i8 + 1)) {
                i4 = 1;
            }
            this.f5702c = i8 + i4;
        }
        a();
        return i9;
    }

    public final int f() {
        int i2 = 0;
        int i3 = 0;
        while (!d()) {
            i3++;
        }
        int i4 = (1 << i3) - 1;
        if (i3 > 0) {
            i2 = e(i3);
        }
        return i4 + i2;
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
        int i2 = 1;
        int i3 = this.f5703d + 1;
        this.f5703d = i3;
        if (i3 == 8) {
            this.f5703d = 0;
            int i4 = this.f5702c;
            if (h(i4 + 1)) {
                i2 = 2;
            }
            this.f5702c = i4 + i2;
        }
        a();
    }

    public void j(int i2) {
        int i3 = this.f5702c;
        int i4 = i2 / 8;
        int i5 = i3 + i4;
        this.f5702c = i5;
        int i6 = (i2 - (i4 * 8)) + this.f5703d;
        this.f5703d = i6;
        if (i6 > 7) {
            this.f5702c = i5 + 1;
            this.f5703d = i6 - 8;
        }
        while (true) {
            i3++;
            if (i3 > this.f5702c) {
                a();
                return;
            } else if (h(i3)) {
                this.f5702c++;
                i3 += 2;
            }
        }
    }
}
