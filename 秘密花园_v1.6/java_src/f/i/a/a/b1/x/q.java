package f.i.a.a.b1.x;

import java.util.Arrays;
/* compiled from: NalUnitTargetBuffer.java */
/* loaded from: classes.dex */
public final class q {
    public final int a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4556c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f4557d;

    /* renamed from: e  reason: collision with root package name */
    public int f4558e;

    public q(int i2, int i3) {
        this.a = i2;
        byte[] bArr = new byte[i3 + 3];
        this.f4557d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i2, int i3) {
        if (this.b) {
            int i4 = i3 - i2;
            byte[] bArr2 = this.f4557d;
            int length = bArr2.length;
            int i5 = this.f4558e;
            if (length < i5 + i4) {
                this.f4557d = Arrays.copyOf(bArr2, (i5 + i4) * 2);
            }
            System.arraycopy(bArr, i2, this.f4557d, this.f4558e, i4);
            this.f4558e += i4;
        }
    }

    public boolean b(int i2) {
        if (this.b) {
            this.f4558e -= i2;
            this.b = false;
            this.f4556c = true;
            return true;
        }
        return false;
    }

    public void c() {
        this.b = false;
        this.f4556c = false;
    }

    public void d(int i2) {
        c.a.a.b.g.h.v(!this.b);
        boolean z = i2 == this.a;
        this.b = z;
        if (z) {
            this.f4558e = 3;
            this.f4556c = false;
        }
    }
}
