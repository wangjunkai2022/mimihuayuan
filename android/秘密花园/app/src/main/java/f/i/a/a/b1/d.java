package f.i.a.a.b1;

import f.i.a.a.l1.m;
import f.i.a.a.m1.h0;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: DefaultExtractorInput.java */
/* loaded from: classes.dex */
public final class d {
    public final m b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4041c;

    /* renamed from: d  reason: collision with root package name */
    public long f4042d;

    /* renamed from: f  reason: collision with root package name */
    public int f4044f;

    /* renamed from: g  reason: collision with root package name */
    public int f4045g;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f4043e = new byte[65536];
    public final byte[] a = new byte[4096];

    public d(m mVar, long j2, long j3) {
        this.b = mVar;
        this.f4042d = j2;
        this.f4041c = j3;
    }

    public boolean a(int i2, boolean z) throws IOException, InterruptedException {
        int i3 = this.f4044f + i2;
        byte[] bArr = this.f4043e;
        if (i3 > bArr.length) {
            this.f4043e = Arrays.copyOf(this.f4043e, h0.o(bArr.length * 2, 65536 + i3, i3 + 524288));
        }
        int i4 = this.f4045g - this.f4044f;
        while (i4 < i2) {
            i4 = f(this.f4043e, this.f4044f, i2, i4, z);
            if (i4 == -1) {
                return false;
            }
            this.f4045g = this.f4044f + i4;
        }
        this.f4044f += i2;
        return true;
    }

    public final void b(int i2) {
        if (i2 != -1) {
            this.f4042d += (long) i2;
        }
    }

    public long c() {
        return this.f4042d + ((long) this.f4044f);
    }

    public boolean d(byte[] bArr, int i2, int i3, boolean z) throws IOException, InterruptedException {
        if (!a(i3, z)) {
            return false;
        }
        System.arraycopy(this.f4043e, this.f4044f - i3, bArr, i2, i3);
        return true;
    }

    public int e(byte[] bArr, int i2, int i3) throws IOException, InterruptedException {
        int i4 = this.f4045g;
        int i5 = 0;
        if (i4 != 0) {
            int min = Math.min(i4, i3);
            System.arraycopy(this.f4043e, 0, bArr, i2, min);
            i(min);
            i5 = min;
        }
        if (i5 == 0) {
            i5 = f(bArr, i2, i3, 0, true);
        }
        b(i5);
        return i5;
    }

    public final int f(byte[] bArr, int i2, int i3, int i4, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.b.read(bArr, i2 + i4, i3 - i4);
            if (read != -1) {
                return i4 + read;
            }
            if (i4 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    public boolean g(byte[] bArr, int i2, int i3, boolean z) throws IOException, InterruptedException {
        int i4;
        int i5 = this.f4045g;
        if (i5 == 0) {
            i4 = 0;
        } else {
            i4 = Math.min(i5, i3);
            System.arraycopy(this.f4043e, 0, bArr, i2, i4);
            i(i4);
        }
        int i6 = i4;
        while (i6 < i3 && i6 != -1) {
            i6 = f(bArr, i2, i3, i6, z);
        }
        b(i6);
        if (i6 != -1) {
            return true;
        }
        return false;
    }

    public void h(int i2) throws IOException, InterruptedException {
        int min = Math.min(this.f4045g, i2);
        i(min);
        int i3 = min;
        while (i3 < i2 && i3 != -1) {
            i3 = f(this.a, -i3, Math.min(i2, this.a.length + i3), i3, false);
        }
        b(i3);
    }

    public final void i(int i2) {
        int i3 = this.f4045g - i2;
        this.f4045g = i3;
        this.f4044f = 0;
        byte[] bArr = this.f4043e;
        if (i3 < bArr.length - 524288) {
            bArr = new byte[i3 + 65536];
        }
        System.arraycopy(this.f4043e, i2, bArr, 0, this.f4045g);
        this.f4043e = bArr;
    }
}
