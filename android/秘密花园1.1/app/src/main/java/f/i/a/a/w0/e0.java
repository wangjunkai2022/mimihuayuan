package f.i.a.a.w0;

import f.i.a.a.m1.h0;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;

/* compiled from: TrimmingAudioProcessor.java */
/* loaded from: classes.dex */
public final class e0 extends t {

    /* renamed from: h  reason: collision with root package name */
    public boolean f5849h;

    /* renamed from: i  reason: collision with root package name */
    public int f5850i;

    /* renamed from: j  reason: collision with root package name */
    public int f5851j;

    /* renamed from: k  reason: collision with root package name */
    public int f5852k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5853l;

    /* renamed from: m  reason: collision with root package name */
    public int f5854m;
    public byte[] n = h0.f5665f;
    public int o;
    public long p;

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean a() {
        return super.a() && this.o == 0;
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public ByteBuffer b() {
        int i2;
        if (super.a() && (i2 = this.o) > 0) {
            l(i2).put(this.n, 0, this.o).flip();
            this.o = 0;
        }
        return super.b();
    }

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        if (i2 == 0) {
            return;
        }
        this.f5853l = true;
        int min = Math.min(i2, this.f5854m);
        this.p += min / this.f5852k;
        this.f5854m -= min;
        byteBuffer.position(position + min);
        if (this.f5854m > 0) {
            return;
        }
        int i3 = i2 - min;
        int length = (this.o + i3) - this.n.length;
        ByteBuffer l2 = l(length);
        int o = h0.o(length, 0, this.o);
        l2.put(this.n, 0, o);
        int o2 = h0.o(length - o, 0, i3);
        byteBuffer.limit(byteBuffer.position() + o2);
        l2.put(byteBuffer);
        byteBuffer.limit(limit);
        int i4 = i3 - o2;
        int i5 = this.o - o;
        this.o = i5;
        byte[] bArr = this.n;
        System.arraycopy(bArr, o, bArr, 0, i5);
        byteBuffer.get(this.n, this.o, i4);
        this.o += i4;
        l2.flip();
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        int i5;
        if (i4 == 2) {
            if (this.o > 0) {
                this.p += i5 / this.f5852k;
            }
            int H = h0.H(2, i3);
            this.f5852k = H;
            int i6 = this.f5851j;
            this.n = new byte[i6 * H];
            this.o = 0;
            int i7 = this.f5850i;
            this.f5854m = H * i7;
            boolean z = this.f5849h;
            this.f5849h = (i7 == 0 && i6 == 0) ? false : true;
            this.f5853l = false;
            m(i2, i3, i4);
            return z != this.f5849h;
        }
        throw new m.a(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.t
    public void i() {
        if (this.f5853l) {
            this.f5854m = 0;
        }
        this.o = 0;
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean isActive() {
        return this.f5849h;
    }

    @Override // f.i.a.a.w0.t
    public void k() {
        this.n = h0.f5665f;
    }
}
