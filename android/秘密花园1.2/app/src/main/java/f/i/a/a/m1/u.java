package f.i.a.a.m1;

import androidx.annotation.Nullable;
import java.nio.charset.Charset;

/* compiled from: ParsableByteArray.java */
/* loaded from: classes.dex */
public final class u {
    public byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f5776c;

    public u() {
        this.a = h0.f5740f;
    }

    public void A(int i2) {
        c.a.a.b.g.h.m(i2 >= 0 && i2 <= this.f5776c);
        this.b = i2;
    }

    public void B(int i2) {
        A(this.b + i2);
    }

    public int a() {
        return this.f5776c - this.b;
    }

    public void b(t tVar, int i2) {
        c(tVar.a, 0, i2);
        tVar.j(0);
    }

    public void c(byte[] bArr, int i2, int i3) {
        System.arraycopy(this.a, this.b, bArr, i2, i3);
        this.b += i3;
    }

    public int d() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        int i4 = i3 + 1;
        this.b = i4;
        int i5 = ((bArr[i2] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        this.b = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.b = i6 + 1;
        return (bArr[i6] & 255) | i7;
    }

    @Nullable
    public String e() {
        if (a() == 0) {
            return null;
        }
        int i2 = this.b;
        while (i2 < this.f5776c && !h0.U(this.a[i2])) {
            i2++;
        }
        int i3 = this.b;
        if (i2 - i3 >= 3) {
            byte[] bArr = this.a;
            if (bArr[i3] == -17 && bArr[i3 + 1] == -69 && bArr[i3 + 2] == -65) {
                this.b = i3 + 3;
            }
        }
        byte[] bArr2 = this.a;
        int i4 = this.b;
        String w = h0.w(bArr2, i4, i2 - i4);
        this.b = i2;
        int i5 = this.f5776c;
        if (i2 == i5) {
            return w;
        }
        if (this.a[i2] == 13) {
            int i6 = i2 + 1;
            this.b = i6;
            if (i6 == i5) {
                return w;
            }
        }
        byte[] bArr3 = this.a;
        int i7 = this.b;
        if (bArr3[i7] == 10) {
            this.b = i7 + 1;
        }
        return w;
    }

    public int f() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        int i4 = i3 + 1;
        this.b = i4;
        int i5 = (bArr[i2] & 255) | ((bArr[i3] & 255) << 8);
        int i6 = i4 + 1;
        this.b = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.b = i6 + 1;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    public long g() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        int i4 = i3 + 1;
        this.b = i4;
        int i5 = i4 + 1;
        this.b = i5;
        this.b = i5 + 1;
        return (bArr[i2] & 255) | ((bArr[i3] & 255) << 8) | ((bArr[i4] & 255) << 16) | ((bArr[i5] & 255) << 24);
    }

    public int h() {
        int f2 = f();
        if (f2 >= 0) {
            return f2;
        }
        throw new IllegalStateException(f.b.a.a.a.J("Top bit not zero: ", f2));
    }

    public int i() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        this.b = i3 + 1;
        return ((bArr[i3] & 255) << 8) | (bArr[i2] & 255);
    }

    public long j() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        int i4 = i3 + 1;
        this.b = i4;
        int i5 = i4 + 1;
        this.b = i5;
        int i6 = i5 + 1;
        this.b = i6;
        int i7 = i6 + 1;
        this.b = i7;
        int i8 = i7 + 1;
        this.b = i8;
        int i9 = i8 + 1;
        this.b = i9;
        this.b = i9 + 1;
        return ((bArr[i2] & 255) << 56) | ((bArr[i3] & 255) << 48) | ((bArr[i4] & 255) << 40) | ((bArr[i5] & 255) << 32) | ((bArr[i6] & 255) << 24) | ((bArr[i7] & 255) << 16) | ((bArr[i8] & 255) << 8) | (bArr[i9] & 255);
    }

    @Nullable
    public String k() {
        if (a() == 0) {
            return null;
        }
        int i2 = this.b;
        while (i2 < this.f5776c && this.a[i2] != 0) {
            i2++;
        }
        byte[] bArr = this.a;
        int i3 = this.b;
        String w = h0.w(bArr, i3, i2 - i3);
        this.b = i2;
        if (i2 < this.f5776c) {
            this.b = i2 + 1;
        }
        return w;
    }

    public String l(int i2) {
        if (i2 == 0) {
            return "";
        }
        int i3 = (this.b + i2) - 1;
        String w = h0.w(this.a, this.b, (i3 >= this.f5776c || this.a[i3] != 0) ? i2 : i2 - 1);
        this.b += i2;
        return w;
    }

    public String m(int i2) {
        return n(i2, Charset.forName("UTF-8"));
    }

    public String n(int i2, Charset charset) {
        String str = new String(this.a, this.b, i2, charset);
        this.b += i2;
        return str;
    }

    public int o() {
        return (p() << 21) | (p() << 14) | (p() << 7) | p();
    }

    public int p() {
        byte[] bArr = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        return bArr[i2] & 255;
    }

    public long q() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        int i4 = i3 + 1;
        this.b = i4;
        int i5 = i4 + 1;
        this.b = i5;
        this.b = i5 + 1;
        return ((bArr[i2] & 255) << 24) | ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
    }

    public int r() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        int i4 = i3 + 1;
        this.b = i4;
        int i5 = ((bArr[i2] & 255) << 16) | ((bArr[i3] & 255) << 8);
        this.b = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public int s() {
        int d2 = d();
        if (d2 >= 0) {
            return d2;
        }
        throw new IllegalStateException(f.b.a.a.a.J("Top bit not zero: ", d2));
    }

    public long t() {
        long j2 = j();
        if (j2 >= 0) {
            return j2;
        }
        throw new IllegalStateException(f.b.a.a.a.c("Top bit not zero: ", j2));
    }

    public int u() {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        this.b = i3 + 1;
        return (bArr[i3] & 255) | ((bArr[i2] & 255) << 8);
    }

    public void v() {
        this.b = 0;
        this.f5776c = 0;
    }

    public void w(int i2) {
        byte[] bArr = this.a;
        if (bArr.length < i2) {
            bArr = new byte[i2];
        }
        y(bArr, i2);
    }

    public void x(byte[] bArr) {
        int length = bArr.length;
        this.a = bArr;
        this.f5776c = length;
        this.b = 0;
    }

    public void y(byte[] bArr, int i2) {
        this.a = bArr;
        this.f5776c = i2;
        this.b = 0;
    }

    public void z(int i2) {
        c.a.a.b.g.h.m(i2 >= 0 && i2 <= this.a.length);
        this.f5776c = i2;
    }

    public u(int i2) {
        this.a = new byte[i2];
        this.f5776c = i2;
    }

    public u(byte[] bArr) {
        this.a = bArr;
        this.f5776c = bArr.length;
    }

    public u(byte[] bArr, int i2) {
        this.a = bArr;
        this.f5776c = i2;
    }
}
