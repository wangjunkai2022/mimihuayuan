package f.i.a.a.b1.v;
/* compiled from: VorbisBitArray.java */
/* loaded from: classes.dex */
public final class i {
    public final byte[] a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public int f4360c;

    /* renamed from: d  reason: collision with root package name */
    public int f4361d;

    public i(byte[] bArr) {
        this.a = bArr;
        this.b = bArr.length;
    }

    public boolean a() {
        boolean z = (((this.a[this.f4360c] & 255) >> this.f4361d) & 1) == 1;
        c(1);
        return z;
    }

    public int b(int i2) {
        int i3 = this.f4360c;
        int min = Math.min(i2, 8 - this.f4361d);
        int i4 = i3 + 1;
        int i5 = ((this.a[i3] & 255) >> this.f4361d) & (255 >> (8 - min));
        while (min < i2) {
            i5 |= (this.a[i4] & 255) << min;
            min += 8;
            i4++;
        }
        int i6 = i5 & ((-1) >>> (32 - i2));
        c(i2);
        return i6;
    }

    public void c(int i2) {
        int i3;
        int i4 = i2 / 8;
        int i5 = this.f4360c + i4;
        this.f4360c = i5;
        int i6 = (i2 - (i4 * 8)) + this.f4361d;
        this.f4361d = i6;
        boolean z = true;
        if (i6 > 7) {
            this.f4360c = i5 + 1;
            this.f4361d = i6 - 8;
        }
        int i7 = this.f4360c;
        if (i7 < 0 || (i7 >= (i3 = this.b) && (i7 != i3 || this.f4361d != 0))) {
            z = false;
        }
        c.a.a.b.g.h.v(z);
    }
}
