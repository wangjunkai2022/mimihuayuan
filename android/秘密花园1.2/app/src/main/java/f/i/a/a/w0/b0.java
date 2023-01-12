package f.i.a.a.w0;

import f.i.a.a.m1.h0;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;

/* compiled from: SilenceSkippingAudioProcessor.java */
/* loaded from: classes.dex */
public final class b0 extends t {

    /* renamed from: h  reason: collision with root package name */
    public int f5896h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5897i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f5898j;

    /* renamed from: k  reason: collision with root package name */
    public byte[] f5899k;

    /* renamed from: l  reason: collision with root package name */
    public int f5900l;

    /* renamed from: m  reason: collision with root package name */
    public int f5901m;
    public int n;
    public boolean o;
    public long p;

    public b0() {
        byte[] bArr = h0.f5740f;
        this.f5898j = bArr;
        this.f5899k = bArr;
    }

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !this.f5970f.hasRemaining()) {
            int i2 = this.f5900l;
            if (i2 == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f5898j.length));
                int limit2 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit2 >= byteBuffer.position()) {
                        if (Math.abs((int) byteBuffer.get(limit2)) > 4) {
                            int i3 = this.f5896h;
                            position = ((limit2 / i3) * i3) + i3;
                            break;
                        }
                        limit2 -= 2;
                    } else {
                        position = byteBuffer.position();
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f5900l = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    l(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.o = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i2 == 1) {
                int limit3 = byteBuffer.limit();
                int n = n(byteBuffer);
                int position2 = n - byteBuffer.position();
                byte[] bArr = this.f5898j;
                int length = bArr.length;
                int i4 = this.f5901m;
                int i5 = length - i4;
                if (n < limit3 && position2 < i5) {
                    o(bArr, i4);
                    this.f5901m = 0;
                    this.f5900l = 0;
                } else {
                    int min = Math.min(position2, i5);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.f5898j, this.f5901m, min);
                    int i6 = this.f5901m + min;
                    this.f5901m = i6;
                    byte[] bArr2 = this.f5898j;
                    if (i6 == bArr2.length) {
                        if (this.o) {
                            o(bArr2, this.n);
                            this.p += (this.f5901m - (this.n * 2)) / this.f5896h;
                        } else {
                            this.p += (i6 - this.n) / this.f5896h;
                        }
                        p(byteBuffer, this.f5898j, this.f5901m);
                        this.f5901m = 0;
                        this.f5900l = 2;
                    }
                    byteBuffer.limit(limit3);
                }
            } else if (i2 == 2) {
                int limit4 = byteBuffer.limit();
                int n2 = n(byteBuffer);
                byteBuffer.limit(n2);
                this.p += byteBuffer.remaining() / this.f5896h;
                p(byteBuffer, this.f5899k, this.n);
                if (n2 < limit4) {
                    o(this.f5899k, this.n);
                    this.f5900l = 0;
                    byteBuffer.limit(limit4);
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        if (i4 == 2) {
            this.f5896h = i3 * 2;
            return m(i2, i3, i4);
        }
        throw new m.a(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.t
    public void i() {
        if (isActive()) {
            int i2 = ((int) ((this.b * 150000) / 1000000)) * this.f5896h;
            if (this.f5898j.length != i2) {
                this.f5898j = new byte[i2];
            }
            int i3 = ((int) ((this.b * 20000) / 1000000)) * this.f5896h;
            this.n = i3;
            if (this.f5899k.length != i3) {
                this.f5899k = new byte[i3];
            }
        }
        this.f5900l = 0;
        this.p = 0L;
        this.f5901m = 0;
        this.o = false;
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean isActive() {
        return super.isActive() && this.f5897i;
    }

    @Override // f.i.a.a.w0.t
    public void j() {
        int i2 = this.f5901m;
        if (i2 > 0) {
            o(this.f5898j, i2);
        }
        if (this.o) {
            return;
        }
        this.p += this.n / this.f5896h;
    }

    @Override // f.i.a.a.w0.t
    public void k() {
        this.f5897i = false;
        this.n = 0;
        byte[] bArr = h0.f5740f;
        this.f5898j = bArr;
        this.f5899k = bArr;
    }

    public final int n(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i2 = this.f5896h;
                return (position / i2) * i2;
            }
        }
        return byteBuffer.limit();
    }

    public final void o(byte[] bArr, int i2) {
        l(i2).put(bArr, 0, i2).flip();
        if (i2 > 0) {
            this.o = true;
        }
    }

    public final void p(ByteBuffer byteBuffer, byte[] bArr, int i2) {
        int min = Math.min(byteBuffer.remaining(), this.n);
        int i3 = this.n - min;
        System.arraycopy(bArr, i2 - i3, this.f5899k, 0, i3);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f5899k, i3, min);
    }
}
