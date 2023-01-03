package f.i.a.a.w0;

import f.i.a.a.m1.h0;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;

/* compiled from: SilenceSkippingAudioProcessor.java */
/* loaded from: classes.dex */
public final class b0 extends t {

    /* renamed from: h  reason: collision with root package name */
    public int f5821h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5822i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f5823j;

    /* renamed from: k  reason: collision with root package name */
    public byte[] f5824k;

    /* renamed from: l  reason: collision with root package name */
    public int f5825l;

    /* renamed from: m  reason: collision with root package name */
    public int f5826m;
    public int n;
    public boolean o;
    public long p;

    public b0() {
        byte[] bArr = h0.f5665f;
        this.f5823j = bArr;
        this.f5824k = bArr;
    }

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !this.f5895f.hasRemaining()) {
            int i2 = this.f5825l;
            if (i2 == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f5823j.length));
                int limit2 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    } else if (Math.abs((int) byteBuffer.get(limit2)) > 4) {
                        int i3 = this.f5821h;
                        position = ((limit2 / i3) * i3) + i3;
                        break;
                    } else {
                        limit2 -= 2;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f5825l = 1;
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
                byte[] bArr = this.f5823j;
                int length = bArr.length;
                int i4 = this.f5826m;
                int i5 = length - i4;
                if (n >= limit3 || position2 >= i5) {
                    int min = Math.min(position2, i5);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.f5823j, this.f5826m, min);
                    int i6 = this.f5826m + min;
                    this.f5826m = i6;
                    byte[] bArr2 = this.f5823j;
                    if (i6 == bArr2.length) {
                        if (this.o) {
                            o(bArr2, this.n);
                            this.p += (long) ((this.f5826m - (this.n * 2)) / this.f5821h);
                        } else {
                            this.p += (long) ((i6 - this.n) / this.f5821h);
                        }
                        p(byteBuffer, this.f5823j, this.f5826m);
                        this.f5826m = 0;
                        this.f5825l = 2;
                    }
                    byteBuffer.limit(limit3);
                } else {
                    o(bArr, i4);
                    this.f5826m = 0;
                    this.f5825l = 0;
                }
            } else if (i2 == 2) {
                int limit4 = byteBuffer.limit();
                int n2 = n(byteBuffer);
                byteBuffer.limit(n2);
                this.p += (long) (byteBuffer.remaining() / this.f5821h);
                p(byteBuffer, this.f5824k, this.n);
                if (n2 < limit4) {
                    o(this.f5824k, this.n);
                    this.f5825l = 0;
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
            this.f5821h = i3 * 2;
            return m(i2, i3, i4);
        }
        throw new m.a(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.t
    public void i() {
        if (isActive()) {
            int i2 = ((int) ((((long) this.b) * 150000) / 1000000)) * this.f5821h;
            if (this.f5823j.length != i2) {
                this.f5823j = new byte[i2];
            }
            int i3 = ((int) ((((long) this.b) * 20000) / 1000000)) * this.f5821h;
            this.n = i3;
            if (this.f5824k.length != i3) {
                this.f5824k = new byte[i3];
            }
        }
        this.f5825l = 0;
        this.p = 0;
        this.f5826m = 0;
        this.o = false;
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean isActive() {
        return super.isActive() && this.f5822i;
    }

    @Override // f.i.a.a.w0.t
    public void j() {
        int i2 = this.f5826m;
        if (i2 > 0) {
            o(this.f5823j, i2);
        }
        if (!this.o) {
            this.p += (long) (this.n / this.f5821h);
        }
    }

    @Override // f.i.a.a.w0.t
    public void k() {
        this.f5822i = false;
        this.n = 0;
        byte[] bArr = h0.f5665f;
        this.f5823j = bArr;
        this.f5824k = bArr;
    }

    public final int n(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i2 = this.f5821h;
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
        System.arraycopy(bArr, i2 - i3, this.f5824k, 0, i3);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f5824k, i3, min);
    }
}
